// Library - static, Cell - th13, View - schematic
// LAST TIME SAVED: May 14 17:24:24 2014
// NETLIST TIME: May 23 16:28:30 2014
`timescale 1ns / 1ns 

module th13 ( y, a, b, c );

output  y;

input  a, b, c;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th13";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N2 ( .d(net18), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net18), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net18), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net23), .d(net18));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net24), .d(net23));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net24));
inv I3 ( y, net18);

endmodule
