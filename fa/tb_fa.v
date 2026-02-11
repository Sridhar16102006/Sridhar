module tb_fa;
reg [2:0]a;
wire s,c;
fa f1(s,c,a);
initial begin
    $dumpfile("fa.vcd");
    $dumpvars(0,tb_fa);
    a=3'b000;
    #100 a=3'b001;
    #100 a=3'b010;
    #100 a=3'b011;
    #100 a=3'b100;
    #100 a=3'b101;
    #100 a=3'b110;
    #100 a=3'b111;
    #100 $finish;
end
initial
begin
    $monitor("time = %t i = %b s = %b c = %b",$time,a,s,c);
end
endmodule