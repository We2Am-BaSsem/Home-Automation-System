/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 01:58:40 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 480378702 */

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
   wire n_0_0_5;
   wire n_0_8;
   wire n_0_9;
   wire n_0_13;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_14;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_15;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_12;
   wire n_0_0_19;
   wire n_0_11;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_16;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_10;
   wire n_0_0_25;
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
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;
   wire n_0_0_60;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_0_67;
   wire n_0_0_68;

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
   NOR2_X1 i_0_0_2 (.A1(n_0_3), .A2(n_0_0_5), .ZN(n_0_4));
   AND2_X1 i_0_0_3 (.A1(n_0_0_2), .A2(n_0_0_4), .ZN(n_0_5));
   AND2_X1 i_0_0_4 (.A1(n_0_0_3), .A2(n_0_0_4), .ZN(n_0_6));
   AOI221_X1 i_0_0_5 (.A(n_0_0_5), .B1(n_0_0_67), .B2(n_0_0_58), .C1(n_0_0), 
      .C2(n_0_0_1), .ZN(n_0_7));
   INV_X1 i_0_0_6 (.A(n_0_0_5), .ZN(n_0_0_4));
   NAND2_X1 i_0_0_7 (.A1(n_0_0_68), .A2(n_0_0_49), .ZN(n_0_0_5));
   AND2_X1 i_0_0_8 (.A1(n_0_0_24), .A2(n_0_0_17), .ZN(n_0_8));
   AOI211_X1 i_0_0_9 (.A(n_0_0_31), .B(n_0_0_18), .C1(n_0_0_38), .C2(n_0_0_27), 
      .ZN(n_0_9));
   INV_X1 i_0_0_10 (.A(n_0_0_6), .ZN(n_0_13));
   OAI21_X1 i_0_0_11 (.A(SFD), .B1(n_0_0_51), .B2(n_0_0_7), .ZN(n_0_0_6));
   AOI21_X1 i_0_0_12 (.A(n_0_0_29), .B1(n_0_0_22), .B2(n_0_0_8), .ZN(n_0_0_7));
   OR3_X1 i_0_0_13 (.A1(SFA), .A2(SW), .A3(n_0_0_16), .ZN(n_0_0_8));
   INV_X1 i_0_0_14 (.A(n_0_0_9), .ZN(n_0_14));
   AOI21_X1 i_0_0_15 (.A(n_0_0_14), .B1(n_0_0_11), .B2(n_0_0_10), .ZN(n_0_0_9));
   OAI211_X1 i_0_0_16 (.A(n_0_0_61), .B(n_0_0_31), .C1(n_0_0_63), .C2(SRD), 
      .ZN(n_0_0_10));
   INV_X1 i_0_0_17 (.A(n_0_0_12), .ZN(n_0_0_11));
   AOI22_X1 i_0_0_18 (.A1(n_0_0_34), .A2(n_0_0_21), .B1(n_0_0_51), .B2(n_0_0_13), 
      .ZN(n_0_0_12));
   OAI221_X1 i_0_0_19 (.A(n_0_0_61), .B1(SW), .B2(SRD), .C1(n_0_0_63), .C2(SRD), 
      .ZN(n_0_0_13));
   AOI21_X1 i_0_0_20 (.A(n_0_0_16), .B1(n_0_0_63), .B2(n_0_0_15), .ZN(n_0_0_14));
   NAND3_X1 i_0_0_21 (.A1(n_0_0_62), .A2(n_0_0_34), .A3(n_0_0_30), .ZN(n_0_0_15));
   AOI21_X1 i_0_0_22 (.A(n_0_0_47), .B1(n_0_0_60), .B2(n_0_0_43), .ZN(n_0_0_16));
   OR3_X1 i_0_0_23 (.A1(n_0_12), .A2(n_0_0_17), .A3(n_0_11), .ZN(n_0_15));
   NOR2_X1 i_0_0_24 (.A1(n_0_0_34), .A2(n_0_0_18), .ZN(n_0_0_17));
   AOI21_X1 i_0_0_25 (.A(n_0_0_21), .B1(n_0_0_62), .B2(n_0_0_40), .ZN(n_0_0_18));
   AOI21_X1 i_0_0_26 (.A(n_0_0_60), .B1(n_0_0_20), .B2(n_0_0_19), .ZN(n_0_12));
   NAND4_X1 i_0_0_27 (.A1(n_0_0_47), .A2(n_0_0_28), .A3(n_0_0_62), .A4(n_0_0_63), 
      .ZN(n_0_0_19));
   AOI221_X1 i_0_0_28 (.A(n_0_0_63), .B1(SRD), .B2(n_0_0_46), .C1(n_0_0_46), 
      .C2(n_0_0_20), .ZN(n_0_11));
   AOI21_X1 i_0_0_29 (.A(n_0_0_41), .B1(n_0_0_28), .B2(n_0_0_21), .ZN(n_0_0_20));
   INV_X1 i_0_0_30 (.A(n_0_0_22), .ZN(n_0_0_21));
   AOI21_X1 i_0_0_31 (.A(n_0_0_26), .B1(n_0_0_62), .B2(n_0_0_55), .ZN(n_0_0_22));
   INV_X1 i_0_0_32 (.A(n_0_0_23), .ZN(n_0_16));
   AOI21_X1 i_0_0_33 (.A(n_0_10), .B1(n_0_0_29), .B2(n_0_0_24), .ZN(n_0_0_23));
   NAND2_X1 i_0_0_34 (.A1(n_0_0_38), .A2(n_0_0_27), .ZN(n_0_0_24));
   AOI21_X1 i_0_0_35 (.A(n_0_0_62), .B1(n_0_0_38), .B2(n_0_0_25), .ZN(n_0_10));
   NAND4_X1 i_0_0_36 (.A1(n_0_0_60), .A2(n_0_0_28), .A3(n_0_0_63), .A4(n_0_0_26), 
      .ZN(n_0_0_25));
   INV_X1 i_0_0_37 (.A(n_0_0_27), .ZN(n_0_0_26));
   NAND4_X1 i_0_0_38 (.A1(n_0_0), .A2(n_0_0_45), .A3(n_0_0_68), .A4(n_0_0_50), 
      .ZN(n_0_0_27));
   NOR2_X1 i_0_0_39 (.A1(n_0_0_35), .A2(n_0_0_30), .ZN(n_0_0_28));
   NAND2_X1 i_0_0_40 (.A1(n_0_0_34), .A2(n_0_0_31), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_41 (.A1(n_0_0_61), .A2(n_0_0_31), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_59), .A2(n_0_0_32), .ZN(n_0_0_31));
   NAND3_X1 i_0_0_43 (.A1(ST[5]), .A2(ST[4]), .A3(n_0_0_33), .ZN(n_0_0_32));
   OR3_X1 i_0_0_44 (.A1(ST[3]), .A2(ST[2]), .A3(ST[1]), .ZN(n_0_0_33));
   INV_X1 i_0_0_45 (.A(n_0_0_35), .ZN(n_0_0_34));
   AOI21_X1 i_0_0_46 (.A(n_0_0_59), .B1(n_0_0_37), .B2(n_0_0_36), .ZN(n_0_0_35));
   NOR3_X1 i_0_0_47 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_36));
   NAND3_X1 i_0_0_48 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_37));
   AOI21_X1 i_0_0_49 (.A(n_0_0_55), .B1(n_0_0_40), .B2(n_0_0_39), .ZN(n_0_0_38));
   AOI21_X1 i_0_0_50 (.A(SFA), .B1(SRD), .B2(n_0_0_46), .ZN(n_0_0_39));
   NAND2_X1 i_0_0_51 (.A1(n_0_0_46), .A2(n_0_0_42), .ZN(n_0_0_40));
   INV_X1 i_0_0_52 (.A(n_0_0_42), .ZN(n_0_0_41));
   AOI21_X1 i_0_0_53 (.A(n_0_0_43), .B1(n_0_0_61), .B2(n_0_0_51), .ZN(n_0_0_42));
   AOI21_X1 i_0_0_54 (.A(Rst), .B1(n_0_0_53), .B2(n_0_0_44), .ZN(n_0_0_43));
   OR3_X1 i_0_0_55 (.A1(n_0_0_57), .A2(n_0_0_45), .A3(n_0_0_67), .ZN(n_0_0_44));
   OAI21_X1 i_0_0_56 (.A(n_0_0_66), .B1(n_0_2), .B2(n_0_3), .ZN(n_0_0_45));
   INV_X1 i_0_0_57 (.A(n_0_0_47), .ZN(n_0_0_46));
   AOI21_X1 i_0_0_58 (.A(Rst), .B1(n_0_0_49), .B2(n_0_0_48), .ZN(n_0_0_47));
   NAND2_X1 i_0_0_59 (.A1(n_0_0_67), .A2(n_0_0_54), .ZN(n_0_0_48));
   OR2_X1 i_0_0_60 (.A1(n_0_0_67), .A2(n_0_0_50), .ZN(n_0_0_49));
   NAND3_X1 i_0_0_61 (.A1(n_0_1), .A2(n_0_0_65), .A3(n_0_0_64), .ZN(n_0_0_50));
   AOI211_X1 i_0_0_62 (.A(n_0_0_54), .B(n_0_0_52), .C1(n_0_1), .C2(n_0_0_65), 
      .ZN(n_0_0_51));
   OAI211_X1 i_0_0_63 (.A(n_0_0_68), .B(n_0_0_53), .C1(n_0_0_67), .C2(n_0_0_65), 
      .ZN(n_0_0_52));
   NAND3_X1 i_0_0_64 (.A1(n_0_0_67), .A2(n_0_0_65), .A3(n_0_3), .ZN(n_0_0_53));
   AOI21_X1 i_0_0_65 (.A(n_0_0_57), .B1(n_0_1), .B2(n_0_0_64), .ZN(n_0_0_54));
   AND3_X1 i_0_0_66 (.A1(n_0_0_68), .A2(n_0_0_56), .A3(n_0_0_57), .ZN(n_0_0_55));
   OAI22_X1 i_0_0_67 (.A1(n_0_0_67), .A2(n_0_0_65), .B1(n_0_0_66), .B2(n_0_3), 
      .ZN(n_0_0_56));
   OAI22_X1 i_0_0_68 (.A1(n_0_0), .A2(n_0_2), .B1(n_0_1), .B2(n_0_0_64), 
      .ZN(n_0_0_57));
   INV_X1 i_0_0_69 (.A(n_0_0_1), .ZN(n_0_0_58));
   INV_X1 i_0_0_70 (.A(ST[6]), .ZN(n_0_0_59));
   INV_X1 i_0_0_71 (.A(SRD), .ZN(n_0_0_60));
   INV_X1 i_0_0_72 (.A(SFD), .ZN(n_0_0_61));
   INV_X1 i_0_0_73 (.A(SW), .ZN(n_0_0_62));
   INV_X1 i_0_0_74 (.A(SFA), .ZN(n_0_0_63));
   INV_X1 i_0_0_75 (.A(n_0_3), .ZN(n_0_0_64));
   INV_X1 i_0_0_76 (.A(n_0_2), .ZN(n_0_0_65));
   INV_X1 i_0_0_77 (.A(n_0_1), .ZN(n_0_0_66));
   INV_X1 i_0_0_78 (.A(n_0_0), .ZN(n_0_0_67));
   INV_X1 i_0_0_79 (.A(Rst), .ZN(n_0_0_68));
endmodule
