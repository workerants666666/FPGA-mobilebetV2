// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSHORTCUT_H
#define XSHORTCUT_H

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
#include "xshortcut_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XShortcut_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XShortcut;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XShortcut_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XShortcut_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XShortcut_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XShortcut_ReadReg(BaseAddress, RegOffset) \
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
int XShortcut_Initialize(XShortcut *InstancePtr, u16 DeviceId);
XShortcut_Config* XShortcut_LookupConfig(u16 DeviceId);
int XShortcut_CfgInitialize(XShortcut *InstancePtr, XShortcut_Config *ConfigPtr);
#else
int XShortcut_Initialize(XShortcut *InstancePtr, const char* InstanceName);
int XShortcut_Release(XShortcut *InstancePtr);
#endif

void XShortcut_Start(XShortcut *InstancePtr);
u32 XShortcut_IsDone(XShortcut *InstancePtr);
u32 XShortcut_IsIdle(XShortcut *InstancePtr);
u32 XShortcut_IsReady(XShortcut *InstancePtr);
void XShortcut_EnableAutoRestart(XShortcut *InstancePtr);
void XShortcut_DisableAutoRestart(XShortcut *InstancePtr);

void XShortcut_Set_src1_V(XShortcut *InstancePtr, u32 Data);
u32 XShortcut_Get_src1_V(XShortcut *InstancePtr);
void XShortcut_Set_src2_V(XShortcut *InstancePtr, u32 Data);
u32 XShortcut_Get_src2_V(XShortcut *InstancePtr);
void XShortcut_Set_dest_V(XShortcut *InstancePtr, u32 Data);
u32 XShortcut_Get_dest_V(XShortcut *InstancePtr);
void XShortcut_Set_length_r(XShortcut *InstancePtr, u32 Data);
u32 XShortcut_Get_length_r(XShortcut *InstancePtr);

void XShortcut_InterruptGlobalEnable(XShortcut *InstancePtr);
void XShortcut_InterruptGlobalDisable(XShortcut *InstancePtr);
void XShortcut_InterruptEnable(XShortcut *InstancePtr, u32 Mask);
void XShortcut_InterruptDisable(XShortcut *InstancePtr, u32 Mask);
void XShortcut_InterruptClear(XShortcut *InstancePtr, u32 Mask);
u32 XShortcut_InterruptGetEnabled(XShortcut *InstancePtr);
u32 XShortcut_InterruptGetStatus(XShortcut *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
