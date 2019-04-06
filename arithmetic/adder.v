module adder #(parameter width = 8)(
    input clk,  // clock
    input rst,  // reset
    input[width-1:0] a,
    input[width-1:0] b,
    output[width-1:0] out,
    output carry
  );

  /* Combinational Logic */
  always @* begin
    out = a+b;
    carry = a[width-1] & b[width-1];
  end
  
  
endmodule
