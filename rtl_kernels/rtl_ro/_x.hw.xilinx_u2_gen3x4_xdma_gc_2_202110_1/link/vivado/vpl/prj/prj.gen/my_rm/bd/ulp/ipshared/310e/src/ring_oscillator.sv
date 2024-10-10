/*
 *  
 * Copyright (C) 2019
 * Author: Ilias Giechaskiel <ilias.giechaskiel@gmail.com>
 *          
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
*/


`include "ro_defines.sv"

// typedef enum {
//     RO_LUT,
//     RO_LATCH,
//     RO_REGISTER
// } RO_Type;

module ring_oscillator #(
    parameter RO_TYPE   = `RO_LATCH,
    parameter STAGES    = 2
)(
    input               enable,
    output              ro_out
);

// Added additional stage as otherwise too fast for counting (timing violations)

localparam LAST         = STAGES+1;

(* DONT_TOUCH = "TRUE" *)
(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *)
wire [LAST:0]           ro_wire;

assign ro_out = ro_wire[LAST];

(* DONT_TOUCH = "TRUE" *)
LUT2 #(
    .INIT               (4'b0100)     
) ro_inv (
    .I0                 (ro_wire[0]),
    .I1                 (enable),
    .O                  (ro_wire[1])
);

genvar i;
generate

for (i = 0; i < STAGES; i = i + 1) begin : ro_stages
    (* DONT_TOUCH = "TRUE" *)
    LUT1  #(
        .INIT           (2'b10)
    ) ro_buf (
        .I0             (ro_wire[i + 1]),
        .O              (ro_wire[i + 2])
    );
end

if (RO_TYPE == `RO_LATCH) begin

(* DONT_TOUCH = "TRUE" *)
LD ro_ld (
    .G                  (1),
    .D                  (ro_wire[LAST]),
    .Q                  (ro_wire[0])
);

end else if (RO_TYPE == `RO_LUT) begin

if (STAGES < 0) begin
assign ro_wire[0] = ro_wire[LAST];
end else begin
(* DONT_TOUCH = "TRUE" *)
LUT1  #(
   .INIT                (2'b10)
) ro_lut (
    .I0                 (ro_wire[LAST]),
    .O                  (ro_wire[0])
);
end

end else if (RO_TYPE == `RO_REGISTER) begin

(* DONT_TOUCH = "TRUE" *)
wire ff_clk;

(* DONT_TOUCH = "TRUE" *)
LUT1  #(
   .INIT                (2'b01)
) ro_clk_lut (
    .I0                 (ro_wire[LAST]),
    .O                  (ff_clk)
);

(* DONT_TOUCH = "TRUE" *)
FDPE #(
    .INIT               (1'b0)
) ro_ff (
    .PRE                (ro_wire[LAST]),
    .CE                 (1),
    .D                  (0),
    .C                  (ff_clk),
    .Q                  (ro_wire[0])
);

end else begin
initial begin
    $error("Invalid RO_TYPE. Allowed values: RO_LUT (%d), RO_LATCH (%d), RO_REGISTER (%d)", RO_LUT, RO_LATCH, RO_REGISTER);
end
end

endgenerate

endmodule
