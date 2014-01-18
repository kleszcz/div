////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: div_map.v
// /___/   /\     Timestamp: Sat Jan 18 20:38:07 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf div.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim div_map.ncd div_map.v 
// Device	: 3s700anfgg484-4 (PRODUCTION 1.42 2013-10-13)
// Input file	: div_map.ncd
// Output file	: C:\Users\Jan\Documents\GitHub\div\netgen\map\div_map.v
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
  wire start_IBUF_0;
  wire denom_0_IBUF_0;
  wire denom_1_IBUF_0;
  wire denom_2_IBUF_0;
  wire denom_3_IBUF_0;
  wire rst_IBUF_0;
  wire num_0_IBUF_0;
  wire num_1_IBUF_0;
  wire \clk_BUFGP/IBUFG_0 ;
  wire clk_BUFGP;
  wire shft_0;
  wire \s/acc_8_not0001 ;
  wire \c/state_FSM_FFd2_347 ;
  wire \c/state_FSM_FFd1_349 ;
  wire num_4_IBUF_0;
  wire ld;
  wire \s/_sub0000[0] ;
  wire num_6_IBUF_0;
  wire cmpr_0;
  wire \c/N4 ;
  wire num_5_IBUF_0;
  wire num_7_IBUF_0;
  wire \s/_sub0000[4] ;
  wire \s/cmpr1_SW0_SW0/O ;
  wire N22_0;
  wire \s/cmpr1_0 ;
  wire \c/pos_not0001_0 ;
  wire \s/acc_3_not0001_0 ;
  wire num_3_IBUF_0;
  wire num_2_IBUF_0;
  wire \remainder<1>/O ;
  wire \remainder<2>/O ;
  wire \remainder<3>/O ;
  wire start_IBUF_410;
  wire \rdy/O ;
  wire denom_0_IBUF_425;
  wire denom_1_IBUF_432;
  wire denom_2_IBUF_439;
  wire denom_3_IBUF_446;
  wire rst_IBUF_453;
  wire num_0_IBUF_460;
  wire num_1_IBUF_467;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \s/acc<4>/DXMUX_504 ;
  wire \s/acc<4>/F5MUX_502 ;
  wire N32;
  wire \s/acc<4>/BXINV_495 ;
  wire N31;
  wire \s/acc<4>/CLKINV_486 ;
  wire \s/acc<4>/CEINV_485 ;
  wire \s/acc<6>/DXMUX_543 ;
  wire \s/acc<6>/F5MUX_541 ;
  wire N36;
  wire \s/acc<6>/BXINV_534 ;
  wire N35;
  wire \s/acc<6>/CLKINV_526 ;
  wire \s/acc<6>/CEINV_525 ;
  wire \c/state_FSM_FFd1/FFX/RST ;
  wire \c/state_FSM_FFd1/DXMUX_580 ;
  wire \c/state_FSM_FFd1/F5MUX_578 ;
  wire N28;
  wire \c/state_FSM_FFd1/BXINV_571 ;
  wire N27;
  wire \c/state_FSM_FFd1/CLKINV_563 ;
  wire \s/acc_8_not0001/F5MUX_610 ;
  wire N30;
  wire \s/acc_8_not0001/BXINV_603 ;
  wire N29;
  wire \s/acc<5>/FFX/RST ;
  wire \s/acc<5>/DXMUX_643 ;
  wire \s/acc<5>/F5MUX_641 ;
  wire N34;
  wire \s/acc<5>/BXINV_634 ;
  wire N33;
  wire \s/acc<5>/CLKINV_626 ;
  wire \s/acc<5>/CEINV_625 ;
  wire \s/acc<7>/DXMUX_682 ;
  wire \s/acc<7>/F5MUX_680 ;
  wire N38;
  wire \s/acc<7>/BXINV_673 ;
  wire N37;
  wire \s/acc<7>/CLKINV_665 ;
  wire \s/acc<7>/CEINV_664 ;
  wire \s/acc<8>/DXMUX_720 ;
  wire \s/acc_8_mux0000 ;
  wire ld_pack_1;
  wire \s/acc<8>/CLKINV_702 ;
  wire \s/acc<8>/CEINV_701 ;
  wire shft;
  wire \c/N4_pack_1 ;
  wire cmpr;
  wire \s/cmpr1_SW0_SW0/O_pack_1 ;
  wire \c/pos<1>/DXMUX_814 ;
  wire \c/Mcount_pos1 ;
  wire \c/pos<1>/DYMUX_799 ;
  wire \c/Mcount_pos ;
  wire \c/pos<1>/SRINV_790 ;
  wire \c/pos<1>/CLKINV_789 ;
  wire \c/pos<1>/CEINV_788 ;
  wire \s/acc_3_not0001 ;
  wire \c/pos<2>/DYMUX_845 ;
  wire \c/Mcount_pos2 ;
  wire \c/pos<2>/CLKINV_836 ;
  wire \c/pos<2>/CEINV_835 ;
  wire \c/pos_not0001 ;
  wire \s/acc<0>/DYMUX_880 ;
  wire \s/acc_0_mux0000 ;
  wire \s/acc<0>/CLKINV_871 ;
  wire \s/acc<0>/CEINV_870 ;
  wire rdy_OBUF_932;
  wire \s/acc<1>/DYMUX_918 ;
  wire \s/acc_1_mux0000 ;
  wire \s/acc<1>/CLKINV_909 ;
  wire \s/acc<1>/CEINV_908 ;
  wire \s/acc<3>/DXMUX_973 ;
  wire \s/acc_3_mux0000 ;
  wire \s/acc<3>/DYMUX_958 ;
  wire \s/acc_2_mux0000 ;
  wire \s/acc<3>/SRINV_950 ;
  wire \s/acc<3>/CLKINV_949 ;
  wire \s/acc<3>/CEINV_948 ;
  wire \c/state_FSM_FFd2/DYMUX_997 ;
  wire \c/state_FSM_FFd2-In ;
  wire \c/state_FSM_FFd2/CLKINV_988 ;
  wire N22;
  wire \s/cmpr1_1025 ;
  wire overflow_OBUF_1037;
  wire \s/_sub0000<0>/XORF_1074 ;
  wire \s/_sub0000<0>/CYINIT_1073 ;
  wire \s/_sub0000<0>/CY0F_1072 ;
  wire \s/_sub0000<0>/CYSELF_1064 ;
  wire \s/_sub0000<0>/BXINV_1062 ;
  wire \s/_sub0000<0>/XORG_1060 ;
  wire \s/_sub0000<0>/CYMUXG_1059 ;
  wire \s/_sub0000<0>/CY0G_1057 ;
  wire \s/_sub0000<0>/CYSELG_1049 ;
  wire \s/_sub0000<2>/XORF_1113 ;
  wire \s/_sub0000<2>/CYINIT_1112 ;
  wire \s/_sub0000<2>/CY0F_1111 ;
  wire \s/_sub0000<2>/XORG_1101 ;
  wire \s/_sub0000<2>/CYSELF_1099 ;
  wire \s/_sub0000<2>/CYMUXFAST_1098 ;
  wire \s/_sub0000<2>/CYAND_1097 ;
  wire \s/_sub0000<2>/FASTCARRY_1096 ;
  wire \s/_sub0000<2>/CYMUXG2_1095 ;
  wire \s/_sub0000<2>/CYMUXF2_1094 ;
  wire \s/_sub0000<2>/CY0G_1093 ;
  wire \s/_sub0000<2>/CYSELG_1085 ;
  wire \s/_sub0000<4>/XORF_1128 ;
  wire \s/_sub0000<4>/CYINIT_1127 ;
  wire num_2_IBUF_1136;
  wire num_3_IBUF_1143;
  wire num_4_IBUF_1150;
  wire num_5_IBUF_1157;
  wire num_6_IBUF_1164;
  wire num_7_IBUF_1171;
  wire \clk_BUFGP/IBUFG_1178 ;
  wire \quotient<0>/O ;
  wire \quotient<1>/O ;
  wire \overflow/O ;
  wire \quotient<2>/O ;
  wire \quotient<3>/O ;
  wire \remainder<0>/O ;
  wire \s/acc<7>/FFX/RSTAND_688 ;
  wire \s/acc<4>/FFX/RSTAND_510 ;
  wire \s/acc<6>/FFX/RSTAND_549 ;
  wire \s/acc<8>/FFX/RSTAND_726 ;
  wire \c/pos<2>/FFY/SET ;
  wire \s/acc<0>/FFY/RSTAND_886 ;
  wire \s/acc<1>/FFY/RSTAND_924 ;
  wire \c/state_FSM_FFd2/FFY/RSTAND_1002 ;
  wire GND;
  wire VCC;
  wire [8 : 0] \s/acc ;
  wire [2 : 0] \c/pos ;
  wire [2 : 0] \s/Msub__sub0000_cy ;
  wire [4 : 0] \s/Msub__sub0000_lut ;
  initial $sdf_annotate("netgen/map/div_map.sdf");
  X_OPAD   \remainder<1>/PAD  (
    .PAD(remainder[1])
  );
  X_OBUF   remainder_1_OBUF (
    .I(\remainder<1>/O ),
    .O(remainder[1])
  );
  X_OPAD   \remainder<2>/PAD  (
    .PAD(remainder[2])
  );
  X_OBUF   remainder_2_OBUF (
    .I(\remainder<2>/O ),
    .O(remainder[2])
  );
  X_OPAD   \remainder<3>/PAD  (
    .PAD(remainder[3])
  );
  X_OBUF   remainder_3_OBUF (
    .I(\remainder<3>/O ),
    .O(remainder[3])
  );
  X_IPAD   \start/PAD  (
    .PAD(start)
  );
  X_BUF   start_IBUF (
    .I(start),
    .O(start_IBUF_410)
  );
  X_OPAD   \rdy/PAD  (
    .PAD(rdy)
  );
  X_OBUF   rdy_OBUF (
    .I(\rdy/O ),
    .O(rdy)
  );
  X_IPAD   \denom<0>/PAD  (
    .PAD(denom[0])
  );
  X_BUF   denom_0_IBUF (
    .I(denom[0]),
    .O(denom_0_IBUF_425)
  );
  X_IPAD   \denom<1>/PAD  (
    .PAD(denom[1])
  );
  X_BUF   denom_1_IBUF (
    .I(denom[1]),
    .O(denom_1_IBUF_432)
  );
  X_IPAD   \denom<2>/PAD  (
    .PAD(denom[2])
  );
  X_BUF   denom_2_IBUF (
    .I(denom[2]),
    .O(denom_2_IBUF_439)
  );
  X_IPAD   \denom<3>/PAD  (
    .PAD(denom[3])
  );
  X_BUF   denom_3_IBUF (
    .I(denom[3]),
    .O(denom_3_IBUF_446)
  );
  X_IPAD   \rst/PAD  (
    .PAD(rst)
  );
  X_BUF   rst_IBUF (
    .I(rst),
    .O(rst_IBUF_453)
  );
  X_IPAD   \num<0>/PAD  (
    .PAD(num[0])
  );
  X_BUF   num_0_IBUF (
    .I(num[0]),
    .O(num_0_IBUF_460)
  );
  X_IPAD   \num<1>/PAD  (
    .PAD(num[1])
  );
  X_BUF   num_1_IBUF (
    .I(num[1]),
    .O(num_1_IBUF_467)
  );
  X_BUFGMUX   \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/IBUFG_0 ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV   \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \s/acc<4>/DXMUX  (
    .I(\s/acc<4>/F5MUX_502 ),
    .O(\s/acc<4>/DXMUX_504 )
  );
  X_MUX2   \s/acc<4>/F5MUX  (
    .IA(N31),
    .IB(N32),
    .SEL(\s/acc<4>/BXINV_495 ),
    .O(\s/acc<4>/F5MUX_502 )
  );
  X_BUF   \s/acc<4>/BXINV  (
    .I(shft_0),
    .O(\s/acc<4>/BXINV_495 )
  );
  X_BUF   \s/acc<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<4>/CLKINV_486 )
  );
  X_BUF   \s/acc<4>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<4>/CEINV_485 )
  );
  X_BUF   \s/acc<6>/DXMUX  (
    .I(\s/acc<6>/F5MUX_541 ),
    .O(\s/acc<6>/DXMUX_543 )
  );
  X_MUX2   \s/acc<6>/F5MUX  (
    .IA(N35),
    .IB(N36),
    .SEL(\s/acc<6>/BXINV_534 ),
    .O(\s/acc<6>/F5MUX_541 )
  );
  X_BUF   \s/acc<6>/BXINV  (
    .I(\s/_sub0000<2>/XORF_1113 ),
    .O(\s/acc<6>/BXINV_534 )
  );
  X_BUF   \s/acc<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<6>/CLKINV_526 )
  );
  X_BUF   \s/acc<6>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<6>/CEINV_525 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE6A ))
  \c/state_FSM_FFd1-In_G  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/N4 ),
    .O(N28)
  );
  X_BUF   \c/state_FSM_FFd1/FFX/RSTOR  (
    .I(rst_IBUF_0),
    .O(\c/state_FSM_FFd1/FFX/RST )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/state_FSM_FFd1  (
    .I(\c/state_FSM_FFd1/DXMUX_580 ),
    .CE(VCC),
    .CLK(\c/state_FSM_FFd1/CLKINV_563 ),
    .SET(GND),
    .RST(\c/state_FSM_FFd1/FFX/RST ),
    .O(\c/state_FSM_FFd1_349 )
  );
  X_BUF   \c/state_FSM_FFd1/DXMUX  (
    .I(\c/state_FSM_FFd1/F5MUX_578 ),
    .O(\c/state_FSM_FFd1/DXMUX_580 )
  );
  X_MUX2   \c/state_FSM_FFd1/F5MUX  (
    .IA(N27),
    .IB(N28),
    .SEL(\c/state_FSM_FFd1/BXINV_571 ),
    .O(\c/state_FSM_FFd1/F5MUX_578 )
  );
  X_BUF   \c/state_FSM_FFd1/BXINV  (
    .I(cmpr_0),
    .O(\c/state_FSM_FFd1/BXINV_571 )
  );
  X_BUF   \c/state_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\c/state_FSM_FFd1/CLKINV_563 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFA8 ))
  \c/state_FSM_FFd1-In_F  (
    .ADR0(\c/state_FSM_FFd1_349 ),
    .ADR1(\c/N4 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/state_FSM_FFd2_347 ),
    .O(N27)
  );
  X_BUF   \s/acc_8_not0001/XUSED  (
    .I(\s/acc_8_not0001/F5MUX_610 ),
    .O(\s/acc_8_not0001 )
  );
  X_MUX2   \s/acc_8_not0001/F5MUX  (
    .IA(N29),
    .IB(N30),
    .SEL(\s/acc_8_not0001/BXINV_603 ),
    .O(\s/acc_8_not0001/F5MUX_610 )
  );
  X_BUF   \s/acc_8_not0001/BXINV  (
    .I(cmpr_0),
    .O(\s/acc_8_not0001/BXINV_603 )
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_5_mux0000_F  (
    .ADR0(shft_0),
    .ADR1(\s/acc [4]),
    .ADR2(ld),
    .ADR3(num_5_IBUF_0),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_5_mux0000_G  (
    .ADR0(\s/acc [4]),
    .ADR1(ld),
    .ADR2(num_5_IBUF_0),
    .ADR3(shft_0),
    .O(N34)
  );
  X_BUF   \s/acc<5>/FFX/RSTOR  (
    .I(rst_IBUF_0),
    .O(\s/acc<5>/FFX/RST )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_5  (
    .I(\s/acc<5>/DXMUX_643 ),
    .CE(\s/acc<5>/CEINV_625 ),
    .CLK(\s/acc<5>/CLKINV_626 ),
    .SET(GND),
    .RST(\s/acc<5>/FFX/RST ),
    .O(\s/acc [5])
  );
  X_BUF   \s/acc<5>/DXMUX  (
    .I(\s/acc<5>/F5MUX_641 ),
    .O(\s/acc<5>/DXMUX_643 )
  );
  X_MUX2   \s/acc<5>/F5MUX  (
    .IA(N33),
    .IB(N34),
    .SEL(\s/acc<5>/BXINV_634 ),
    .O(\s/acc<5>/F5MUX_641 )
  );
  X_BUF   \s/acc<5>/BXINV  (
    .I(\s/_sub0000<0>/XORG_1060 ),
    .O(\s/acc<5>/BXINV_634 )
  );
  X_BUF   \s/acc<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<5>/CLKINV_626 )
  );
  X_BUF   \s/acc<5>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<5>/CEINV_625 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_7_mux0000_G  (
    .ADR0(\s/acc [6]),
    .ADR1(ld),
    .ADR2(num_7_IBUF_0),
    .ADR3(shft_0),
    .O(N38)
  );
  X_BUF   \s/acc<7>/DXMUX  (
    .I(\s/acc<7>/F5MUX_680 ),
    .O(\s/acc<7>/DXMUX_682 )
  );
  X_MUX2   \s/acc<7>/F5MUX  (
    .IA(N37),
    .IB(N38),
    .SEL(\s/acc<7>/BXINV_673 ),
    .O(\s/acc<7>/F5MUX_680 )
  );
  X_BUF   \s/acc<7>/BXINV  (
    .I(\s/_sub0000<2>/XORG_1101 ),
    .O(\s/acc<7>/BXINV_673 )
  );
  X_BUF   \s/acc<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<7>/CLKINV_665 )
  );
  X_BUF   \s/acc<7>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<7>/CEINV_664 )
  );
  X_BUF   \s/acc<8>/DXMUX  (
    .I(\s/acc_8_mux0000 ),
    .O(\s/acc<8>/DXMUX_720 )
  );
  X_BUF   \s/acc<8>/YUSED  (
    .I(ld_pack_1),
    .O(ld)
  );
  X_BUF   \s/acc<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<8>/CLKINV_702 )
  );
  X_BUF   \s/acc<8>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<8>/CEINV_701 )
  );
  X_BUF   \shft/XUSED  (
    .I(shft),
    .O(shft_0)
  );
  X_BUF   \shft/YUSED  (
    .I(\c/N4_pack_1 ),
    .O(\c/N4 )
  );
  X_BUF   \cmpr/XUSED  (
    .I(cmpr),
    .O(cmpr_0)
  );
  X_BUF   \cmpr/YUSED  (
    .I(\s/cmpr1_SW0_SW0/O_pack_1 ),
    .O(\s/cmpr1_SW0_SW0/O )
  );
  X_BUF   \c/pos<1>/DXMUX  (
    .I(\c/Mcount_pos1 ),
    .O(\c/pos<1>/DXMUX_814 )
  );
  X_BUF   \c/pos<1>/DYMUX  (
    .I(\c/Mcount_pos ),
    .O(\c/pos<1>/DYMUX_799 )
  );
  X_BUF   \c/pos<1>/SRINV  (
    .I(rst_IBUF_0),
    .O(\c/pos<1>/SRINV_790 )
  );
  X_BUF   \c/pos<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\c/pos<1>/CLKINV_789 )
  );
  X_BUF   \c/pos<1>/CEINV  (
    .I(\c/pos_not0001_0 ),
    .O(\c/pos<1>/CEINV_788 )
  );
  X_BUF   \c/pos<2>/XUSED  (
    .I(\s/acc_3_not0001 ),
    .O(\s/acc_3_not0001_0 )
  );
  X_BUF   \c/pos<2>/DYMUX  (
    .I(\c/Mcount_pos2 ),
    .O(\c/pos<2>/DYMUX_845 )
  );
  X_BUF   \c/pos<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\c/pos<2>/CLKINV_836 )
  );
  X_BUF   \c/pos<2>/CEINV  (
    .I(\c/pos_not0001_0 ),
    .O(\c/pos<2>/CEINV_835 )
  );
  X_BUF   \s/acc<0>/XUSED  (
    .I(\c/pos_not0001 ),
    .O(\c/pos_not0001_0 )
  );
  X_BUF   \s/acc<0>/DYMUX  (
    .I(\s/acc_0_mux0000 ),
    .O(\s/acc<0>/DYMUX_880 )
  );
  X_BUF   \s/acc<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<0>/CLKINV_871 )
  );
  X_BUF   \s/acc<0>/CEINV  (
    .I(\s/acc_8_not0001 ),
    .O(\s/acc<0>/CEINV_870 )
  );
  X_BUF   \s/acc<1>/DYMUX  (
    .I(\s/acc_1_mux0000 ),
    .O(\s/acc<1>/DYMUX_918 )
  );
  X_BUF   \s/acc<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<1>/CLKINV_909 )
  );
  X_BUF   \s/acc<1>/CEINV  (
    .I(\s/acc_3_not0001_0 ),
    .O(\s/acc<1>/CEINV_908 )
  );
  X_BUF   \s/acc<3>/DXMUX  (
    .I(\s/acc_3_mux0000 ),
    .O(\s/acc<3>/DXMUX_973 )
  );
  X_BUF   \s/acc<3>/DYMUX  (
    .I(\s/acc_2_mux0000 ),
    .O(\s/acc<3>/DYMUX_958 )
  );
  X_BUF   \s/acc<3>/SRINV  (
    .I(rst_IBUF_0),
    .O(\s/acc<3>/SRINV_950 )
  );
  X_BUF   \s/acc<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\s/acc<3>/CLKINV_949 )
  );
  X_BUF   \s/acc<3>/CEINV  (
    .I(\s/acc_3_not0001_0 ),
    .O(\s/acc<3>/CEINV_948 )
  );
  X_BUF   \c/state_FSM_FFd2/DYMUX  (
    .I(\c/state_FSM_FFd2-In ),
    .O(\c/state_FSM_FFd2/DYMUX_997 )
  );
  X_BUF   \c/state_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\c/state_FSM_FFd2/CLKINV_988 )
  );
  X_BUF   \N22/XUSED  (
    .I(N22),
    .O(N22_0)
  );
  X_BUF   \s/cmpr1/XUSED  (
    .I(\s/cmpr1_1025 ),
    .O(\s/cmpr1_0 )
  );
  X_BUF   \s/_sub0000<0>/XUSED  (
    .I(\s/_sub0000<0>/XORF_1074 ),
    .O(\s/_sub0000[0] )
  );
  X_XOR2   \s/_sub0000<0>/XORF  (
    .I0(\s/_sub0000<0>/CYINIT_1073 ),
    .I1(\s/Msub__sub0000_lut [0]),
    .O(\s/_sub0000<0>/XORF_1074 )
  );
  X_MUX2   \s/_sub0000<0>/CYMUXF  (
    .IA(\s/_sub0000<0>/CY0F_1072 ),
    .IB(\s/_sub0000<0>/CYINIT_1073 ),
    .SEL(\s/_sub0000<0>/CYSELF_1064 ),
    .O(\s/Msub__sub0000_cy [0])
  );
  X_BUF   \s/_sub0000<0>/CYINIT  (
    .I(\s/_sub0000<0>/BXINV_1062 ),
    .O(\s/_sub0000<0>/CYINIT_1073 )
  );
  X_BUF   \s/_sub0000<0>/CY0F  (
    .I(\s/acc [4]),
    .O(\s/_sub0000<0>/CY0F_1072 )
  );
  X_BUF   \s/_sub0000<0>/CYSELF  (
    .I(\s/Msub__sub0000_lut [0]),
    .O(\s/_sub0000<0>/CYSELF_1064 )
  );
  X_BUF   \s/_sub0000<0>/BXINV  (
    .I(1'b1),
    .O(\s/_sub0000<0>/BXINV_1062 )
  );
  X_XOR2   \s/_sub0000<0>/XORG  (
    .I0(\s/Msub__sub0000_cy [0]),
    .I1(\s/Msub__sub0000_lut [1]),
    .O(\s/_sub0000<0>/XORG_1060 )
  );
  X_BUF   \s/_sub0000<0>/COUTUSED  (
    .I(\s/_sub0000<0>/CYMUXG_1059 ),
    .O(\s/Msub__sub0000_cy [1])
  );
  X_MUX2   \s/_sub0000<0>/CYMUXG  (
    .IA(\s/_sub0000<0>/CY0G_1057 ),
    .IB(\s/Msub__sub0000_cy [0]),
    .SEL(\s/_sub0000<0>/CYSELG_1049 ),
    .O(\s/_sub0000<0>/CYMUXG_1059 )
  );
  X_BUF   \s/_sub0000<0>/CY0G  (
    .I(\s/acc [5]),
    .O(\s/_sub0000<0>/CY0G_1057 )
  );
  X_BUF   \s/_sub0000<0>/CYSELG  (
    .I(\s/Msub__sub0000_lut [1]),
    .O(\s/_sub0000<0>/CYSELG_1049 )
  );
  X_XOR2   \s/_sub0000<2>/XORF  (
    .I0(\s/_sub0000<2>/CYINIT_1112 ),
    .I1(\s/Msub__sub0000_lut [2]),
    .O(\s/_sub0000<2>/XORF_1113 )
  );
  X_MUX2   \s/_sub0000<2>/CYMUXF  (
    .IA(\s/_sub0000<2>/CY0F_1111 ),
    .IB(\s/_sub0000<2>/CYINIT_1112 ),
    .SEL(\s/_sub0000<2>/CYSELF_1099 ),
    .O(\s/Msub__sub0000_cy [2])
  );
  X_MUX2   \s/_sub0000<2>/CYMUXF2  (
    .IA(\s/_sub0000<2>/CY0F_1111 ),
    .IB(\s/_sub0000<2>/CY0F_1111 ),
    .SEL(\s/_sub0000<2>/CYSELF_1099 ),
    .O(\s/_sub0000<2>/CYMUXF2_1094 )
  );
  X_BUF   \s/_sub0000<2>/CYINIT  (
    .I(\s/Msub__sub0000_cy [1]),
    .O(\s/_sub0000<2>/CYINIT_1112 )
  );
  X_BUF   \s/_sub0000<2>/CY0F  (
    .I(\s/acc [6]),
    .O(\s/_sub0000<2>/CY0F_1111 )
  );
  X_BUF   \s/_sub0000<2>/CYSELF  (
    .I(\s/Msub__sub0000_lut [2]),
    .O(\s/_sub0000<2>/CYSELF_1099 )
  );
  X_XOR2   \s/_sub0000<2>/XORG  (
    .I0(\s/Msub__sub0000_cy [2]),
    .I1(\s/Msub__sub0000_lut [3]),
    .O(\s/_sub0000<2>/XORG_1101 )
  );
  X_BUF   \s/_sub0000<2>/FASTCARRY  (
    .I(\s/Msub__sub0000_cy [1]),
    .O(\s/_sub0000<2>/FASTCARRY_1096 )
  );
  X_AND2   \s/_sub0000<2>/CYAND  (
    .I0(\s/_sub0000<2>/CYSELG_1085 ),
    .I1(\s/_sub0000<2>/CYSELF_1099 ),
    .O(\s/_sub0000<2>/CYAND_1097 )
  );
  X_MUX2   \s/_sub0000<2>/CYMUXFAST  (
    .IA(\s/_sub0000<2>/CYMUXG2_1095 ),
    .IB(\s/_sub0000<2>/FASTCARRY_1096 ),
    .SEL(\s/_sub0000<2>/CYAND_1097 ),
    .O(\s/_sub0000<2>/CYMUXFAST_1098 )
  );
  X_MUX2   \s/_sub0000<2>/CYMUXG2  (
    .IA(\s/_sub0000<2>/CY0G_1093 ),
    .IB(\s/_sub0000<2>/CYMUXF2_1094 ),
    .SEL(\s/_sub0000<2>/CYSELG_1085 ),
    .O(\s/_sub0000<2>/CYMUXG2_1095 )
  );
  X_BUF   \s/_sub0000<2>/CY0G  (
    .I(\s/acc [7]),
    .O(\s/_sub0000<2>/CY0G_1093 )
  );
  X_BUF   \s/_sub0000<2>/CYSELG  (
    .I(\s/Msub__sub0000_lut [3]),
    .O(\s/_sub0000<2>/CYSELG_1085 )
  );
  X_BUF   \s/_sub0000<4>/XUSED  (
    .I(\s/_sub0000<4>/XORF_1128 ),
    .O(\s/_sub0000[4] )
  );
  X_XOR2   \s/_sub0000<4>/XORF  (
    .I0(\s/_sub0000<4>/CYINIT_1127 ),
    .I1(\s/Msub__sub0000_lut [4]),
    .O(\s/_sub0000<4>/XORF_1128 )
  );
  X_BUF   \s/_sub0000<4>/CYINIT  (
    .I(\s/_sub0000<2>/CYMUXFAST_1098 ),
    .O(\s/_sub0000<4>/CYINIT_1127 )
  );
  X_IPAD   \num<2>/PAD  (
    .PAD(num[2])
  );
  X_BUF   num_2_IBUF (
    .I(num[2]),
    .O(num_2_IBUF_1136)
  );
  X_IPAD   \num<3>/PAD  (
    .PAD(num[3])
  );
  X_BUF   num_3_IBUF (
    .I(num[3]),
    .O(num_3_IBUF_1143)
  );
  X_IPAD   \num<4>/PAD  (
    .PAD(num[4])
  );
  X_BUF   num_4_IBUF (
    .I(num[4]),
    .O(num_4_IBUF_1150)
  );
  X_IPAD   \num<5>/PAD  (
    .PAD(num[5])
  );
  X_BUF   num_5_IBUF (
    .I(num[5]),
    .O(num_5_IBUF_1157)
  );
  X_IPAD   \num<6>/PAD  (
    .PAD(num[6])
  );
  X_BUF   num_6_IBUF (
    .I(num[6]),
    .O(num_6_IBUF_1164)
  );
  X_IPAD   \num<7>/PAD  (
    .PAD(num[7])
  );
  X_BUF   num_7_IBUF (
    .I(num[7]),
    .O(num_7_IBUF_1171)
  );
  X_IPAD   \clk/PAD  (
    .PAD(clk)
  );
  X_BUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_1178 )
  );
  X_OPAD   \quotient<0>/PAD  (
    .PAD(quotient[0])
  );
  X_OBUF   quotient_0_OBUF (
    .I(\quotient<0>/O ),
    .O(quotient[0])
  );
  X_OPAD   \quotient<1>/PAD  (
    .PAD(quotient[1])
  );
  X_OBUF   quotient_1_OBUF (
    .I(\quotient<1>/O ),
    .O(quotient[1])
  );
  X_OPAD   \overflow/PAD  (
    .PAD(overflow)
  );
  X_OBUF   overflow_OBUF (
    .I(\overflow/O ),
    .O(overflow)
  );
  X_OPAD   \quotient<2>/PAD  (
    .PAD(quotient[2])
  );
  X_OBUF   quotient_2_OBUF (
    .I(\quotient<2>/O ),
    .O(quotient[2])
  );
  X_OPAD   \quotient<3>/PAD  (
    .PAD(quotient[3])
  );
  X_OBUF   quotient_3_OBUF (
    .I(\quotient<3>/O ),
    .O(quotient[3])
  );
  X_OPAD   \remainder<0>/PAD  (
    .PAD(remainder[0])
  );
  X_OBUF   remainder_0_OBUF (
    .I(\remainder<0>/O ),
    .O(remainder[0])
  );
  X_LUT4 #(
    .INIT ( 16'hEE6A ))
  \s/acc_8_not0001_G  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/pos [2]),
    .ADR3(\c/N4 ),
    .O(N30)
  );
  X_LUT4 #(
    .INIT ( 16'h6662 ))
  \s/acc_8_not0001_F  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/N4 ),
    .ADR3(\c/pos [2]),
    .O(N29)
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_7_mux0000_F  (
    .ADR0(shft_0),
    .ADR1(\s/acc [6]),
    .ADR2(ld),
    .ADR3(num_7_IBUF_0),
    .O(N37)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_7  (
    .I(\s/acc<7>/DXMUX_682 ),
    .CE(\s/acc<7>/CEINV_664 ),
    .CLK(\s/acc<7>/CLKINV_665 ),
    .SET(GND),
    .RST(\s/acc<7>/FFX/RSTAND_688 ),
    .O(\s/acc [7])
  );
  X_BUF   \s/acc<7>/FFX/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<7>/FFX/RSTAND_688 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ))
  \s/acc_4_mux0000_F  (
    .ADR0(ld),
    .ADR1(\s/_sub0000[0] ),
    .ADR2(num_4_IBUF_0),
    .ADR3(VCC),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_4_mux0000_G  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\s/acc [3]),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(num_4_IBUF_0),
    .O(N32)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_4  (
    .I(\s/acc<4>/DXMUX_504 ),
    .CE(\s/acc<4>/CEINV_485 ),
    .CLK(\s/acc<4>/CLKINV_486 ),
    .SET(GND),
    .RST(\s/acc<4>/FFX/RSTAND_510 ),
    .O(\s/acc [4])
  );
  X_BUF   \s/acc<4>/FFX/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<4>/FFX/RSTAND_510 )
  );
  X_LUT4 #(
    .INIT ( 16'hF808 ))
  \s/acc_6_mux0000_F  (
    .ADR0(shft_0),
    .ADR1(\s/acc [5]),
    .ADR2(ld),
    .ADR3(num_6_IBUF_0),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'hE2F3 ))
  \s/acc_6_mux0000_G  (
    .ADR0(\s/acc [5]),
    .ADR1(ld),
    .ADR2(num_6_IBUF_0),
    .ADR3(shft_0),
    .O(N36)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_6  (
    .I(\s/acc<6>/DXMUX_543 ),
    .CE(\s/acc<6>/CEINV_525 ),
    .CLK(\s/acc<6>/CLKINV_526 ),
    .SET(GND),
    .RST(\s/acc<6>/FFX/RSTAND_549 ),
    .O(\s/acc [6])
  );
  X_BUF   \s/acc<6>/FFX/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<6>/FFX/RSTAND_549 )
  );
  X_LUT4 #(
    .INIT ( 16'h4444 ))
  \c/state_FSM_Out01  (
    .ADR0(\c/state_FSM_FFd1_349 ),
    .ADR1(\c/state_FSM_FFd2_347 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(ld_pack_1)
  );
  X_LUT4 #(
    .INIT ( 16'h2230 ))
  \s/acc_8_mux00001  (
    .ADR0(\s/acc [7]),
    .ADR1(ld),
    .ADR2(\s/_sub0000[4] ),
    .ADR3(shft_0),
    .O(\s/acc_8_mux0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_8  (
    .I(\s/acc<8>/DXMUX_720 ),
    .CE(\s/acc<8>/CEINV_701 ),
    .CLK(\s/acc<8>/CLKINV_702 ),
    .SET(GND),
    .RST(\s/acc<8>/FFX/RSTAND_726 ),
    .O(\s/acc [8])
  );
  X_BUF   \s/acc<8>/FFX/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<8>/FFX/RSTAND_726 )
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \c/Mcount_pos_xor<2>111  (
    .ADR0(\c/pos [1]),
    .ADR1(\c/pos [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\c/N4_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C08 ))
  \c/state_FSM_FFd2-In31  (
    .ADR0(\c/pos [2]),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/state_FSM_FFd2_347 ),
    .ADR3(\c/N4 ),
    .O(shft)
  );
  X_LUT4 #(
    .INIT ( 16'h7130 ))
  \s/cmpr1_SW0_SW0  (
    .ADR0(denom_2_IBUF_0),
    .ADR1(denom_3_IBUF_0),
    .ADR2(\s/acc [7]),
    .ADR3(\s/acc [6]),
    .O(\s/cmpr1_SW0_SW0/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAEE ))
  \s/cmpr1  (
    .ADR0(\s/acc [8]),
    .ADR1(\s/cmpr1_SW0_SW0/O ),
    .ADR2(N22_0),
    .ADR3(\s/cmpr1_0 ),
    .O(cmpr)
  );
  X_LUT4 #(
    .INIT ( 16'h5151 ))
  \c/Mcount_pos_xor<0>11  (
    .ADR0(\c/pos [0]),
    .ADR1(\c/state_FSM_FFd2_347 ),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(VCC),
    .O(\c/Mcount_pos )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/pos_0  (
    .I(\c/pos<1>/DYMUX_799 ),
    .CE(\c/pos<1>/CEINV_788 ),
    .CLK(\c/pos<1>/CLKINV_789 ),
    .SET(GND),
    .RST(\c/pos<1>/SRINV_790 ),
    .O(\c/pos [0])
  );
  X_LUT4 #(
    .INIT ( 16'h82C3 ))
  \c/Mcount_pos_xor<1>11  (
    .ADR0(\c/state_FSM_FFd1_349 ),
    .ADR1(\c/pos [1]),
    .ADR2(\c/pos [0]),
    .ADR3(\c/state_FSM_FFd2_347 ),
    .O(\c/Mcount_pos1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/pos_1  (
    .I(\c/pos<1>/DXMUX_814 ),
    .CE(\c/pos<1>/CEINV_788 ),
    .CLK(\c/pos<1>/CLKINV_789 ),
    .SET(GND),
    .RST(\c/pos<1>/SRINV_790 ),
    .O(\c/pos [1])
  );
  X_LUT4 #(
    .INIT ( 16'h9F99 ))
  \c/Mcount_pos_xor<2>12  (
    .ADR0(\c/pos [2]),
    .ADR1(\c/N4 ),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(\c/state_FSM_FFd2_347 ),
    .O(\c/Mcount_pos2 )
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \c/pos_2  (
    .I(\c/pos<2>/DYMUX_845 ),
    .CE(\c/pos<2>/CEINV_835 ),
    .CLK(\c/pos<2>/CLKINV_836 ),
    .SET(\c/pos<2>/FFY/SET ),
    .RST(GND),
    .O(\c/pos [2])
  );
  X_BUF   \c/pos<2>/FFY/SETOR  (
    .I(rst_IBUF_0),
    .O(\c/pos<2>/FFY/SET )
  );
  X_LUT4 #(
    .INIT ( 16'h6662 ))
  \s/acc_3_not00011  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/N4 ),
    .ADR3(\c/pos [2]),
    .O(\s/acc_3_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h08FB ))
  \s/acc_0_mux00001  (
    .ADR0(num_0_IBUF_0),
    .ADR1(\c/state_FSM_FFd2_347 ),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(shft_0),
    .O(\s/acc_0_mux0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_0  (
    .I(\s/acc<0>/DYMUX_880 ),
    .CE(\s/acc<0>/CEINV_870 ),
    .CLK(\s/acc<0>/CLKINV_871 ),
    .SET(GND),
    .RST(\s/acc<0>/FFY/RSTAND_886 ),
    .O(\s/acc [0])
  );
  X_BUF   \s/acc<0>/FFY/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<0>/FFY/RSTAND_886 )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \c/pos_not00011  (
    .ADR0(\c/state_FSM_FFd1_349 ),
    .ADR1(\c/state_FSM_FFd2_347 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\c/pos_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_1_mux00001  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\s/acc [0]),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(num_1_IBUF_0),
    .O(\s/acc_1_mux0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_1  (
    .I(\s/acc<1>/DYMUX_918 ),
    .CE(\s/acc<1>/CEINV_908 ),
    .CLK(\s/acc<1>/CLKINV_909 ),
    .SET(GND),
    .RST(\s/acc<1>/FFY/RSTAND_924 ),
    .O(\s/acc [1])
  );
  X_BUF   \s/acc<1>/FFY/RSTAND  (
    .I(rst_IBUF_0),
    .O(\s/acc<1>/FFY/RSTAND_924 )
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ))
  \c/state_FSM_Out21  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(rdy_OBUF_932)
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_2_mux00001  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\s/acc [1]),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(num_2_IBUF_0),
    .O(\s/acc_2_mux0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_2  (
    .I(\s/acc<3>/DYMUX_958 ),
    .CE(\s/acc<3>/CEINV_948 ),
    .CLK(\s/acc<3>/CLKINV_949 ),
    .SET(GND),
    .RST(\s/acc<3>/SRINV_950 ),
    .O(\s/acc [2])
  );
  X_LUT4 #(
    .INIT ( 16'hCEC4 ))
  \s/acc_3_mux00001  (
    .ADR0(\c/state_FSM_FFd2_347 ),
    .ADR1(\s/acc [2]),
    .ADR2(\c/state_FSM_FFd1_349 ),
    .ADR3(num_3_IBUF_0),
    .O(\s/acc_3_mux0000 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \s/acc_3  (
    .I(\s/acc<3>/DXMUX_973 ),
    .CE(\s/acc<3>/CEINV_948 ),
    .CLK(\s/acc<3>/CLKINV_949 ),
    .SET(GND),
    .RST(\s/acc<3>/SRINV_950 ),
    .O(\s/acc [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFF32 ))
  \c/state_FSM_FFd2-In1  (
    .ADR0(start_IBUF_0),
    .ADR1(\c/state_FSM_FFd1_349 ),
    .ADR2(\c/state_FSM_FFd2_347 ),
    .ADR3(shft_0),
    .O(\c/state_FSM_FFd2-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \c/state_FSM_FFd2  (
    .I(\c/state_FSM_FFd2/DYMUX_997 ),
    .CE(VCC),
    .CLK(\c/state_FSM_FFd2/CLKINV_988 ),
    .SET(GND),
    .RST(\c/state_FSM_FFd2/FFY/RSTAND_1002 ),
    .O(\c/state_FSM_FFd2_347 )
  );
  X_BUF   \c/state_FSM_FFd2/FFY/RSTAND  (
    .I(rst_IBUF_0),
    .O(\c/state_FSM_FFd2/FFY/RSTAND_1002 )
  );
  X_LUT4 #(
    .INIT ( 16'hF571 ))
  \s/cmpr1_SW0_SW1  (
    .ADR0(denom_3_IBUF_0),
    .ADR1(denom_2_IBUF_0),
    .ADR2(\s/acc [7]),
    .ADR3(\s/acc [6]),
    .O(N22)
  );
  X_LUT4 #(
    .INIT ( 16'hF751 ))
  \s/cmpr2  (
    .ADR0(denom_1_IBUF_0),
    .ADR1(denom_0_IBUF_0),
    .ADR2(\s/acc [4]),
    .ADR3(\s/acc [5]),
    .O(\s/cmpr1_1025 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \c/overflow1  (
    .ADR0(\c/pos [0]),
    .ADR1(\c/pos [1]),
    .ADR2(\c/pos [2]),
    .ADR3(cmpr_0),
    .O(overflow_OBUF_1037)
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \s/Msub__sub0000_lut<1>  (
    .ADR0(\s/acc [5]),
    .ADR1(denom_1_IBUF_0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\s/Msub__sub0000_lut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \s/Msub__sub0000_lut<0>  (
    .ADR0(\s/acc [4]),
    .ADR1(denom_0_IBUF_0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\s/Msub__sub0000_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \s/Msub__sub0000_lut<3>  (
    .ADR0(\s/acc [7]),
    .ADR1(denom_3_IBUF_0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\s/Msub__sub0000_lut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ))
  \s/Msub__sub0000_lut<2>  (
    .ADR0(\s/acc [6]),
    .ADR1(denom_2_IBUF_0),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\s/Msub__sub0000_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \s/Msub__sub0000_lut<4>_INV_0  (
    .ADR0(\s/acc [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\s/Msub__sub0000_lut [4])
  );
  X_BUF   \remainder<1>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [5]),
    .O(\remainder<1>/O )
  );
  X_BUF   \remainder<2>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [6]),
    .O(\remainder<2>/O )
  );
  X_BUF   \remainder<3>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [7]),
    .O(\remainder<3>/O )
  );
  X_BUF   \start/IFF/IMUX  (
    .I(start_IBUF_410),
    .O(start_IBUF_0)
  );
  X_BUF   \rdy/OUTPUT/OFF/OMUX  (
    .I(rdy_OBUF_932),
    .O(\rdy/O )
  );
  X_BUF   \denom<0>/IFF/IMUX  (
    .I(denom_0_IBUF_425),
    .O(denom_0_IBUF_0)
  );
  X_BUF   \denom<1>/IFF/IMUX  (
    .I(denom_1_IBUF_432),
    .O(denom_1_IBUF_0)
  );
  X_BUF   \denom<2>/IFF/IMUX  (
    .I(denom_2_IBUF_439),
    .O(denom_2_IBUF_0)
  );
  X_BUF   \denom<3>/IFF/IMUX  (
    .I(denom_3_IBUF_446),
    .O(denom_3_IBUF_0)
  );
  X_BUF   \rst/IFF/IMUX  (
    .I(rst_IBUF_453),
    .O(rst_IBUF_0)
  );
  X_BUF   \num<0>/IFF/IMUX  (
    .I(num_0_IBUF_460),
    .O(num_0_IBUF_0)
  );
  X_BUF   \num<1>/IFF/IMUX  (
    .I(num_1_IBUF_467),
    .O(num_1_IBUF_0)
  );
  X_BUF   \num<2>/IFF/IMUX  (
    .I(num_2_IBUF_1136),
    .O(num_2_IBUF_0)
  );
  X_BUF   \num<3>/IFF/IMUX  (
    .I(num_3_IBUF_1143),
    .O(num_3_IBUF_0)
  );
  X_BUF   \num<4>/IFF/IMUX  (
    .I(num_4_IBUF_1150),
    .O(num_4_IBUF_0)
  );
  X_BUF   \num<5>/IFF/IMUX  (
    .I(num_5_IBUF_1157),
    .O(num_5_IBUF_0)
  );
  X_BUF   \num<6>/IFF/IMUX  (
    .I(num_6_IBUF_1164),
    .O(num_6_IBUF_0)
  );
  X_BUF   \num<7>/IFF/IMUX  (
    .I(num_7_IBUF_1171),
    .O(num_7_IBUF_0)
  );
  X_BUF   \clk/IFF/IMUX  (
    .I(\clk_BUFGP/IBUFG_1178 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_BUF   \quotient<0>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [0]),
    .O(\quotient<0>/O )
  );
  X_BUF   \quotient<1>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [1]),
    .O(\quotient<1>/O )
  );
  X_BUF   \overflow/OUTPUT/OFF/OMUX  (
    .I(overflow_OBUF_1037),
    .O(\overflow/O )
  );
  X_BUF   \quotient<2>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [2]),
    .O(\quotient<2>/O )
  );
  X_BUF   \quotient<3>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [3]),
    .O(\quotient<3>/O )
  );
  X_BUF   \remainder<0>/OUTPUT/OFF/OMUX  (
    .I(\s/acc [4]),
    .O(\remainder<0>/O )
  );
  X_ZERO   NlwBlock_div_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_div_VCC (
    .O(VCC)
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

