// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Sun May 24 07:20:26 2020
// Host        : Arash running 64-bit major release  (build 9200)
// Command     : write_verilog D:/Problem44.v
// Design      : xmodule
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module xmodule
   (clk,
    inp_a,
    inp_b,
    out_a,
    out_b);
  input clk;
  input inp_a;
  input inp_b;
  output out_a;
  output out_b;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire inp_a;
  wire inp_a_IBUF;
  wire inp_b;
  wire inp_b_IBUF;
  wire out_a;
  wire out_a_OBUF;
  wire out_b;
  wire out_b_OBUF;
  wire tmp_a;
  wire tmp_b;
  (* RTL_KEEP = "true" *) wire wire_a;
  (* RTL_KEEP = "true" *) wire wire_b;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF inp_a_IBUF_inst
       (.I(inp_a),
        .O(inp_a_IBUF));
  IBUF inp_b_IBUF_inst
       (.I(inp_b),
        .O(inp_b_IBUF));
  OBUF out_a_OBUF_inst
       (.I(out_a_OBUF),
        .O(out_a));
  FDRE #(
    .INIT(1'b0)) 
    out_a_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wire_a),
        .Q(out_a_OBUF),
        .R(\<const0> ));
  OBUF out_b_OBUF_inst
       (.I(out_b_OBUF),
        .O(out_b));
  FDRE #(
    .INIT(1'b0)) 
    out_b_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(wire_b),
        .Q(out_b_OBUF),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    tmp_a_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(inp_a_IBUF),
        .Q(tmp_a),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    tmp_b_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(inp_b_IBUF),
        .Q(tmp_b),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'hE)) 
    wire_a_inferred_i_1
       (.I0(tmp_a),
        .I1(tmp_b),
        .O(wire_b));
  LUT1 #(
    .INIT(2'h2)) 
    wire_a_inst
       (.I0(wire_b),
        .O(wire_a));
endmodule
