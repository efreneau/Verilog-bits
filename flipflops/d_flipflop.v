module d_flipflop (
    input clk, 
    input rst,  
    input D,
    output Q
  );
  
  reg Q;
  
  always @(posedge clk) begin
    if (rst) begin
      D <= 1'b0;
    end else begin
      Q <= D;
    end
  end
  
endmodule
