// Library - static, Cell - th24w22, View - schematic
// LAST TIME SAVED: May 23 16:50:53 2014
// NETLIST TIME: May 23 16:51:13 2014
`timescale 1ns / 1ns 

module th24w22 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th24w22";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N14 ( .d(net051), .g(d), .s(net037), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net051), .g(c), .s(net44), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net037), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net051), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net051), .g(c), .s(net037), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net051), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(d), .s(net34), .d(net035));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net035), .d(net051));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net035));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(d), .s(net47), .d(net051));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net051);

endmodule
