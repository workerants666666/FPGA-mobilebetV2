// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xshortcut.h"

extern XShortcut_Config XShortcut_ConfigTable[];

XShortcut_Config *XShortcut_LookupConfig(u16 DeviceId) {
	XShortcut_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSHORTCUT_NUM_INSTANCES; Index++) {
		if (XShortcut_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XShortcut_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XShortcut_Initialize(XShortcut *InstancePtr, u16 DeviceId) {
	XShortcut_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XShortcut_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XShortcut_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

