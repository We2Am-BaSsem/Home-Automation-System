/*
12345
45123
23451
51234
34125
*/
module integ(
  input wire Clk, Rst, SFD, SRD, SW, SFA,
  input wire[6:0] ST,

  output wire fdoor, rdoor, winbuzz, alarmbuzz, heater, cooler,
  output reg[2:0] display);

  reg[5:0] out;
  assign {fdoor, rdoor, alarmbuzz, winbuzz, heater, cooler} = out;

  reg [2:0] State;
  localparam S1 = 3'b000;
  localparam S2 = 3'b001;
  localparam S3 = 3'b010;
  localparam S4 = 3'b011;
  localparam S5 = 3'b100;

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



  always @(negedge Clk)
  begin
    if(Rst) begin
      State <= S1;
      display <= 0;
      out <= 0;
    end

    else begin
      case(State)
        S1: begin
          State <= S4;
          {out, display} <= _F1(SFD);
        end
        S2: begin
          State <= S5;
          {out, display} <= _F2(SFD);
        end
        S3: begin
          State <= S1;
          {out, display} <= _F3(SFD);
        end
        S4: begin
          State <= S2;
          {out, display} <= _F4(SFD);
        end
        S5: begin
          State <= S3;
          {out, display} <= _F5(SFD);
        end
        default:;
      endcase
    end
  end

endmodule
 
