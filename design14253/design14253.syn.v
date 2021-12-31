/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Dec 31 22:36:13 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1987547278 */

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
   wire n_0_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_0_1;
   wire n_0_3;
   wire n_0_0_2;
   wire n_0_4;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_7;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_9;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_10;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_26;
   wire n_0_11;
   wire n_0_0_27;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_44;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_8;
   wire n_0_5;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_6;
   wire n_0_0_36;
   wire n_0_0_28;
   wire n_0_0_38;
   wire n_0_0_25;
   wire n_0_0_39;
   wire n_0_0_56;
   wire n_0_0_58;
   wire n_0_0_13;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_12;
   wire n_0_0_59;
   wire n_0_0_37;
   wire n_0_0_60;
   wire n_0_0_62;
   wire n_0_0_45;
   wire n_0_0_63;
   wire n_0_0_43;
   wire n_0_0_55;
   wire n_0_0_67;
   wire n_0_0_70;
   wire n_0_0_46;
   wire n_0_0_71;
   wire n_0_0_72;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_0_75;
   wire n_0_0_54;
   wire n_0_0_57;
   wire n_0_0_76;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_0_79;
   wire n_0_0_80;
   wire n_0_0_61;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_0_83;
   wire n_0_0_84;
   wire n_0_0_85;
   wire n_0_0_86;
   wire n_0_0_87;

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
   OAI21_X1 i_0_0_0 (.A(n_0_0_0), .B1(n_0_0_45), .B2(n_0_0_51), .ZN(n_0_0));
   OAI211_X1 i_0_0_1 (.A(State[0]), .B(n_0_0_64), .C1(State[2]), .C2(State[1]), 
      .ZN(n_0_0_0));
   OAI21_X1 i_0_0_2 (.A(n_0_0_43), .B1(n_0_0_41), .B2(n_0_0_69), .ZN(n_0_1));
   INV_X1 i_0_0_3 (.A(n_0_0_1), .ZN(n_0_2));
   AOI21_X1 i_0_0_4 (.A(n_0_0_37), .B1(n_0_0_44), .B2(State[0]), .ZN(n_0_0_1));
   INV_X1 i_0_0_5 (.A(n_0_0_2), .ZN(n_0_3));
   AOI22_X1 i_0_0_6 (.A1(n_0_0_4), .A2(n_0_0_61), .B1(cooler), .B2(n_0_0_37), 
      .ZN(n_0_0_2));
   INV_X1 i_0_0_7 (.A(n_0_0_3), .ZN(n_0_4));
   AOI22_X1 i_0_0_8 (.A1(n_0_0_4), .A2(n_0_0_57), .B1(heater), .B2(n_0_0_37), 
      .ZN(n_0_0_3));
   OAI21_X1 i_0_0_9 (.A(n_0_0_40), .B1(n_0_0_35), .B2(n_0_0_46), .ZN(n_0_0_4));
   OAI21_X1 i_0_0_18 (.A(n_0_0_11), .B1(n_0_0_12), .B2(n_0_0_13), .ZN(n_0_7));
   AOI22_X1 i_0_0_19 (.A1(rdoor), .A2(n_0_0_37), .B1(n_0_0_29), .B2(n_0_0_48), 
      .ZN(n_0_0_11));
   OAI21_X1 i_0_0_20 (.A(SRD), .B1(n_0_0_44), .B2(n_0_0_49), .ZN(n_0_0_12));
   NAND2_X1 i_0_0_22 (.A1(n_0_0_14), .A2(n_0_0_18), .ZN(n_0_9));
   AOI22_X1 i_0_0_23 (.A1(fdoor), .A2(n_0_0_37), .B1(n_0_0_15), .B2(n_0_0_55), 
      .ZN(n_0_0_14));
   NOR3_X1 i_0_0_24 (.A1(n_0_0_35), .A2(n_0_0_17), .A3(n_0_0_16), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_49), .A2(SFD), .ZN(n_0_0_16));
   NOR3_X1 i_0_0_26 (.A1(State[1]), .A2(n_0_0_50), .A3(n_0_0_68), .ZN(n_0_0_17));
   NAND3_X1 i_0_0_27 (.A1(n_0_0_54), .A2(n_0_0_53), .A3(n_0_0_44), .ZN(n_0_0_18));
   OAI211_X1 i_0_0_28 (.A(n_0_0_19), .B(n_0_0_22), .C1(n_0_0_24), .C2(n_0_0_61), 
      .ZN(n_0_10));
   AOI211_X1 i_0_0_29 (.A(n_0_0_28), .B(n_0_0_20), .C1(n_0_0_23), .C2(n_0_0_57), 
      .ZN(n_0_0_19));
   NOR3_X1 i_0_0_30 (.A1(State[1]), .A2(n_0_0_21), .A3(n_0_0_45), .ZN(n_0_0_20));
   NOR2_X1 i_0_0_31 (.A1(n_0_0_53), .A2(n_0_0_25), .ZN(n_0_0_21));
   NAND2_X1 i_0_0_32 (.A1(display[0]), .A2(n_0_0_37), .ZN(n_0_0_22));
   OAI21_X1 i_0_0_33 (.A(n_0_0_40), .B1(n_0_0_35), .B2(n_0_0_48), .ZN(n_0_0_23));
   OAI21_X1 i_0_0_34 (.A(n_0_0_26), .B1(n_0_0_25), .B2(SFD), .ZN(n_0_0_24));
   OAI21_X1 i_0_0_36 (.A(n_0_0_43), .B1(n_0_0_35), .B2(n_0_0_48), .ZN(n_0_0_26));
   OAI211_X1 i_0_0_37 (.A(n_0_0_27), .B(n_0_0_30), .C1(n_0_0_33), .C2(n_0_0_57), 
      .ZN(n_0_11));
   AOI221_X1 i_0_0_38 (.A(n_0_0_28), .B1(n_0_0_29), .B2(n_0_0_47), .C1(
      display[1]), .C2(n_0_0_37), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_40 (.A1(n_0_0_45), .A2(n_0_0_53), .ZN(n_0_0_29));
   OAI21_X1 i_0_0_41 (.A(n_0_0_61), .B1(n_0_0_31), .B2(n_0_0_32), .ZN(n_0_0_30));
   OAI21_X1 i_0_0_42 (.A(n_0_0_40), .B1(n_0_0_35), .B2(n_0_0_52), .ZN(n_0_0_31));
   NOR3_X1 i_0_0_43 (.A1(n_0_0_43), .A2(SFD), .A3(SW), .ZN(n_0_0_32));
   OAI21_X1 i_0_0_44 (.A(n_0_0_34), .B1(SFA), .B2(SRD), .ZN(n_0_0_33));
   NAND2_X1 i_0_0_52 (.A1(State[2]), .A2(n_0_0_42), .ZN(n_0_0_40));
   NAND2_X1 i_0_0_53 (.A1(n_0_0_64), .A2(State[2]), .ZN(n_0_0_41));
   INV_X1 i_0_0_54 (.A(n_0_0_43), .ZN(n_0_0_42));
   NOR2_X1 i_0_0_56 (.A1(State[1]), .A2(Rst), .ZN(n_0_0_44));
   OAI21_X1 i_0_0_59 (.A(n_0_0_49), .B1(n_0_0_50), .B2(State[1]), .ZN(n_0_0_47));
   AND2_X1 i_0_0_60 (.A1(n_0_0_69), .A2(SRD), .ZN(n_0_0_48));
   NAND2_X1 i_0_0_61 (.A1(n_0_0_68), .A2(SFA), .ZN(n_0_0_49));
   NOR2_X1 i_0_0_62 (.A1(SRD), .A2(SFA), .ZN(n_0_0_50));
   INV_X1 i_0_0_63 (.A(n_0_0_52), .ZN(n_0_0_51));
   NOR2_X1 i_0_0_64 (.A1(State[1]), .A2(State[0]), .ZN(n_0_0_52));
   NOR2_X1 i_0_0_65 (.A1(n_0_0_65), .A2(State[0]), .ZN(n_0_0_53));
   INV_X1 i_0_0_76 (.A(Rst), .ZN(n_0_0_64));
   INV_X1 i_0_0_77 (.A(SFD), .ZN(n_0_0_65));
   INV_X1 i_0_0_78 (.A(SFA), .ZN(n_0_0_66));
   INV_X1 i_0_0_80 (.A(State[0]), .ZN(n_0_0_68));
   INV_X1 i_0_0_81 (.A(State[1]), .ZN(n_0_0_69));
   INV_X1 i_0_0_82 (.A(Clk), .ZN(n_0_8));
   INV_X1 i_0_0_10 (.A(n_0_0_5), .ZN(n_0_5));
   AOI21_X1 i_0_0_11 (.A(n_0_0_9), .B1(n_0_0_6), .B2(SW), .ZN(n_0_0_5));
   NAND2_X1 i_0_0_12 (.A1(n_0_0_7), .A2(n_0_0_8), .ZN(n_0_0_6));
   NAND4_X1 i_0_0_13 (.A1(n_0_0_55), .A2(n_0_0_42), .A3(n_0_0_65), .A4(n_0_0_50), 
      .ZN(n_0_0_7));
   NAND3_X1 i_0_0_14 (.A1(n_0_0_73), .A2(n_0_0_71), .A3(n_0_0_63), .ZN(n_0_0_8));
   INV_X1 i_0_0_15 (.A(n_0_0_10), .ZN(n_0_0_9));
   NAND2_X1 i_0_0_16 (.A1(n_0_0_37), .A2(winbuzz), .ZN(n_0_0_10));
   OAI21_X1 i_0_0_17 (.A(n_0_0_36), .B1(n_0_0_39), .B2(n_0_0_38), .ZN(n_0_6));
   AOI21_X1 i_0_0_21 (.A(n_0_0_28), .B1(alarmbuzz), .B2(n_0_0_37), .ZN(n_0_0_36));
   NOR3_X1 i_0_0_35 (.A1(n_0_0_49), .A2(n_0_0_69), .A3(n_0_0_45), .ZN(n_0_0_28));
   INV_X1 i_0_0_39 (.A(n_0_0_25), .ZN(n_0_0_38));
   NOR2_X1 i_0_0_45 (.A1(n_0_0_66), .A2(SRD), .ZN(n_0_0_25));
   AOI21_X1 i_0_0_46 (.A(n_0_0_58), .B1(n_0_0_29), .B2(n_0_0_56), .ZN(n_0_0_39));
   OR2_X1 i_0_0_47 (.A1(n_0_0_69), .A2(n_0_0_68), .ZN(n_0_0_56));
   INV_X1 i_0_0_48 (.A(n_0_0_13), .ZN(n_0_0_58));
   NAND2_X1 i_0_0_49 (.A1(n_0_0_55), .A2(n_0_0_34), .ZN(n_0_0_13));
   AOI21_X1 i_0_0_50 (.A(SFD), .B1(n_0_0_35), .B2(n_0_0_43), .ZN(n_0_0_34));
   NAND2_X1 i_0_0_51 (.A1(n_0_0_63), .A2(n_0_0_67), .ZN(n_0_0_35));
   NAND2_X1 i_0_0_55 (.A1(n_0_0_60), .A2(n_0_0_59), .ZN(n_0_12));
   NAND2_X1 i_0_0_57 (.A1(n_0_0_37), .A2(display[2]), .ZN(n_0_0_59));
   NOR2_X1 i_0_0_58 (.A1(n_0_0_41), .A2(n_0_0_52), .ZN(n_0_0_37));
   NAND2_X1 i_0_0_66 (.A1(n_0_0_70), .A2(n_0_0_62), .ZN(n_0_0_60));
   AOI22_X1 i_0_0_67 (.A1(n_0_0_55), .A2(n_0_0_67), .B1(n_0_0_43), .B2(n_0_0_45), 
      .ZN(n_0_0_62));
   INV_X1 i_0_0_68 (.A(n_0_0_63), .ZN(n_0_0_45));
   NOR2_X1 i_0_0_69 (.A1(Rst), .A2(State[2]), .ZN(n_0_0_63));
   NAND2_X1 i_0_0_70 (.A1(n_0_0_64), .A2(n_0_0_52), .ZN(n_0_0_43));
   NOR2_X1 i_0_0_71 (.A1(n_0_0_61), .A2(n_0_0_57), .ZN(n_0_0_55));
   INV_X1 i_0_0_72 (.A(SW), .ZN(n_0_0_67));
   NAND2_X1 i_0_0_73 (.A1(n_0_0_46), .A2(n_0_0_54), .ZN(n_0_0_70));
   NAND2_X1 i_0_0_74 (.A1(n_0_0_73), .A2(n_0_0_71), .ZN(n_0_0_46));
   INV_X1 i_0_0_75 (.A(n_0_0_72), .ZN(n_0_0_71));
   OAI21_X1 i_0_0_79 (.A(n_0_0_49), .B1(n_0_0_51), .B2(n_0_0_65), .ZN(n_0_0_72));
   NAND2_X1 i_0_0_83 (.A1(n_0_0_74), .A2(n_0_0_75), .ZN(n_0_0_73));
   INV_X1 i_0_0_84 (.A(n_0_0_50), .ZN(n_0_0_74));
   INV_X1 i_0_0_85 (.A(State[1]), .ZN(n_0_0_75));
   OAI21_X1 i_0_0_86 (.A(State[2]), .B1(n_0_0_61), .B2(n_0_0_57), .ZN(n_0_0_54));
   AOI21_X1 i_0_0_87 (.A(ST[6]), .B1(n_0_0_78), .B2(n_0_0_76), .ZN(n_0_0_57));
   INV_X1 i_0_0_88 (.A(n_0_0_77), .ZN(n_0_0_76));
   NAND2_X1 i_0_0_89 (.A1(ST[5]), .A2(ST[4]), .ZN(n_0_0_77));
   NAND3_X1 i_0_0_90 (.A1(n_0_0_83), .A2(n_0_0_80), .A3(n_0_0_79), .ZN(n_0_0_78));
   INV_X1 i_0_0_91 (.A(ST[1]), .ZN(n_0_0_79));
   INV_X1 i_0_0_92 (.A(ST[2]), .ZN(n_0_0_80));
   AOI21_X1 i_0_0_93 (.A(n_0_0_87), .B1(n_0_0_81), .B2(n_0_0_86), .ZN(n_0_0_61));
   INV_X1 i_0_0_94 (.A(n_0_0_82), .ZN(n_0_0_81));
   NAND3_X1 i_0_0_95 (.A1(n_0_0_85), .A2(n_0_0_84), .A3(n_0_0_83), .ZN(n_0_0_82));
   INV_X1 i_0_0_96 (.A(ST[3]), .ZN(n_0_0_83));
   INV_X1 i_0_0_97 (.A(ST[4]), .ZN(n_0_0_84));
   INV_X1 i_0_0_98 (.A(ST[5]), .ZN(n_0_0_85));
   NAND3_X1 i_0_0_99 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_86));
   INV_X1 i_0_0_100 (.A(ST[6]), .ZN(n_0_0_87));
endmodule
