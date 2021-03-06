module tb_ALU();
	wire [7:0]a,b;
	reg [1:0]I;
	wire [7:0]cout;
	wire [8:0]y;

	ALU inst1(.a(a),.b(b),.I(I),.y(y),.cout(cout));
	
	assign a=8'b10101010;
	assign b=8'b00111100;
	initial
	begin
		I=0;
	end

	always
	begin	
		#5 I=I+1;
	end
endmodule
