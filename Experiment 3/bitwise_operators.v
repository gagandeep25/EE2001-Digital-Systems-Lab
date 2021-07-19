module bitwise_and(a,b,y);
	input [7:0]a,b;
	output [7:0]y;
	and i[7:0](y,a,b);
endmodule

module bitwise_or(a,b,y);
	input [7:0]a,b;
	output [7:0]y;
	or i[7:0](y,a,b);
endmodule

module bitwise_xor(a,b,y);
	input [7:0]a,b;	
	output [7:0]y;
	xor i[7:0](y,a,b);
endmodule
