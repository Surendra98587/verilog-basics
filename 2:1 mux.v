by using assign

module mux_2to1(input a, input b, input sel,output y);
assign y=s?b:a;
endmodule 

by using if 

module mux_2to1(input a, input b, input sel, output reg y);
always@(*) begin
if(s==0)
y=a;
else
y=b;
end
endmodule 