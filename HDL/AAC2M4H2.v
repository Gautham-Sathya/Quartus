module FIFO8x9(
  input clk, rst,
  input RdPtrClr, WrPtrClr, 
  input RdInc, WrInc,
  input [8:0] DataIn,
  output reg [8:0] DataOut,
  input rden, wren
	);
//signal declarations

	reg [8:0] fifo_array[7:0];
	reg [7:0] wrptr, rdptr;
	wire [7:0] wr_cnt, rd_cnt;
	

always@(posedge clk)
begin
	if(rst)
		DataOut <= 9'b000000000;
	if(RdPtrClr)
		rdptr <= 8'b00000000;
	if(WrPtrClr)
		wrptr <= 8'b00000000;
	if(rden)begin
		DataOut <= fifo_array[rdptr];
		rdptr <= rdptr + RdInc;
		end
	else 
		DataOut <= 9'bzzzzzzzzz;
	if(wren) begin
		fifo_array[wrptr]<=DataIn;
		wrptr <= wrptr + WrInc; 		
		 end
		
		
	
end


endmodule