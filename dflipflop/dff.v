module dff(output reg q,input clk,res,d);
always@(posedge clk,negedge res)
if (res==0)
q<=1'b0;
else
q<=d;
endmodule
