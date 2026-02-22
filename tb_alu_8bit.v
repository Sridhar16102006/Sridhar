module tb_alu_8bit;

reg  [7:0] a, b;
reg  [1:0] ms, ss;
wire [7:0] r;

alu_8bit uut (r,a,b,ms,ss);

initial
begin
    $dumpfile("alu_8bit.vcd");
    $dumpvars(0, tb_alu_8bit);
    a = 8'd10; 
    b = 8'd5;
    ms = 2'b00; ss = 2'b00; #10;
    ms = 2'b00; ss = 2'b01; #10;
    ms = 2'b00; ss = 2'b10; #10;
    ms = 2'b00; ss = 2'b11; #10;
    ms = 2'b01; ss = 2'b00; #10;
    ms = 2'b01; ss = 2'b01; #10;
    ms = 2'b01; ss = 2'b10; #10;
    ms = 2'b01; ss = 2'b11; #10;
    ms = 2'b10; ss = 2'b00; #10; 
    ms = 2'b10; ss = 2'b01; #10;
    $finish;
end
endmodule