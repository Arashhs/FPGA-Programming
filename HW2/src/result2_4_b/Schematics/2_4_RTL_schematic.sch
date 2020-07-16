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
module new problem_2_4_a work:problem_2_4_a:NOFILE -nosplit
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol mux work:mux:NOFILE HIERBOX pin A input.left pin B input.left pin C input.left pin D input.left pin E input.left pin F input.left pin G input.left pin H input.left pin Y output.right pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux work:abstract:NOFILE HIERBOX pin A input.left pin B input.left pin C input.left pin D input.left pin E input.left pin F input.left pin G input.left pin H input.left pin Y output.right pinBus sel input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load port shmod input -pg 1 -lvl 0 -x 0 -y 260
load portBus data_inp input [7:0] -attr @name data_inp[7:0] -pg 1 -lvl 0 -x 0 -y 290
load portBus data_out output [7:0] -attr @name data_out[7:0] -pg 1 -lvl 3 -x 400 -y 140
load portBus shamt input [2:0] -attr @name shamt[2:0] -pg 1 -lvl 0 -x 0 -y 220
load inst f_i RTL_AND work -attr @cell(#000000) RTL_AND -pg 1 -lvl 1 -x 70 -y 270
load inst mux1 mux work:mux:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 50
load inst mux2 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 300
load inst mux3 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 550
load inst mux4 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 800
load inst mux5 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 1050
load inst mux6 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 1300
load inst mux7 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 1550
load inst mux8 mux work:abstract:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr sel @name sel[2:0] -pg 1 -lvl 2 -x 280 -y 1800
load net B -pin f_i O -pin mux1 B -pin mux1 C -pin mux1 D -pin mux1 E -pin mux1 F -pin mux1 G -pin mux1 H -pin mux2 C -pin mux2 D -pin mux2 E -pin mux2 F -pin mux2 G -pin mux2 H -pin mux3 D -pin mux3 E -pin mux3 F -pin mux3 G -pin mux3 H -pin mux4 E -pin mux4 F -pin mux4 G -pin mux4 H -pin mux5 F -pin mux5 G -pin mux5 H -pin mux6 G -pin mux6 H -pin mux7 H
netloc B 1 1 1 210 80n
load net data_inp[0] -attr @rip data_inp[0] -port data_inp[0] -pin mux8 A
load net data_inp[1] -attr @rip data_inp[1] -port data_inp[1] -pin mux7 A -pin mux8 B
load net data_inp[2] -attr @rip data_inp[2] -port data_inp[2] -pin mux6 A -pin mux7 B -pin mux8 C
load net data_inp[3] -attr @rip data_inp[3] -port data_inp[3] -pin mux5 A -pin mux6 B -pin mux7 C -pin mux8 D
load net data_inp[4] -attr @rip data_inp[4] -port data_inp[4] -pin mux4 A -pin mux5 B -pin mux6 C -pin mux7 D -pin mux8 E
load net data_inp[5] -attr @rip data_inp[5] -port data_inp[5] -pin mux3 A -pin mux4 B -pin mux5 C -pin mux6 D -pin mux7 E -pin mux8 F
load net data_inp[6] -attr @rip data_inp[6] -port data_inp[6] -pin mux2 A -pin mux3 B -pin mux4 C -pin mux5 D -pin mux6 E -pin mux7 F -pin mux8 G
load net data_inp[7] -attr @rip data_inp[7] -port data_inp[7] -pin f_i I1 -pin mux1 A -pin mux2 B -pin mux3 C -pin mux4 D -pin mux5 E -pin mux6 F -pin mux7 G -pin mux8 H
load net data_out[0] -attr @rip 0 -port data_out[0] -pin mux8 Y
load net data_out[1] -attr @rip 1 -port data_out[1] -pin mux7 Y
load net data_out[2] -attr @rip 2 -port data_out[2] -pin mux6 Y
load net data_out[3] -attr @rip 3 -port data_out[3] -pin mux5 Y
load net data_out[4] -attr @rip 4 -port data_out[4] -pin mux4 Y
load net data_out[5] -attr @rip 5 -port data_out[5] -pin mux3 Y
load net data_out[6] -attr @rip 6 -port data_out[6] -pin mux2 Y
load net data_out[7] -attr @rip 7 -port data_out[7] -pin mux1 Y
load net shamt[0] -attr @rip shamt[0] -pin mux1 sel[0] -pin mux2 sel[0] -pin mux3 sel[0] -pin mux4 sel[0] -pin mux5 sel[0] -pin mux6 sel[0] -pin mux7 sel[0] -pin mux8 sel[0] -port shamt[0]
load net shamt[1] -attr @rip shamt[1] -pin mux1 sel[1] -pin mux2 sel[1] -pin mux3 sel[1] -pin mux4 sel[1] -pin mux5 sel[1] -pin mux6 sel[1] -pin mux7 sel[1] -pin mux8 sel[1] -port shamt[1]
load net shamt[2] -attr @rip shamt[2] -pin mux1 sel[2] -pin mux2 sel[2] -pin mux3 sel[2] -pin mux4 sel[2] -pin mux5 sel[2] -pin mux6 sel[2] -pin mux7 sel[2] -pin mux8 sel[2] -port shamt[2]
load net shmod -pin f_i I0 -port shmod
netloc shmod 1 0 1 NJ 260
load netBundle @data_inp 8 data_inp[7] data_inp[6] data_inp[5] data_inp[4] data_inp[3] data_inp[2] data_inp[1] data_inp[0] -autobundled
netbloc @data_inp 1 0 2 20 320 190
load netBundle @shamt 3 shamt[2] shamt[1] shamt[0] -autobundled
netbloc @shamt 1 0 2 NJ 220 170
load netBundle @data_out 8 data_out[7] data_out[6] data_out[5] data_out[4] data_out[3] data_out[2] data_out[1] data_out[0] -autobundled
netbloc @data_out 1 2 1 380 140n
levelinfo -pg 1 0 70 280 400
pagesize -pg 1 -db -bbox -sgen -130 0 540 2010
show
fullfit
#
# initialize ictrl to current module problem_2_4_a work:problem_2_4_a:NOFILE
ictrl init topinfo |
