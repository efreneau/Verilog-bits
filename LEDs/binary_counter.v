module binary_counter #(parameter divisor = 32'd50000000)(
    input clk,  	//50MHz clock input
    input rst,		//reset button (active high)
    output[7:0] led	// Outputs to the 8 onboard LEDs
);

    reg[7:0] leds;
    wire clk_2;
    
    always @(posedge clk_2) begin
      leds <= leds + 8'b1;
    end
    
    assign led = leds;
    clock_divider #(divisor) cd_inst(.clk(clk),.out(clk_2),.rst(rst));
endmodule
