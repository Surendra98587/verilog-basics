module traffic_light(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

reg [1:0] state;

always @(posedge clk) begin
    if(reset)
        state <= 2'b00;
    else begin
        case(state)
            2'b00: state <= 2'b01;
            2'b01: state <= 2'b10;
            2'b10: state <= 2'b00;
            default: state <= 2'b00;
        endcase
    end
end

always @(*) begin
    red = 0;
    yellow = 0;
    green = 0;

    case(state)
        2'b00: red = 1;
        2'b01: green = 1;
        2'b10: yellow = 1;
    endcase
end

endmodule