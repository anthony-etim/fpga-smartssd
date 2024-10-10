

localparam NUM_HEATERS      = 5;
localparam HEATER_ROS     	= 1000;
localparam HEATER_STAGES	= 2;
reg [NUM_HEATERS-1:0]     actual_heater_enable = 0;
genvar i;
generate
for (i = 0; i < NUM_HEATERS; i = i+1) begin : heater_gen
    heater #(
        .ROS                (HEATER_ROS),
        .STAGES             (HEATER_STAGES)
    ) heater_inst (
        .enable             (actual_heater_enable[i])
    );
end
endgenerate



