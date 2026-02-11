module tb_decoder_3to8;
reg [2:0]i;
wire [7:0]d;
decoder_3to8 de(i,d);
initial begin
    $dumpfile("tb_decoder_3to8.vcd");
    $dumpvars(0, tb_decoder_3to8);
    i=3'b000;
    #100 i=3'b001;
    #100 i=3'b010;
    #100 i=3'b011;
    #100 i=3'b100;
    #100 i=3'b101;
    #100 i=3'b110;
    #100 i=3'b111;
    #100 $finish;
end
initial
begin
    $monitor("time = %t i = %b d = %b",$time,i,d);
end
endmodule