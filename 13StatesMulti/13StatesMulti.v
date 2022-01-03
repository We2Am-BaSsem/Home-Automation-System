/*
1 12345
2 23451
3 34512
1 12345
4 45123
2 23451
1 12345
3 34512
5 51234
1 12345
2 23451
4 45123
3 34512
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

function [8:0] _F1(input SFD);
  begin
    if(SFD) _F1 = 1 | (1<<8);
    else if(SRD) _F1 = 2 | (1<<7);
    else if(SFA) _F1 = 3 | (1<<6);
    else if(SW) _F1 = 4 | (1<<5);
    else if(ST < 50) _F1 = 5 | (1<<4);
    else if(ST > 70) _F1 = 6 | (1<<3);
    else _F1 = 0;
  end
  endfunction


  function [8:0] _F2(input SFD);
  begin
    if(SRD) _F2 = 2 | (1<<7);
    else if(SFA) _F2 = 3 | (1<<6);
    else if(SW) _F2 = 4 | (1<<5);
    else if(ST < 50) _F2 = 5 | (1<<4);
    else if(ST > 70) _F2 = 6 | (1<<3);
    else if(SFD) _F2 = 1 | (1<<8);
    else _F2 = 0;
  end
  endfunction


  function [8:0] _F3(input SFD);
  begin
    if(SFA) _F3 = 3 | (1<<6);
    else if(SW) _F3 = 4 | (1<<5);
    else if(ST < 50) _F3 = 5 | (1<<4);
    else if(ST > 70) _F3 = 6 | (1<<3);
    else if(SFD) _F3 = 1 | (1<<8);
    else if(SRD) _F3 = 2 | (1<<7);
    else _F3 = 0;
  end
  endfunction


  function [8:0] _F4(input SFD);
  begin
    if(SW) _F4 = 4 | (1<<5);
    else if(ST < 50) _F4 = 5 | (1<<4);
    else if(ST > 70) _F4 = 6 | (1<<3);
    else if(SFD) _F4 = 1 | (1<<8);
    else if(SRD) _F4 = 2 | (1<<7);
    else if(SFA) _F4 = 3 | (1<<6);
    else _F4 = 0;
  end
  endfunction


  function [8:0] _F5(input SFD);
  begin
    if(ST < 50) _F5 = 5 | (1<<4);
    else if(ST > 70) _F5 = 6 | (1<<3);
    else if(SFD) _F5 = 1 | (1<<8);
    else if(SRD) _F5 = 2 | (1<<7);
    else if(SFA) _F5 = 3 | (1<<6);
    else if(SW) _F5 = 4 | (1<<5);
    else _F5 = 0;
  end
  endfunction


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
        {out, display} <= _F1(SFD);
      // Rear Door
      else if(State==S2 || State==S6 || State==S11)
        {out, display} <= _F2(SFD);
      // Fire Alarm
      else if(State==S3 || State==S8 || State==S13)
        {out, display} <= _F3(SFD);
      // Window
      else if(State==S5 || State==S12)
        {out, display} <= _F4(SFD);
      // Temperature
      else // State=S9
        {out, display} <= _F5(SFD);

      if(State==S13)
        State<=S1;
      else
        State<=State+1;
      end
  end

endmodule
 
