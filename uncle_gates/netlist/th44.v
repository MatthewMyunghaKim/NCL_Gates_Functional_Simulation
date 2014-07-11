// Library - static, Cell - th44, View - schematic
// LAST TIME SAVED: May 23 17:56:46 2014
// NETLIST TIME: May 23 17:57:07 2014
`timescale 1ns / 1ns 

module th44 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th44";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N9 ( .d(net32), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net32), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net32), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net25), .g(y), .s(net32), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net32), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net45), .g(b), .s(net44), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net46), .g(c), .s(net45), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net25), .g(d), .s(net46), .b(cds_globals.gnd_));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(d), .s(cds_globals.vdd_),
     .d(net34));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(c), .s(cds_globals.vdd_),
     .d(net34));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(y), .s(net34), .d(net25));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net34));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net34));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(d), .s(net47), .d(net25));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net48), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net48));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net25);

endmodule
