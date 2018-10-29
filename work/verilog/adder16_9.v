/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder16_9 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] s,
    output reg z,
    output reg v,
    output reg n,
    output reg overflow
  );
  
  
  
  reg [15:0] tmp;
  
  reg [15:0] comp;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        tmp = a + b;
      end
      2'h1: begin
        tmp = a - b;
      end
      2'h2: begin
        tmp = a * b;
      end
      2'h3: begin
        tmp = a - (a / b * b);
      end
      default: begin
        tmp = a + b;
      end
    endcase
    comp = a - b;
    overflow = (a[15+0-:1] & b[15+0-:1] & ~tmp[15+0-:1]) | (~a[15+0-:1] & ~b[15+0-:1] & tmp[15+0-:1]);
    v = (a[15+0-:1] & ~b[15+0-:1] & (~comp[15+0-:1])) | ((~a[15+0-:1]) & (b[15+0-:1]) & comp[15+0-:1]);
    n = comp[15+0-:1];
    z = (~|comp);
    s = tmp;
  end
endmodule
