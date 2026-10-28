// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xpwdwconv.h"

extern XPwdwconv_Config XPwdwconv_ConfigTable[];

XPwdwconv_Config *XPwdwconv_LookupConfig(u16 DeviceId) {
	XPwdwconv_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPWDWCONV_NUM_INSTANCES; Index++) {
		if (XPwdwconv_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPwdwconv_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPwdwconv_Initialize(XPwdwconv *InstancePtr, u16 DeviceId) {
	XPwdwconv_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPwdwconv_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPwdwconv_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

