// Library - static, Cell - thand0, View - schematic
// LAST TIME SAVED: May 23 18:23:19 2014
// NETLIST TIME: May 23 18:23:42 2014
`timescale 1ns / 1ns 

module thand0 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "thand0";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N8 ( .d(net29), .g(c), .s(net35), .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net35), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net29), .g(a), .s(net35), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net45), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net29), .g(b), .s(net45), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net22), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net29), .g(d), .s(net22), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net22), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net29), .g(b), .s(net22), .b(cds_globals.gnd_));
pfet_b  P9 ( .b(cds_globals.vdd_), .g(y), .s(net44), .d(net29));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(a), .s(net33), .d(net44));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(c), .s(cds_globals.vdd_),
     .d(net33));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net33));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net24), .d(net29));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(c), .s(net46), .d(net29));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(d), .s(net47), .d(net24));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(a), .s(net24), .d(net46));
inv I2 ( y, net29);

endmodule
