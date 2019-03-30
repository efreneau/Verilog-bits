module clock_divider #(parameter divisor = 32'd50000000)(
    input clk, 
    input rst, 
    output out
  );
  
  reg[31:0] counter = 32'd0;
  
  always @(posedge clk) begin
    counter <= counter + 32'd1;
    if (rst) begin
      counter <= 32'd0;
    end else begin
      if (counter>=divisor)
        counter <= 32'd0;
    end
  end
  assign out = (counter==divisor);
endmodule
