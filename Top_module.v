`timescale 1s/100ms
`include "seven_segment.v"
`include "digital_safe.v"

module Top_module(
    input [4:0] sw,
    output [1:0] status,
    output [6:0] seg,
    output [3:0] an//enable 7 segment
);
assign an=4'b1110; //using rightmost led

//instantiate 7 segment and digital safe

seven_segment U0(status,seg);
digital_safe U1(sw,status);

endmodule