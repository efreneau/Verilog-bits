module jk_flipflop (
    input clk, 
    input rst,  
    input J,
    input K,
    output Q,
    output Q_bar
  );
  
  reg Q;
  reg Q_bar;
  
  reg S_bar;
  reg R_bar;
  
  sr_flipflop sr_inst(.clk(clk),.rst(rst),.S_bar(S_bar),.R_bar(R_bar),.Q(Q),.Q_bar(Q_bar));
  
  always @(posedge clk) begin
    if (rst) begin
      S_bar <= 1'b0;
      R_bar <= 1'b0;
    end else begin
      S_bar <= !(Q_bar&J&clk);
      R_bar <= !(clk&K&Q);
    end
  end
endmodule
