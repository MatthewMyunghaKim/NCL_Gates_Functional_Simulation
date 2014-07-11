// Library - static, Cell - th34w3, View - schematic
// LAST TIME SAVED: May 23 17:03:47 2014
// NETLIST TIME: May 23 17:04:07 2014
`timescale 1ns / 1ns 

module th34w3 ( y, a, b, c, d );

output  y;

input  a, b, c, d;


specify 
    specparam CDS_LIBNAME  = "static";
    specparam CDS_CELLNAME = "th34w3";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nfet_b  N7 ( .d(net30), .g(d), .s(net37), .b(cds_globals.gnd_));
nfet_b  N5 ( .d(net30), .g(c), .s(net37), .b(cds_globals.gnd_));
nfet_b  N4 ( .d(net30), .g(b), .s(net37), .b(cds_globals.gnd_));
nfet_b  N2 ( .d(net30), .g(b), .s(net44), .b(cds_globals.gnd_));
nfet_b  N0 ( .d(net30), .g(a), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N8 ( .d(net37), .g(y), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
nfet_b  N3 ( .d(net44), .g(c), .s(net43), .b(cds_globals.gnd_));
nfet_b  N1 ( .d(net43), .g(d), .s(cds_globals.gnd_),
     .b(cds_globals.gnd_));
inv I2 ( y, net30);
pfet_b  P5 ( .b(cds_globals.vdd_), .g(y), .s(cds_globals.vdd_),
     .d(net36));
pfet_b  P0 ( .b(cds_globals.vdd_), .g(d), .s(cds_globals.vdd_),
     .d(net46));
pfet_b  P4 ( .b(cds_globals.vdd_), .g(c), .s(net36), .d(net33));
pfet_b  P1 ( .b(cds_globals.vdd_), .g(c), .s(net46), .d(net45));
pfet_b  P7 ( .b(cds_globals.vdd_), .g(b), .s(net36), .d(net33));
pfet_b  P2 ( .b(cds_globals.vdd_), .g(b), .s(net45), .d(net33));
pfet_b  P6 ( .b(cds_globals.vdd_), .g(d), .s(net36), .d(net33));
pfet_b  P3 ( .b(cds_globals.vdd_), .g(a), .s(net33), .d(net30));

endmodule
