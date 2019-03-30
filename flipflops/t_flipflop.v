module t_flipflop (
    input clk, 
    input rst,  
    input T,
    output Q,
    output Q_bar
  );

  jk_flipflop jk_inst(.clk(clk),.rst(rst),.J(T),.K(T),.Q(Q),.Q_bar(Q_bar));
  
endmodule
