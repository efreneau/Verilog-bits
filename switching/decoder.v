module decoder #(parameter in_size=2)(
    input clk,  // clock
    input rst,  // reset
    input[in_size-1:0] in,
    output[2*in_size-1:0] out
  );
  
  always @* begin
    out[in] = 1;
  end 
endmodule
