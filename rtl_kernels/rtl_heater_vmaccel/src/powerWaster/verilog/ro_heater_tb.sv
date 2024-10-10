`timescale 1ns / 1ps

// `include "ro_defines.sv"


module heater;

reg clk = 1'b1;

always 
  # 5 clk = !clk;

reg rst = 1'b0;

reg ro_heater_start = 1'b0;
wire [31:0] ro_heater_debug;

ro_heater #(
    .MAX_BIT_SIZE(256),
    .MAX_RO_HEATERS(5)
) ro_heater_DUT(
    .clk(clk),
    .rst(rst),
    .ro_heater_start(ro_heater_start),
    // .ro_heater_cycles(ro_heater_cycles),
    .ro_heater_data(170),
    .ro_heater_data_len(8),
    .ro_heater_on_num(5),
    .ro_heater_debug(ro_heater_debug)
);

integer i;
initial begin
    $dumpfile ("tb_heater.vcd");
    $dumpvars(0, ro_heater_DUT);
end


initial begin
    rst = 1;
    ro_heater_start = 0;
    # 5 rst = 0;
    # 5 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;
    # 40 ro_heater_start = 1;
     # 5 ro_heater_start = 0;


    # 5 ro_heater_start = 0;
    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;


    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;


    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;


    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

    # 40 ro_heater_start = 1;
    # 5 ro_heater_start = 0;
    # 5 ro_heater_start = 0;

   

    #3000;
    $finish;
end


initial begin
    // $monitor ("%6d\t rst = %b , wr=%b, rd=%b, din=%d, empty=%b, full=%b, dout=%d, size = %d", 
    // 	($time),rst,  wr, rd, din, empty, full, dout, fifo_mem_test.size);
    $monitor ("%6d\t  ro_heater_start=%b, rst=%b,  ro_heater_debug = %d",
         ($time), ro_heater_start, rst, ro_heater_debug);

end

endmodule