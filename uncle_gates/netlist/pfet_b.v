//Verilog HDL for "cmos32lp", "pfet_b" "functional"

module pfet_b ( d, g, s, b );

  inout s;
  inout b;
  inout d;
  input g;

    tranif0 (d, s, g);

endmodule