module fa(output s,c,input [2:0]a);
assign s=^a;
assign c=(a[0]&a[1])|(a[1]&a[2])|(a[0]&a[2]);
endmodule