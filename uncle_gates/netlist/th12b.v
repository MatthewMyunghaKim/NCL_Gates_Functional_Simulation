// Library - static, Cell - th12b, View - schematic
// LAST TIME SAVED: May 14 15:54:04 2014
// NETLIST TIME: May 23 16:27:00 2014
`timescale 1ns / 1ns 

module th12b ( y, a, b );

output  y;

input  a, b;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th12b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N1 ( .d(y), .g(b), .s(cds_globals.gnd_), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(y), .g(a), .s(cds_globals.gnd_), .b(cds_globals.gnd_));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net18), .d(y));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net18));

endmodule
