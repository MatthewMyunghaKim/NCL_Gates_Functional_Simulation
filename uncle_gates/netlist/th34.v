// Library - static, Cell - th34, View - schematic
// LAST TIME SAVED: May 23 16:59:44 2014
// NETLIST TIME: May 23 17:00:06 2014
`timescale 1ns / 1ns 

module th34 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th34";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pfet_b  P15 ( .b(cds_globals.vdd_), .g(b), .s(net59), .d(net28));
pfet_b  P14 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net59));
pfet_b  P16 ( .b(cds_globals.vdd_), .g(c), .s(net28), .d(net60));
pfet_b  P17 ( .b(cds_globals.vdd_), .g(d), .s(net60), .d(net26));
pfet_b  P20 ( .b(cds_globals.vdd_), .g(c), .s(net39), .d(net44));
pfet_b  P18 ( .b(cds_globals.vdd_), .g(y), .s(net28), .d(net26));
pfet_b  P19 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net39));
pfet_b  P21 ( .b(cds_globals.vdd_), .g(y), .s(net44), .d(net26));
pfet_b  P23 ( .b(cds_globals.vdd_), .g(d), .s(net39), .d(net44));
pfet_b  P22 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net39));
pfet_b  P24 ( .b(cds_globals.vdd_), .g(c), .s(cds_globals.vdd_),
     .d(net58));
pfet_b  P25 ( .b(cds_globals.vdd_), .g(d), .s(net58), .d(net44));
nfet_b  N0 ( .d(net34), .g(a), .s(net57), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net26), .g(c), .s(net34), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net57), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net34), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net26), .g(d), .s(net34), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net26), .g(a), .s(net40), .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net56), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net40), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N9 ( .d(net26), .g(b), .s(net40), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net40), .g(c), .s(net56), .b(cds_globals.gnd_));
inv I2 ( y, net26);

endmodule
