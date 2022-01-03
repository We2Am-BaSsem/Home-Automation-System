/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 12:51:18 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2007127709 */

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

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_0_2;
   wire n_0_0_0;
   wire n_0_0_3;
   wire n_0_0_1;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_0_4;
   wire n_0_14;
   wire n_0_13;
   wire n_0_0_5;
   wire n_0_15;
   wire n_0_12;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_11;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_16;
   wire n_0_10;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_9;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_8;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;

   DFF_X1 \display_reg[2]  (.D(n_0_16), .CK(Clk), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_15), .CK(Clk), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_14), .CK(Clk), .Q(display[0]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_13), .CK(Clk), .Q(fdoor), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_12), .CK(Clk), .Q(rdoor), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_11), .CK(Clk), .Q(alarmbuzz), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_10), .CK(Clk), .Q(winbuzz), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_9), .CK(Clk), .Q(heater), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_8), .CK(Clk), .Q(cooler), .QN());
   DFF_X1 \State_reg[3]  (.D(n_0_7), .CK(Clk), .Q(n_0_0), .QN());
   DFF_X1 \State_reg[2]  (.D(n_0_6), .CK(Clk), .Q(n_0_1), .QN());
   DFF_X1 \State_reg[1]  (.D(n_0_5), .CK(Clk), .Q(n_0_2), .QN());
   DFF_X1 \State_reg[0]  (.D(n_0_4), .CK(Clk), .Q(n_0_3), .QN());
   HA_X1 i_0_0_0 (.A(n_0_2), .B(n_0_3), .CO(n_0_0_0), .S(n_0_0_2));
   HA_X1 i_0_0_1 (.A(n_0_1), .B(n_0_0_0), .CO(n_0_0_1), .S(n_0_0_3));
   NOR2_X1 i_0_0_2 (.A1(n_0_3), .A2(n_0_0_4), .ZN(n_0_4));
   NOR2_X1 i_0_0_3 (.A1(n_0_0_27), .A2(n_0_0_4), .ZN(n_0_5));
   NOR2_X1 i_0_0_4 (.A1(n_0_0_25), .A2(n_0_0_4), .ZN(n_0_6));
   AOI221_X1 i_0_0_5 (.A(n_0_0_4), .B1(n_0_0_31), .B2(n_0_0_26), .C1(n_0_0), 
      .C2(n_0_0_1), .ZN(n_0_7));
   OAI21_X1 i_0_0_6 (.A(n_0_0_32), .B1(n_0_0_31), .B2(n_0_0_21), .ZN(n_0_0_4));
   OR3_X1 i_0_0_7 (.A1(n_0_9), .A2(n_0_11), .A3(n_0_13), .ZN(n_0_14));
   AND2_X1 i_0_0_8 (.A1(SFD), .A2(n_0_0_5), .ZN(n_0_13));
   OAI222_X1 i_0_0_9 (.A1(n_0_2), .A2(n_0_0_16), .B1(n_0_0_9), .B2(n_0_0_8), 
      .C1(n_0_0_13), .C2(n_0_0_11), .ZN(n_0_0_5));
   OR3_X1 i_0_0_10 (.A1(n_0_8), .A2(n_0_12), .A3(n_0_11), .ZN(n_0_15));
   INV_X1 i_0_0_11 (.A(n_0_0_6), .ZN(n_0_12));
   OAI211_X1 i_0_0_12 (.A(SRD), .B(n_0_0_7), .C1(n_0_2), .C2(n_0_3), .ZN(n_0_0_6));
   OAI21_X1 i_0_0_13 (.A(n_0_0_9), .B1(n_0_0_19), .B2(n_0_0_8), .ZN(n_0_0_7));
   OR2_X1 i_0_0_14 (.A1(n_0_1), .A2(n_0_3), .ZN(n_0_0_8));
   NAND3_X1 i_0_0_15 (.A1(n_0_0_32), .A2(n_0_0_31), .A3(n_0_0_29), .ZN(n_0_0_9));
   AND2_X1 i_0_0_16 (.A1(SFA), .A2(n_0_0_10), .ZN(n_0_11));
   OAI22_X1 i_0_0_17 (.A1(n_0_0_12), .A2(n_0_0_11), .B1(n_0_0_21), .B2(n_0_0_19), 
      .ZN(n_0_0_10));
   NAND3_X1 i_0_0_18 (.A1(n_0_0_32), .A2(n_0_0_31), .A3(n_0_2), .ZN(n_0_0_11));
   INV_X1 i_0_0_19 (.A(n_0_0_13), .ZN(n_0_0_12));
   XOR2_X1 i_0_0_20 (.A(n_0_0_30), .B(n_0_3), .Z(n_0_0_13));
   OR3_X1 i_0_0_21 (.A1(n_0_9), .A2(n_0_10), .A3(n_0_8), .ZN(n_0_16));
   AND2_X1 i_0_0_22 (.A1(SW), .A2(n_0_0_14), .ZN(n_0_10));
   OAI22_X1 i_0_0_23 (.A1(n_0_0_29), .A2(n_0_0_16), .B1(n_0_0_21), .B2(n_0_0_15), 
      .ZN(n_0_0_14));
   NAND2_X1 i_0_0_24 (.A1(n_0_0_32), .A2(n_0_0_31), .ZN(n_0_0_15));
   NAND4_X1 i_0_0_25 (.A1(n_0_0_32), .A2(n_0_0), .A3(n_0_0_30), .A4(n_0_3), 
      .ZN(n_0_0_16));
   NOR4_X1 i_0_0_26 (.A1(ST[6]), .A2(n_0_0_19), .A3(n_0_0_20), .A4(n_0_0_17), 
      .ZN(n_0_9));
   AND3_X1 i_0_0_27 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_18), .ZN(n_0_0_17));
   OR3_X1 i_0_0_28 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_18));
   NOR4_X1 i_0_0_29 (.A1(n_0_0_28), .A2(n_0_0_19), .A3(n_0_0_20), .A4(n_0_0_23), 
      .ZN(n_0_8));
   NAND2_X1 i_0_0_30 (.A1(n_0_0_32), .A2(n_0_0), .ZN(n_0_0_19));
   OAI21_X1 i_0_0_31 (.A(n_0_0_21), .B1(n_0_1), .B2(n_0_0_22), .ZN(n_0_0_20));
   NAND2_X1 i_0_0_32 (.A1(n_0_1), .A2(n_0_0_22), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_33 (.A1(n_0_2), .A2(n_0_3), .ZN(n_0_0_22));
   NOR4_X1 i_0_0_34 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .A4(n_0_0_24), .ZN(
      n_0_0_23));
   AND3_X1 i_0_0_35 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_24));
   INV_X1 i_0_0_36 (.A(n_0_0_3), .ZN(n_0_0_25));
   INV_X1 i_0_0_37 (.A(n_0_0_1), .ZN(n_0_0_26));
   INV_X1 i_0_0_38 (.A(n_0_0_2), .ZN(n_0_0_27));
   INV_X1 i_0_0_39 (.A(ST[6]), .ZN(n_0_0_28));
   INV_X1 i_0_0_40 (.A(n_0_2), .ZN(n_0_0_29));
   INV_X1 i_0_0_41 (.A(n_0_1), .ZN(n_0_0_30));
   INV_X1 i_0_0_42 (.A(n_0_0), .ZN(n_0_0_31));
   INV_X1 i_0_0_43 (.A(Rst), .ZN(n_0_0_32));
endmodule
