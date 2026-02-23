module tb_jkff;
reg clk,res,j,k;
wire q;
dff d1(q,clk,res,j,k);
initial
begin
res=1'b1;clk=1'b0;{j,k}=2'b00;
#100 res=1'b0;
#100 res=1'b1;
#100 {j,k}=2'b01;
#100 {j,k}=2'b10;
#100 {j,k}=2'b11;
#100 {j,k}=2'b01;
#100 $finish;
end
always
#25 clk=~clk;
initial
$monitor("time = %t j = %b k = %b q = %b res = %b clk = %b",$time,j,k,q,res,clk);
endmodule

