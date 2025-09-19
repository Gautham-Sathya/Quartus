module FSM(
  input In1,
  input RST,
  input CLK, 
  output reg Out1
);
reg [1:0] state;



always@(posedge CLK) begin
if(RST) begin
	if(state != 2'b01 | state != 2'b00 | state != 2'b10) begin
	state <= 2'b00;
 	Out1 <= 0;
	end

end
else if (state == 00) begin 		//A
	if(In1) begin
		state <= 01;
		Out1 <= 0;
		end
end 	
else if (state == 01) 		//B
begin
	if(!In1)begin
		state <= 10;
		Out1 <= 1;
		end
end
else if (state == 10) 		//C
begin
	if(In1) begin
		state <= 00;
		Out1 <= 0;
		end

end

end


endmodule