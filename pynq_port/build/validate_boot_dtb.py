"""Check the exact AC820 vendor DTB migration, without applying it to hardware."""
import argparse
import hashlib
import json
from pathlib import Path
import struct

from inspect_fdt import parse_fdt

BASE_SHA256 = '28d656e6da69a652484d29210fe99ef990a105125d9d834666ca69736a427f2f'
PINCTRL = '/amba/slcr@f8000000/pinctrl@700'
I2C0 = '/amba/i2c@e0004000'
I2C1 = '/amba/i2c@e0005000'
GPIO = '/amba/gpio@e000a000'
STATE_I2C = PINCTRL + '/leaf-i2c0-default'
STATE_GPIO = PINCTRL + '/leaf-touch-gpio-default'


def require(condition, message):
    if not condition:
        raise ValueError(message)


def reservations(blob, tree):
    offset = tree['reserve_offset']
    result = []
    while offset + 16 <= tree['total_bytes']:
        address, length = struct.unpack_from('>QQ', blob, offset)
        if not address and not length:
            return result
        result.append([address, length])
        offset += 16
    raise ValueError('Unterminated FDT reserve map')


def validate(base, migrated):
    require(hashlib.sha256(base).hexdigest() == BASE_SHA256,
            'Base is not the inspected AC820 vendor system DTB')
    original, updated = parse_fdt(base), parse_fdt(migrated)
    old, new = original['nodes'], updated['nodes']
    permitted = {
        I2C0: {'status', 'clock-frequency', 'pinctrl-names', 'pinctrl-0'},
        I2C1: {'status', 'clock-frequency'},
        GPIO: {'pinctrl-names', 'pinctrl-0'},
        '/__symbols__': {'leaf_i2c0_default', 'leaf_touch_gpio_default'},
    }
    changes = []
    for node, properties in old.items():
        require(node in new, 'Original node removed: ' + node)
        for key in properties.keys() | new[node].keys():
            if properties.get(key) != new[node].get(key):
                require(key in permitted.get(node, set()),
                        'Unexpected property change: ' + node + ':' + key)
                changes.append(node + ':' + key)
    additions = set(new) - set(old)
    require(additions == {STATE_I2C, STATE_I2C + '/mux', STATE_GPIO, STATE_GPIO + '/mux'},
            'Unexpected added DT nodes: ' + repr(sorted(additions)))
    require(new[I2C0]['status'] == new[I2C1]['status'] == b'okay\0', 'I2C disabled')
    require(new[I2C0]['clock-frequency'] == struct.pack('>I', 300000), 'I2C0 frequency')
    require(new[I2C1]['clock-frequency'] == struct.pack('>I', 40000), 'I2C1 frequency')
    for consumer, state, group, function in (
            (I2C0, STATE_I2C, b'i2c0_10_grp\0', b'i2c0\0'),
            (GPIO, STATE_GPIO, b'gpio0_0_grp\0', b'gpio0\0')):
        require(new[consumer]['pinctrl-names'] == b'default\0', 'Missing default state')
        require(new[consumer]['pinctrl-0'] == new[state]['phandle'], 'Wrong pinctrl reference')
        require(new[state + '/mux'] == {'groups': group, 'function': function},
                'Unexpected pinmux/electrical configuration')
        require(set(new[state]) == {'phandle'}, 'Unexpected pinctrl state properties')
    for symbol, path in (('leaf_i2c0_default', STATE_I2C), ('leaf_touch_gpio_default', STATE_GPIO)):
        require(new['/__symbols__'][symbol] == path.encode('ascii') + b'\0', 'Wrong symbol')
    require(reservations(base, original) == reservations(migrated, updated), 'Reserved memory changed')
    require(original['boot_cpu'] == updated['boot_cpu'], 'Boot CPU changed')
    return dict(base_sha256=BASE_SHA256, migrated_sha256=hashlib.sha256(migrated).hexdigest(),
                base_bytes=len(base), migrated_bytes=len(migrated),
                changed_properties=sorted(changes), added_nodes=sorted(additions),
                other_properties_unchanged=True, reservations_unchanged=True,
                kernel_execution=False, board_tested=False, validation='passed')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('base', type=Path)
    parser.add_argument('migrated', type=Path)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    report = validate(args.base.read_bytes(), args.migrated.read_bytes())
    content = json.dumps(report, indent=2) + '\n'
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(content, encoding='utf-8')
    print(content)


if __name__ == '__main__':
    main()
