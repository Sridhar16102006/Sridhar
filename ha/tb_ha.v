module tb_ha;
reg [1:0]a;
wire s,c;
ha h1(s,c,a);
initial begin
    $dumpfile("ha.vcd");
    $dumpvars(0,tb_ha);
    a=2'b00;
    #100 a=2'b01;
    #100 a=2'b10;
    #100 a=2'b11;
end
initial
begin
    $monitor("time = %t a = %b s = %b c = %b",$time,a,s,c);
end
endmodule