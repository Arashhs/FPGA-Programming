# File saved with Nlview 7.0.21  2019-05-29 bk=1.5064 VDI=41 GEI=36 GUI=JA:9.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new xmodule work:xmodule:NOFILE -nosplit
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 40
load port inp_a input -pg 1 -lvl 0 -x 0 -y 110
load port inp_b input -pg 1 -lvl 0 -x 0 -y 310
load port out_a output -pg 1 -lvl 7 -x 1010 -y 240
load port out_b output -pg 1 -lvl 7 -x 1010 -y 90
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 180 -y 40
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 40
load inst inp_a_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 180 -y 110
load inst inp_b_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 180 -y 310
load inst out_a_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 860 -y 240
load inst out_a_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 750 -y 240
load inst out_b_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 6 -x 860 -y 90
load inst out_b_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 5 -x 750 -y 90
load inst tmp_a_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 390 -y 100
load inst tmp_b_reg FDRE hdi_primitives -attr @cell(#000000) FDRE -pg 1 -lvl 3 -x 390 -y 300
load inst wire_a_inferred_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 540 -y 230
load net <const0> -ground -pin out_a_reg R -pin out_b_reg R -pin tmp_a_reg R -pin tmp_b_reg R
load net <const1> -power -pin out_a_reg CE -pin out_b_reg CE -pin tmp_a_reg CE -pin tmp_b_reg CE
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 40
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 40
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin out_a_reg C -pin out_b_reg C -pin tmp_a_reg C -pin tmp_b_reg C
netloc clk_IBUF_BUFG 1 2 3 340 200 NJ 200 660
load net inp_a -port inp_a -pin inp_a_IBUF_inst I
netloc inp_a 1 0 2 NJ 110 NJ
load net inp_a_IBUF -pin inp_a_IBUF_inst O -pin tmp_a_reg D
netloc inp_a_IBUF 1 2 1 NJ 110
load net inp_b -port inp_b -pin inp_b_IBUF_inst I
netloc inp_b 1 0 2 NJ 310 NJ
load net inp_b_IBUF -pin inp_b_IBUF_inst O -pin tmp_b_reg D
netloc inp_b_IBUF 1 2 1 NJ 310
load net out_a -port out_a -pin out_a_OBUF_inst O
netloc out_a 1 6 1 NJ 240
load net out_a_OBUF -pin out_a_OBUF_inst I -pin out_a_reg Q
netloc out_a_OBUF 1 5 1 NJ 240
load net out_b -port out_b -pin out_b_OBUF_inst O
netloc out_b 1 6 1 NJ 90
load net out_b_OBUF -pin out_b_OBUF_inst I -pin out_b_reg Q
netloc out_b_OBUF 1 5 1 NJ 90
load net tmp_a -pin tmp_a_reg Q -pin wire_a_inferred_i_1 I0
netloc tmp_a 1 3 1 480 100n
load net tmp_b -pin tmp_b_reg Q -pin wire_a_inferred_i_1 I1
netloc tmp_b 1 3 1 480 260n
load net wire_b -pin out_a_reg D -pin out_b_reg D -pin wire_a_inferred_i_1 O
netloc wire_b 1 4 1 680 100n
levelinfo -pg 1 0 40 180 390 540 750 860 1010
pagesize -pg 1 -db -bbox -sgen -90 0 1100 400
show
fullfit
#
# initialize ictrl to current module xmodule work:xmodule:NOFILE
ictrl init topinfo |
