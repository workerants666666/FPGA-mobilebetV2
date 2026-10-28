# 2026-10-24T19:30:48.445308900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_2025_2")

platform = client.get_component(name="trash_platform")
status = platform.build()

comp = client.get_component(name="trash_app")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

