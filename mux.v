module mux #(parameter width=8'd2)(
    input clk, 
    input rst,
    input sel,  
    input input_lines,
    output out
  );
  
  reg[(width>>1)-1:0] sel;
  reg[width-1:0] input_lines;
  wire out;
  
  always @(posedge clk) begin
    if (rst) begin
      input_lines = {width{1'b0}};
    end else begin
      out <= input_lines[sel];
    end
  end
endmodule
