// Library - static, Cell - th23, View - schematic
// LAST TIME SAVED: May 23 16:36:22 2014
// NETLIST TIME: May 23 16:36:43 2014
`timescale 1ns / 1ns 

module th23 ( y, a, b, c );

output  y;

input  a, b, c;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th23";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N14 ( .d(net32), .g(b), .s(net037), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net037), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net32), .g(c), .s(net44), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net037), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net32), .g(a), .s(net037), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net45), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net32), .g(a), .s(net45), .b(cds_globals.gnd_));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net035));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net035));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(c), .s(net035), .d(net038));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net038), .d(net32));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(net34), .d(net32));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net32));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net32);

endmodule
