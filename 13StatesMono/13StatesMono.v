/*
1
2
3
1
4
2
1
3
5
1
2
4
3
-------
histo
1  2  3  4  5
4  3  3  2  1
*/
module integ(
  input wire Clk, Rst, SFD, SRD, SW, SFA,
  input wire[6:0] ST,

  output wire fdoor, rdoor, winbuzz, alarmbuzz, heater, cooler,
  output reg[2:0] display);

  reg[5:0] out;
  assign {fdoor, rdoor, alarmbuzz, winbuzz, heater, cooler} = out;

  reg [3:0] State;
  localparam S1 = 4'b0000;
  localparam S2 = 4'b0001;
  localparam S3 = 4'b0010;
  localparam S4 = 4'b0011;
  localparam S5 = 4'b0100;
  localparam S6 = 4'b0101;
  localparam S7 = 4'b0110;
  localparam S8 = 4'b0111;
  localparam S9 = 4'b1000;
  localparam S10 = 4'b1001;
  localparam S11 = 4'b1010;
  localparam S12 = 4'b1011;
  localparam S13 = 4'b1100;


  always @(posedge Clk)
  begin
    if(Rst) begin
      State <= S1;
      display <= 0;
      out <= 0;
    end

    else begin
      // Front Door
      if(State==S1 || State==S4 || State==S7 || State==S10)
        if(SFD) {out, display} <= 1 | (1<<8);
        else {out, display} <= 0;
      // Rear Door
      else if(State==S2 || State==S6 || State==S11)
        if(SRD) {out, display} <= 2 | (1<<7);
        else {out, display} <= 0;
      // Fire Alarm
      else if(State==S3 || State==S8 || State==S13)
        if(SFA) {out, display} <= 3 | (1<<6);
        else {out, display} <= 0;
      // Window
      else if(State==S5 || State==S12)
        if(SW)  {out, display} <= 4 | (1<<5);
        else {out, display} <= 0;
      // Temperature
      else // State=S9
        if(ST < 50)       {out, display} <= 5 | (1<<4);
        else if(ST > 70)  {out, display} <= 6 | (1<<3);
        else {out, display} <= 0;

      if(State==S13)
        State<=S1;
      else
        State<=State+1;
      end
  end

endmodule
 
