**Vitis 2025.2 软件与 BSP 适配结果**

已完成新 SDT 平台、裸机 BSP、FSBL 和应用的实际编译，并生成 `artifacts/trash_app.elf` 与 `artifacts/BOOT.BIN`。原 `vitis_trash`、`trash`、`hls` 保持原样。

本次平台使用现有 `design_1_wrapper_3.3v.xsa`；PL bitstream 仍来自该 2019.2 XSA。此目录完成软件迁移，不代表 Vivado 硬件工程升级或上板验证完成。

**打开与修改**

- 在 Vitis 2025.2 中打开工作区：`C:/Users/Lenovo/Desktop/FPGA/vitis_2025_2/workspace`。
- 平台组件：`trash_platform`，处理器 `ps7_cortexa9_0`，域 `standalone_domain`。
- 应用组件：`trash_app`。
- `app_src/` 保存本次适配后的源文件；`build_app.py` 将它同步到应用组件的 `src/` 后编译。使用脚本重建时，以 `app_src/` 为修改入口；若在 IDE 中修改组件的源码，应先将修改保存回 `app_src/`，否则下次脚本同步会覆盖对应文件。

**LCD 操作页面（本次更新）**

800×480 页面采用深色渐变背景与青绿色操作区：左侧 448×448 摄像头预览（原始 224×224 放大 2 倍），右侧显示上次检测类别、推理耗时、检测按钮、光补偿按钮、保存按钮、本次启动已保存数量及操作提示。复用原 ASCII 字库，标签保持英文；没有额外图片资源或界面框架。

- **DETECT**：继续调用原 `CameraDetection_Run → Detecting → inference_q`；操作前显示忙碌状态。结果标为 LAST DETECTION，不把原始网络分数伪装为概率。
- **LIGHT ASSIST**：复用原补光寄存器序列，只有 IIC 写入成功才更新 ON/OFF；失败用醒目颜色提示。
- **SAVE IMAGE**：每按一次立即保存一张 24 位 BMP 到 `Test/IMG00001.BMP` 等文件，自动创建 Test 目录、跳过已有文件，重启也不覆盖。本次启动计数只在完整写入并成功关闭后增加；失败不会增加。
- 长按仅触发一次，耗时操作期间的积压触摸不会自动触发下一次操作；松开再按后恢复。静态背景和按钮不随每帧预览重画。
- 缺失或短读模型参数会显示 NO MODEL 并禁用检测，预览、补光、保存仍可使用；相机初始化失败有明确提示。

维护入口：

| 文件 | 职责 |
| --- | --- |
| `app_src/src/main.c` | 原设备初始化、触摸事件消费、调用现有业务 API、更新页面状态 |
| `app_src/src/mess.h` | `CameraUIState` 与按钮几何定义，绘制和命中共用 |
| `app_src/src/mess.c` | 唯一新增页面函数 `CameraUI_Draw`；原按钮、检测、保存函数的适配 |
| `app_src/src/camera_detection.*` | 原检测链与权重初始化，输出类别/微秒耗时，不直接画屏 |
| `app_src/Lib/Net/sd_io.c` | 原 SD API 的完整读写/关闭检查，模型读失败向上传递 |
| `app_src/Lib/OV5640/OV5640.c` | 原预览移到左侧 `(16,16)`；原补光 API 返回 IIC 状态 |

新增页面函数带参数、返回值和行为说明；复杂页面代码集中在 mess.c，没有另建绘图库、按钮框架或推理流程。`Check_Botten` 现在只返回命中结果，不改变全局检测标志，并修正了翻转坐标的一像素偏移。`Detecting` 返回类别并通过最后一个参数输出耗时；`Camera_Sample` 返回成功保存数量或 -1；补光函数返回 XST 状态。

实际 C 绘图代码生成的预览在 `tests/lcd_previews/`。其中叶片是模拟相机图像，非上板截图。回归入口 `python tests/run_lcd_ui_tests.py` 覆盖两种翻转方向、长按/异常流程、BMP 头和全部像素、失败不计数、重启防覆盖及文件号耗尽。`python tests/run_sd_io_tests.py` 另外直接编译真实 SD API，检查短读、短写、关闭失败、分配失败等 45 项断言。说明见 `tests/LCD_UI_TESTS.md`。界面已用实际 Vitis 2025.2 ARM 工具链编译；物理屏幕、触摸和 SD 卡仍需上板确认。

**重新构建**

在本目录 PowerShell 中执行：

```powershell
.\run_build.ps1 -Stage all
python .\verify_build.py
python .\tests\run_host_tests.py
python .\package_boot.py
```

仅修改应用时可执行 `run_build.ps1 -Stage app`。工具入口配置为 `D:/AMD/2025.2/Vitis/bin/vitis.bat`。脚本检查日志中的真实失败状态；Windows Vitis 批处理有时在 Python/编译失败时仍返回 0，因此不只依赖进程退出码。它还会清理本次运行日志中所标识的残留 Vitis Java server，释放工作区锁。

`package_boot.py` 只在本地制作镜像，不连接板卡、不下载、不烧写 Flash。`artifacts/boot.bif` 的顺序为：新 FSBL → 旧 PL bitstream → 新应用 ELF。

平台构建还处理了本机 2025.2 的 Windows CMake 缓存问题：重新生成并清理 BSP 后，使用随软件提供的 Ninja/ARM 工具链初始化缓存，重放配置并规范安装路径，最后核对生成、安装、导出的三份 xilffs 头文件和三份库哈希一致、长文件名确实启用。日志中的 `BSP_LFN_VERIFIED` 是通过标志；修改 BSP 后必须重建应用，避免 FatFs 结构与库不匹配。

**适配内容**

1. 使用 2025.2 自带的 standalone 9.4、标准驱动、xiltimer 和 xilffs 5.5 重新生成 BSP，未复制旧 BSP 静态库或旧 `xparameters.h`。
2. UART、IIC、GPIO、GIC、VTC 和 VDMA 改为按新生成的基地址查配置。特别区分硬件 UART1 与 SDT 中唯一 UART 的 canonical 编号 0；GIC 以 distributor 地址查配置、CPU interface 地址初始化。SPI 编码转换为 GIC IRQ：UART1=82、IIC0=57、IIC1=80、GPIO=52。
3. 四个 HLS 寄存器驱动由应用源码直接编译，初始化参数/基地址字段使用 `UINTPTR`，不依赖旧 DeviceId 配置表或旧 MDD/Tcl 生成流程。这是一条完整的应用自管驱动路线，未安装为通用的 SDT BSP 驱动仓库。寄存器偏移、32 位数据传输及运算控制保持原样。
4. VDMA 的逻辑数组索引和 MMIO 查找基地址分离，加入索引检查；保留 LCD 与摄像头共用 VDMA 时避免二次初始化复位读通道的处理，保留实际单帧硬件设置。
5. 用 `xiltimer.h` 替换 SDT BSP 不再导出的 `xtime_l.h`，保留 global timer 计时方式。
6. 启用 xilffs 的 SD 接口、读写和长文件名静态缓冲区，支持原模型参数文件名及图像导出。
7. 解决头文件重复定义 HLS 实例、FATFS 对象及重复计时变量的问题，没有使用 `-fcommon` 绕过链接检查。补齐 `memalign` 的标准工具链声明及初始化错误处理。
8. 保留 256 MiB 堆、2 MiB 主栈；限制应用 DDR 区域，并增加链接 ASSERT，避免覆盖固定视频和采样区。

**构建与检查证据**

| 检查 | 结果 |
| --- | --- |
| 平台 / 新 BSP / FSBL 构建 | 通过，见 build_platform.log |
| ARM 应用编译与链接 | 通过，ARM GCC 13.3.0，见 build_app.log |
| 隐式函数声明 / 不兼容指针 | 按错误处理，编译通过 |
| 四个真实 HLS 驱动的 host MMIO 回归 | 486 项通过，含 64 位高地址防截断、非法初始化、控制/中断位语义 |
| 寄存器定义 | 四个 *_hw.h 与原驱动 SHA256 相同 |
| SDT 外设地址 / IRQ / LFN | 已用真实生成的 BSP 核对 |
| ARM ELF 内存布局 | 通过，见 verification.json |
| Bootgen 2025.2 | 成功生成 BOOT.BIN，见 artifacts/bootgen.log |

应用入口为 `0x00100000`。链接检查确保应用及堆栈低于 LCD 区起点 `0x12100000`；当前具体范围记录在 `verification.json`，源码变化后重新运行 `verify_build.py`。

| 固定区域 | 地址 |
| --- | --- |
| LCD BGR888 单帧 | 0x12100000 |
| 摄像头 224×224 BGR888 单帧 | 0x12400000 |
| 预留采样区（原 50 帧；新页面只用一张 BMP 暂存） | 0x12500000–0x12C2D800（末端不含） |

`verification.json` 和 `artifacts/manifest.json` 记录输出哈希。测试日志在 `tests/.build/`。构建还保留少量原代码的未使用参数/初始化括号警告；无编译或链接错误。

**运行前还需具备的条件**

- 本次没有连接板卡，上述检查不能替代摄像头、触摸、VDMA、推理结果或 SD 启动实测。
- SD 卡仍需现应用的 `trash_weight/` 权重文件（106 个参数文件，原 float 文件格式）；图像导出的 `Test/` 目录由保存操作自动创建。这些模型数据不由编译产生，当前资料中仍未找到。
- 现有 XSA/bitstream 与实际板卡的电压和接线仍按原理图确认，文件名的 3.3v 不能代替电气核对。
- 后续 Vivado 2025.2 重新生成 XSA 后，应在平台中更新硬件描述并重建、重新运行验证；不要把不同 XSA 的 FSBL、bitstream 和应用输出混用。

官方迁移/API 依据：[AMD 2025.2 Standalone 应用迁移](https://docs.amd.com/r/2025.2-English/ug1400-vitis-embedded/Standalone-Application-Component-Migration-Details)、[从 XSA 创建平台](https://docs.amd.com/r/2025.2-English/ug1400-vitis-embedded/Creating-a-Platform-Component-from-XSA)。实际 API、头文件及编译均以本机 2025.2 安装为准。
