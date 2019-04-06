module checker_pattern #(
    parameter divisor = 32'd50000000,//divisor for clock divider
    parameter size = 1//# of leds wide
)(
    input clk,  	//50MHz clock input
    input rst,	//reset button (active high)
    output[7:0] led	// Outputs to the 8 onboard LEDs
);
    reg state;
    wire clk_2;
    
    parameter leds = (size==2) ? {2{4'b0011}}:(size==4) ? 8'b00001111:(size==8) ? 8'b0:{4{2'b01}};

    always @(posedge clk_2 or posedge rst) begin
      if(rst)
        state <= 1'b0;
      else
        state <= ~state;
    end
    
    assign led = (state)?leds:~leds;
    clock_divider #(divisor) cd_inst(.clk(clk),.out(clk_2),.rst(rst));
endmodule
