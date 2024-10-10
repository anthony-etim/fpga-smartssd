`include "ro_defines.sv"
`include "defines.sv"

module ro_heater #(
    parameter MAX_BIT_SIZE = 256,
    parameter MAX_RO_HEATERS = 5
) (
    input wire                                 ro_clk,
    input wire                                 rst,
    input wire                                 ro_heater_start,
    input wire [MAX_BIT_SIZE-1:0]              ro_heater_data,
    input wire [$clog2(MAX_BIT_SIZE):0]        ro_heater_data_len,
    input wire [31:0]                          ro_heater_on_num,
    output wire [31:0]                         ro_heater_debug
);
    
////////////////////////////////////////////////////////
// RO HEATER LOGIC
////////////////////////////////////////////////////////

// RO HEATER STATES
localparam RO_HEATER_IDLE              = 3'd0;
localparam RO_HEATER_TOGGLE_FIRST_BIT  = 3'd1;
localparam RO_HEATER_TOGGLE_SECOND_BIT = 3'd2;
localparam RO_HEATER_WAIT_1            = 3'd3;
localparam RO_HEATER_WAIT_2            = 3'd4;

localparam NUM_HEATERS      = MAX_RO_HEATERS;
localparam HEATER_ROS     	= 2000; 
localparam HEATER_STAGES	= 2;

wire [NUM_HEATERS-1:0]     input_heater_enable;
reg [$clog2(MAX_BIT_SIZE):0] ro_heater_index [0:NUM_HEATERS-1];

assign input_heater_enable =  (ro_heater_on_num == 32'd1) ? 5'b10000:
                              (ro_heater_on_num == 32'd2) ? 5'b11000:
                              (ro_heater_on_num == 32'd3) ? 5'b11100:
                              (ro_heater_on_num == 32'd4) ? 5'b11110:
                              (ro_heater_on_num == 32'd5) ? 5'b11111:
                                                            5'b00000;

reg [NUM_HEATERS-1:0]     actual_heater_enable = 0;
// assign ro_heater_debug = ro_heater_on_num;
assign ro_heater_debug = ro_heater_index[1];

genvar i;
generate
for (i = 0; i < NUM_HEATERS; i = i+1) begin : heater_gen

    heater #(
        .ROS                (HEATER_ROS),
        .STAGES             (HEATER_STAGES)
    ) heater_inst (
        .enable             (enable_heating & actual_heater_enable[i])
    );

    reg [MAX_BIT_SIZE-1:0] ro_heater_data_internal = 0;
    reg [2:0] state_ro_heater = RO_HEATER_IDLE;
    reg enable_heating = 0;
    
    always_ff @(posedge ro_clk) begin
        if ( rst == 1'b1 ) begin
            // reset
            actual_heater_enable[i] <= 1'b0;
            ro_heater_index[i] <= 0;
            enable_heating <= 0;
            state_ro_heater <= RO_HEATER_IDLE;
        end
        else begin
            
            case (state_ro_heater)
                RO_HEATER_IDLE: begin
                    if(ro_heater_start == 1'b1) begin
                        ro_heater_index[i] <= 0;
                        ro_heater_data_internal <= ro_heater_data;
                        actual_heater_enable[i] <= input_heater_enable[i];
                        state_ro_heater <= RO_HEATER_TOGGLE_FIRST_BIT;
                    end else begin
                        ro_heater_index[i] <= 0;
                        ro_heater_data_internal <= 0;
                        actual_heater_enable[i] <= 0;
                        state_ro_heater <= RO_HEATER_IDLE;
                    end
                end

                RO_HEATER_TOGGLE_FIRST_BIT: begin 
                    if(ro_heater_index[i] ==  (ro_heater_data_len << 1)) begin
                        state_ro_heater <= RO_HEATER_IDLE;
                    end else begin
                        if(ro_heater_start == 1'b1) begin
                            ro_heater_index[i] <= ro_heater_index[i] + 1'b1;
                            enable_heating <= 0;
                            state_ro_heater <= RO_HEATER_WAIT_1; 
                        end else begin
                            enable_heating <= ro_heater_data_internal[ro_heater_data_len-1];
                            state_ro_heater <= RO_HEATER_TOGGLE_FIRST_BIT;
                        end
                    end
                end

                RO_HEATER_WAIT_1: begin
                    if(ro_heater_start == 1'b1) begin
                        state_ro_heater <= RO_HEATER_TOGGLE_SECOND_BIT; 
                    end
                end

                RO_HEATER_TOGGLE_SECOND_BIT: begin 
                        if(ro_heater_start == 1'b1) begin
                            enable_heating <= 0;
                            ro_heater_data_internal <= (ro_heater_data_internal << 1);
                            ro_heater_index[i] <=  ro_heater_index[i] + 1'b1;
                            state_ro_heater <= RO_HEATER_WAIT_2; 
                        end else begin
                            enable_heating <= ~ro_heater_data_internal[ro_heater_data_len-1];
                            state_ro_heater <= RO_HEATER_TOGGLE_SECOND_BIT;
                        end
                end

                RO_HEATER_WAIT_2: begin
                    if(ro_heater_start == 1'b1) begin
                        state_ro_heater <= RO_HEATER_TOGGLE_FIRST_BIT; 
                    end
                end

            endcase
        end  
    end
end
endgenerate

endmodule

