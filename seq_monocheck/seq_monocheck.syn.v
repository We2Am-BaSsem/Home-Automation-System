/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Jan  1 01:10:14 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 553235458 */

module integ(Clk, Rst, SFD, SRD, SW, SFA, ST, fdoor, rdoor, winbuzz, alarmbuzz, 
      heater, cooler, display);
   input Clk;
   input Rst;
   input SFD;
   input SRD;
   input SW;
   input SFA;
   input [6:0]ST;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarmbuzz;
   output heater;
   output cooler;
   output [2:0]display;

   wire [2:0]State;
   wire n_0_0;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_0_0;
   wire n_0_6;
   wire n_0_0_1;
   wire n_0_7;
   wire n_0_9;
   wire n_0_10;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_11;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_1;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_12;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_8;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;

   DFF_X1 \display_reg[2]  (.D(n_0_12), .CK(n_0_8), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_11), .CK(n_0_8), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_10), .CK(n_0_8), .Q(display[0]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_9), .CK(n_0_8), .Q(fdoor), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_7), .CK(n_0_8), .Q(rdoor), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_6), .CK(n_0_8), .Q(alarmbuzz), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_5), .CK(n_0_8), .Q(winbuzz), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_4), .CK(n_0_8), .Q(heater), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_3), .CK(n_0_8), .Q(cooler), .QN());
   DFF_X1 \State_reg[2]  (.D(n_0_2), .CK(n_0_8), .Q(State[2]), .QN());
   DFF_X1 \State_reg[1]  (.D(n_0_1), .CK(n_0_8), .Q(State[1]), .QN());
   DFF_X1 \State_reg[0]  (.D(n_0_0), .CK(n_0_8), .Q(State[0]), .QN());
   AOI211_X1 i_0_0_0 (.A(Rst), .B(n_0_0_7), .C1(State[2]), .C2(n_0_0_24), 
      .ZN(n_0_0));
   OAI33_X1 i_0_0_1 (.A1(n_0_0_26), .A2(Rst), .A3(n_0_0_19), .B1(n_0_0_25), 
      .B2(n_0_0_24), .B3(Rst), .ZN(n_0_2));
   OAI21_X1 i_0_0_2 (.A(n_0_0_17), .B1(n_0_0_27), .B2(n_0_0_13), .ZN(n_0_3));
   OAI21_X1 i_0_0_3 (.A(n_0_0_14), .B1(n_0_0_28), .B2(n_0_0_13), .ZN(n_0_4));
   INV_X1 i_0_0_4 (.A(n_0_0_0), .ZN(n_0_5));
   AOI21_X1 i_0_0_5 (.A(n_0_0_10), .B1(winbuzz), .B2(n_0_0_12), .ZN(n_0_0_0));
   INV_X1 i_0_0_6 (.A(n_0_0_1), .ZN(n_0_6));
   AOI21_X1 i_0_0_7 (.A(n_0_0_5), .B1(alarmbuzz), .B2(n_0_0_12), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_8 (.A(n_0_0_6), .B1(n_0_0_29), .B2(n_0_0_13), .ZN(n_0_7));
   OAI21_X1 i_0_0_9 (.A(n_0_0_3), .B1(n_0_0_30), .B2(n_0_0_13), .ZN(n_0_9));
   NAND3_X1 i_0_0_10 (.A1(n_0_0_3), .A2(n_0_0_2), .A3(n_0_0_14), .ZN(n_0_10));
   AOI21_X1 i_0_0_11 (.A(n_0_0_5), .B1(display[0]), .B2(n_0_0_12), .ZN(n_0_0_2));
   NAND3_X1 i_0_0_12 (.A1(SFD), .A2(n_0_0_19), .A3(n_0_0_11), .ZN(n_0_0_3));
   NAND3_X1 i_0_0_13 (.A1(n_0_0_6), .A2(n_0_0_4), .A3(n_0_0_17), .ZN(n_0_11));
   AOI21_X1 i_0_0_14 (.A(n_0_0_5), .B1(display[1]), .B2(n_0_0_12), .ZN(n_0_0_4));
   AND4_X1 i_0_0_15 (.A1(State[1]), .A2(SFA), .A3(n_0_0_24), .A4(n_0_0_11), 
      .ZN(n_0_0_5));
   NAND3_X1 i_0_0_16 (.A1(SRD), .A2(n_0_0_7), .A3(n_0_1), .ZN(n_0_0_6));
   AOI221_X1 i_0_0_17 (.A(Rst), .B1(State[1]), .B2(n_0_0_7), .C1(n_0_0_25), 
      .C2(n_0_0_8), .ZN(n_0_1));
   INV_X1 i_0_0_18 (.A(n_0_0_8), .ZN(n_0_0_7));
   NAND2_X1 i_0_0_19 (.A1(n_0_0_26), .A2(State[0]), .ZN(n_0_0_8));
   NAND3_X1 i_0_0_20 (.A1(n_0_0_14), .A2(n_0_0_9), .A3(n_0_0_17), .ZN(n_0_12));
   AOI21_X1 i_0_0_21 (.A(n_0_0_10), .B1(display[2]), .B2(n_0_0_12), .ZN(n_0_0_9));
   AND4_X1 i_0_0_22 (.A1(State[1]), .A2(State[0]), .A3(SW), .A4(n_0_0_11), 
      .ZN(n_0_0_10));
   NOR2_X1 i_0_0_23 (.A1(State[2]), .A2(Rst), .ZN(n_0_0_11));
   INV_X1 i_0_0_24 (.A(n_0_0_13), .ZN(n_0_0_12));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_20), .A2(n_0_0_18), .ZN(n_0_0_13));
   NAND4_X1 i_0_0_26 (.A1(n_0_0_23), .A2(n_0_0_18), .A3(n_0_0_19), .A4(n_0_0_15), 
      .ZN(n_0_0_14));
   NAND3_X1 i_0_0_27 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_16), .ZN(n_0_0_15));
   OR3_X1 i_0_0_28 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_16));
   NAND4_X1 i_0_0_29 (.A1(ST[6]), .A2(n_0_0_18), .A3(n_0_0_19), .A4(n_0_0_21), 
      .ZN(n_0_0_17));
   NOR2_X1 i_0_0_30 (.A1(n_0_0_26), .A2(Rst), .ZN(n_0_0_18));
   INV_X1 i_0_0_31 (.A(n_0_0_20), .ZN(n_0_0_19));
   NAND2_X1 i_0_0_32 (.A1(n_0_0_25), .A2(n_0_0_24), .ZN(n_0_0_20));
   OR4_X1 i_0_0_33 (.A1(ST[4]), .A2(ST[3]), .A3(ST[5]), .A4(n_0_0_22), .ZN(
      n_0_0_21));
   AND3_X1 i_0_0_34 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_22));
   INV_X1 i_0_0_35 (.A(ST[6]), .ZN(n_0_0_23));
   INV_X1 i_0_0_36 (.A(State[0]), .ZN(n_0_0_24));
   INV_X1 i_0_0_37 (.A(State[1]), .ZN(n_0_0_25));
   INV_X1 i_0_0_38 (.A(State[2]), .ZN(n_0_0_26));
   INV_X1 i_0_0_39 (.A(Clk), .ZN(n_0_8));
   INV_X1 i_0_0_40 (.A(cooler), .ZN(n_0_0_27));
   INV_X1 i_0_0_41 (.A(heater), .ZN(n_0_0_28));
   INV_X1 i_0_0_42 (.A(rdoor), .ZN(n_0_0_29));
   INV_X1 i_0_0_43 (.A(fdoor), .ZN(n_0_0_30));
endmodule
