/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 13:47:37 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3078601539 */

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
   wire n_0_0_0;
   wire n_0_12;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_11;
   wire n_0_0_4;
   wire n_0_9;
   wire n_0_10;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_1;
   wire n_0_3;
   wire n_0_5;
   wire n_0_6;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0;
   wire n_0_4;
   wire n_0_7;
   wire n_0_2;
   wire n_0_8;
   wire n_0_13;

   DFF_X1 \display_reg[2]  (.D(n_0_8), .CK(n_0_13), .Q(display[2]), .QN());
   DFF_X1 \display_reg[1]  (.D(n_0_7), .CK(n_0_13), .Q(display[1]), .QN());
   DFF_X1 \display_reg[0]  (.D(n_0_6), .CK(n_0_13), .Q(display[0]), .QN());
   DFF_X1 \out_reg[5]  (.D(n_0_5), .CK(n_0_13), .Q(fdoor), .QN());
   DFF_X1 \out_reg[4]  (.D(n_0_4), .CK(n_0_13), .Q(rdoor), .QN());
   DFF_X1 \out_reg[3]  (.D(n_0_3), .CK(n_0_13), .Q(alarmbuzz), .QN());
   DFF_X1 \out_reg[2]  (.D(n_0_2), .CK(n_0_13), .Q(winbuzz), .QN());
   DFF_X1 \out_reg[1]  (.D(n_0_1), .CK(n_0_13), .Q(heater), .QN());
   DFF_X1 \out_reg[0]  (.D(n_0_0), .CK(n_0_13), .Q(cooler), .QN());
   DFF_X1 \State_reg[2]  (.D(n_0_12), .CK(n_0_13), .Q(State[2]), .QN());
   DFF_X1 \State_reg[1]  (.D(n_0_11), .CK(n_0_13), .Q(State[1]), .QN());
   DFF_X1 \State_reg[0]  (.D(n_0_10), .CK(n_0_13), .Q(State[0]), .QN());
   NOR2_X1 i_0_0_0 (.A1(Rst), .A2(State[2]), .ZN(n_0_0_0));
   AND3_X1 i_0_0_1 (.A1(n_0_0_0), .A2(State[1]), .A3(State[0]), .ZN(n_0_12));
   NOR3_X1 i_0_0_2 (.A1(n_0_12), .A2(Rst), .A3(State[2]), .ZN(n_0_0_1));
   NOR2_X1 i_0_0_3 (.A1(State[1]), .A2(State[0]), .ZN(n_0_0_2));
   INV_X1 i_0_0_4 (.A(n_0_0_2), .ZN(n_0_0_3));
   AND2_X1 i_0_0_5 (.A1(n_0_0_1), .A2(n_0_0_3), .ZN(n_0_11));
   INV_X1 i_0_0_6 (.A(Rst), .ZN(n_0_0_4));
   NAND3_X1 i_0_0_7 (.A1(n_0_0_3), .A2(n_0_0_4), .A3(State[2]), .ZN(n_0_9));
   NOR3_X1 i_0_0_8 (.A1(Rst), .A2(State[2]), .A3(State[0]), .ZN(n_0_10));
   OR3_X1 i_0_0_9 (.A1(ST[2]), .A2(ST[1]), .A3(ST[3]), .ZN(n_0_0_5));
   AND3_X1 i_0_0_10 (.A1(n_0_0_5), .A2(ST[5]), .A3(ST[4]), .ZN(n_0_0_6));
   NAND3_X1 i_0_0_11 (.A1(n_0_0_2), .A2(n_0_0_4), .A3(State[2]), .ZN(n_0_0_7));
   NOR3_X1 i_0_0_12 (.A1(n_0_0_6), .A2(ST[6]), .A3(n_0_0_7), .ZN(n_0_1));
   AND3_X1 i_0_0_13 (.A1(n_0_10), .A2(SFA), .A3(State[1]), .ZN(n_0_3));
   AND3_X1 i_0_0_14 (.A1(n_0_0_0), .A2(n_0_0_2), .A3(SFD), .ZN(n_0_5));
   OR3_X1 i_0_0_15 (.A1(n_0_1), .A2(n_0_3), .A3(n_0_5), .ZN(n_0_6));
   INV_X1 i_0_0_16 (.A(ST[6]), .ZN(n_0_0_8));
   NOR3_X1 i_0_0_17 (.A1(ST[5]), .A2(ST[4]), .A3(ST[3]), .ZN(n_0_0_9));
   NAND3_X1 i_0_0_18 (.A1(ST[2]), .A2(ST[1]), .A3(ST[0]), .ZN(n_0_0_10));
   AOI211_X1 i_0_0_19 (.A(n_0_0_8), .B(n_0_0_7), .C1(n_0_0_9), .C2(n_0_0_10), 
      .ZN(n_0_0));
   AND3_X1 i_0_0_20 (.A1(n_0_0_1), .A2(SRD), .A3(State[0]), .ZN(n_0_4));
   OR3_X1 i_0_0_21 (.A1(n_0_4), .A2(n_0_0), .A3(n_0_3), .ZN(n_0_7));
   AND2_X1 i_0_0_22 (.A1(n_0_12), .A2(SW), .ZN(n_0_2));
   OR3_X1 i_0_0_23 (.A1(n_0_0), .A2(n_0_1), .A3(n_0_2), .ZN(n_0_8));
   CLKGATETST_X1 clk_gate_display_reg (.CK(Clk), .E(n_0_9), .SE(1'b0), .GCK(
      n_0_13));
endmodule
