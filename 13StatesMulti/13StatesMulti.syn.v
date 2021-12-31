/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 31 20:39:07 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3592754911 */

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
   wire n_0_4;
   wire n_0_1_2;
   wire n_0_1_0;
   wire n_0_1_3;
   wire n_0_1_1;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_1_4;
   wire n_0_1_5;
   wire n_0_1_58;
   wire n_0_1_31;
   wire n_0_1_49;
   wire n_0_14;
   wire n_0_1_6;
   wire n_0_1_7;
   wire n_0_1_8;
   wire n_0_1_19;
   wire n_0_1_20;
   wire n_0_1_22;
   wire n_0_1_63;
   wire n_0_1_23;
   wire n_0_9;
   wire n_0_1_24;
   wire n_0_10;
   wire n_0_1_25;
   wire n_0_12;
   wire n_0_15;
   wire n_0_1_26;
   wire n_0_1_27;
   wire n_0_1_28;
   wire n_0_1_29;
   wire n_0_1_30;
   wire n_0_1_32;
   wire n_0_1_33;
   wire n_0_1_34;
   wire n_0_1_21;
   wire n_0_1_35;
   wire n_0_1_36;
   wire n_0_1_37;
   wire n_0_1_38;
   wire n_0_1_39;
   wire n_0_1_40;
   wire n_0_1_41;
   wire n_0_1_42;
   wire n_0_1_43;
   wire n_0_1_46;
   wire n_0_1_47;
   wire n_0_1_48;
   wire n_0_1_50;
   wire n_0_1_52;
   wire n_0_1_62;
   wire n_0_1_53;
   wire n_0_1_54;
   wire n_0_1_55;
   wire n_0_1_56;
   wire n_0_1_59;
   wire n_0_1_60;
   wire n_0_1_69;
   wire n_0_1_70;
   wire n_0_1_71;
   wire n_0_1_72;
   wire n_0_1_73;
   wire n_0_1_74;
   wire n_0_1_75;
   wire n_0_1_76;
   wire n_0_1_77;
   wire n_0_1_78;
   wire n_0_1_79;
   wire n_0_1_80;
   wire n_0_1_82;
   wire n_0_1_83;
   wire n_0_1_84;
   wire n_0_1_88;
   wire n_0_1_68;
   wire n_0_1_102;
   wire n_0_11;
   wire n_0_13;
   wire n_0_16;
   wire n_0_1_103;
   wire n_0_1_9;
   wire n_0_1_10;
   wire n_0_1_11;
   wire n_0_1_61;
   wire n_0_1_12;
   wire n_0_1_13;
   wire n_0_17;
   wire n_0_1_14;
   wire n_0_1_15;
   wire n_0_1_16;
   wire n_0_1_17;
   wire n_0_1_18;
   wire n_0_1_44;
   wire n_0_1_45;
   wire n_0_1_51;
   wire n_0_1_57;
   wire n_0_1_64;
   wire n_0_1_65;
   wire n_0_1_66;
   wire n_0_1_67;
   wire n_0_1_81;
   wire n_0_1_85;
   wire n_0_1_86;
   wire n_0_1_87;
   wire n_0_1_89;
   wire n_0_1_90;
   wire n_0_1_91;
   wire n_0_1_92;
   wire n_0_1_93;
   wire n_0_1_94;
   wire n_0_1_95;
   wire n_0_1_96;
   wire n_0_1_97;
   wire n_0_1_98;
   wire n_0_1_99;
   wire n_0_1_100;
   wire n_0_1_101;

   DFF_X1 \display_reg[2]  (.D(n_0_17), .CK(n_0_4), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_16), .CK(n_0_4), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_15), .CK(n_0_4), .Q(display[0]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_14), .CK(n_0_4), .Q(fdoor), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_13), .CK(n_0_4), .Q(rdoor), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_12), .CK(n_0_4), .Q(alarmbuzz), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_11), .CK(n_0_4), .Q(winbuzz), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_10), .CK(n_0_4), .Q(heater), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_9), .CK(n_0_4), .Q(cooler), .QN());
   DFF_X1 \State_reg[3]  (.D(n_0_8), .CK(n_0_4), .Q(n_0_0), .QN());
   DFF_X1 \State_reg[2]  (.D(n_0_7), .CK(n_0_4), .Q(n_0_1), .QN());
   DFF_X1 \State_reg[1]  (.D(n_0_6), .CK(n_0_4), .Q(n_0_2), .QN());
   DFF_X1 \State_reg[0]  (.D(n_0_5), .CK(n_0_4), .Q(n_0_3), .QN());
   INV_X1 i_0_0_0 (.A(Clk), .ZN(n_0_4));
   HA_X1 i_0_1_0 (.A(n_0_2), .B(n_0_3), .CO(n_0_1_0), .S(n_0_1_2));
   HA_X1 i_0_1_1 (.A(n_0_1), .B(n_0_1_0), .CO(n_0_1_1), .S(n_0_1_3));
   NOR2_X1 i_0_1_2 (.A1(n_0_3), .A2(n_0_1_5), .ZN(n_0_5));
   AND2_X1 i_0_1_3 (.A1(n_0_1_2), .A2(n_0_1_4), .ZN(n_0_6));
   AND2_X1 i_0_1_4 (.A1(n_0_1_3), .A2(n_0_1_4), .ZN(n_0_7));
   AOI221_X1 i_0_1_5 (.A(n_0_1_5), .B1(n_0_1_91), .B2(n_0_1_58), .C1(n_0_0), 
      .C2(n_0_1_1), .ZN(n_0_8));
   INV_X1 i_0_1_6 (.A(n_0_1_5), .ZN(n_0_1_4));
   NAND2_X1 i_0_1_7 (.A1(n_0_1_68), .A2(n_0_1_49), .ZN(n_0_1_5));
   INV_X1 i_0_1_69 (.A(n_0_1_1), .ZN(n_0_1_58));
   INV_X1 i_0_1_8 (.A(n_0_1_59), .ZN(n_0_1_31));
   OR2_X1 i_0_1_9 (.A1(n_0_1_96), .A2(n_0_1_91), .ZN(n_0_1_49));
   AOI21_X1 i_0_1_10 (.A(n_0_1_61), .B1(n_0_1_6), .B2(n_0_1_34), .ZN(n_0_14));
   OAI21_X1 i_0_1_11 (.A(n_0_1_19), .B1(n_0_1_21), .B2(n_0_1_7), .ZN(n_0_1_6));
   INV_X1 i_0_1_12 (.A(n_0_1_8), .ZN(n_0_1_7));
   NAND4_X1 i_0_1_13 (.A1(n_0_1_78), .A2(n_0_1_83), .A3(n_0_1_63), .A4(n_0_1_62), 
      .ZN(n_0_1_8));
   NOR2_X1 i_0_1_26 (.A1(n_0_1_56), .A2(n_0_1_59), .ZN(n_0_1_19));
   OAI211_X1 i_0_1_27 (.A(n_0_1_22), .B(n_0_1_61), .C1(SW), .C2(SRD), .ZN(
      n_0_1_20));
   NAND2_X1 i_0_1_14 (.A1(n_0_1_23), .A2(SFA), .ZN(n_0_1_22));
   INV_X1 i_0_1_29 (.A(SFA), .ZN(n_0_1_63));
   INV_X1 i_0_1_15 (.A(SRD), .ZN(n_0_1_23));
   INV_X1 i_0_1_31 (.A(n_0_1_24), .ZN(n_0_9));
   NAND3_X1 i_0_1_32 (.A1(n_0_1_53), .A2(n_0_1_56), .A3(n_0_1_35), .ZN(n_0_1_24));
   INV_X1 i_0_1_33 (.A(n_0_1_25), .ZN(n_0_10));
   NAND3_X1 i_0_1_34 (.A1(n_0_1_53), .A2(n_0_1_59), .A3(n_0_1_35), .ZN(n_0_1_25));
   INV_X1 i_0_1_35 (.A(n_0_1_13), .ZN(n_0_12));
   OAI21_X1 i_0_1_36 (.A(n_0_1_26), .B1(n_0_1_32), .B2(n_0_1_29), .ZN(n_0_15));
   OAI211_X1 i_0_1_37 (.A(n_0_1_83), .B(n_0_1_78), .C1(n_0_1_27), .C2(SFA), 
      .ZN(n_0_1_26));
   INV_X1 i_0_1_38 (.A(n_0_1_28), .ZN(n_0_1_27));
   OAI211_X1 i_0_1_39 (.A(n_0_1_102), .B(n_0_1_62), .C1(SFD), .C2(n_0_1_59), 
      .ZN(n_0_1_28));
   INV_X1 i_0_1_40 (.A(n_0_1_30), .ZN(n_0_1_29));
   NAND3_X1 i_0_1_41 (.A1(n_0_1_61), .A2(n_0_1_31), .A3(n_0_1_22), .ZN(n_0_1_30));
   AOI22_X1 i_0_1_42 (.A1(n_0_1_21), .A2(n_0_1_102), .B1(n_0_1_20), .B2(n_0_1_33), 
      .ZN(n_0_1_32));
   INV_X1 i_0_1_43 (.A(n_0_1_34), .ZN(n_0_1_33));
   NAND3_X1 i_0_1_44 (.A1(n_0_1_68), .A2(n_0_1_82), .A3(n_0_1_98), .ZN(n_0_1_34));
   NAND2_X1 i_0_1_45 (.A1(n_0_1_52), .A2(n_0_1_54), .ZN(n_0_1_21));
   OAI211_X1 i_0_1_46 (.A(n_0_1_54), .B(n_0_1_52), .C1(n_0_1_43), .C2(SW), 
      .ZN(n_0_1_35));
   NOR2_X1 i_0_1_47 (.A1(n_0_1_37), .A2(n_0_1_63), .ZN(n_0_1_36));
   INV_X1 i_0_1_48 (.A(n_0_1_78), .ZN(n_0_1_37));
   NAND2_X1 i_0_1_49 (.A1(n_0_1_39), .A2(n_0_1_43), .ZN(n_0_1_38));
   OAI211_X1 i_0_1_50 (.A(n_0_1_42), .B(n_0_1_102), .C1(n_0_1_40), .C2(n_0_1_41), 
      .ZN(n_0_1_39));
   INV_X1 i_0_1_51 (.A(n_0_1_52), .ZN(n_0_1_40));
   INV_X1 i_0_1_52 (.A(n_0_1_54), .ZN(n_0_1_41));
   NOR2_X1 i_0_1_53 (.A1(n_0_1_59), .A2(SFD), .ZN(n_0_1_42));
   NOR2_X1 i_0_1_54 (.A1(n_0_1_83), .A2(n_0_1_79), .ZN(n_0_1_43));
   OAI21_X1 i_0_1_56 (.A(n_0_1_80), .B1(Rst), .B2(n_0_1_66), .ZN(n_0_1_46));
   NAND2_X1 i_0_1_57 (.A1(n_0_1_92), .A2(n_0_1_48), .ZN(n_0_1_47));
   INV_X1 i_0_1_58 (.A(n_0_1_50), .ZN(n_0_1_48));
   NAND3_X1 i_0_1_59 (.A1(n_0_1_68), .A2(n_0_1_62), .A3(n_0_1_63), .ZN(n_0_1_50));
   NAND4_X1 i_0_1_61 (.A1(n_0_1_86), .A2(n_0_1_100), .A3(n_0_1_68), .A4(n_0_1_62), 
      .ZN(n_0_1_52));
   INV_X1 i_0_1_62 (.A(SW), .ZN(n_0_1_62));
   NAND3_X1 i_0_1_63 (.A1(n_0_1_17), .A2(n_0_1_18), .A3(n_0_1_54), .ZN(n_0_1_53));
   NAND3_X1 i_0_1_64 (.A1(n_0_1_85), .A2(n_0_1_68), .A3(n_0_1_55), .ZN(n_0_1_54));
   INV_X1 i_0_1_66 (.A(n_0_1_95), .ZN(n_0_1_55));
   INV_X1 i_0_1_67 (.A(n_0_1_102), .ZN(n_0_1_56));
   AOI21_X1 i_0_1_68 (.A(ST[6]), .B1(n_0_1_73), .B2(n_0_1_71), .ZN(n_0_1_59));
   INV_X1 i_0_1_70 (.A(ST[4]), .ZN(n_0_1_60));
   INV_X1 i_0_1_71 (.A(ST[5]), .ZN(n_0_1_69));
   NAND2_X1 i_0_1_72 (.A1(n_0_1_73), .A2(n_0_1_71), .ZN(n_0_1_70));
   INV_X1 i_0_1_73 (.A(n_0_1_72), .ZN(n_0_1_71));
   NAND2_X1 i_0_1_74 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_1_72));
   NAND3_X1 i_0_1_76 (.A1(n_0_1_76), .A2(n_0_1_75), .A3(n_0_1_74), .ZN(n_0_1_73));
   INV_X1 i_0_1_78 (.A(ST[1]), .ZN(n_0_1_74));
   INV_X1 i_0_1_79 (.A(ST[2]), .ZN(n_0_1_75));
   INV_X1 i_0_1_80 (.A(ST[3]), .ZN(n_0_1_76));
   INV_X1 i_0_1_81 (.A(ST[6]), .ZN(n_0_1_77));
   OAI21_X1 i_0_1_82 (.A(SRD), .B1(n_0_1_93), .B2(Rst), .ZN(n_0_1_78));
   INV_X1 i_0_1_83 (.A(n_0_1_80), .ZN(n_0_1_79));
   NAND4_X1 i_0_1_84 (.A1(n_0_1_68), .A2(n_0_1_61), .A3(n_0_1_82), .A4(n_0_1_98), 
      .ZN(n_0_1_80));
   INV_X1 i_0_1_86 (.A(n_0_1_94), .ZN(n_0_1_82));
   AOI21_X1 i_0_1_87 (.A(Rst), .B1(n_0_1_93), .B2(n_0_1_84), .ZN(n_0_1_83));
   INV_X1 i_0_1_88 (.A(n_0_1_67), .ZN(n_0_1_84));
   INV_X1 i_0_1_92 (.A(SFA), .ZN(n_0_1_88));
   INV_X1 i_0_1_107 (.A(Rst), .ZN(n_0_1_68));
   NAND2_X1 i_0_1_108 (.A1(n_0_1_64), .A2(ST[6]), .ZN(n_0_1_102));
   INV_X1 i_0_1_109 (.A(n_0_1_15), .ZN(n_0_11));
   INV_X1 i_0_1_110 (.A(n_0_1_103), .ZN(n_0_13));
   NAND3_X1 i_0_1_111 (.A1(n_0_1_13), .A2(n_0_1_12), .A3(n_0_1_103), .ZN(n_0_16));
   OAI21_X1 i_0_1_112 (.A(SRD), .B1(n_0_1_9), .B2(n_0_1_46), .ZN(n_0_1_103));
   INV_X1 i_0_1_113 (.A(n_0_1_10), .ZN(n_0_1_9));
   NAND3_X1 i_0_1_114 (.A1(n_0_1_11), .A2(n_0_1_61), .A3(n_0_1_57), .ZN(n_0_1_10));
   NAND3_X1 i_0_1_115 (.A1(n_0_1_47), .A2(n_0_1_52), .A3(n_0_1_54), .ZN(n_0_1_11));
   INV_X1 i_0_1_116 (.A(SFD), .ZN(n_0_1_61));
   NAND2_X1 i_0_1_117 (.A1(n_0_1_35), .A2(n_0_1_56), .ZN(n_0_1_12));
   NAND2_X1 i_0_1_118 (.A1(n_0_1_38), .A2(n_0_1_36), .ZN(n_0_1_13));
   NAND2_X1 i_0_1_119 (.A1(n_0_1_15), .A2(n_0_1_14), .ZN(n_0_17));
   OAI21_X1 i_0_1_120 (.A(n_0_1_53), .B1(n_0_1_56), .B2(n_0_1_59), .ZN(n_0_1_14));
   NAND2_X1 i_0_1_121 (.A1(n_0_1_16), .A2(SW), .ZN(n_0_1_15));
   NAND3_X1 i_0_1_122 (.A1(n_0_1_44), .A2(n_0_1_18), .A3(n_0_1_17), .ZN(n_0_1_16));
   OAI211_X1 i_0_1_123 (.A(n_0_1_78), .B(n_0_1_88), .C1(n_0_1_79), .C2(n_0_1_83), 
      .ZN(n_0_1_17));
   NAND3_X1 i_0_1_124 (.A1(n_0_1_68), .A2(n_0_1_86), .A3(n_0_1_100), .ZN(
      n_0_1_18));
   NAND2_X1 i_0_1_125 (.A1(n_0_1_45), .A2(n_0_1_57), .ZN(n_0_1_44));
   NOR3_X1 i_0_1_126 (.A1(n_0_1_54), .A2(SRD), .A3(n_0_1_51), .ZN(n_0_1_45));
   OR2_X1 i_0_1_127 (.A1(SFA), .A2(SFD), .ZN(n_0_1_51));
   AOI22_X1 i_0_1_128 (.A1(n_0_1_70), .A2(n_0_1_77), .B1(ST[6]), .B2(n_0_1_64), 
      .ZN(n_0_1_57));
   NAND4_X1 i_0_1_129 (.A1(n_0_1_76), .A2(n_0_1_60), .A3(n_0_1_69), .A4(n_0_1_65), 
      .ZN(n_0_1_64));
   NAND3_X1 i_0_1_130 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_1_65));
   INV_X1 i_0_1_16 (.A(n_0_1_67), .ZN(n_0_1_66));
   OAI33_X1 i_0_1_17 (.A1(n_0_0), .A2(n_0_2), .A3(n_0_1_87), .B1(n_0_1_86), 
      .B2(n_0_1_85), .B3(n_0_1_91), .ZN(n_0_1_67));
   NAND3_X1 i_0_1_18 (.A1(n_0_1_91), .A2(n_0_1_89), .A3(n_0_3), .ZN(n_0_1_81));
   OAI21_X1 i_0_1_19 (.A(n_0_1_90), .B1(n_0_2), .B2(n_0_3), .ZN(n_0_1_85));
   OAI22_X1 i_0_1_20 (.A1(n_0_0), .A2(n_0_2), .B1(n_0_1), .B2(n_0_1_87), 
      .ZN(n_0_1_86));
   INV_X1 i_0_1_21 (.A(n_0_3), .ZN(n_0_1_87));
   INV_X1 i_0_1_22 (.A(n_0_2), .ZN(n_0_1_89));
   INV_X1 i_0_1_23 (.A(n_0_1), .ZN(n_0_1_90));
   INV_X1 i_0_1_24 (.A(n_0_0), .ZN(n_0_1_91));
   INV_X1 i_0_1_25 (.A(n_0_1_93), .ZN(n_0_1_92));
   OAI21_X1 i_0_1_28 (.A(n_0_1_95), .B1(n_0_1_97), .B2(n_0_1_94), .ZN(n_0_1_93));
   AOI21_X1 i_0_1_30 (.A(n_0_1_86), .B1(n_0_1_87), .B2(n_0_1), .ZN(n_0_1_94));
   NAND2_X1 i_0_1_55 (.A1(n_0_0), .A2(n_0_1_96), .ZN(n_0_1_95));
   NAND3_X1 i_0_1_60 (.A1(n_0_1_87), .A2(n_0_1), .A3(n_0_1_89), .ZN(n_0_1_96));
   INV_X1 i_0_1_65 (.A(n_0_1_91), .ZN(n_0_1_97));
   AOI21_X1 i_0_1_75 (.A(n_0_1_99), .B1(n_0_1_89), .B2(n_0_1), .ZN(n_0_1_98));
   OAI21_X1 i_0_1_77 (.A(n_0_1_81), .B1(n_0_1_89), .B2(n_0_1_91), .ZN(n_0_1_99));
   OAI22_X1 i_0_1_85 (.A1(n_0_3), .A2(n_0_1_90), .B1(n_0_1_89), .B2(n_0_1_101), 
      .ZN(n_0_1_100));
   INV_X1 i_0_1_89 (.A(n_0_1_97), .ZN(n_0_1_101));
endmodule
