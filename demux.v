module demux #(parameter width=8'd2)(
    input clk, 
    input rst,
    input sel,  
    input in,
    output output_lines
  );
  
  reg[width>>1-1:0] sel;
  reg in;
  wire[width-1:0] output_lines;
  
  always @(posedge clk) begin
    if (rst) begin
      input_lines = {width{1'b0}};
    end else begin
      out <= input_lines[sel];
    end
  end
endmodule