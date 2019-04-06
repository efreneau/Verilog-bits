module encoder #(parameter out_size=2)(
    input clk,  // clock
    input rst,  // reset
    input[2*out_size-1:0] in,
    output[out_size-1:0] out
  );
  
  /* Combinational Logic */
  always @* begin
    for(i=2*out_size-1;i>=0;i=i-1)
      if(in[i])
        out = i;
  end
endmodule
