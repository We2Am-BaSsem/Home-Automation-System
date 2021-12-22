module integ(
  input wire Clk, Rst, SFD, SRD, SW, SFA,
  input wire[6:0] ST,

  output reg fdoor, rdoor, winbuzz, alarmbuzz, heater, cooler,
  output reg[2:0] display);

  reg[5:0] out;
  assign {fdoor, rdoor, alarmbuzz, winbuzz, heater, cooler} = out;
  
  always @(posedge Clk, Rst) begin
    if(Rst) begin
      display <= 0;
      out <= 0;
    end
    else begin
      if(SFD) begin
        display <= 1;
        out <= (1<<5);
      end
      else if(SRD) begin
        display <= 2;
        out <= (1<<4);
      end
      else if(SFA) begin
        display <= 3;
        out <= (1<<3);
      end
      else if(SW) begin
        display <= 4;
        out <= (1<<2);
      end
      else if(ST < 50) begin
        display <= 5;
        out <= (1<<1);
      end
      else if(ST > 70) begin
        display <= 6;
        out <= (1<<0);
      end
      else begin
        display <= 0;
        out <= 0;
      end
    end
  end

endmodule
 