module tb();
	reg [7:0]a,b;
	wire [8:0]y1,y2;
	wire [7:0]cout;
	reg [7:0]failcount,i,j;

	FL_8bit i1(.a(a),.b(b),.sum(y1),.cout(cout));
	assign y2=a+b;

	initial
	begin
		a=0;b=0;failcount=0;
		$dumpfile("test.vcd");
		$dumpvars(0, tb);
		for(i=0;i<255;i=i+1)
		begin
			for(j=0;j<255;j=j+1)
			begin
				#5 b=b+1;
			end
			#5 a=a+1;
		end
		$display("Fail Count = %d", failcount);
		$stop;
	end
	always@(y1,y2)
	begin
		#2 if(y1!==y2)
		begin
			failcount=failcount+1;
			$display("Error for a=%b, b=%b, y1=%b, y2=%b", a,b,y1,y2);
		end
		else
		begin
			$display("Success for a=%b, b=%b, y1=%b, y2=%b", a,b,y1,y2);
		end
	end
endmodule
