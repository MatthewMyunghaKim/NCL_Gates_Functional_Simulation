// Library - static, Cell - th14, View - schematic
// LAST TIME SAVED: May 23 16:30:02 2014
// NETLIST TIME: May 23 16:30:21 2014
`timescale 1ns / 1ns 

module th14 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th14";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N4 ( .d(net18), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net18), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net18), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net18), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(d), .s(net016), .d(net18));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net23), .d(net016));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net24), .d(net23));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net24));
inv I3 ( y, net18);

endmodule
