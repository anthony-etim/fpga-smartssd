
`ifndef RO_DEFINES
`define RO_DEFINES

// typedef enum {
//     RO_LUT,
//     RO_LATCH,
//     RO_REGISTER
// } RO_Type;

`define RO_LUT          1
`define RO_LATCH        2
`define RO_REGISTER     3


`define RO_TYPE      `RO_LATCH

`define STAGES      2


`default_nettype wire

// 2**20 = 1048576
`define DELAYCYCLES      1_048_576
// `define DELAYCYCLES      16
`define NUM_RO_COUNTER   4


`endif
