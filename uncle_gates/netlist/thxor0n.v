// Library - static, Cell - thxor0n, View - schematic
// LAST TIME SAVED: May 23 18:28:33 2014
// NETLIST TIME: May 23 18:28:54 2014
`timescale 1ns / 1ns 

module thxor0n ( y, a, b, c, d, rsb );

output  y;

input  a, b, c, d, rsb;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "thxor0n";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N13 ( .d(net037), .g(c), .s(net44), .b(cds_globals.gnd_));
nfet_b  N14 ( .d(net037), .g(b), .s(net44), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net45), .g(d), .s(net030), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net037), .g(a), .s(net44), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net037), .g(c), .s(net45), .b(cds_globals.gnd_));
nfet_b  N15 ( .d(net030), .g(rsb), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N10 ( .d(net037), .g(d), .s(net44), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(y), .s(net030), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net040), .g(b), .s(net030), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net037), .g(a), .s(net040), .b(cds_globals.gnd_));
pfet_b  P12 ( .b(cds_globals.vdd_), .g(rsb), .s(cds_globals.vdd_),
     .d(net037));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(c), .s(net036), .d(net045));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(d), .s(net036), .d(net045));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(y), .s(net045), .d(net037));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net036));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net036));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(c), .s(net47), .d(net037));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(d), .s(net34), .d(net47));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(b), .s(net49), .d(net34));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
inv I2 ( y, net037);

endmodule
