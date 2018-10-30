/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu16bit_3 (
    input [15:0] a,
    input [15:0] b,
    input [5:0] alufn,
    output reg [15:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [16-1:0] M_add_sum;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  wire [1-1:0] M_add_compareZ;
  wire [1-1:0] M_add_compareV;
  wire [1-1:0] M_add_compareN;
  reg [16-1:0] M_add_a;
  reg [16-1:0] M_add_b;
  reg [6-1:0] M_add_alufn;
  adder_9 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn(M_add_alufn),
    .sum(M_add_sum),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n),
    .compareZ(M_add_compareZ),
    .compareV(M_add_compareV),
    .compareN(M_add_compareN)
  );
  
  wire [16-1:0] M_boole_boole;
  reg [6-1:0] M_boole_alufn;
  reg [16-1:0] M_boole_a;
  reg [16-1:0] M_boole_b;
  boolean_10 boole (
    .alufn(M_boole_alufn),
    .a(M_boole_a),
    .b(M_boole_b),
    .boole(M_boole_boole)
  );
  
  wire [1-1:0] M_comp_comp;
  reg [6-1:0] M_comp_alufn;
  reg [1-1:0] M_comp_z;
  reg [1-1:0] M_comp_v;
  reg [1-1:0] M_comp_n;
  comparator_11 comp (
    .alufn(M_comp_alufn),
    .z(M_comp_z),
    .v(M_comp_v),
    .n(M_comp_n),
    .comp(M_comp_comp)
  );
  
  wire [16-1:0] M_shift_shift;
  reg [6-1:0] M_shift_alufn;
  reg [16-1:0] M_shift_a;
  reg [16-1:0] M_shift_b;
  shiftbit_12 shift (
    .alufn(M_shift_alufn),
    .a(M_shift_a),
    .b(M_shift_b),
    .shift(M_shift_shift)
  );
  
  always @* begin
    M_add_a = a;
    M_add_b = b;
    M_add_alufn = alufn;
    M_boole_a = a;
    M_boole_b = b;
    M_boole_alufn = alufn;
    M_comp_alufn = alufn;
    M_comp_z = M_add_compareZ;
    M_comp_v = M_add_compareV;
    M_comp_n = M_add_compareN;
    M_shift_alufn = alufn;
    M_shift_a = a;
    M_shift_b = b;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_add_sum;
      end
      2'h1: begin
        out = M_boole_boole;
      end
      2'h2: begin
        out = M_shift_shift;
      end
      2'h3: begin
        out = M_comp_comp;
      end
      default: begin
        out = 1'h0;
      end
    endcase
    z = M_add_z;
    v = M_add_v;
    n = M_add_n;
  end
endmodule