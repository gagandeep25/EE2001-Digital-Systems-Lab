module ALU(a,b,I,y,cout);
	input [7:0]a,b;
	input [1:0]I;
	output [8:0]y;
	output [7:0]cout;
	wire [7:0]s0,s1,s2;
	wire [8:0]s3;
	reg [8:0]y;

	bitwise_and and1(a,b,s0);
	bitwise_or or1(a,b,s1);
	bitwise_xor xor1(a,b,s2);
	FL_8bit add1(a,b,s3,cout);

	always@(s0 or s1 or s2 or s3 or I)
	begin
		if(I==0)begin
			y=s0;
			$display("Bitwise AND = %b", y);
		end
		else if(I==1)begin
			y=s1;
			$display("Bitwise OR = %b", y);
		end
		else if(I==2)begin
			y=s2;
			$display("Bitwise XOR = %b", y);
		end
		else begin
			y=s3;
			$display("Sum = %b, COUT = %b", y, cout[7]);
		end
	end
endmodule
