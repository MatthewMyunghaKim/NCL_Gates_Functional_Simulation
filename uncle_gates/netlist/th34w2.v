// Library - static, Cell - th34w2, View - schematic
// LAST TIME SAVED: May 23 17:00:49 2014
// NETLIST TIME: May 23 17:01:13 2014
`timescale 1ns / 1ns 

module th34w2 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th34w2";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P9 ( .b(cds_globals.vdd_), .g(d), .s(net20), .d(net038));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(c), .s(net20), .d(net038));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(b), .s(net20), .d(net038));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(y), .s(net22), .d(net20));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net22));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net14));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net23), .d(net24));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(d), .s(net24), .d(net038));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net14), .d(net23));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net14));
nfet_b  N9 ( .d(net038), .g(b), .s(net043), .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net043), .g(c), .s(net049), .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net049), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net038), .g(y), .s(net057), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net057), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net31), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net038), .g(y), .s(net31), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net31), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net31), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net038), .g(a), .s(net31), .b(cds_globals.gnd_));
inv I2 ( y, net038);

endmodule
