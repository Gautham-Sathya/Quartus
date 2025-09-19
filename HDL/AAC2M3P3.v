module find_errors(                           // line 1
  input  [0:3]a,                             // line 2
  output [3:0]b,                             // line 3
  input [5:0]c);                               // line 4
                                             // line 5
                              // line 6
  reg [3:0]bw;                              // line 7
  wire [5:0]creg;                              // line 8
                                        // line 9
                        // line 10
  assign b = bw;                             // line 11
  assign creg = c;                           // line 12
always @(creg)                                       // line 13 
  begin                                      // line 14
    if (creg == 6'b111111)   //creg is all 1s     // line 15 
       bw <= a;                             // line 16  
    else                                     // line 17
     bw <= 4'b0101;                           // line 18   
  end                                      
endmodule                                          // line 21   

    