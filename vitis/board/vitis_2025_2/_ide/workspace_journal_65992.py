# 2026-10-24T10:14:45.138480800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_2025_2")

platform = client.get_component(name="trash_platform")
domain = platform.get_domain(name="zynq_fsbl")

status = domain.set_config(option = "lib", param = "XILFFS_use_lfn", value = "1", lib_name="xilffs")

status = platform.build()

comp = client.get_component(name="trash_app")
comp.build()

status = platform.build()

status = comp.clean()

comp.build()

status = platform.build()

component = client.get_component(name="trash_app")

lscript = component.get_ld_script(path="C:\Users\Lenovo\Desktop\FPGA\vitis_2025_2\workspace\trash_app\src\lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.update_desc(desc="")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper_3.3v_final.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

