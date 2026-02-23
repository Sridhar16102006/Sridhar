module tb_dff;
reg clk,res,d;
wire q;
dff d1(q,clk,res,d);
initial
begin
res=1'b1;clk=1'b0;d=1'b0;
#100 res=1'b0;
#100 res=1'b1;
#100 d=1'b1;
#100 d=1'b0;
#100 d=1'b0;
#100 d=1'b1;
#100 $finish;
end
always
#25 clk=~clk;
initial
$monitor("time = %t d = %b q = %b res = %b clk = %b",$time,d,q,res,clk);
endmodule

