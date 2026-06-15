verilog

module dff(input clk, input d, output reg q);
always@(posedge clk)begin
q<=d;
end
endmodule 

by using reset

module dff(input clk,input d,input reset,output reg q);
always@(posedge clk)begin
if(reset)
q<=0;
else
q<=d;
end
endmodule 