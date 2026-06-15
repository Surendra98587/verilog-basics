module up_counter(input clk, input reset, output reg[3:0] count);
always@(posedge clk)begin
if(reset)
count<=4'b0000;
else
count<=count+1;
end
endmodule 

module down_counter(input clk, input reset, output reg[3:0] count);
always@(posedge clk)begin
if(reset)
count<=4'b1111;
else
count<=count-1;
end
endmodule 

here we will use mode
if reset is 1 
count<=4'b0000;

if reset is 0 mode 1 upcounter
count<=count+1;

if reset is 0 mode0 down counter
count<=count-1;

module up_down_counter(input clk, input reset,input mode, output reg [3:0] count);
always@(posedge clk)begin
if(reset)
count<=4'b0000;
else if(mode)
count<=count+1;
else
count<=count-1;
end
endmodule 