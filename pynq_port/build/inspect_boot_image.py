"""Read only the FAT boot partition from a vendor zipped disk image.

No physical disks are opened and the source archive is never modified.
The extracted partition is for offline inspection, not for flashing.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import zipfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path)
    parser.add_argument('output_dir', type=Path)
    args = parser.parse_args()
    args.output_dir.mkdir(parents=True, exist_ok=True)
    target = args.output_dir / 'boot_partition.img'
    if target.exists():
        raise FileExistsError('Refusing to overwrite: ' + str(target))
    with zipfile.ZipFile(str(args.archive)) as archive:
        images = [item for item in archive.infolist()
                  if not item.is_dir() and item.filename.lower().endswith('.img')]
        if len(images) != 1:
            raise ValueError('Expected exactly one .img in archive')
        info = images[0]
        with archive.open(info) as stream:
            mbr = stream.read(512)
            if len(mbr) != 512 or mbr[510:] != b'\x55\xaa':
                raise ValueError('Invalid MBR signature')
            partitions = []
            for index in range(4):
                base = 446 + index * 16
                kind = mbr[base + 4]
                lba, sectors = struct.unpack_from('<II', mbr, base + 8)
                if not sectors:
                    continue
                if (lba + sectors) * 512 > info.file_size:
                    raise ValueError('Partition exceeds image')
                partitions.append(dict(index=index + 1, type=hex(kind),
                                       start_bytes=lba * 512, bytes=sectors * 512))
            fats = [item for item in partitions if item['type'] in ('0xb', '0xc', '0xe', '0x6')]
            if len(fats) != 1 or fats[0]['bytes'] > 512 * 1024 * 1024:
                raise ValueError('Expected one FAT boot partition of at most 512 MiB')
            boot = fats[0]
            stream.seek(boot['start_bytes'])
            digest = hashlib.sha256()
            remaining = boot['bytes']
            with target.open('xb') as output:
                while remaining:
                    payload = stream.read(min(1024 * 1024, remaining))
                    if not payload:
                        raise ValueError('Truncated boot partition')
                    output.write(payload)
                    digest.update(payload)
                    remaining -= len(payload)
    record = dict(source_archive=str(args.archive.resolve()), image_member=info.filename,
                  image_bytes=info.file_size, partitions=partitions,
                  extracted_partition=str(target.resolve()), sha256=digest.hexdigest(),
                  source_modified=False, physical_disk_access=False,
                  zip_full_crc_verified=False)
    (args.output_dir / 'partition_inventory.json').write_text(
        json.dumps(record, indent=2, ensure_ascii=False) + '\n', encoding='utf-8')
    print(json.dumps(record, indent=2, ensure_ascii=False))


if __name__ == '__main__':
    main()
