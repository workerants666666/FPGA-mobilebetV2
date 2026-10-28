# FPGA 工程结构与运行说明

## 1. 工程定位

这是一个基于 **Zynq-7000 XC7Z020** 的软硬件协同推理工程，Vivado 版本为 2019.2。PS 侧使用 Cortex-A9 裸机程序，PL 侧使用 HLS 生成的加速 IP，实现 6 类垃圾图像分类。Vivado 工程顶层为 `design_1_wrapper`，Block Design 为 `design_1`。

```text
SD 卡（参数、图像、标签）
          │ FatFs / SDIO
          ▼
PS Cortex-A9（Vitis/Dective）
          │ AXI-Lite：配置/启动/查询 done
          │ DDR：输入、权重、中间结果、输出
          ▼
PL HLS 加速器
  conv_0 ─ pwdwconv_0 ─ shortcut_0 ─ fc_0
```

## 2. 目录结构

```text
trash.xpr                         Vivado 工程入口
trash.srcs/sources_1/bd/design_1/
  design_1.bd                     Block Design 描述
  hdl/design_1_wrapper.v          顶层封装，TopModule
  ip/                              BD 中各 IP 的 XCI、生成 HDL 和仿真文件
trash.runs/
  synth_1/                         综合结果
  impl_1/                          实现、时序、资源和 bitstream 结果
Vitis/
  Trasher/                         硬件平台、FSBL、BSP 和驱动
  drivers/                         conv/fc/pwdwconv/shortcut 驱动
  Dective/src/                     裸机推理应用源码
  Dective/Debug/Dective.elf        已构建应用
  design_1_wrapper.bit             已导出的 bitstream 副本
```

工程中的 `trash.cache`、`trash.ip_user_files`、`trash.runs` 主要是 Vivado 生成物；修改硬件时应以 `.bd`、IP 配置/XCI 和源码为准，不直接编辑生成的综合 HDL。

## 3. PL 结构

Block Design 的主要组件如下：

| 组件 | 作用 | PS 访问地址 |
|---|---|---:|
| `processing_system7_0` | Zynq PS、DDR、SD0、UART0、FCLK | — |
| `conv_0` | 首层标准卷积 | `0x43C00000` |
| `fc_0` | 全连接分类层 | `0x43C10000` |
| `pwdwconv_0` | 可配置 pointwise/depthwise 卷积 | `0x43C20000` |
| `shortcut_0` | 残差加法 | `0x43C30000` |
| `ps7_0_axi_periph` | PS M_AXI_GP0 到四个 IP 的 AXI-Lite 控制互连 | — |
| `axi_mem_intercon` ~ `_3` | HLS 主端口到 PS HP0~HP3 的 DDR 数据互连 | — |
| `rst_ps7_0_128M` | FCLK0 同步复位 | — |

四个 IP 的控制口走 AXI-Lite；输入、权重、偏置和输出通过多个 `m_axi` 端口访问 DDR。BD 中所有 PL IP、互连和 HP 端口共用 `FCLK_CLK0`，当前配置约为 **128.57 MHz**；复位由 `FCLK_RESET0_N` 经 `rst_ps7_0_128M` 产生。

实现结果显示设计已完成布线，时序检查报告中无无时钟端点、无组合环路；资源使用较高，Slice 使用约 97.7%，BRAM Tile 使用约 92.1%，后续扩展需要留意余量。

## 4. PS 软件运行结构

入口为 [`main.c`](Vitis/Dective/src/main.c)。启动顺序为：

1. `SD_Init()` 挂载 FAT 文件系统。
2. 初始化四个 HLS 驱动实例：`pwdwconv`、`shortcut`、`conv`、`fc`。
3. `SpaceAllocateq()` 在 DDR 中为网络权重分配对齐缓冲区。
4. `ReadParamq("trash_weight\\", ...)` 从 SD 卡读取并将浮点参数量化为 `short`（比例因子 1024）。
5. 读取 `image.bin` 和 `label.bin`，默认测试 100 张、输入尺寸为 `3×224×224`。
6. 对每张图调用 `inference_q()`，计时并输出预测类别、真实类别和准确率。

`inference_q()` 的固定执行图为：

```text
Headq
  3×224×224 → 16×112×112
  标准卷积 → depthwise 卷积(stride=1) → pointwise 卷积
       │
       ▼
16 个 Bottlenecksq（cfg[0..15]）
  pointwise 扩展 → depthwise 3×3 → pointwise 投影
  stride=1 且输入/输出通道相同：shortcut_0 残差相加
  stride=2：空间尺寸减半，不做残差
       │
       ▼
Tailq
  320×7×7 → pointwise → 1280×7×7 → fc_0 → 6 类输出
```

软件通过 [`pl_conv.c`](Vitis/Dective/src/pl_conv.c) 封装寄存器操作：写入 DDR 缓冲区地址和尺寸参数，调用 `Start`，再轮询 `IsDone`。因此当前实现是**单层串行调度**，中间结果主要在 DDR 的 `buffer1/buffer2` 及静态临时缓冲区之间乒乓切换；Tail 输出完成后执行 D-cache invalidate。

## 5. 启动/运行链路

```text
Vivado 生成 bitstream + XSA
        ↓
Vitis 平台 Trasher + standalone_domain
        ↓
FSBL 初始化 PS/DDR/时钟
        ↓
加载 bitstream，启动 Dective.elf
        ↓
串口输出 SD 读取状态、单张耗时、分类结果和准确率
```

已存在的关键产物包括 `Vitis/design_1_wrapper.bit`、`Vitis/Dective/Debug/Dective.elf` 以及 `Vitis/Trasher/zynq_fsbl/executable.elf`。板端还需要准备 SD 文件：

```text
trash_weight/
  Head.Wc1.bin ... Head.bc3.bin
  FoldedInvertedResidual.0~15.Wc1/.bc1/.Wc2/.bc2/.Wc3/.bc3.bin
  Tail.Wc1.bin、Tail.bc1.bin、Tail.Wf1.bin、Tail.bf1.bin
  image.bin、label.bin
```

## 6. 当前复现时需要注意的问题

- `main.c` 使用的是 `trash_weight\\` 和反斜杠路径，说明它期望从 FAT 根目录访问 `trash_weight`；SD 卡目录名和大小写必须一致。
- 本仓库中没有看到上述权重/图像 `.bin` 文件，只有应用和硬件产物；没有这些文件只能启动程序，不能完成有效推理。
- Vitis 工程存在多个导出/缓存目录，实际运行应优先使用与当前硬件 XSA 对应的 `Vitis/Trasher` 平台和 `Vitis/Dective/Debug/Dective.elf`，避免混用旧的 FSBL、BSP 或 bitstream。
- `pl_conv.c` 中 `XPwdwconv_Set_PBUS3_V` 在 pointwise 封装里传入的是 `weight`，而不是 `out`；这可能是 IP 接口命名与软件封装之间的特殊约定，也可能是潜在错误，修改前应对照 `pwdwconv` 的 HLS 接口定义和仿真结果确认。
- 当前各 HLS 调用均为忙等待 `while(IsDone()==0)`，CPU 利用率和端到端吞吐率受限；若要优化，应考虑中断、DMA/缓冲复用和层间流水化。

## 7. 建议的运行检查顺序

1. 确认 Vivado 顶层仍为 `design_1_wrapper`，设备为 `xc7z020clg484-2`。
2. 确认 bitstream、XSA、BSP、FSBL 和应用来自同一次硬件导出。
3. 检查 SD0 MIO、UART0 MIO 及串口终端配置；应用标准输出为 UART0。
4. 将 `trash_weight` 目录及 100 张测试数据放到 SD 卡根目录。
5. 下载 bitstream/启动镜像，观察串口是否依次打印初始化、文件读取、单张耗时和准确率。
6. 若卡在某层，优先检查对应 IP 的 AXI-Lite 基地址、DDR 缓冲区地址、缓存一致性和权重文件长度。
