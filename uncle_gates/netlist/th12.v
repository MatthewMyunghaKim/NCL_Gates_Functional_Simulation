// Library - static, Cell - th12, View - schematic
// LAST TIME SAVED: May 18 15:07:39 2014
// NETLIST TIME: May 23 16:24:28 2014
`timescale 1ns / 1ns 

module th12 ( y, a, b );

output  y;

input  a, b;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th12";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N1 ( .d(net013), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net013), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net18), .d(net013));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net18));
inv I17 ( y, net013);

endmodule
