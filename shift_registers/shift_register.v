module shift_register #(parameter width=8'd16)(
    input clk, 
    input rst,  
    input bit_in,
    output bit_out
  );
  
  reg[width-1:0] shift_register;
  
  always @(posedge clk) begin
    if (rst) begin
      shift_register <= {width{1'b0}};
    end else begin
      shift_register <= shift_register << 1;
      shift_register[0] = shift_in;
    end
    assign bit_out = shift_register[0];
  end
endmodule
