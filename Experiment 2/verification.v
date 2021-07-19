module error(o1,o2,o3,o4,o5,o6,o7,o8,ERROR);
	input o1,o2,o3,o4,o5,o6,o7,o8;
	output ERROR;
	assign ERROR=(o1^o2)+(o3^o4)+(o5^o6)+(o7^o8);
endmodule
