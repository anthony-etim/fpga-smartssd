// ==============================================================
// File generated on Mon Nov 12 13:59:23 PST 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2386772 on Sun Nov 11 19:07:54 MST 2018
// IP Build 2386731 on Sun Nov 11 21:21:39 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xkdma_kdma.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XKdma_kdma_CfgInitialize(XKdma_kdma *InstancePtr, XKdma_kdma_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XKdma_kdma_Start(XKdma_kdma *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL) & 0x80;
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XKdma_kdma_IsDone(XKdma_kdma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XKdma_kdma_IsIdle(XKdma_kdma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XKdma_kdma_IsReady(XKdma_kdma *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XKdma_kdma_EnableAutoRestart(XKdma_kdma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XKdma_kdma_DisableAutoRestart(XKdma_kdma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_AP_CTRL, 0);
}

void XKdma_kdma_Set_input0(XKdma_kdma *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_INPUT0_DATA, (u32)(Data));
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_INPUT0_DATA + 4, (u32)(Data >> 32));
}

u64 XKdma_kdma_Get_input0(XKdma_kdma *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_INPUT0_DATA);
    Data += (u64)XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_INPUT0_DATA + 4) << 32;
    return Data;
}

void XKdma_kdma_Set_output0(XKdma_kdma *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_OUTPUT0_DATA, (u32)(Data));
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_OUTPUT0_DATA + 4, (u32)(Data >> 32));
}

u64 XKdma_kdma_Get_output0(XKdma_kdma *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_OUTPUT0_DATA);
    Data += (u64)XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_OUTPUT0_DATA + 4) << 32;
    return Data;
}

void XKdma_kdma_Set_num_blocks(XKdma_kdma *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_NUM_BLOCKS_DATA, (u32)(Data));
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_NUM_BLOCKS_DATA + 4, (u32)(Data >> 32));
}

u64 XKdma_kdma_Get_num_blocks(XKdma_kdma *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_NUM_BLOCKS_DATA);
    Data += (u64)XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_NUM_BLOCKS_DATA + 4) << 32;
    return Data;
}

void XKdma_kdma_InterruptGlobalEnable(XKdma_kdma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_GIE, 1);
}

void XKdma_kdma_InterruptGlobalDisable(XKdma_kdma *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_GIE, 0);
}

void XKdma_kdma_InterruptEnable(XKdma_kdma *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_IER);
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_IER, Register | Mask);
}

void XKdma_kdma_InterruptDisable(XKdma_kdma *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_IER);
    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_IER, Register & (~Mask));
}

void XKdma_kdma_InterruptClear(XKdma_kdma *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XKdma_kdma_WriteReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_ISR, Mask);
}

u32 XKdma_kdma_InterruptGetEnabled(XKdma_kdma *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_IER);
}

u32 XKdma_kdma_InterruptGetStatus(XKdma_kdma *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XKdma_kdma_ReadReg(InstancePtr->Control_BaseAddress, XKDMA_KDMA_CONTROL_ADDR_ISR);
}

