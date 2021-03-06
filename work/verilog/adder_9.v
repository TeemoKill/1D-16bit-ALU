/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_9 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] sum,
    output reg z,
    output reg v,
    output reg n,
    output reg compareZ,
    output reg compareV,
    output reg compareN
  );
  
  
  
  reg [15:0] temporary;
  
  reg [15:0] compare;
  
  always @* begin
    
    case (alufn[0+2-:3])
      3'h0: begin
        temporary = a + b;
      end
      3'h1: begin
        temporary = a - b;
      end
      3'h2: begin
        temporary = a * b;
      end
      3'h3: begin
        temporary = a / b;
      end
      3'h7: begin
        temporary = a - (a / b * b);
      end
      default: begin
        temporary = a + b;
      end
    endcase
    compare = a - b;
    v = (a[15+0-:1] & b[15+0-:1] & (~temporary[15+0-:1])) | ((~a[15+0-:1]) & (~b[15+0-:1]) & temporary[15+0-:1]);
    n = temporary[15+0-:1];
    z = (~|temporary);
    sum = temporary;
    compareZ = (~|compare);
    compareV = (a[15+0-:1] & b[15+0-:1] & (~compare[15+0-:1])) | ((~a[15+0-:1]) & (~b[15+0-:1]) & compare[15+0-:1]);
    compareN = compare[15+0-:1];
  end
endmodule
