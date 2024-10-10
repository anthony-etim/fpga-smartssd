`include "ro_defines.sv"
`include "defines.sv"

module ro_heater #(
    parameter MAX_RO_HEATERS = 5,
    parameter integer C_DATA_WIDTH   = 32 // Data width of both input and output data
) (
    input wire                                 clk,
    input wire                                 rst,
    input wire [31:0]                          ro_heater_on_num,
    input wire                                 s_tvalid,
    input wire  [C_DATA_WIDTH-1:0]             s_tdata,
    output wire                                s_tready,
);
    
////////////////////////////////////////////////////////
// RO HEATER LOGIC
////////////////////////////////////////////////////////

// RO HEATER STATES
localparam RO_HEATER_IDLE         = 3'd0;
localparam RO_HEATER_FINISH       = 3'd1;

localparam NUM_HEATERS      = MAX_RO_HEATERS;
localparam HEATER_ROS     	= 2000; 
localparam HEATER_STAGES	= 2;

wire [NUM_HEATERS-1:0]    input_heater_enable;
wire [C_DATA_WIDTH-1:0]   ro_heater_start;
assign ro_heater_start  = s_tdata;


assign input_heater_enable =  (ro_heater_on_num == 32'd1) ? 5'b10000:
                              (ro_heater_on_num == 32'd2) ? 5'b11000:
                              (ro_heater_on_num == 32'd3) ? 5'b11100:
                              (ro_heater_on_num == 32'd4) ? 5'b11110:
                              (ro_heater_on_num == 32'd5) ? 5'b11111:
                                                            5'b00000;

reg [NUM_HEATERS-1:0]     actual_heater_enable = 0;
// assign ro_heater_debug = ro_heater_on_num;
// assign ro_heater_debug = ro_heater_index[1];

genvar i;
generate
for (i = 0; i < NUM_HEATERS; i = i+1) begin : heater_gen

    heater #(
        .ROS                (HEATER_ROS),
        .STAGES             (HEATER_STAGES)
    ) heater_inst (
        .enable             (enable_heating & actual_heater_enable[i])
    );

    reg [2:0] state_ro_heater = RO_HEATER_IDLE;
    reg enable_heating = 0;
    
    always_ff @(posedge clk) begin
        if ( rst == 1'b1 ) begin
            // reset
            actual_heater_enable[i] <= 1'b0;
            enable_heating <= 0;
            state_ro_heater <= RO_HEATER_IDLE;
        end
        else begin
            
            case (state_ro_heater)
                RO_HEATER_IDLE: begin
                    if(ro_heater_start == 1'b1) begin
                        if(s_tvalid==1'b1) begin
                            actual_heater_enable[i] <= input_heater_enable[i];
                            state_ro_heater <= RO_HEATER_FINISH;
                        end
                    end else begin
                        actual_heater_enable[i] <= 0;
                        state_ro_heater <= RO_HEATER_IDLE;
                    end
                end
                RO_HEATER_FINISH: begin
                    state_ro_heater <= RO_HEATER_IDLE;
                end
            endcase
        end  
    end
end
endgenerate

endmodule

