module FullAdd4( A,B,Cin,Sum,Cout);                	
    input [3:0] A, B; 
    input Cin; 			
    output [3:0] Sum;
    output Cout;
wire carry[2:0];


assign Sum[0] = A[0]^B[0]^Cin;
assign carry[0] = (A[0] & B[0]) | (Cin & (A[0] ^ B[0]));

assign Sum[1] = A[1]^B[1]^carry[0];
assign carry[1] = (A[1] & B[1]) | (carry[0] & (A[1] ^ B[1]));

assign Sum[2] = A[2]^B[2]^carry[1];
assign carry[2] = (A[2] & B[2]) | (carry[1] & (A[2] ^ B[2]));

assign Sum[3] = A[3]^B[3]^carry[2];
assign Cout = (A[3] & B[3]) | (carry[2] & (A[3] ^ B[3]));

endmodule // Majority  




    