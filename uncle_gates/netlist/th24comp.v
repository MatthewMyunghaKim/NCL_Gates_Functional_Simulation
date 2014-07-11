// Library - static, Cell - th24comp, View - schematic
// LAST TIME SAVED: May 23 16:40:22 2014
// NETLIST TIME: May 23 16:40:43 2014
`timescale 1ns / 1ns 

module th24comp ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th24comp";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N8 ( .d(net040), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net040), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net31), .g(y), .s(net040), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net30), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net30), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net30), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net31), .g(b), .s(net30), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net31), .g(a), .s(net30), .b(cds_globals.gnd_));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(y), .s(net47), .d(net31));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(d), .s(net48), .d(net47));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(c), .s(cds_globals.vdd_),
     .d(net48));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(net24), .d(net31));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(d), .s(net49), .d(net31));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net24), .d(net49));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net50), .d(net24));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net50));
inv I2 ( y, net31);

endmodule
