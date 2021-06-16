// -------------------------------------------------------------
// 
// File Name: C:\Users\huber\Downloads\hdlsrc\HDLAWGNGenerator\HDLAWGNGenerator\logImplementation.v
// Created: 2021-06-06 18:19:43
// 
// Generated by MATLAB 9.10 and HDL Coder 3.18
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: logImplementation
// Source Path: HDLAWGNGenerator/AWGNGenerator/GaussianNoiseWithUnitVar/logImplementation
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module logImplementation
          (clk,
           reset,
           enb,
           u0_48_48,
           e);


  input   clk;
  input   reset;
  input   enb;
  input   [47:0] u0_48_48;  // ufix48_En48
  output  [30:0] e;  // ufix31_En24


  reg [47:0] Delay_reg [0:2];  // ufix48 [3]
  wire [47:0] Delay_reg_next [0:2];  // ufix48_En48 [3]
  wire [47:0] Delay_out1;  // ufix48_En48
  wire [15:0] Constant_out1;  // ufix16_En9
  wire [30:0] Constant_out1_dtc;  // ufix31_En24
  wire [30:0] y;  // ufix31_En24
  wire [30:0] Switch_out1;  // ufix31_En24


  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_reg[0] <= 48'h000000000000;
        Delay_reg[1] <= 48'h000000000000;
        Delay_reg[2] <= 48'h000000000000;
      end
      else begin
        if (enb) begin
          Delay_reg[0] <= Delay_reg_next[0];
          Delay_reg[1] <= Delay_reg_next[1];
          Delay_reg[2] <= Delay_reg_next[2];
        end
      end
    end

  assign Delay_out1 = Delay_reg[2];
  assign Delay_reg_next[0] = u0_48_48;
  assign Delay_reg_next[1] = Delay_reg[0];
  assign Delay_reg_next[2] = Delay_reg[1];



  assign Constant_out1 = 16'b0000000000000000;



  assign Constant_out1_dtc = {Constant_out1, 15'b000000000000000};



  log u_log (.clk(clk),
             .reset(reset),
             .enb(enb),
             .u0_48_48(u0_48_48),  // ufix48_En48
             .e(y)  // ufix31_En24
             );

  assign Switch_out1 = (Delay_out1 == 48'h000000000000 ? Constant_out1_dtc :
              y);



  assign e = Switch_out1;

endmodule  // logImplementation

