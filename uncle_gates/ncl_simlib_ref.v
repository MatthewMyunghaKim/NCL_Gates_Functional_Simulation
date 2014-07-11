//////////////////////////////////////////////////////////////////////////////////
// Company: RMIT University
// Engineer: Matthew Myungha Kim
// nearers@gmail.com, s3358231@student.rmit.edu.au
// 
// Create Date:    06:40:00 08/03/2014 
// Design Name:    ncl_simlib_ref
// Module Name:    ncl_simlib_ref
// Project Name:  Streaming Media on Null Convention Logic
// Description: Reference library for new gates function simulation
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module th34w32_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a) | (b&c) | (b&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th54w32_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module thxor0_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule


module thxor0n_ref (y,a,b,c,d,rsb);
 output y;
 input a;
 input b;
 input c;
 input d;
 input rsb;

 reg yi;

  always @(a or b or c or d or rsb) begin
   if (rsb == 0) begin
     yi <=  0;
   end 
   else begin
   if (((a&b) | (c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
  end

   end
  assign #1 y = yi; 
endmodule


module th24w2_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a) | (b&c) | (b&d) | (c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th44w22_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c&d) | (b&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th34w2_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d) | (b&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th34w3_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a) | (b&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th24_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d) | (b&c) | (b&d) | (c&d) )) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th24comp_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&c) | (b&c) | (a&d) | (b&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule



module th22_ref (y,a,b);
 output y;
 input a;
 input b;

 reg yi;

  always @(a or b) begin
   if (((a) & (b))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th22x8_ref (y,a,b);
 output y;
 input a;
 input b;

 reg yi;

  always @(a or b) begin
   if (((a) & (b))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th22r_ref (y,a,b,rsb);
 output y;
 input a;
 input b;
 input rsb;

 reg yi;

  always @(a or b or rsb) begin
   if (rsb == 0) begin
      yi <=  0;
   end
   else if (((a) & (b))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule


module th22s_ref (y,a,b,rsb);
 output y;
 input a;
 input b;
 input rsb;

 reg yi;

  always @(a or b or rsb) begin
   if (rsb == 0) begin
      yi <=  1;
   end
   else if (((a) & (b))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule


module th23_ref (y,a,b,c);
 output y;
 input a;
 input b;
 input c;

 reg yi;

  always @(a or b or c) begin
   if (((a & b) | (a & c) | (b & c))) 
    begin
     yi <= 1;
    end
    else if (((a==0) & (b==0) & (c==0))) 
    begin
     yi <= 0;
    end
   end

  assign #1 y = yi; 
endmodule

module th54w22_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b&c) | (a&b&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th34w22_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d) | (b&c) | (b&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th44_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a) & (b) & (c) & (d) )) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th24w22_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a) | (b) | (c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th44w3_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th44w2_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b&c) | (a&b&d) | (a&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th33w2_ref (y,a,b,c);
 output y;
 input a;
 input b;
 input c;

 reg yi;

  always @(a or b or c) begin
   if (((a & b) | (a & c))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th34_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b&c) | (a&b&d) | (a&c&d) | (b&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th23w2_ref (y,a,b,c);
 output y;
 input a;
 input b;
 input c;

 reg yi;

  always @(a or b or c) begin
   if (((a) | (b & c))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th13_ref (y,a,b,c);
 output y;
 input a;
 input b;
 input c;

 assign  #1 y =  a | b | c;

endmodule

module th12_ref (y,a,b);
 output y;
 input a;
 input b;

 assign  #1 y =  a | b;

endmodule

module th54w322_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (b&c&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th14_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

  assign #1 y = a | b | c | d; 

endmodule

module th33_ref (y,a,b,c);
 output y;
 input a;
 input b;
 input c;

 reg yi;

  always @(a or b or c) begin
   if (((a) & (b) & (c))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th33r_ref (y,a,b,c,rsb);
 output y;
 input a;
 input b;
 input c;
 input rsb;

 reg yi;

  always @(a or b or c or rsb) begin
   if (rsb == 0)begin
      yi <=  0;
   end else   if (((a) & (b) & (c))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule



module thand0_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (b&c) | (a&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule

module th44w322_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d) | (b&c))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule 

module th44w322a_ref (y,a,b,c,d);
 output y;
 input a;
 input b;
 input c;
 input d;

 reg yi;

  always @(a or b or c or d) begin
   if (((a&b) | (a&c) | (a&d) | (b&d))) 
    begin
      yi <=  1;
    end
    else if (((a==0) & (b==0) & (c==0) & (d==0))) 
    begin
      yi <=  0;
    end
   end
  assign #1 y = yi; 
endmodule 




