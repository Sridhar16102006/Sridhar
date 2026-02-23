module dff(output reg q,input clk,res,j,k);
always@(posedge clk,negedge res)
if (res==0)
q<=1'b0;
else
case ({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=~q;
endcase
endmodule
