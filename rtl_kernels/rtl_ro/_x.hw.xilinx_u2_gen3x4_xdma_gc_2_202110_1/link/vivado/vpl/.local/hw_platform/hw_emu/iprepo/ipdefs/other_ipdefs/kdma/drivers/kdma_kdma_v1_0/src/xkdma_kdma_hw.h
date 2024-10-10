// ==============================================================
// File generated on Mon Nov 12 13:59:23 PST 2018
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2386772 on Sun Nov 11 19:07:54 MST 2018
// IP Build 2386731 on Sun Nov 11 21:21:39 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input0
//        bit 31~0 - input0[31:0] (Read/Write)
// 0x14 : Data signal of input0
//        bit 31~0 - input0[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of output0
//        bit 31~0 - output0[31:0] (Read/Write)
// 0x20 : Data signal of output0
//        bit 31~0 - output0[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of num_blocks
//        bit 31~0 - num_blocks[31:0] (Read/Write)
// 0x2c : Data signal of num_blocks
//        bit 31~0 - num_blocks[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XKDMA_KDMA_CONTROL_ADDR_AP_CTRL         0x00
#define XKDMA_KDMA_CONTROL_ADDR_GIE             0x04
#define XKDMA_KDMA_CONTROL_ADDR_IER             0x08
#define XKDMA_KDMA_CONTROL_ADDR_ISR             0x0c
#define XKDMA_KDMA_CONTROL_ADDR_INPUT0_DATA     0x10
#define XKDMA_KDMA_CONTROL_BITS_INPUT0_DATA     64
#define XKDMA_KDMA_CONTROL_ADDR_OUTPUT0_DATA    0x1c
#define XKDMA_KDMA_CONTROL_BITS_OUTPUT0_DATA    64
#define XKDMA_KDMA_CONTROL_ADDR_NUM_BLOCKS_DATA 0x28
#define XKDMA_KDMA_CONTROL_BITS_NUM_BLOCKS_DATA 64

