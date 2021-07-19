module FL_1bit(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire s1,s2,s3;
	xor xor1(sum,a,b,cin);
	and and1(s1,a,b);
	and and2(s2,b,cin);
	and and3(s3,a,cin);
	or or1(cout,s1,s2,s3);
endmodule
