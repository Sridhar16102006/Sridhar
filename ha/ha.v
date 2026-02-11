module ha(output s,c,input [1:0]a);
assign s=^a;
assign c=&a;
endmodule