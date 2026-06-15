by using assign 

module mux_4to1(input a, input b, input c, input d, input s1, input s0, output y);
assign y=(s1==0 && s0==0)?:a;
       (s1==0 && s0==1)?:b;
       (s1==1 && s0==0)?:c;
        d;
endmodule 

by using if

module(input a, input b, input c, input d, input s1, input s0, output reg y);
always@(*)begin
if(s1==0 && s0==0)
y=a;
else if(s1==0 && s0==1)
y=b;
else if(s1==1 && s0==0)
y=c;
else
y=d;
end
endmodule 

by using case

module(input a, input b, input c, input d, input s1, input s0, output reg y);
always@(*)begin
case({s1,s0})
2'b00:y=a;
2'b01:y=b;
2'b10:y=c;
2'b11:y=d;
end case 
end
endmodule 
