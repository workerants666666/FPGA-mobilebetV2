// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XPWDWCONV_H
#define XPWDWCONV_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xpwdwconv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XPwdwconv_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XPwdwconv;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPwdwconv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPwdwconv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPwdwconv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPwdwconv_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XPwdwconv_Initialize(XPwdwconv *InstancePtr, u16 DeviceId);
XPwdwconv_Config* XPwdwconv_LookupConfig(u16 DeviceId);
int XPwdwconv_CfgInitialize(XPwdwconv *InstancePtr, XPwdwconv_Config *ConfigPtr);
#else
int XPwdwconv_Initialize(XPwdwconv *InstancePtr, const char* InstanceName);
int XPwdwconv_Release(XPwdwconv *InstancePtr);
#endif

void XPwdwconv_Start(XPwdwconv *InstancePtr);
u32 XPwdwconv_IsDone(XPwdwconv *InstancePtr);
u32 XPwdwconv_IsIdle(XPwdwconv *InstancePtr);
u32 XPwdwconv_IsReady(XPwdwconv *InstancePtr);
void XPwdwconv_EnableAutoRestart(XPwdwconv *InstancePtr);
void XPwdwconv_DisableAutoRestart(XPwdwconv *InstancePtr);

void XPwdwconv_Set_PBUS1_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_PBUS1_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_PBUS2_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_PBUS2_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_PBUS3_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_PBUS3_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_PBUS4_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_PBUS4_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_SBUS1_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_SBUS1_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_SBUS2_V(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_SBUS2_V(XPwdwconv *InstancePtr);
void XPwdwconv_Set_ch_in(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_ch_in(XPwdwconv *InstancePtr);
void XPwdwconv_Set_ch_out(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_ch_out(XPwdwconv *InstancePtr);
void XPwdwconv_Set_stride(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_stride(XPwdwconv *InstancePtr);
void XPwdwconv_Set_fsize(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_fsize(XPwdwconv *InstancePtr);
void XPwdwconv_Set_act(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_act(XPwdwconv *InstancePtr);
void XPwdwconv_Set_mode(XPwdwconv *InstancePtr, u32 Data);
u32 XPwdwconv_Get_mode(XPwdwconv *InstancePtr);

void XPwdwconv_InterruptGlobalEnable(XPwdwconv *InstancePtr);
void XPwdwconv_InterruptGlobalDisable(XPwdwconv *InstancePtr);
void XPwdwconv_InterruptEnable(XPwdwconv *InstancePtr, u32 Mask);
void XPwdwconv_InterruptDisable(XPwdwconv *InstancePtr, u32 Mask);
void XPwdwconv_InterruptClear(XPwdwconv *InstancePtr, u32 Mask);
u32 XPwdwconv_InterruptGetEnabled(XPwdwconv *InstancePtr);
u32 XPwdwconv_InterruptGetStatus(XPwdwconv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
