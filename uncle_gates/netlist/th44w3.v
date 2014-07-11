// Library - static, Cell - th44w3, View - schematic
// LAST TIME SAVED: May 23 17:58:12 2014
// NETLIST TIME: May 23 17:58:31 2014
`timescale 1ns / 1ns 

module th44w3 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th44w3";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N6 ( .d(net042), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net32), .g(a), .s(net44), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net042), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net32), .g(y), .s(net042), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net042), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net32), .g(a), .s(net042), .b(cds_globals.gnd_));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(b), .s(net027), .d(net34));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net49), .d(net32));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net027));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(d), .s(net47), .d(net32));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(c), .s(net34), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net027));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net32);

endmodule
