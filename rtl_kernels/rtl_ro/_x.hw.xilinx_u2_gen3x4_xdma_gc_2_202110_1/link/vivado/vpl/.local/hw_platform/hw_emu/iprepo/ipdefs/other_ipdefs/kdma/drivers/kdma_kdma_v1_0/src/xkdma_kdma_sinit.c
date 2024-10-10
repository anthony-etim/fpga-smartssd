// ==============================================================
// File generated on Mon Nov 12 13:59:23 PST 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2386772 on Sun Nov 11 19:07:54 MST 2018
// IP Build 2386731 on Sun Nov 11 21:21:39 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xkdma_kdma.h"

extern XKdma_kdma_Config XKdma_kdma_ConfigTable[];

XKdma_kdma_Config *XKdma_kdma_LookupConfig(u16 DeviceId) {
	XKdma_kdma_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XKDMA_KDMA_NUM_INSTANCES; Index++) {
		if (XKdma_kdma_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XKdma_kdma_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XKdma_kdma_Initialize(XKdma_kdma *InstancePtr, u16 DeviceId) {
	XKdma_kdma_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XKdma_kdma_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XKdma_kdma_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

