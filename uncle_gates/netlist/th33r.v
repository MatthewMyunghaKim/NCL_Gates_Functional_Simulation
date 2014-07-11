// Library - static, Cell - th33r, View - schematic
// LAST TIME SAVED: May 23 16:54:28 2014
// NETLIST TIME: May 23 16:54:34 2014
`timescale 1ns / 1ns 

module th33r ( y, a, b, c, rsb );

output  y;

input  a, b, c, rsb;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th33r";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N6 ( .d(net44), .g(y), .s(net018), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net32), .g(b), .s(net44), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net035), .g(c), .s(net018), .b(cds_globals.gnd_));
nfet_b  N15 ( .d(net32), .g(c), .s(net44), .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net32), .g(a), .s(net44), .b(cds_globals.gnd_));
nfet_b  N16 ( .d(net018), .g(rsb), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net038), .g(b), .s(net035), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net32), .g(a), .s(net038), .b(cds_globals.gnd_));
pfet_b  P13 ( .b(cds_globals.vdd_), .g(rsb), .s(cds_globals.vdd_),
     .d(net32));
pfet_b  P12 ( .b(cds_globals.vdd_), .g(c), .s(cds_globals.vdd_),
     .d(net036));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net036));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net036));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(y), .s(net036), .d(net32));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net32));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net32);

endmodule
