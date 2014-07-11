// Library - static, Cell - inv, View - schematic
// LAST TIME SAVED: May 14 15:00:52 2014
// NETLIST TIME: May 23 16:16:20 2014
`timescale 1ns / 1ns 

module inv ( y, a );

output  y;

input  a;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "inv";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N0 ( .d(y), .g(a), .s(cds_globals.gnd_), .b(cds_globals.gnd_));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_), .d(y));

endmodule
