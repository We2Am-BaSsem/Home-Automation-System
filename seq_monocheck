/*
1
2
3
4
5
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
          State <= S2;
          if(SFD) {out, display} <= 1 | (1<<8);
          else {out, display} <= 0;
        end
        S2: begin
          State <= S3;
          if(SRD) {out, display} <= 2 | (1<<7);
          else {out, display} <= 0;
       end
        S3: begin
          State <= S4;
          if(SFA) {out, display} <= 3 | (1<<6);
          else {out, display} <= 0;
        end
        S4: begin
          State <= S5;
          if(SW)  {out, display} <= 4 | (1<<5);
          else {out, display} <= 0;
        end
        S5: begin
          State <= S1;
          if(ST < 50)       {out, display} <= 5 | (1<<4);
          else if(ST > 70)  {out, display} <= 6 | (1<<3);
          else {out, display} <= 0;
        end
        default:;
      endcase
    end
  end

endmodule
 
