module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output[7:0]led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy // AVR Rx buffer full
    );
// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;

reg[7:0] leds;
wire clk_2;

wire rst = ~rst_n; // make reset active high
always @* begin
  
end

always @(posedge clk_2) begin
  leds <= leds + 1;
end

assign led = leds;
clock_divider #(32'd50000000) cd_inst(.clk(clk),.out(clk_2),.rst(rst_n));
assign avr_rx = leds; 
endmodule