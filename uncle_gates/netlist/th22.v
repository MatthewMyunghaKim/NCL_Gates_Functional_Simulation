// Library - static, Cell - th22, View - schematic
// LAST TIME SAVED: May 23 15:00:43 2014
// NETLIST TIME: May 23 15:01:15 2014
`timescale 1ns / 1ns 

module th22 ( y, a, b );

output  y;

input  a, b;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th22";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P4 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net24));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(y), .s(net24), .d(net15));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net24));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net35), .d(net15));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net35));
nfet_b  N4 ( .d(net22), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net22), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net15), .g(y), .s(net22), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net34), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net15), .g(b), .s(net34), .b(cds_globals.gnd_));
inv I8 ( y, net15);

endmodule
