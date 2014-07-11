// Library - static, Cell - th34w22, View - schematic
// LAST TIME SAVED: May 23 17:04:57 2014
// NETLIST TIME: May 23 17:05:16 2014
`timescale 1ns / 1ns 

module th34w22 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th34w22";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N9 ( .d(net32), .g(b), .s(net42), .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net42), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N7 ( .d(net32), .g(a), .s(net42), .b(cds_globals.gnd_));
nfet_b  N6 ( .d(net36), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net32), .g(y), .s(net36), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net32), .g(b), .s(net36), .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net36), .g(c), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net32), .g(a), .s(net36), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net54), .g(b), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net32), .g(a), .s(net54), .b(cds_globals.gnd_));
pfet_b  P9 ( .b(cds_globals.vdd_), .g(b), .s(net38), .d(net32));
pfet_b  P8 ( .b(cds_globals.vdd_), .g(a), .s(net38), .d(net32));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(c), .s(net53), .d(net38));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(d), .s(net52), .d(net53));
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net52));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net25));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(a), .s(net55), .d(net32));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(b), .s(net25), .d(net55));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(c), .s(net56), .d(net25));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(d), .s(cds_globals.vdd_),
     .d(net56));
inv I2 ( y, net32);

endmodule
