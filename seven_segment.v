module seven_segment(
    input [1:0] status,
    output reg [6:0] seg
);
always @(status) 
begin
case(status)
2'b01: seg=7'b1000111; //L lock
2'b10: seg=7'b1000001; //U unlock

endcase
end

endmodule