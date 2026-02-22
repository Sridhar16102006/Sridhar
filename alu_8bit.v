module alu_8bit(output reg [7:0]r,input [7:0]a,input [7:0]b,input [1:0]ms,input [1:0]ss);
reg [7:0] ar,lr,sr;
always @(*)
begin
case (ss)
2'b00:ar <= a+b;
2'b01:ar <= a-b;
2'b10:ar <= a+1;
2'b11:ar <= a-1;
endcase
case (ss)
2'b00:lr <= a&b;
2'b01:lr <= a|b;
2'b10:lr <= a^b;
2'b11:lr <= ~a;
endcase
case (ss)
2'b00:sr <= a<<1;
2'b01:sr <= a>>1;
endcase
case (ms)
2'b00:r <= ar;
2'b01:r <= lr;
2'b10:r <= sr;
2'b11:r <= 8'b00000000;
endcase
end
endmodule