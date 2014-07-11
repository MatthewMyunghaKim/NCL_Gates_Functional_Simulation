// Library - static, Cell - th23w2, View - schematic
// LAST TIME SAVED: May 23 16:37:45 2014
// NETLIST TIME: May 23 16:37:52 2014
`timescale 1ns / 1ns 

module th23w2 ( y, a, b, c );

output  y;

input  a, b, c;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th23w2";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N6 ( .d(net024), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net44), .g(c), .s(net024), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net037), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(b), .s(net024), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net44), .g(b), .s(net037), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net44), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(y), .s(net029), .d(net44));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(c), .s(net038), .d(net029));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(net34), .d(net44));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net44));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net038), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net038));
inv I2 ( y, net44);

endmodule
