module pipeline_reg_v1_0_0 #(
  parameter WIDTH       = 1,
  parameter DEPTH       = 1,
  parameter INCLUDE_CDC = 0,
  parameter INACTIVE_VAL = 0  
) 
( 
  input  [WIDTH-1:0] d,
  output [WIDTH-1:0] q,
  input clk,
  input resetn
);

  wire [WIDTH-1:0] d_i;
  
  generate
    if (INCLUDE_CDC) begin
      xpm_cdc_array_single #(
        .DEST_SYNC_FF(4), 
        .INIT_SYNC_FF(0), 
        .SIM_ASSERT_CHK(0), 
        .SRC_INPUT_REG(0), 
        .WIDTH(WIDTH)
      )
      xpm_cdc_array_single_inst (
        .dest_out(d_i), 
        .dest_clk(clk), 
        .src_clk(1'b0), 
        .src_in(d) 
      );
    end else begin 
      assign d_i=d;
    end
  endgenerate

  generate
    if (DEPTH>0) begin
      reg[WIDTH-1:0] q_i;
      always @(posedge clk) begin
        if (resetn == 1'b0) begin
          q_i <= {WIDTH{INACTIVE_VAL[0]}}; 
        end else begin
          q_i <= d_i;
        end
      end
      assign q=q_i;
    end else begin
      // Wirethrough
      assign q=d_i;
    end     
  endgenerate
endmodule


