module FL_8bit(a,b,sum,cout);
	input [7:0]a,b;
	output [7:0]cout;
	output [8:0]sum;
	wire [7:0]cin;
	assign cin[0]=0;
	FL_1bit i1(.a(a[0]),.b(b[0]),.cin(cin[0]),.sum(sum[0]),.cout(cout[0]));
	assign cin[1]=cout[0];
	FL_1bit i2(.a(a[1]),.b(b[1]),.cin(cin[1]),.sum(sum[1]),.cout(cout[1]));
	assign cin[2]=cout[1];
	FL_1bit i3(.a(a[2]),.b(b[2]),.cin(cin[2]),.sum(sum[2]),.cout(cout[2]));
	assign cin[3]=cout[2];
	FL_1bit i4(.a(a[3]),.b(b[3]),.cin(cin[3]),.sum(sum[3]),.cout(cout[3]));
	assign cin[4]=cout[3];
	FL_1bit i5(.a(a[4]),.b(b[4]),.cin(cin[4]),.sum(sum[4]),.cout(cout[4]));
	assign cin[5]=cout[4];
	FL_1bit i6(.a(a[5]),.b(b[5]),.cin(cin[5]),.sum(sum[5]),.cout(cout[5]));
	assign cin[6]=cout[5];
	FL_1bit i7(.a(a[6]),.b(b[6]),.cin(cin[6]),.sum(sum[6]),.cout(cout[6]));
	assign cin[7]=cout[6];
	FL_1bit i8(.a(a[7]),.b(b[7]),.cin(cin[7]),.sum(sum[7]),.cout(cout[7]));
	assign sum[8]=cout[7];
endmodule
