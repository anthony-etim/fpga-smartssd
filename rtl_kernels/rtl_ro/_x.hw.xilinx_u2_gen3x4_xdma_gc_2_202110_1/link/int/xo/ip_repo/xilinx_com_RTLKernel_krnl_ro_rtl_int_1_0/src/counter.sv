module counter #(parameter COUNTER_BIT = 32)
    (
        input wire tick,
        input wire reset,
        // input wire enable,
        output wire [COUNTER_BIT-1:0] count
    );

reg [COUNTER_BIT-1:0] count_reg = 0;
assign count = count_reg;


always @(posedge tick or posedge reset) begin
  if(reset == 1'b1) begin
    count_reg = 0; //
  end else if (tick == 1'b1) begin
      count_reg = count_reg + 1'b1; 
  end
end


endmodule
