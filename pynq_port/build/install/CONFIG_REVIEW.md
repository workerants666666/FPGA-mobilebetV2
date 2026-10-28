# 2025.2 精简安装配置核对清单

状态：**待管理员在官方 ConfigGen 中确认；本文件不是可执行的安装配置。** 本次仅静态读取安装器文件，未运行 xsetup、登录、接受许可、修改系统权限或打开窗口。

## 已确认的本地证据

- 安装器解包目录：`D:\software\amd_2025_2_installer`。
- `data/version.info`：Branch `2025.2`，Version `35ec23c`，Build Date `2025-10-29 07:17:12 MDT`。
- 主任务的 `report/installer_readiness.json`：安装器签名 Valid，当前进程不是管理员，客户端已解包，目标 Vivado 尚未安装。实际安装结果应继续以该报告和安装日志为准。
- `data/dynamic_language_bundle.properties` 存在下表显示名；这些是界面语言资源，**不能据此反推 Modules 配置键**。

| 选择建议 | 实际资源显示名 | 本地文件行号 |
| --- | --- | --- |
| 选择产品 | Vivado | 1241 |
| 选择免费版本 | Vivado ML Standard | 717 |
| 保留 HLS 必需组件 | Vitis HLS / Vitis for HLS | 614 / 707 |
| 保留目标器件家族 | Zynq-7000 All Programmable SoC | 808 / 1344 |
| 若支持具体器件选择，核对存在 | xc7z020 | 255 |
| 本工程还需嵌入式开发时选择 | Vitis Embedded Development | 109 / 1514 |
| 取消 | Vitis Model Composer(A toolbox for Simulink) | 590 |
| 取消 | Power Design Manager (PDM) | 959 |
| 取消 | DocNav | 80 |

取消与 AC820 无关的器件族，保留安装器自动选中的必需依赖。不要选择 Enterprise，不要仅因存在 Vitis 文件夹而认定已安装 Vitis Embedded Development。Cable Drivers 可留到实际需要 JTAG 时处理。

## 配置生成后的审阅项

1. 在有管理员权限的命令环境使用官方 `bin\xsetup.bat -b ConfigGen` 生成 **本机 2025.2** 配置，按菜单显示名选择产品与 Standard 版本。
2. 保留 ConfigGen 实际生成的字段名；只编辑实际出现的选项，`1` 选择、`0` 取消。没有生成文件之前，不手写未经核实的完整 Modules 行。
3. 核对工具为 Vivado + 必需 HLS；器件为 Zynq-7000 / XC7Z020；按原任务需要额外保留 Vitis Embedded Development。
4. 安装与下载目录均使用不含空格的独立路径，保留旧工具链；不得覆盖原工程。
5. 记录安装器给出的 Download Size、Disk Space Required、Final Disk Usage（若显示）、下载目录和安装目录，再核对相应磁盘余量及编译工作空间。
6. Web 下载需要官方 AMD 认证。批处理认证和安装需要管理员环境；当前不具备该环境，且用户正在看 PPT，因此暂不运行、不弹窗口、不请求前台操作。

## 磁盘大小结论

**现在不能确认这组精简选择的精确下载/安装体积。** 实际产品、模块依赖目录位于 `data/idata.ser.z` 和 `data/idata.dat`，ZIP 标记为加密；本次未尝试解密或绕过。明文 `data/arc.dat` 的 ZIP 内部为 `archiveContent.txt` JSON，仅列出 payload 文件路径、大小和校验值，不足以还原最终选择及依赖。

主任务提供的 D 盘约 134.8 GiB、E 盘约 90.2 GiB 只是当前规划依据。官方 UG1742 的 Embedded 35 GB / Full Vitis 200 GB 同样不能替代此精简组合的安装器实际计算值。所需精确空间待官方 ConfigGen/安装器在管理员环境确认。

官方批处理参数及公开资料见 `report/toolchain_2025_2.md`；本清单不触发其命令。

## 有空时手动安装2025.2：按界面操作

**现在给队友上板验证不用先安装2025.2。** 包内原2019.2的bit/HWH可以先在AC820的PYNQ上验证。下面步骤留作后续硬件源码重建；不表示现阶段必须升级，也不改变原HLS。

1. 保持电脑接电和联网，完成安装前避免休眠。本机D盘本次检查约有133.8GiB空闲，实际所需以安装器Summary为准；不安装完整Full Vitis。
2. 打开资源管理器，在地址栏粘贴 `D:\software\amd_2025_2_installer` 并回车。这是已经解包的安装客户端，不需要重新下载。
3. 找到 `xsetup.exe`，右键选择“以管理员身份运行”。Windows询问是否允许更改设备时，在确认路径与发行者后点击“是”。已有安装窗口时只使用一个，避免重复启动。
4. 确认欢迎窗口标题为 **AMD Unified FPGAs & Adaptive SoCs Installer 2025.2**，点Next。若提示更新到2026.x，选择继续当前2025.2，而不跳转下载最新版。
5. 如出现AMD账号页，输入你自己的账号和密码完成登录；浏览器已登录不代表安装器不用再登录。账号、密码或验证码不发给队友，也不写入工程。
6. 安装方式选 **Download and Install Now**，点Next。约233MB的现有EXE只是在线安装器，后面仍会下载所选工具组件。
7. 在产品页选择 **Vivado**。若页面分开询问版本，选择 **Vivado ML Standard**。不要选择Enterprise或Lab Edition；Standard覆盖本工程XC7Z020，Lab Edition不能用于综合实现。
8. 自定义组件时，保留Vivado及安装器自动要求的HLS/Vitis依赖。出现 **Vitis Embedded Development** 时勾选，它提供嵌入式IDE和Bootgen等工具。本地2025.2产品说明明确允许选装此组件，但具体节点展开层级以实际界面为准。
9. 若该页没有Vitis Embedded Development，先完成Vivado Standard；之后可检查已安装2025.2的 **Add Design Tools or Devices**，或使用官方独立 **Vitis Embedded Installer 2025.2** 补装。不要为了获得嵌入式IDE而改选Full Vitis。仅看到Vitis文件夹不能证明嵌入式组件已安装，因为2025.2的HLS依赖也使用该目录。
10. 器件家族只保留 **Zynq-7000 / Zynq-7000 All Programmable SoC**。若允许细选具体器件，确认包含XC7Z020；若只能按家族选择，保留整个Zynq-7000即可。安装器不一定提供“AC820”板名，具体封装/速度级在工程里指定。
11. 取消无关器件家族和可选的Model Composer、Power Design Manager、DocNav、额外IP cache。不要取消必需依赖。**Cable Drivers**用于JTAG，本轮只走SD卡和网线时可以暂不安装；后续需要JTAG再按官方流程补装。
12. 阅读实际出现的EULA/第三方许可，接受后勾I Agree并继续。安装器欢迎页虽提及关闭杀毒软件，本操作说明不要求关闭Windows安全保护或UAC。
13. 安装根目录填写 `D:\software\AMDDesignTools`。Summary里应显示Vivado最终位于 `D:\software\AMDDesignTools\2025.2\Vivado`。不要额外重复拼接2025.2/Vivado层级，也不要覆盖 `D:\software\X\Vivado\2018.3`。安装路径不使用空格。
14. 如可设置Download/下载缓存目录，可用 `D:\software\AMDDownloads\2025.2`；缓存目录和安装目录分开。创建开始菜单/桌面快捷方式可按喜好选择。
15. 到 **Installation Summary** 暂停核对：版本2025.2、Vivado ML Standard、器件Zynq-7000、需要的Vitis Embedded组件、最终安装目录/下载目录、Download Size及Disk Space Required。不要默认35GB就是本次总占用；那只是官方嵌入式组件条目。建议在安装器要求之外还留至少20GB余量给临时文件和工程，具体构建空间以后实测。
16. 若显示空间不足或Full Vitis等无关组件，点Back修改，不要直接Install。核对无误后点Install，等待下载和安装完成。窗口可以最小化；不要关闭安装进程。若出错，保留错误文本和日志，不重复并行启动多个安装器。
17. 出现完成页且没有失败项后点Finish。若自动弹出License Manager，Standard工具本身无需购买/导入FLEX许可证，可关闭该窗口；若特定IP明确报许可缺失，应记录IP名称单独核查，不使用注册机。
18. 打开PowerShell，复制下列只读版本检查命令并回车：

```powershell
& 'D:\software\AMDDesignTools\2025.2\Vivado\bin\vivado.bat' -version
```

19. 输出应包含Vivado及2025.2。随后从开始菜单打开 **Vivado 2025.2**，在Tcl Console输入 `get_parts xc7z020clg484-2`；应返回该器件名。此步骤无需打开或升级原工程。
20. 若安装了Vitis Embedded Development，从开始菜单打开对应2025.2 IDE，检查标题或About页的版本。安装结束后保存Summary/完成页、版本输出；后续由主任务在副本中运行构建脚本，不用你手动升级原工程或改HLS。

出错日志通常在 `C:\Users\ASUS\.Xilinx\xinstall`。AMD账号认证失败和Vivado许可不足是不同问题，先按具体错误定位。

官方依据：[2025.2图形安装流程](https://docs.amd.com/r/2025.2-English/ug973-vivado-release-notes-install-license/Run-the-Installation-File)、[2025.2器件支持表](https://docs.amd.com/r/2025.2-English/ug973-vivado-release-notes-install-license/Supported-Devices)、[AMD许可FAQ](https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/licensing-faq.html)、[2025.2目录/HLS变化](https://docs.amd.com/r/2025.2-English/ug973-vivado-release-notes-install-license/Installer)。产品显示名另已与本地2025.2安装器语言资源核对；未声称实际走完GUI。
