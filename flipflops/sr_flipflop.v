module sr_flipflop (
    input clk, 
    input rst,  
    input S_bar,
    input R_bar,
    output Q,
    output Q_bar
  );
  
  reg Q;
  reg Q_bar;
  
  always @(posedge clk) begin
    if (rst) begin
      Q <= 1'b0;
      Q_bar <= 1'b0;
    end else begin
      Q <= !(S_bar&Q_bar);
      Q_bar <= !(Q&R_bar);
    end
  end
endmodule
