// Library - static, Cell - th44w22, View - schematic
// LAST TIME SAVED: May 23 17:59:39 2014
// NETLIST TIME: May 23 17:59:46 2014
`timescale 1ns / 1ns 

module th44w22 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th44w22";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N12 ( .d(net046), .g(a), .s(net040), .b(cds_globals.gnd_));
nfet_b  N11 ( .d(net040), .g(d), .s(net32), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net040), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net046), .g(b), .s(net040), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net32), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net46), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N14 ( .d(net046), .g(c), .s(net035), .b(cds_globals.gnd_));
nfet_b  N15 ( .d(net046), .g(d), .s(net035), .b(cds_globals.gnd_));
nfet_b  N13 ( .d(net035), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net046), .g(a), .s(net46), .b(cds_globals.gnd_));
pfet_b  P12 ( .b(cds_globals.vdd_), .g(y), .s(net034), .d(net046));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net047));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net047));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(y), .s(net34), .d(net046));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(c), .s(net047), .d(net034));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(d), .s(net047), .d(net034));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net47), .d(net046));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(d), .s(net34), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net046);

endmodule
