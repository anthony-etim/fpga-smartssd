

module heater #(
    parameter ROS     	= 5,
	parameter STAGES	= 2
)(
    input   enable
);

genvar i;
generate
for (i = 0; i < ROS; i = i+1) begin : ro_gen
	(* DONT_TOUCH = "TRUE" *)
	ring_oscillator #(
		.STAGES			(STAGES)
	) ro (
	    .enable			(enable),
	    .ro_out			()
	);
end
endgenerate

endmodule
