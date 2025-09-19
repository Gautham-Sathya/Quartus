module Majority (A, B, C, Y);                 	
   input  A, B, C;			
   output Y; 

   reg Y;           		

always@(A,B,C)
begin
Y <= A&B | B&C | A&C;
end

endmodule // Majority  




    