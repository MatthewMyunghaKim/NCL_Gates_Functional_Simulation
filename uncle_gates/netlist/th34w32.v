// Library - static, Cell - th34w32, View - schematic
// LAST TIME SAVED: May 23 17:24:37 2014
// NETLIST TIME: May 23 17:36:37 2014
`timescale 1ns / 1ns 

module th34w32 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th34w32";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N8 ( .d(net38), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net28), .g(y), .s(net38), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net27), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net28), .g(y), .s(net27), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net27), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net28), .g(b), .s(net27), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net28), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
pfet_b  P10 ( .b(cds_globals.vdd_), .g(b), .s(net40), .d(net39));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(y), .s(net22), .d(net28));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(net39), .d(net28));
pfet_b  P11 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net40));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(b), .s(net22), .d(net28));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(d), .s(net41), .d(net22));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(c), .s(net42), .d(net41));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(a), .s(cds_globals.vdd_),
     .d(net42));
inv I2 ( y, net28);

endmodule
