module Comparator2(
   input[1:0] A, B,
   output reg Equals);      		
              
always @(*)
       	   begin       
if (A==B)
	Equals = 1;
else
Equals = 0;

	end
endmodule // Comparator2 




    