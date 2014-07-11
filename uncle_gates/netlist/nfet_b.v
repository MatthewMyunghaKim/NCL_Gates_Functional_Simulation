//Verilog HDL for "cmos32lp", "nfet_b" "functional"

module nfet_b ( d, g, s, b );

  inout s;
  inout b;
  inout d;
  input g;

    tranif1 (d, s, g);

endmodule