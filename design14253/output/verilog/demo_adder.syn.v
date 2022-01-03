/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 13:02:10 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3260247229 */

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
   wire n_0_1;
   wire n_0_2;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_3;
   wire n_0_0_2;
   wire n_0_4;
   wire n_0_0_3;
   wire n_0_5;
   wire n_0_0_4;
   wire n_0_6;
   wire n_0_0_5;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_11;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_12;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_7;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_13;

   DFF_X1 \display_reg[2]  (.D(n_0_12), .CK(n_0_13), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_11), .CK(n_0_13), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_10), .CK(n_0_13), .Q(display[0]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_5), .CK(n_0_13), .Q(fdoor), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_4), .CK(n_0_13), .Q(rdoor), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_3), .CK(n_0_13), .Q(alarmbuzz), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_2), .CK(n_0_13), .Q(winbuzz), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_1), .CK(n_0_13), .Q(heater), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_0), .CK(n_0_13), .Q(cooler), .QN());
   DFF_X1 \State_reg[2]  (.D(n_0_8), .CK(n_0_13), .Q(State[2]), .QN());
   DFF_X1 \State_reg[1]  (.D(n_0_7), .CK(n_0_13), .Q(State[1]), .QN());
   DFF_X1 \State_reg[0]  (.D(n_0_6), .CK(n_0_13), .Q(State[0]), .QN());
   NOR3_X1 i_0_0_0 (.A1(n_0_0_29), .A2(n_0_0_18), .A3(n_0_0_35), .ZN(n_0_0));
   NOR4_X1 i_0_0_1 (.A1(ST[6]), .A2(n_0_0_33), .A3(n_0_0_18), .A4(n_0_0_35), 
      .ZN(n_0_1));
   INV_X1 i_0_0_2 (.A(n_0_0_0), .ZN(n_0_2));
   OAI21_X1 i_0_0_3 (.A(SW), .B1(n_0_0_38), .B2(n_0_0_1), .ZN(n_0_0_0));
   NOR4_X1 i_0_0_4 (.A1(SRD), .A2(SFA), .A3(n_0_0_37), .A4(n_0_0_2), .ZN(n_0_0_1));
   OAI21_X1 i_0_0_5 (.A(n_0_0_8), .B1(n_0_0_15), .B2(n_0_0_2), .ZN(n_0_3));
   NAND2_X1 i_0_0_6 (.A1(n_0_0_50), .A2(n_0_0_27), .ZN(n_0_0_2));
   AOI21_X1 i_0_0_7 (.A(n_0_0_51), .B1(n_0_0_25), .B2(n_0_0_3), .ZN(n_0_4));
   NAND3_X1 i_0_0_8 (.A1(n_0_0_29), .A2(n_0_0_19), .A3(n_0_0_21), .ZN(n_0_0_3));
   INV_X1 i_0_0_9 (.A(n_0_0_4), .ZN(n_0_5));
   OAI221_X1 i_0_0_10 (.A(n_0_0_12), .B1(n_0_0_43), .B2(n_0_7), .C1(n_0_0_27), 
      .C2(n_0_0_7), .ZN(n_0_0_4));
   INV_X1 i_0_0_11 (.A(n_0_0_5), .ZN(n_0_6));
   OAI21_X1 i_0_0_12 (.A(n_0_0_46), .B1(n_0_0_44), .B2(n_0_0_42), .ZN(n_0_0_5));
   NOR3_X1 i_0_0_13 (.A1(State[1]), .A2(n_0_0_45), .A3(n_0_0_47), .ZN(n_0_8));
   OR3_X1 i_0_0_14 (.A1(n_0_0_49), .A2(Rst), .A3(n_0_0_42), .ZN(n_0_9));
   OAI211_X1 i_0_0_15 (.A(n_0_0_10), .B(n_0_0_6), .C1(n_0_0_28), .C2(n_0_0_11), 
      .ZN(n_0_10));
   NOR2_X1 i_0_0_16 (.A1(n_0_0_9), .A2(n_0_0_7), .ZN(n_0_0_6));
   NOR2_X1 i_0_0_17 (.A1(n_0_0_45), .A2(n_0_0_41), .ZN(n_0_0_7));
   INV_X1 i_0_0_18 (.A(n_0_0_9), .ZN(n_0_0_8));
   OAI21_X1 i_0_0_19 (.A(n_0_0_19), .B1(n_0_0_25), .B2(n_0_0_17), .ZN(n_0_0_9));
   OAI21_X1 i_0_0_20 (.A(n_0_0_32), .B1(n_0_0_36), .B2(n_0_0_14), .ZN(n_0_0_10));
   NOR2_X1 i_0_0_21 (.A1(n_0_0_16), .A2(n_0_0_12), .ZN(n_0_0_11));
   INV_X1 i_0_0_22 (.A(n_0_0_13), .ZN(n_0_0_12));
   OAI21_X1 i_0_0_23 (.A(SFD), .B1(n_0_7), .B2(n_0_0_14), .ZN(n_0_0_13));
   AOI211_X1 i_0_0_24 (.A(SW), .B(n_0_0_45), .C1(SRD), .C2(n_0_0_48), .ZN(
      n_0_0_14));
   INV_X1 i_0_0_25 (.A(n_0_0_16), .ZN(n_0_0_15));
   NOR2_X1 i_0_0_26 (.A1(n_0_0_22), .A2(n_0_0_17), .ZN(n_0_0_16));
   NAND2_X1 i_0_0_27 (.A1(n_0_0_51), .A2(SFA), .ZN(n_0_0_17));
   OAI211_X1 i_0_0_28 (.A(n_0_0_19), .B(n_0_0_20), .C1(n_0_0_29), .C2(n_0_0_18), 
      .ZN(n_0_11));
   AOI21_X1 i_0_0_29 (.A(n_0_0_36), .B1(n_0_0_41), .B2(n_0_0_23), .ZN(n_0_0_18));
   NAND4_X1 i_0_0_30 (.A1(SFA), .A2(State[1]), .A3(n_0_0_47), .A4(n_0_0_46), 
      .ZN(n_0_0_19));
   OAI22_X1 i_0_0_31 (.A1(n_0_0_24), .A2(n_0_0_21), .B1(SRD), .B2(SFA), .ZN(
      n_0_0_20));
   NOR3_X1 i_0_0_32 (.A1(SFD), .A2(n_0_0_22), .A3(n_0_0_32), .ZN(n_0_0_21));
   NOR2_X1 i_0_0_33 (.A1(n_0_7), .A2(n_0_0_23), .ZN(n_0_0_22));
   NOR2_X1 i_0_0_34 (.A1(SW), .A2(n_0_0_45), .ZN(n_0_0_23));
   INV_X1 i_0_0_35 (.A(n_0_0_25), .ZN(n_0_0_24));
   OAI211_X1 i_0_0_36 (.A(n_0_0_48), .B(n_0_0_46), .C1(n_0_0_50), .C2(State[0]), 
      .ZN(n_0_0_25));
   AOI21_X1 i_0_0_37 (.A(n_0_0_35), .B1(n_0_0_27), .B2(n_0_0_26), .ZN(n_0_12));
   NAND2_X1 i_0_0_38 (.A1(SW), .A2(n_0_0_39), .ZN(n_0_0_26));
   NOR2_X1 i_0_0_39 (.A1(n_0_0_32), .A2(n_0_0_28), .ZN(n_0_0_27));
   INV_X1 i_0_0_40 (.A(n_0_0_29), .ZN(n_0_0_28));
   OAI21_X1 i_0_0_41 (.A(ST[6]), .B1(n_0_0_31), .B2(n_0_0_30), .ZN(n_0_0_29));
   OR3_X1 i_0_0_42 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_30));
   AND3_X1 i_0_0_43 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_31));
   NOR2_X1 i_0_0_44 (.A1(ST[6]), .A2(n_0_0_33), .ZN(n_0_0_32));
   AND3_X1 i_0_0_45 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_34), .ZN(n_0_0_33));
   OR3_X1 i_0_0_46 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_34));
   NOR2_X1 i_0_0_47 (.A1(n_0_0_38), .A2(n_0_0_36), .ZN(n_0_0_35));
   NOR2_X1 i_0_0_48 (.A1(n_0_0_49), .A2(n_0_0_37), .ZN(n_0_0_36));
   INV_X1 i_0_0_49 (.A(n_0_7), .ZN(n_0_0_37));
   NOR3_X1 i_0_0_50 (.A1(State[1]), .A2(State[0]), .A3(Rst), .ZN(n_0_7));
   NOR2_X1 i_0_0_51 (.A1(n_0_0_45), .A2(n_0_0_40), .ZN(n_0_0_38));
   INV_X1 i_0_0_52 (.A(n_0_0_40), .ZN(n_0_0_39));
   OAI211_X1 i_0_0_53 (.A(n_0_0_41), .B(n_0_0_43), .C1(n_0_0_51), .C2(State[1]), 
      .ZN(n_0_0_40));
   NAND2_X1 i_0_0_54 (.A1(SFD), .A2(n_0_0_42), .ZN(n_0_0_41));
   NOR2_X1 i_0_0_55 (.A1(State[1]), .A2(State[0]), .ZN(n_0_0_42));
   OAI21_X1 i_0_0_56 (.A(SFA), .B1(n_0_0_48), .B2(n_0_0_47), .ZN(n_0_0_43));
   NOR2_X1 i_0_0_57 (.A1(n_0_0_48), .A2(n_0_0_47), .ZN(n_0_0_44));
   INV_X1 i_0_0_58 (.A(n_0_0_46), .ZN(n_0_0_45));
   NOR2_X1 i_0_0_59 (.A1(State[2]), .A2(Rst), .ZN(n_0_0_46));
   INV_X1 i_0_0_60 (.A(State[0]), .ZN(n_0_0_47));
   INV_X1 i_0_0_61 (.A(State[1]), .ZN(n_0_0_48));
   INV_X1 i_0_0_62 (.A(State[2]), .ZN(n_0_0_49));
   INV_X1 i_0_0_63 (.A(SFD), .ZN(n_0_0_50));
   INV_X1 i_0_0_64 (.A(SRD), .ZN(n_0_0_51));
   CLKGATETST_X1 clk_gate_display_reg (.CK(Clk), .E(n_0_9), .SE(1'b0), .GCK(
      n_0_13));
endmodule
