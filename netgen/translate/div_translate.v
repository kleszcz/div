////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: div_translate.v
// /___/   /\     Timestamp: Sat Jan 18 20:03:37 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim div.ngd div_translate.v 
// Device	: 3s700anfgg484-4
// Input file	: div.ngd
// Output file	: C:\Users\Jan\Documents\GitHub\div\netgen\translate\div_translate.v
// # of Modules	: 1
// Design Name	: div
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module div (
  clk, start, rst, overflow, rdy, quotient, remainder, denom, num
);
  input clk;
  input start;
  input rst;
  output overflow;
  output rdy;
  output [3 : 0] quotient;
  output [3 : 0] remainder;
  input [3 : 0] denom;
  input [7 : 0] num;
  wire N1;
  wire N21;
  wire N22;
  wire N27;
  wire N28;
  wire N29;
  wire N30;
  wire N31;
  wire N32;
  wire N33;
  wire N34;
  wire N35;
  wire N36;
  wire N37;
  wire N38;
  wire N40;
  wire N41;
  wire \c/Mcount_pos ;
  wire \c/Mcount_pos1 ;
  wire \c/Mcount_pos2 ;
  wire \c/N4 ;
  wire \c/pos_not0001 ;
  wire \c/state_FSM_FFd1_28 ;
  wire \c/state_FSM_FFd1-In_29 ;
  wire \c/state_FSM_FFd2_30 ;
  wire \c/state_FSM_FFd2-In ;
  wire clk_BUFGP;
  wire cmpr;
  wire denom_0_IBUF_39;
  wire denom_1_IBUF_40;
  wire denom_2_IBUF_41;
  wire denom_3_IBUF_42;
  wire ld;
  wire num_0_IBUF_52;
  wire num_1_IBUF_53;
  wire num_2_IBUF_54;
  wire num_3_IBUF_55;
  wire num_4_IBUF_56;
  wire num_5_IBUF_57;
  wire num_6_IBUF_58;
  wire num_7_IBUF_59;
  wire overflow_OBUF_61;
  wire rdy_OBUF_67;
  wire rst_IBUF_73;
  wire \s/acc_0_mux0000 ;
  wire \s/acc_1_mux0000 ;
  wire \s/acc_2_mux0000 ;
  wire \s/acc_3_mux0000 ;
  wire \s/acc_3_not0001 ;
  wire \s/acc_4_mux0000_98 ;
  wire \s/acc_5_mux0000_100 ;
  wire \s/acc_6_mux0000_102 ;
  wire \s/acc_7_mux0000_104 ;
  wire \s/acc_8_mux0000 ;
  wire \s/acc_8_not0001_107 ;
  wire \s/cmpr1_108 ;
  wire shft;
  wire start_IBUF_111;
  wire \s/cmpr1_SW0_SW0/O ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [2 : 0] \c/pos ;
  wire [3 : 0] \s/Msub__sub0000_cy ;
  wire [4 : 0] \s/Msub__sub0000_lut ;
  wire [4 : 0] \s/_sub0000 ;
  wire [8 : 0] \s/acc ;
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/state_FSM_FFd2  (
    .CLK(clk_BUFGP),
    .RST(rst_IBUF_73),
    .I(\c/state_FSM_FFd2-In ),
    .O(\c/state_FSM_FFd2_30 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/state_FSM_FFd1  (
    .CLK(clk_BUFGP),
    .RST(rst_IBUF_73),
    .I(\c/state_FSM_FFd1-In_29 ),
    .O(\c/state_FSM_FFd1_28 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \c/pos_2  (
    .CLK(clk_BUFGP),
    .CE(\c/pos_not0001 ),
    .I(\c/Mcount_pos2 ),
    .SET(rst_IBUF_73),
    .O(\c/pos [2]),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/pos_1  (
    .CLK(clk_BUFGP),
    .CE(\c/pos_not0001 ),
    .RST(rst_IBUF_73),
    .I(\c/Mcount_pos1 ),
    .O(\c/pos [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/pos_0  (
    .CLK(clk_BUFGP),
    .CE(\c/pos_not0001 ),
    .RST(rst_IBUF_73),
    .I(\c/Mcount_pos ),
    .O(\c/pos [0]),
    .SET(GND)
  );
  X_XOR2   \s/Msub__sub0000_xor<4>  (
    .I0(\s/Msub__sub0000_cy [3]),
    .I1(\s/Msub__sub0000_lut [4]),
    .O(\s/_sub0000 [4])
  );
  X_XOR2   \s/Msub__sub0000_xor<3>  (
    .I0(\s/Msub__sub0000_cy [2]),
    .I1(\s/Msub__sub0000_lut [3]),
    .O(\s/_sub0000 [3])
  );
  X_MUX2   \s/Msub__sub0000_cy<3>  (
    .IB(\s/Msub__sub0000_cy [2]),
    .IA(\s/acc [7]),
    .SEL(\s/Msub__sub0000_lut [3]),
    .O(\s/Msub__sub0000_cy [3])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \s/Msub__sub0000_lut<3>  (
    .ADR0(denom_3_IBUF_42),
    .ADR1(\s/acc [7]),
    .O(\s/Msub__sub0000_lut [3])
  );
  X_XOR2   \s/Msub__sub0000_xor<2>  (
    .I0(\s/Msub__sub0000_cy [1]),
    .I1(\s/Msub__sub0000_lut [2]),
    .O(\s/_sub0000 [2])
  );
  X_MUX2   \s/Msub__sub0000_cy<2>  (
    .IB(\s/Msub__sub0000_cy [1]),
    .IA(\s/acc [6]),
    .SEL(\s/Msub__sub0000_lut [2]),
    .O(\s/Msub__sub0000_cy [2])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \s/Msub__sub0000_lut<2>  (
    .ADR0(denom_2_IBUF_41),
    .ADR1(\s/acc [6]),
    .O(\s/Msub__sub0000_lut [2])
  );
  X_XOR2   \s/Msub__sub0000_xor<1>  (
    .I0(\s/Msub__sub0000_cy [0]),
    .I1(\s/Msub__sub0000_lut [1]),
    .O(\s/_sub0000 [1])
  );
  X_MUX2   \s/Msub__sub0000_cy<1>  (
    .IB(\s/Msub__sub0000_cy [0]),
    .IA(\s/acc [5]),
    .SEL(\s/Msub__sub0000_lut [1]),
    .O(\s/Msub__sub0000_cy [1])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \s/Msub__sub0000_lut<1>  (
    .ADR0(denom_1_IBUF_40),
    .ADR1(\s/acc [5]),
    .O(\s/Msub__sub0000_lut [1])
  );
  X_XOR2   \s/Msub__sub0000_xor<0>  (
    .I0(N1),
    .I1(\s/Msub__sub0000_lut [0]),
    .O(\s/_sub0000 [0])
  );
  X_MUX2   \s/Msub__sub0000_cy<0>  (
    .IB(N1),
    .IA(\s/acc [4]),
    .SEL(\s/Msub__sub0000_lut [0]),
    .O(\s/Msub__sub0000_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \s/Msub__sub0000_lut<0>  (
    .ADR0(denom_0_IBUF_39),
    .ADR1(\s/acc [4]),
    .O(\s/Msub__sub0000_lut [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_1  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_3_not0001 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_1_mux0000 ),
    .O(\s/acc [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_2  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_3_not0001 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_2_mux0000 ),
    .O(\s/acc [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_0  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_0_mux0000 ),
    .O(\s/acc [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_4  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_4_mux0000_98 ),
    .O(\s/acc [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_5  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_5_mux0000_100 ),
    .O(\s/acc [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_3  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_3_not0001 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_3_mux0000 ),
    .O(\s/acc [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_7  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_7_mux0000_104 ),
    .O(\s/acc [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_8  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_8_mux0000 ),
    .O(\s/acc [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_6  (
    .CLK(clk_BUFGP),
    .CE(\s/acc_8_not0001_107 ),
    .RST(rst_IBUF_73),
    .I(\s/acc_6_mux0000_102 ),
    .O(\s/acc [6]),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \c/state_FSM_Out21  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .O(rdy_OBUF_67)
  );
  X_LUT3 #(
    .INIT ( 8'h51 ))
  \c/Mcount_pos_xor<0>11  (
    .ADR0(\c/pos [0]),
    .ADR1(\c/state_FSM_FFd2_30 ),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .O(\c/Mcount_pos )
  );
  X_LUT4 #(
    .INIT ( 16'h82C3 ))
  \c/Mcount_pos_xor<1>11  (
    .ADR0(\c/state_FSM_FFd1_28 ),
    .ADR1(\c/pos [1]),
    .ADR2(\c/pos [0]),
    .ADR3(\c/state_FSM_FFd2_30 ),
    .O(\c/Mcount_pos1 )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \c/pos_not00011  (
    .ADR0(\c/state_FSM_FFd1_28 ),
    .ADR1(\c/state_FSM_FFd2_30 ),
    .O(\c/pos_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h9F99 ))
  \c/Mcount_pos_xor<2>12  (
    .ADR0(\c/pos [2]),
    .ADR1(\c/N4 ),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(\c/state_FSM_FFd2_30 ),
    .O(\c/Mcount_pos2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFF32 ))
  \c/state_FSM_FFd2-In1  (
    .ADR0(start_IBUF_111),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/state_FSM_FFd2_30 ),
    .ADR3(shft),
    .O(\c/state_FSM_FFd2-In )
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \c/state_FSM_FFd2-In31  (
    .ADR0(\c/pos [2]),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/state_FSM_FFd2_30 ),
    .ADR3(N41),
    .O(shft)
  );
  X_LUT4 #(
    .INIT ( 16'h2230 ))
  \s/acc_8_mux00001  (
    .ADR0(\s/acc [7]),
    .ADR1(N40),
    .ADR2(\s/_sub0000 [4]),
    .ADR3(shft),
    .O(\s/acc_8_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hF751 ))
  \s/cmpr2  (
    .ADR0(denom_1_IBUF_40),
    .ADR1(denom_0_IBUF_39),
    .ADR2(\s/acc [4]),
    .ADR3(\s/acc [5]),
    .O(\s/cmpr1_108 )
  );
  X_BUF   start_IBUF (
    .I(start),
    .O(start_IBUF_111)
  );
  X_BUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_73)
  );
  X_BUF   denom_3_IBUF (
    .I(denom[3]),
    .O(denom_3_IBUF_42)
  );
  X_BUF   denom_2_IBUF (
    .I(denom[2]),
    .O(denom_2_IBUF_41)
  );
  X_BUF   denom_1_IBUF (
    .I(denom[1]),
    .O(denom_1_IBUF_40)
  );
  X_BUF   denom_0_IBUF (
    .I(denom[0]),
    .O(denom_0_IBUF_39)
  );
  X_BUF   num_7_IBUF (
    .I(num[7]),
    .O(num_7_IBUF_59)
  );
  X_BUF   num_6_IBUF (
    .I(num[6]),
    .O(num_6_IBUF_58)
  );
  X_BUF   num_5_IBUF (
    .I(num[5]),
    .O(num_5_IBUF_57)
  );
  X_BUF   num_4_IBUF (
    .I(num[4]),
    .O(num_4_IBUF_56)
  );
  X_BUF   num_3_IBUF (
    .I(num[3]),
    .O(num_3_IBUF_55)
  );
  X_BUF   num_2_IBUF (
    .I(num[2]),
    .O(num_2_IBUF_54)
  );
  X_BUF   num_1_IBUF (
    .I(num[1]),
    .O(num_1_IBUF_53)
  );
  X_BUF   num_0_IBUF (
    .I(num[0]),
    .O(num_0_IBUF_52)
  );
  X_LUT4 #(
    .INIT ( 16'hF571 ))
  \s/cmpr1_SW0_SW1  (
    .ADR0(denom_3_IBUF_42),
    .ADR1(denom_2_IBUF_41),
    .ADR2(\s/acc [7]),
    .ADR3(\s/acc [6]),
    .O(N22)
  );
  X_LUT4 #(
    .INIT ( 16'hFAEE ))
  \s/cmpr1  (
    .ADR0(\s/acc [8]),
    .ADR1(N21),
    .ADR2(N22),
    .ADR3(\s/cmpr1_108 ),
    .O(cmpr)
  );
  X_LUT4 #(
    .INIT ( 16'h6662 ))
  \s/acc_3_not00011  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/N4 ),
    .ADR3(\c/pos [2]),
    .O(\s/acc_3_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_3_mux00001  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\s/acc [2]),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(num_3_IBUF_55),
    .O(\s/acc_3_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_2_mux00001  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\s/acc [1]),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(num_2_IBUF_54),
    .O(\s/acc_2_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_1_mux00001  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\s/acc [0]),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(num_1_IBUF_53),
    .O(\s/acc_1_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h08FB ))
  \s/acc_0_mux00001  (
    .ADR0(num_0_IBUF_52),
    .ADR1(\c/state_FSM_FFd2_30 ),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(shft),
    .O(\s/acc_0_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \c/overflow1  (
    .ADR0(\c/pos [0]),
    .ADR1(\c/pos [1]),
    .ADR2(\c/pos [2]),
    .ADR3(cmpr),
    .O(overflow_OBUF_61)
  );
  X_INV   \s/Msub__sub0000_lut<4>_INV_0  (
    .I(\s/acc [8]),
    .O(\s/Msub__sub0000_lut [4])
  );
  X_MUX2   \c/state_FSM_FFd1-In  (
    .IA(N27),
    .IB(N28),
    .SEL(cmpr),
    .O(\c/state_FSM_FFd1-In_29 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFA8 ))
  \c/state_FSM_FFd1-In_F  (
    .ADR0(\c/state_FSM_FFd1_28 ),
    .ADR1(\c/N4 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/state_FSM_FFd2_30 ),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'hEE6A ))
  \c/state_FSM_FFd1-In_G  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/N4 ),
    .O(N28)
  );
  X_MUX2   \s/acc_8_not0001  (
    .IA(N29),
    .IB(N30),
    .SEL(cmpr),
    .O(\s/acc_8_not0001_107 )
  );
  X_LUT4 #(
    .INIT ( 16'h6662 ))
  \s/acc_8_not0001_F  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/N4 ),
    .ADR3(\c/pos [2]),
    .O(N29)
  );
  X_LUT4 #(
    .INIT ( 16'hEE6A ))
  \s/acc_8_not0001_G  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\c/state_FSM_FFd1_28 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/N4 ),
    .O(N30)
  );
  X_MUX2   \s/acc_4_mux0000  (
    .IA(N31),
    .IB(N32),
    .SEL(shft),
    .O(\s/acc_4_mux0000_98 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \s/acc_4_mux0000_F  (
    .ADR0(ld),
    .ADR1(\s/_sub0000 [0]),
    .ADR2(num_4_IBUF_56),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_4_mux0000_G  (
    .ADR0(\c/state_FSM_FFd2_30 ),
    .ADR1(\s/acc [3]),
    .ADR2(\c/state_FSM_FFd1_28 ),
    .ADR3(num_4_IBUF_56),
    .O(N32)
  );
  X_MUX2   \s/acc_5_mux0000  (
    .IA(N33),
    .IB(N34),
    .SEL(\s/_sub0000 [1]),
    .O(\s/acc_5_mux0000_100 )
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_5_mux0000_F  (
    .ADR0(shft),
    .ADR1(\s/acc [4]),
    .ADR2(ld),
    .ADR3(num_5_IBUF_57),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_5_mux0000_G  (
    .ADR0(\s/acc [4]),
    .ADR1(ld),
    .ADR2(num_5_IBUF_57),
    .ADR3(shft),
    .O(N34)
  );
  X_MUX2   \s/acc_6_mux0000  (
    .IA(N35),
    .IB(N36),
    .SEL(\s/_sub0000 [2]),
    .O(\s/acc_6_mux0000_102 )
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_6_mux0000_F  (
    .ADR0(shft),
    .ADR1(\s/acc [5]),
    .ADR2(ld),
    .ADR3(num_6_IBUF_58),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_6_mux0000_G  (
    .ADR0(\s/acc [5]),
    .ADR1(ld),
    .ADR2(num_6_IBUF_58),
    .ADR3(shft),
    .O(N36)
  );
  X_MUX2   \s/acc_7_mux0000  (
    .IA(N37),
    .IB(N38),
    .SEL(\s/_sub0000 [3]),
    .O(\s/acc_7_mux0000_104 )
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_7_mux0000_F  (
    .ADR0(shft),
    .ADR1(\s/acc [6]),
    .ADR2(ld),
    .ADR3(num_7_IBUF_59),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_7_mux0000_G  (
    .ADR0(\s/acc [6]),
    .ADR1(ld),
    .ADR2(num_7_IBUF_59),
    .ADR3(shft),
    .O(N38)
  );
  X_BUF   \c/state_FSM_Out01/LUT2_D_BUF  (
    .I(ld),
    .O(N40)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \c/state_FSM_Out01  (
    .ADR0(\c/state_FSM_FFd1_28 ),
    .ADR1(\c/state_FSM_FFd2_30 ),
    .O(ld)
  );
  X_BUF   \c/Mcount_pos_xor<2>111/LUT2_D_BUF  (
    .I(\c/N4 ),
    .O(N41)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \c/Mcount_pos_xor<2>111  (
    .ADR0(\c/pos [1]),
    .ADR1(\c/pos [0]),
    .O(\c/N4 )
  );
  X_BUF   \s/cmpr1_SW0_SW0/LUT4_L_BUF  (
    .I(\s/cmpr1_SW0_SW0/O ),
    .O(N21)
  );
  X_LUT4 #(
    .INIT ( 16'h7130 ))
  \s/cmpr1_SW0_SW0  (
    .ADR0(denom_2_IBUF_41),
    .ADR1(denom_3_IBUF_42),
    .ADR2(\s/acc [7]),
    .ADR3(\s/acc [6]),
    .O(\s/cmpr1_SW0_SW0/O )
  );
  X_IPAD   clk_98 (
    .PAD(clk)
  );
  X_IPAD   \denom<0>  (
    .PAD(denom[0])
  );
  X_IPAD   \denom<1>  (
    .PAD(denom[1])
  );
  X_IPAD   \denom<2>  (
    .PAD(denom[2])
  );
  X_IPAD   \denom<3>  (
    .PAD(denom[3])
  );
  X_IPAD   \num<0>  (
    .PAD(num[0])
  );
  X_IPAD   \num<1>  (
    .PAD(num[1])
  );
  X_IPAD   \num<2>  (
    .PAD(num[2])
  );
  X_IPAD   \num<3>  (
    .PAD(num[3])
  );
  X_IPAD   \num<4>  (
    .PAD(num[4])
  );
  X_IPAD   \num<5>  (
    .PAD(num[5])
  );
  X_IPAD   \num<6>  (
    .PAD(num[6])
  );
  X_IPAD   \num<7>  (
    .PAD(num[7])
  );
  X_OPAD   overflow_111 (
    .PAD(overflow)
  );
  X_OPAD   \quotient<0>  (
    .PAD(quotient[0])
  );
  X_OPAD   \quotient<1>  (
    .PAD(quotient[1])
  );
  X_OPAD   \quotient<2>  (
    .PAD(quotient[2])
  );
  X_OPAD   \quotient<3>  (
    .PAD(quotient[3])
  );
  X_OPAD   rdy_116 (
    .PAD(rdy)
  );
  X_OPAD   \remainder<0>  (
    .PAD(remainder[0])
  );
  X_OPAD   \remainder<1>  (
    .PAD(remainder[1])
  );
  X_OPAD   \remainder<2>  (
    .PAD(remainder[2])
  );
  X_OPAD   \remainder<3>  (
    .PAD(remainder[3])
  );
  X_IPAD   rst_121 (
    .PAD(rst)
  );
  X_IPAD   start_122 (
    .PAD(start)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   overflow_OBUF (
    .I(overflow_OBUF_61),
    .O(overflow)
  );
  X_OBUF   quotient_0_OBUF (
    .I(\s/acc [0]),
    .O(quotient[0])
  );
  X_OBUF   quotient_1_OBUF (
    .I(\s/acc [1]),
    .O(quotient[1])
  );
  X_OBUF   quotient_2_OBUF (
    .I(\s/acc [2]),
    .O(quotient[2])
  );
  X_OBUF   quotient_3_OBUF (
    .I(\s/acc [3]),
    .O(quotient[3])
  );
  X_OBUF   rdy_OBUF (
    .I(rdy_OBUF_67),
    .O(rdy)
  );
  X_OBUF   remainder_0_OBUF (
    .I(\s/acc [4]),
    .O(remainder[0])
  );
  X_OBUF   remainder_1_OBUF (
    .I(\s/acc [5]),
    .O(remainder[1])
  );
  X_OBUF   remainder_2_OBUF (
    .I(\s/acc [6]),
    .O(remainder[2])
  );
  X_OBUF   remainder_3_OBUF (
    .I(\s/acc [7]),
    .O(remainder[3])
  );
  X_ONE   NlwBlock_div_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_div_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

