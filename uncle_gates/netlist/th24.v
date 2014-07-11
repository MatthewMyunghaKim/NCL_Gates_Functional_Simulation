// Library - static, Cell - th24, View - schematic
// LAST TIME SAVED: May 23 16:39:19 2014
// NETLIST TIME: May 23 16:39:23 2014
`timescale 1ns / 1ns 

module th24 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th24";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N13 ( .d(net61), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N12 ( .d(net41), .g(d), .s(net61), .b(cds_globals.gnd_));
nfet_b  N11 ( .d(net50), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N9 ( .d(net50), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net41), .g(c), .s(net50), .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net44), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net41), .g(b), .s(net44), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net44), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net41), .g(a), .s(net44), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net41), .g(a), .s(net66), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net66), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(b), .s(cds_globals.vdd_),
     .d(net49));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net49));
pfet_b  P9 ( .b(cds_globals.vdd_), .g(c), .s(net49), .d(net62));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(d), .s(net62), .d(net63));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(y), .s(net63), .d(net41));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(d), .s(net36), .d(net64));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(net64), .d(net41));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(net35), .d(net41));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net65));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(b), .s(net65), .d(net36));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(c), .s(net36), .d(net35));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(d), .s(net35), .d(net41));
inv I11 ( y, net41);

endmodule
