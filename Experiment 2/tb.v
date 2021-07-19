module tb();
	reg a=0,b=0,c=0,d=0,e=0,f=0;
	wire y1,y5,y2,y6,y3,y7,y4,y8,ERROR;
	ckt_gatelevel x1(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.y1(y1),.y2(y2),.y3(y3),.y4(y4));
	ckt_dataflow x2(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.y1(y5),.y2(y6),.y3(y7),.y4(y8));
	error x3(.o1(y1),.o2(y5),.o3(y2),.o4(y6),.o5(y3),.o6(y7),.o7(y4),.o8(y8),.ERROR(ERROR)); 
always
begin
	#10 a=~a;
end
always
begin
	#20 b=~b;
end
always
begin
	#40 c=~c;
end
always
begin
	#80 d=~d;
end
always
begin
	#160 e=~e;
end
always
begin
	#320 f=~f;
end
endmodule
