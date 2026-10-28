# Vivado HLS 使用指南：从 C 模型到 Vivado IP 核

> 适用环境：Vivado HLS / Vivado / Vitis **2019.2**，目标器件 **xc7z020**（Zynq-7000）。
> 参考文档：[trash_mobilenetv2工程说明.pdf](trash_mobilenetv2工程说明.pdf)（下称"PDF"，共 30 页，其中 §3.1 讲 Vivado 配置、§3.2 讲 Vitis 配置）。
> 本文分两部分：**第 2~5 章**是"把 HLS 的 C 工程变成 IP 核、再导入 Vivado 搭 Block Design"的操作说明；**第 6 章**是这套 HLS 加速器的架构说明（数据格式、总线接口、各 IP 的微架构、时序资源）。

---

## 目录

- [1. 现状速览](#1-现状速览)
- [2. HLS 侧：把 C 代码变成 IP 核](#2-hls-侧把-c-代码变成-ip-核)
- [3. 把 IP 核导入 Vivado（PDF §3.1）](#3-把-ip-核导入-vivadopdf-31)
- [4. 在 Block Design 中搭加速器（PDF §3.1 2)~4)）](#4-在-block-design-中搭加速器pdf-31-24)
- [5. Vitis 侧（PDF §3.2，摘要）](#5-vitis-侧pdf-32摘要)
- [6. HLS 架构说明](#6-hls-架构说明)
- [7. 从零复现的检查清单](#7-从零复现的检查清单)
- [8. 附录：命令与寄存器速查](#8-附录命令与寄存器速查)
- [9. 参考资料](#9-参考资料)

---

## 1. 现状速览

### 1.1 四个 HLS 工程

`src/hls` 下是 4 个独立的 Vivado HLS 工程，每个工程只有 1 个 solution（`solution1`），且 **IP 已经导出完毕**（`solution1/impl/ip` 里就有打包产物），可以直接跳到第 3 章导入 Vivado。

| 工程目录 | `set_top` | 源文件 | 导出 IP（VLNV） | 功能 |
|---|---|---|---|---|
| [conv/](conv/) | `conv` | [conv.cpp](conv/conv.cpp)、[conv.h](conv/conv.h)、[test_tb.cpp](conv/test_tb.cpp) | `xilinx.com:hls:conv:0.0` | 首层 3×3 标准卷积，3→32 通道、stride 2，224²→112² |
| [pwdwconv/pwdwconv/](pwdwconv/pwdwconv/) | `pwdwconv` | [pwdwconv.cpp](pwdwconv/pwdwconv.cpp)、[dwconv.cpp](pwdwconv/dwconv.cpp)、[pwconv.cpp](pwdwconv/pwconv.cpp) 及头文件、[test.cpp](pwdwconv/test.cpp)、[test_tb.cpp](pwdwconv/test_tb.cpp) | `xilinx.com:hls:pwdwconv:0.0` | 深度卷积（dwconv）与逐点卷积（pwconv）二合一，`mode` 寄存器切换 |
| [shortcut/](shortcut/) | `shortcut` | [shortcut.cpp](shortcut/shortcut.cpp)、[shortcut.h](shortcut/shortcut.h)、[test_tb.cpp](shortcut/test_tb.cpp) | `xilinx.com:hls:shortcut:0.0` | 残差逐元素相加 `dest = src1 + src2` |
| [avgpool_fc/](avgpool_fc/) | `fc` | [fc.cpp](avgpool_fc/fc.cpp)、[fc.h](avgpool_fc/fc.h)、[test_tb.cpp](avgpool_fc/test_tb.cpp) | `xilinx.com:hls:fc:0.0` | 7×7 全局平均池化 + 全连接 1280→6 |

四个工程共用同一套综合/导出配置（见各自的 `solution1/script.tcl`）：

- 器件：`xc7z020-clg400-2`（注意与 Vivado 工程用的 `xc7z020clg484-2` 封装不同，IP 本身与引脚无关，不影响导入）
- 时钟约束：`create_clock -period 5 -name default`（目标 200 MHz），时钟不确定度 12.5%
- 导出：`-format ip_catalog -rtl verilog -version 0.0.0 -vivado_optimization_level 2`
- 流程：`csim_design` → `csynth_design` → `cosim_design` → `export_design`

现有验证结果（可直接引用）：

| IP | C 仿真 | C/RTL 联合仿真 | 备注 |
|---|---|---|---|
| conv | 0 errors | **Fail**（`conv_cosim.rpt`） | 需自行复查（见 §6.10） |
| pwdwconv | `test pass!` | 未跑（无 `sim/report`） | 只做了 csim + csynth |
| shortcut | 0 errors | Pass（2580 cycles） | — |
| fc | 0 errors | Pass（65820 cycles） | 综合延迟估计 65650 cycles |

### 1.2 工程目录结构

```text
src/hls/
├─ hls使用指南.md                  本文
├─ trash_mobilenetv2工程说明.pdf    参考文档（他人的搭建过程截图）
├─ conv/  shortcut/  avgpool_fc/    单个 HLS 工程（以 conv 为例）
│  ├─ conv.cpp / conv.h             C 源码（综合源）
│  ├─ test_tb.cpp                   C 测试平台（-tb）
│  ├─ vivado_hls.app / .project     GUI 工程描述
│  └─ solution1/                    一个 solution
│     ├─ script.tcl                 可复现的 Tcl 流程（建议保留）
│     ├─ csim/  syn/  sim/          仿真、综合、C/RTL 联合仿真结果
│     └─ impl/
│        ├─ verilog/                RTL（综合产物）
│        └─ ip/                     ★ 导出的 IP 仓库：component.xml + zip
└─ pwdwconv/                        多一层嵌套：pwdwconv/pwdwconv/solution1
```

**要点**：`solution1/impl/ip/` 就是"IP 仓库（IP repository）"目录，里面同时有

- `component.xml` —— IP 的元数据（VLNV、端口、参数、驱动），Vivado 认的是它；
- `xilinx_com_hls_<名字>_0_0.zip` —— 打包好的 IP，便于拷贝给别人；
- `hdl/`、`drivers/`、`xgui/`、`constraints/<ip>_ooc.xdc`、`doc/` —— RTL、C 驱动、GUI 参数、OOC 约束。

---

## 2. HLS 侧：把 C 代码变成 IP 核

### 2.1 流程总览

```text
C/C++ 源 + 测试平台
      │  ① C Simulation（csim_design）        —— 纯 C 验证算法
      ▼
   C 综合（csynth_design）                    —— 调度/绑定，生成 RTL + 时序资源报告
      │  ② C/RTL 联合仿真（cosim_design）     —— RTL 与 C 结果比对
      ▼
   Export RTL（export_design）                —— 打包成 Vivado IP（ip_catalog）
      ▼
   solution1/impl/ip/{component.xml, *.zip}
```

### 2.2 新建一个这样的工程（GUI）

1. `Start → All Programs → Xilinx Design Tools → Vivado HLS 2019.2`，`Create New Project`。
2. 填工程名、路径；**Top Function** 先填与函数同名的顶层（如 `conv`）。
3. `Add Files` 加源文件与头文件；再 `Add Files` 加 `test_tb.cpp` 并勾选 **Add as Test Bench**。
4. 选 Part：`xc7z020-clg400-2`（或与板上器件同族的 z020）。
5. 打开 `Solution → New Solution`，指定 solution 名（如 `solution1`）、时钟周期 **5 ns**、不确定度。
6. 写约束：在源文件里用 `#pragma HLS ...`（见 §6.8），或在 `Solution → Constraints → Directive` 里图形化加。
7. 依次点工具栏：`Run C Simulation` → `Run C Synthesis` → `Run C/RTL Cosimulation` → `Export RTL`。

> `Export RTL` 对话框里选 **Vivado IP**（Format = `ip_catalog`），语言 Verilog，Vendor `xilinx.com`，Library `hls`，Version `0.0`。导出后 `solution1/impl/ip/` 就会出现 `component.xml` 和 zip。

### 2.3 复现现有工程（GUI）

用 Vivado HLS 打开 `conv/vivado_hls.app`（或 `File → Open Project` 选工程目录），选 `solution1`，直接点 `Run C Synthesis` / `Export RTL` 即可。工程里已经记录了 top、part、时钟和源文件，无需重新配置。

> ⚠️ 重新 `Export RTL` 会**覆盖** `impl/ip` 内容。如果 Vivado 工程已经引用了这个目录，之后必须在 Vivado 里 `Refresh IP Catalog` 并对 Block Design 里的实例做 `Upgrade IP`（见 §3.6）。

### 2.4 复现现有工程（命令行，推荐写进脚本）

```bat
:: 三个平铺工程（conv / shortcut / avgpool_fc）：工作目录是 src\hls
cd /d <repo>\src\hls
<Xilinx>\Vivado\2019.2\bin\vivado_hls.bat -f conv\solution1\script.tcl
<Xilinx>\Vivado\2019.2\bin\vivado_hls.bat -f shortcut\solution1\script.tcl
<Xilinx>\Vivado\2019.2\bin\vivado_hls.bat -f avgpool_fc\solution1\script.tcl

:: pwdwconv 的脚本用的是无前缀相对路径（add_files dwconv.cpp），工作目录必须在 src\hls\pwdwconv
cd /d <repo>\src\hls\pwdwconv
<Xilinx>\Vivado\2019.2\bin\vivado_hls.bat -f pwdwconv\solution1\script.tcl
```

注意每个 `script.tcl` 里的路径风格不一样（`conv/conv.h` vs `dwconv.cpp`），这是历史原因，不要随意挪动工作目录。

### 2.5 只想导出、不想重跑综合？

`export_design` 依赖 `solution1/syn` 的综合结果，可以在 GUI 里直接点 `Export RTL`，命令行则：

```tcl
open_project conv
open_solution "solution1"
export_design -rtl verilog -format ip_catalog -version "0.0.0"
```

---

## 3. 把 IP 核导入 Vivado（PDF §3.1）

PDF 第 5~6 页的做法：**右键 Vivado Repository → Add Repository → 选择 `hls` 文件夹**。本质是把"含 `component.xml` 的目录"注册为 IP 仓库。下面给出三种等价做法。

### 3.1 前置检查

1. Vivado 版本 ≥ 导出 IP 的 HLS 版本（都用 2019.2 最稳）。
2. 确认 4 个 `component.xml` 都存在：

   ```text
   src/hls/conv/solution1/impl/ip/component.xml
   src/hls/pwdwconv/pwdwconv/solution1/impl/ip/component.xml
   src/hls/shortcut/solution1/impl/ip/component.xml
   src/hls/avgpool_fc/solution1/impl/ip/component.xml
   ```

3. 新建（或打开）Vivado 工程：`RTL Project`，`Sources/Constraints` 不添加文件，Part 选 `xc7z020clg484-2`（PDF 第 3~4 页）。

### 3.2 方式 A：Add Repository（PDF 的做法，推荐）

1. 打开 `IP Catalog` 窗口（`Window → IP Catalog`），在树根 **Vivado Repository** 上右键 → `Add Repository...`；
   也可以走 `Flow Navigator → Project Manager → Settings → IP → Repository`，点右侧的 `+`（Add Repository）。
2. 选中 **`src/hls`** 目录（Vivado 会递归搜索，能找到 4 个 `component.xml`）。若只识别出部分 IP，就分别添加 `conv/solution1/impl/ip`、`pwdwconv/pwdwconv/solution1/impl/ip` 等目录。
3. 弹窗点 `OK` / `Apply`，IP Catalog 自动刷新。
4. 在 IP Catalog 搜索框输入 `conv`、`pwdwconv`、`shortcut`、`fc`，应能看到 `xilinx.com:hls:*:0.0` 四个 IP。

### 3.3 方式 B：导入打包好的 zip

仓库里已经有 `xilinx_com_hls_conv_0_0.zip` 等 4 个 zip，适合只把 IP 拷给别人的场景：

1. 把 zip 解压到任意目录（zip 顶层就是 `component.xml`），例如 `ip_repo\conv\`；
2. `Settings → IP → Repository → +`，添加 `ip_repo` 这个**父目录**；
3. 后续同方式 A。

### 3.4 方式 C：Tcl 脚本（可复现、可进版本库）

```tcl
# 在 Vivado Tcl Console 或 -source 的脚本里执行
set ip_repo "D:/work/FPGA_COMPETION/src/hls"
set_property ip_repo_paths [concat [get_property ip_repo_paths [current_project]] [list $ip_repo]] [current_project]
update_ip_catalog -rebuild

# 检查是否识别到
get_ipdefs *hls*        ;# 应返回 xilinx.com:hls:conv:0.0 等 4 条
```

搭 Block Design 时也可以直接用 Tcl 创建实例：

```tcl
create_bd_cell -type ip -vlnv xilinx.com:hls:conv:0.0 conv_0
create_bd_cell -type ip -vlnv xilinx.com:hls:pwdwconv:0.0 pwdwconv_0
create_bd_cell -type ip -vlnv xilinx.com:hls:shortcut:0.0 shortcut_0
create_bd_cell -type ip -vlnv xilinx.com:hls:fc:0.0 fc_0
```

### 3.5 确认导入成功

- IP Catalog 中四个 IP 状态正常（未被标成 `Locked`）；
- `Reports → Report IP Status`（或综合日志）中没有 "IP definition not found"；
- 生成 BD 后 `Validate Design` 无 IP 相关错误。

### 3.6 常见问题

| 现象 | 原因 | 处理 |
|---|---|---|
| Add Repository 后目录里看不到 IP | 选错层级 / 目录下没有 `component.xml` | 直接从 `solution1/impl/ip` 逐个添加 |
| IP 显示 `Locked` | IP 引用的目录被移动，或曾被升级后版本变化 | `Reports → Report IP Status` 查看，必要时 `Upgrade IP` / 删除后重加 |
| BD 里 IP 参数是灰的 | HLS IP 是"生成物"，参数在 HLS 里定死 | 回 HLS 改代码/`config_export` 后重新 export，再升级 IP |
| 改了 C 代码重导后 Vivado 仍用旧 RTL | 未刷新仓库 | `update_ip_catalog -rebuild`，并在 BD 里 `Upgrade IP`、重跑 `Generate Output Products` |
| 器件封装不一致（clg400 vs clg484） | HLS 工程 part 与板卡 part 不同 | 无需处理；IP 与引脚无关，直接导入即可 |

---

## 4. 在 Block Design 中搭加速器（PDF §3.1 2)~4)）

### 4.1 ZYNQ7 Processing System 配置（PDF 第 9~14 页）

| 项目 | 设置 | 说明 |
|---|---|---|
| HP Slave AXI Interface | `S_AXI_HP0~HP3` 全 enable | 四个高带宽口给 4 个 IP 的数据面用 |
| SD 卡 | `SD0`，MIO40~45 | 从 SD 卡读权重与图像 |
| UART | PDF 用 `UART1`（MIO12~13） | 本仓库现有 BD 用 `UART1` 但引脚为 **MIO48~49**，以底板手册为准 |
| Bank1 电压 | `LVCMOS 1.8V` | 与底板 IO 电平匹配 |
| PL Fabric Clocks | `FCLK_CLK0` = **130 MHz** | 见 §6.9：pwdwconv 估计 7.146 ns，130 MHz（7.69 ns）刚好收敛 |
| DDR | `MT41J256M16RE-125`，位宽 32 bit | 与板上 DDR 颗粒一致 |

> 本仓库现有 BD（[design_1.bd](../trash/trash.srcs/sources_1/bd/design_1/design_1.bd)）里 FCLK0 记录为 **100 MHz**（`PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ=100`），部分旧文档记录为约 128.57 MHz，实际请以 BD 中 PS 的配置为准；三个值都满足 pwdwconv 的 7.15 ns 需求。

### 4.2 添加 IP 并连线（PDF 第 15~19 页）

新建 Block Design（`Create Block Design`），用 `Add IP` 依次加入 `conv`、`pwdwconv`、`shortcut`、`fc` 和 `ZYNQ7 Processing System`。

PDF 明确指定的连线（其余由 `Run Connection Automation` 自动接）：

| IP 的 AXI Master | 连到 PS | 传什么 |
|---|---|---|
| `conv_0/m_axi_IN1`、`IN2`、`IN3` | `S_AXI_HP0`、`HP1`、`HP2` | 输入图像的 3 个通道平面 |
| `conv_0/m_axi_OUT_r` | `S_AXI_HP3` | 卷积输出（4 通道打包） |
| `conv_0/m_axi_W` | 自动（本仓库为 HP0） | 权重 + 偏置 |
| `pwdwconv_0/m_axi_PBUS1/2/3/4` | `HP0`、`HP2`、`HP1`、`HP3` | 输入/输出/权重（按模式复用） |
| `pwdwconv_0/m_axi_SBUS1`、`SBUS2` | `HP1`、`HP3` | 16 bit 标量：权重/偏置/输出 |
| `shortcut_0/m_axi_IN1`、`IN2` | `HP0`、`HP2` | 两个加数 |
| `shortcut_0/m_axi_OUT_r` | `HP3` | 残差结果 |
| `fc_0/m_axi_IN_r`、`W`、`O` | 自动（本仓库 HP0/HP2/HP1） | 7×7 特征图输入（池化在 IP 内做）、权重、分类输出 |
| 4 个 IP 的 `s_axi_CTRL` | 经 `ps7_0_axi_periph` 到 `M_AXI_GP0` | 寄存器配置（地址、参数、start/done） |

**为什么这样分**：PS 有 4 个 HP 从口，正好按"数据流方向"把 12 个以上 master 均匀摊到 HP0~HP3，避免所有 IP 抢同一个口导致带宽瓶颈；分配时优先保证"一个 IP 的输入口和输出口不同 HP"。

### 4.3 Connection Automation、地址分配

1. `Run Connection Automation` 全勾选：Vivado 会自动生成 `ps7_0_axi_periph`（AXI-Lite 互连）、`axi_mem_intercon~_3`（4 个数据互连）、`proc_sys_reset`，并统一 `FCLK_CLK0` + `FCLK_RESET0_N`。
2. `Run Block Automation` 处理 ZYNQ 的固定 IO（DDR、FIXED_IO、SD、UART 引出到顶层端口）。
3. `Address Editor` 里确认 4 个 IP 的 `s_axi_CTRL` 基地址无重叠。本仓库现有 BD 分配为：

   | IP | 基地址 |
   |---|---|
   | `conv_0/s_axi_CTRL` | `0x43C0_0000` |
   | `fc_0/s_axi_CTRL` | `0x43C1_0000` |
   | `pwdwconv_0/s_axi_CTRL` | `0x43C2_0000` |
   | `shortcut_0/s_axi_CTRL` | `0x43C3_0000` |

> 数据面（HP 口）不占地址空间，软件只需把 DDR 缓冲区地址写进 IP 的寄存器即可。
> 注意：HLS 的 `data_t`（16 bit）master 会被综合成 **32 bit** AXI 数据总线，`ap_int<64>` 打包端口则是 **64 bit**；HP 口是 64 bit，Vivado 会自动插入位宽转换（BD 里的 `auto_us`），不要手动关闭。

### 4.4 验证与出 bitstream（PDF 第 19~22 页）

1. `Validate Design` 通过（无地址冲突、无未连端口）。
2. 在 Sources 里右键 `design_1` → `Generate Output Products`（Global 即可）。
3. 右键 `design_1` → `Create HDL Wrapper`，选 `Let Vivado manage wrapper`。
4. `Generate Bitstream`。
5. `File → Export → Export Hardware`，勾选 **Include bitstream**，导出 `.xsa` 给 Vitis 用。

---

## 5. Vitis 侧（PDF §3.2，摘要）

详细步骤看 [../trash/FPGA工程结构与运行说明.md](../trash/FPGA工程结构与运行说明.md)，这里只列 HLS IP 相关的关键动作：

1. `Tools → Launch Vitis`，用上一步的 `.xsa` 建 **Platform Project**。
2. BSP 里把 `use_lfn` 设为 1（支持长文件名，权重文件名较长）。
3. 建 **Application Project**（Empty Application），把 SDK 源码拷进 `src`。
4. 改 `lscript.ld`：**stack / heap 调大**（卷积网络会开大块缓冲，默认值不够会跑飞）。
5. 把 `trash_weight` 目录和 `image.bin`/`label.bin` 拷到 SD 卡根目录。
6. 串口终端接 UART，`Run` 后观察每层耗时与分类结果。

软件调用每个 IP 的固定套路（4 个 IP 一样）：

```c
XConv_Set_in1_V(&inst, in1_addr);     // 每个 m_axi 指针都要写基地址（32 位地址寄存器）
XConv_Set_weight_V(&inst, w_addr);
XConv_Set_bias_V(&inst, b_addr);
XConv_Set_out_V(&inst, o_addr);
XConv_Start(&inst);
while (!XConv_IsDone(&inst));         // 当前实现是忙等 ap_done
```

---

## 6. HLS 架构说明

### 6.1 系统级架构

PL 侧只有 4 个 IP，全部"共享 DDR、由 PS 串行调度"：

```text
                  ┌──────────────────────────── PS (Cortex-A9) ───────────────────────────┐
                  │  读 SD 卡权重/图像 → 量化成 16bit 定点 → 写 DDR → 逐层启动 IP → 读结果  │
                  └───────┬───────────────────────────────────────────────────▲──────────┘
                          │ AXI-Lite（配置 + start/done）                      │
  ┌───────────────────────▼───────────────────────────────────────────────────┴──────────┐
  │ PL                                                                                    │
  │  conv_0  →  pwdwconv_0（反复调用）  →  shortcut_0（残差）  →  fc_0（GAP + FC）         │
  │  3→32,s2    expand-pw / dw / project-pw        dest = src1 + src2      1280→6          │
  └───────────────────────────────────┬───────────────────────────────────────────────────┘
                                      │ AXI4 Master × N → S_AXI_HP0~3 → DDR
                                      ▼
```

- **没有层间流水**：一次只跑一个 IP，中间结果（张量）全部落回 DDR，PS 轮询 `ap_done` 后启动下一层。好处是接口简单、每个 IP 可独立仿真与复用；代价是 DDR 往返带宽和 PS 调度开销。
- **层与层之间靠"打包格式"对齐**：除首层外，所有张量都是"4 通道交织"的 64 bit 打包格式，因此 `conv → pwdwconv → … → fc` 可以直接首尾相接，PS 不做任何格式转换。
- **一个 IP 覆盖多组参数**：`pwdwconv` 通过 `mode/ch_in/ch_out/stride/fsize/act` 六个寄存器覆盖整个网络的 depthwise/pointwise 层；`shortcut` 用 `length` 覆盖任意长度的残差相加。

### 6.2 数值格式与内存布局

| 类型 | 定义 | 含义 |
|---|---|---|
| `data_t` | `ap_fixed<16,6,AP_RND,AP_SAT>` | 6 位整数 + 10 位小数（Q6.10），LSB = 1/1024，范围 ±32；软件侧用比例因子 1024 把 float 参数量化成 16 bit |
| `data_pack_t` | `ap_int<64>` | **4 个通道**×16 bit 打包成一个 64 bit 字 |
| 激活 | `relu6(x)` | 截断到 `[0, 6]`，MobileNetV2 的标准激活 |

**打包布局**（除 conv 的输入外，全网络统一）：

```text
y[(c/4) * H*W + p*4 + (c%4)] = x[c][p]        // c: 通道, p: 像素线性下标
```

即 `[C/4][H*W][4]`，同一像素的 4 个相邻通道连续存放。测试平台里的参考实现（[test_tb.cpp](avgpool_fc/test_tb.cpp)）：

```cpp
void interleave(data_t* x, data_t* y, int h, int w, int ch) {
  for (int n = 0; n < ch/4; n++)
    for (int i = 0; i < h*w; i++)
      for (int k = 0; k < 4; k++)
        y[n*4*h*w + i*4 + k] = x[(n*4+k)*h*w + i];
}
```

这样做的原因：**64 bit 一拍搬走 4 个通道**，一个 DSP 阵列可以同时算 4 个通道，带宽利用率是 16 bit 单独搬的 4 倍；代价是 PS/上位机必须按此布局准备数据（否则结果全错，而且不会报错）。

> ⚠️ 例外：`conv` 的输入是 **3 个独立平面**（`data_t* in1/in2/in3`，各 224×224），因为首层只有 3 个通道、凑不满 4 通道打包。conv 的输出已经是打包格式。

### 6.3 接口架构

每个 IP 都是"**1 个 AXI-Lite 控制口 + 若干 AXI4 Master 数据口**"，全部 `offset=slave`（基地址由 PS 在运行时写寄存器给出），没有 AXI-Stream。

| IP | 控制口 | Master 端口（BD 名） | 数据宽度 | 承载的指针 |
|---|---|---|---|---|
| conv | `s_axi_CTRL` | `m_axi_IN1/IN2/IN3` | 32 bit | `in1`、`in2`、`in3`（16 bit 数据） |
| | | `m_axi_W` | 32 bit | `weight`、`bias`（同一 bundle，两个基地址寄存器） |
| | | `m_axi_OUT_r` | 64 bit | `out`（打包） |
| pwdwconv | `s_axi_CTRL` | `m_axi_PBUS1~4` | 64 bit | 复用：输入/输出/权重（见 §6.5） |
| | | `m_axi_SBUS1/2` | 32 bit | 复用：权重/偏置/输出（16 bit 标量） |
| shortcut | `s_axi_CTRL` | `m_axi_IN1`、`IN2`、`OUT_r` | 64 bit | `src1`、`src2`、`dest` |
| fc | `s_axi_CTRL` | `m_axi_IN_r` | 32 bit | `in`（4 通道打包的 7×7 特征图，池化在 IP 内做） |
| | | `m_axi_W` | 32 bit | `weight`、`bias`（同一 bundle） |
| | | `m_axi_O` | 32 bit | `out`（6 个类别） |

关键 pragma（以 [conv.cpp](conv/conv.cpp) 为例）：

```cpp
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE m_axi depth=100352 port=out   offset=slave bundle=OUT max_read_burst_length=32
#pragma HLS INTERFACE m_axi depth=864    port=weight offset=slave bundle=W
#pragma HLS INTERFACE m_axi depth=32     port=bias   offset=slave bundle=W
#pragma HLS INTERFACE m_axi depth=150528 port=in1    offset=slave bundle=IN1 max_read_burst_length=64
```

- **同一 `bundle` = 同一根 AXI 总线**（如 `W` 同时给 weight/bias，省一个 master 口，代价是两者串行访问）；
- `depth` 是 HLS 的访问范围提示，用于 burst 规划，**实际访问长度不要超过它**（见 §6.10）；
- `max_read_burst_length` 把长条搬运切成定长 burst，兼顾 HP 口效率与仲裁公平。

**控制寄存器映射**（由 `impl/ip/drivers/*/src/x*_hw.h` 生成，单位字节）：

| IP | 0x00 | 0x04 | 0x08 | 0x0C | 0x10 起 |
|---|---|---|---|---|---|
| conv | `AP_CTRL` | `GIE` | `IER` | `ISR` | `IN1_V`(0x10)、`IN2_V`(0x18)、`IN3_V`(0x20)、`WEIGHT_V`(0x28)、`BIAS_V`(0x30)、`OUT_V`(0x38)，每个指针一个 32 位寄存器 |
| shortcut | `AP_CTRL` | `GIE` | `IER` | `ISR` | `SRC1_V`(0x10)、`SRC2_V`(0x18)、`DEST_V`(0x20)、`LENGTH_R`(0x28) |
| fc | `AP_CTRL` | `GIE` | `IER` | `ISR` | `IN_V`、`WEIGHT_V`、`BIAS_V`、`OUT_V` |
| pwdwconv | `AP_CTRL` | `GIE` | `IER` | `ISR` | `PBUS1~4_V`(0x10/0x18/0x20/0x28)、`SBUS1/2_V`(0x30/0x38)、`CH_IN`(0x40)、`CH_OUT`(0x48)、`STRIDE`(0x50)、`FSIZE`(0x58)、`ACT`(0x60)、`MODE`(0x68) |

`AP_CTRL` 的 bit0 = `ap_start`、bit1 = `ap_done`、bit2 = `ap_idle`、bit3 = `ap_ready`，软件就是写 start + 轮询 done。

### 6.4 conv：3×3 标准卷积（首层）

**参数**（[conv.h](conv/conv.h)）：`N=224`（输入边长）、`K=3`、`S=2`、`P=1`、`Tr=Tc=28`（输出 tile）、`Tm=8`（输出通道 tile）、`Tn=3`（输入通道 = 全部）。

**分块**：输出 112×112 被切成 4×4 = 16 个 28×28 tile；每个 tile 需要 57×57×3 的输入（`Tr*S+K-S = 57`）。

**每块的内部结构**：

```text
for (ch = 0; ch < 32; ch += 8) {           // 4 个输出通道组
  #pragma HLS DATAFLOW
  load_weight ──► compute ──► store_output // 3 个进程并发（dataflow_in_loop 层级 + FIFO）
}
```

- `compute`：`kx,ky,i,j` 四重循环 + `#pragma HLS PIPELINE II=1`，最内层 `Tm×Tn = 8×3 = 24` 个乘加全展开 → **每拍 24 路 MAC**；
- `store_output`：写回前做 `relu6`，并按 4 通道打包成 64 bit；
- `load_input`：越界填 0 实现 padding，`PIPELINE` 保证行级连续搬运。

**块间流水**：`fm_in_buff1/fm_in_buff2` 双缓冲 + `pp` 标志交替，"算当前块"和"搬下一块"重叠。`compute_output` 内部按 8 个输出通道一组分 4 组，组内 `load_weight→compute→store_output` 走 DATAFLOW 并发，组与组之间串行。

**资源/时序**：44 BRAM18K、28 DSP、14014 FF、13957 LUT；估计 4.539 ns（满足 5 ns）。

### 6.5 pwdwconv：depthwise + pointwise 二合一

一个 IP 里塞了两套数据通路，靠 `mode` 选择（[pwdwconv.cpp](pwdwconv/pwdwconv.cpp)）：

```cpp
if (mode == 0) dwconv(PBUS1, PBUS2, SBUS1, SBUS2, PBUS3, PBUS4, ch_in, fsize, stride);
else          pwconv(PBUS1, PBUS2, PBUS3, SBUS1, PBUS4, ch_in, ch_out, fsize, act);
```

#### 端口复用关系（软件必须按这个顺序喂地址）

| 模式 | PBUS1 | PBUS2 | PBUS3 | PBUS4 | SBUS1 | SBUS2 |
|---|---|---|---|---|---|---|
| `mode=0` dwconv | 输入（4 通道包 0） | 输入（包 1） | 输出（包 0） | 输出（包 1） | 权重 `[C][3][3]` | 偏置 `[C]` |
| `mode=1` pwconv | 输入 | 权重 W1（偶数行） | 权重 W2（奇数行） | 输出 | 偏置 `[C_out]` | **未使用** |

这正是"pointwise 时 `PBUS3` 传的是 weight 而不是 out"的原因——**不是 bug，是端口复用**。

#### dwconv（`mode=0`）

- 参数：`Tm=8`（通道 tile）、`Tr=Tc=7`（7×7 输出 tile）、`K=3`、`P=1`；输入缓冲 `15×15×8`（stride=2 时）。
- **三级软件流水**：`load_wrapper → compute → store_output`，用三个 `BlockID{ch,row,col}` 游标（load/com/store）错开一个块，实现"边搬、边算、边写"；`#pragma HLS LOOP_TRIPCOUNT min=62 max=62 avg=62` 告诉 HLS 循环次数，便于它算延迟。
- `compute` 内 `kx,ky,i,j` 流水，最内 `Tm=8` 个通道展开 → **每拍 8 路 MAC**；stride 由 `i*stride+kx` 直接体现在索引里，一套硬件支持 stride 1/2。
- `relu6` 在 `store_output` 里做；`update_block` 负责块坐标推进，`#pragma HLS INLINE`。

#### pwconv（`mode=1`）

- 参数：`Tp=196`（一次处理的像素块，7×7 输出时实际只用 49）、`Tm=16`（输出通道 tile）、`Tn=4`（输入通道 tile = 一个打包字）。
- **两级乒乓**：输入/权重 `fm_in_buff1/2 + wt_buff1/2` 乒乓（隐藏搬运），输出 `fm_out1/2` 乒乓（隐藏写回）；`channel_in` 方向按 `Tn=4` 累加，`LOOP_TRIPCOUNT min=19 max=19 avg=19`。
- `compute` 内 `mm×nn = 16×4 = 64` 个乘加全展开 → **每拍 64 路 MAC**（这是全网络算力最高的部分）。
- 权重按**输出通道奇偶拆成两份**：W1 存偶数行、W2 存奇数行，每行按 4 个输入通道打包（`load_weight` 里 `weight1[(m+mm)*channel_in/4 + n/4]`、`weight2[(m+mm+1)*...]`），所以 `PBUS2/PBUS3` 各传一半。
- `ACT` 控制是否做 relu6（`act=1` 有激活，`act=0` 线性输出，用于 bottleneck 的 project 层）。
- `ch_out` 不是 16 的整数倍时，`store_output` 用 `max_ch = min(Tm, ch_out-m)` 收尾。

> 两套通路同时存在意味着资源是两者之和（110 BRAM、112 DSP），但同一时刻只有一个在跑；面积换的是"一个 IP 顶两类层"的复用性。

### 6.6 fc：全局平均池化 + 全连接

- 参数（[fc.h](avgpool_fc/fc.h)）：`Tn=32`（输入通道 tile = 8 个打包字）、`N=6`（类别数）。
- **池化在 IP 内部完成**：`load_feature` 把 `[n:n+32]` 共 8 个包（32 通道 × 7×7）读进 `buff[8][49][4]`，用 5 级归约树（24→12→6→3→2→1）把 49 个像素加起来，再乘 `1/49` → 得到 32 个通道的均值。所以 **PS 不需要单独做 avgpool 层**。
- **全连接**：`out[i] += fm_in[j] * wt[i][j]`，`i` 方向 6 个输出、`j` 方向 1280 个输入，按 `Tn=32` 分成 40 次迭代累加；`out_buff[6]` 全分区，实现 6 路并行；输入/权重双缓冲乒乓。
- 权重是**普通（未打包）**的 `data_t[6][1280]`，偏置 `data_t[6]`。
- 综合延迟 65650 周期（约 0.33 ms @200 MHz 估计），资源 14 BRAM、3 DSP、6323 FF、8779 LUT。

### 6.7 shortcut：残差相加

- `dest[i] = src1[i] + src2[i]`，按 64 bit 字遍历 `length/4` 次，每次解出 4 个 16 bit 定点相加再打包回写；`#pragma HLS PIPELINE II=1` + `UNROLL 4` → 每拍处理 4 个像素。
- **不做 relu6**：符合 MobileNetV2 的约定（残差相加后不激活，激活只发生在 bottleneck 的 project 卷积末）。
- 资源很轻：54 BRAM（全是 FIFO/接口缓冲）、0 DSP、2402 FF、3163 LUT。

### 6.8 HLS 指令清单

| 指令 | 出现位置 | 作用 |
|---|---|---|
| `INTERFACE s_axilite ... bundle=CTRL` | 各 IP 顶层 | 生成 AXI-Lite 控制口，`return` 映射成 `ap_start/ap_done/...` |
| `INTERFACE m_axi ... offset=slave bundle=X depth=N max_*_burst_length=M` | 各 IP 顶层指针 | 每个 bundle 一根 AXI4 Master；基地址走寄存器；burst 长度切分 |
| `PIPELINE` / `PIPELINE II=1` | 内层像素循环 | 流水化，目标每拍出一个结果 |
| `DATAFLOW` | `conv::compute_output` 的通道组循环体 | 三个子函数并发，HLS 生成 `dataflow_in_loop` + FIFO 通道 |
| `ARRAY_PARTITION complete dim=1/2` | 各 tile 缓冲 | 把数组拆成寄存器/独立 BRAM，支撑上面的并行度（否则一个数组只有 1~2 个读写口） |
| `UNROLL` | 通道方向小循环 | 完全展开成并行乘法器 |
| `LOOP_TRIPCOUNT` | `dwconv`/`pwconv` 的主循环 | 告知迭代次数，改善延迟估计与调度 |
| `INLINE` / `INLINE off` | `update_block`、`load_bias` | 控制是否内联（`off` 便于在报告里单独看延迟） |
| `memcpy` | 大块搬运（权重、偏置） | HLS 会推断成 burst 拷贝，比逐元素赋值省指令 |

> 与"纯 DATAFLOW 风格"不同，这里的**层内流水靠手工双缓冲（`pp` 标志）实现**，`DATAFLOW` 只用在 conv 的通道组内部。原因是顶层没有用 AXI-Stream，跨函数传递的是数组，`DATAFLOW` 只能覆盖 `load→compute→store` 这类“生产者-消费者”结构。

### 6.9 资源与时序

综合估计（`solution1/syn/report/*_csynth.rpt`，目标 5.00 ns，12.5% 不确定度）：

| IP | 估计时钟 | BRAM18K | DSP48E | FF | LUT | LUT 占比 |
|---|---:|---:|---:|---:|---:|---:|
| conv | 4.539 ns | 44 | 28 | 14014 | 13957 | 26% |
| pwdwconv | **7.146 ns** | 110 | 112 | 41625 | 38966 | 73% |
| shortcut | 4.375 ns | 54 | 0 | 2402 | 3163 | 5% |
| fc | 4.375 ns | 14 | 3 | 6323 | 8779 | 16% |
| 合计 | — | 222 / 280 (79%) | 143 / 220 (65%) | 64364 / 106400 (60%) | 64865 / 53200 (**122%**) | — |

**结论**：

1. **pwdwconv 是全设计的时序瓶颈**：估计 7.146 ns ≈ 140 MHz，所以 200 MHz 目标不成立，PDF 选 **130 MHz**（7.69 ns）刚好够；如果再把时钟提到 150 MHz 以上，必须先优化 pwconv 的 64 路 MAC 阵列（例如把 `Tm=16` 降到 8 并接受吞吐下降，或对 `compute` 加 `PIPELINE` 的 retiming 约束）。
2. LUT 估计之和已超过器件容量，实际综合会做跨模块优化，但仍说明**余量很小**；本仓库现有完整设计（含 VDMA/CDMA/摄像头）实现后 Slice 约 97.7%，扩展功能前一定要先看 [../trash/FPGA工程结构与运行说明.md](../trash/FPGA工程结构与运行说明.md) 里的资源报告。
3. 四个 IP 的接口时钟只有一个 `ap_clk`，**必须与 AXI 互连、HP 口同源同频**（BD 里全接 `FCLK_CLK0`）；否则要由 Vivado 插入 AXI 时钟转换，面积、性能和时序都会打折扣。

### 6.10 软硬件契约与已知风险

1. **数据布局是硬契约**：除 conv 输入外，所有张量必须按 `[C/4][H*W][4]` 打包。格式错了不会报错，只会输出乱码结果，调试时先查这一条。
2. **conv 输入是 3 个平面**（不是打包），且必须按 `in1/in2/in3` 三个基地址分别给。
3. **`pwdwconv` 的端口复用**要按 §6.5 的表来：`mode` 没设对、或 `PBUS3` 该传权重时传了输出，都会算错。
4. **`depth` 提示偏小**：`pwdwconv` 的 `SBUS1` 写了 `depth=100`，但实际用量是 dwconv 权重 `9×通道数`、pwconv 偏置最多 `ch_out`（尾层 1280）。`depth` 是 HLS 的访问范围提示，偏小会让 burst 规划/地址范围推断不足，**建议按实际上限（如 1280）修正后重新综合并补跑 cosim**。
5. **cosim 状态**：`conv` 的 C/RTL 联合仿真报告为 Fail，`pwdwconv` 没有 cosim 报告。上板前建议对这两个 IP 重跑 `cosim_design` 定位原因；`conv` 里有 `cout` 调试打印和 `while(true)` 循环结构，是常见的 cosim 干扰项，可先注释掉打印再比对。
6. **Cache 一致性**：HP 口不过 D-Cache。PS 写完输入/权重后要 `Xil_DCacheFlushRange`，读 IP 输出前要 `Xil_DCacheInvalidateRange`；否则会读到旧数据。
7. **参数同名冲突**：`dwconv.h` 定义 `Tm=8`，`pwconv.h` 定义 `Tm=16`，`pwdwconv.cpp` 同时包含两者会触发宏重定义告警（后者生效；`MAX_LEN` 两边都是 1024，无影响）。目前 `pwdwconv.cpp` 不使用这些宏，所以无害；要改 tile 参数时注意别改错头文件。
8. **单层串行、忙等**：PS 是"启动一层 → 轮询 done → 启动下一层"，CPU 全程占用；若要提速，方向是中断（IP 自带的 `interrupt` 口在现有 BD 中并未连接）+ 层间流水 + 减少 DDR 往返。

---

## 7. 从零复现的检查清单

1. **HLS**：4 个工程分别 `csim_design` → `csynth_design` → `cosim_design` → `export_design -format ip_catalog`；确认 `solution1/impl/ip/component.xml` 存在。
2. **导入**：Vivado 新建 `xc7z020clg484-2` 工程 → `Settings → IP → Repository → +` 添加 `src/hls`（或 4 个 `impl/ip` 目录）→ `update_ip_catalog -rebuild`。
3. **Block Design**：加 4 个 IP + ZYNQ7 → 配 PS（HP0~3 全开、SD0、UART、FCLK 130 MHz、DDR 参数）→ `Run Connection Automation` → 按 §4.2 核对 m_axi ↔ HP 连线 → 确认 4 个 `s_axi_CTRL` 基地址。
4. **验证**：`Validate Design` 通过 → `Generate Output Products` → `Create HDL Wrapper`。
5. **综合实现**：`Generate Bitstream`，检查时序报告（重点看 `pwdwconv_0` 的路径）与资源（Slice/BRAM 是否接近满）。
6. **导出**：`Export Hardware`（含 bitstream）得到 `.xsa`。
7. **Vitis**：Platform Project → `use_lfn=1` → Empty Application → 调大 `lscript.ld` 的 stack/heap → 拷源码与 `trash_weight` 到 SD 卡。
8. **上板**：JTAG 启动模式 → 下载 bitstream → Run → 串口看每层耗时与 Top-1 结果。

---

## 8. 附录：命令与寄存器速查

```tcl
# ---- HLS 侧（在 src/hls 下执行）----
open_project conv
open_solution "solution1"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog -version "0.0.0"

# ---- Vivado 侧 ----
set ip_repo "D:/work/FPGA_COMPETION/src/hls"
set_property ip_repo_paths [concat [get_property ip_repo_paths [current_project]] [list $ip_repo]] [current_project]
update_ip_catalog -rebuild
get_ipdefs *hls*        ;# 应返回 xilinx.com:hls:conv:0.0 等 4 条
create_bd_cell -type ip -vlnv xilinx.com:hls:pwdwconv:0.0 pwdwconv_0
```

```c
/* pwdwconv 的关键寄存器（偏移 0x40 起） */
#define CH_IN   0x40
#define CH_OUT  0x48
#define STRIDE  0x50
#define FSIZE   0x58
#define ACT     0x60
#define MODE    0x68   /* 0 = depthwise, 1 = pointwise */
```

| 项目 | 值 |
|---|---|
| HLS/Vivado 版本 | 2019.2 |
| HLS 综合器件 | `xc7z020-clg400-2` |
| 板卡器件 | `xc7z020clg484-2` |
| 目标时钟约束 | 5 ns（200 MHz），不确定度 12.5% |
| 实际 PL 时钟（PDF） | 130 MHz（本仓库 BD 为 100 MHz） |
| 控制口基地址 | conv `0x43C0_0000`、fc `0x43C1_0000`、pwdwconv `0x43C2_0000`、shortcut `0x43C3_0000` |
| 定点格式 | `ap_fixed<16,6>`，LSB=1/1024，量化比例因子 1024 |

---

## 9. 参考资料

- [trash_mobilenetv2工程说明.pdf](trash_mobilenetv2工程说明.pdf)：IP 导入（第 5~6 页）、ZYNQ 配置（第 9~14 页）、BD 连线（第 15~19 页）、出 bitstream（第 20~22 页）、Vitis（第 23~29 页）。
- [../trash/FPGA工程结构与运行说明.md](../trash/FPGA工程结构与运行说明.md)：本仓库现有 Vivado 工程（`design_1`、地址映射、PS 软件执行图、实现资源与注意事项）。
- HLS 源文件：[conv.cpp](conv/conv.cpp)、[dwconv.cpp](pwdwconv/dwconv.cpp)、[pwconv.cpp](pwdwconv/pwconv.cpp)、[shortcut.cpp](shortcut/shortcut.cpp)、[fc.cpp](avgpool_fc/fc.cpp) 及各自 `solution1/script.tcl`、`syn/report/*_csynth.rpt`。
- Xilinx UG902《Vivado Design Suite User Guide: High-Level Synthesis》——`INTERFACE/PIPELINE/DATAFLOW/ARRAY_PARTITION` 的权威语义。
