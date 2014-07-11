// Library - static, Cell - th54w322, View - schematic
// LAST TIME SAVED: May 23 18:16:51 2014
// NETLIST TIME: May 23 18:22:16 2014
`timescale 1ns / 1ns 

module th54w322 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th54w322";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N13 ( .d(net037), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N14 ( .d(net037), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net44), .g(d), .s(net45), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net44), .g(a), .s(net037), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net044), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net45), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(y), .s(net037), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net45), .g(b), .s(net044), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net44), .g(a), .s(net45), .b(cds_globals.gnd_));
pfet_b  P12 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net047));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(a), .s(net036), .d(net44));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(b), .s(net047), .d(net036));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(c), .s(net047), .d(net036));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net047), .d(net036));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net34));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net47), .d(net44));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(d), .s(net34), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net44);

endmodule
