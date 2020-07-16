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
module new problem_2_3_a work:problem_2_3_a:NOFILE -nosplit
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_ARSHIFT work RTL(>>>) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX work MUX pin S input.bot pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load port shmod input -pg 1 -lvl 0 -x 0 -y 120
load portBus data_inp input [7:0] -attr @name data_inp[7:0] -pg 1 -lvl 0 -x 0 -y 150
load portBus data_out output [7:0] -attr @name data_out[7:0] -pg 1 -lvl 3 -x 540 -y 60
load portBus shamt input [2:0] -attr @name shamt[2:0] -pg 1 -lvl 0 -x 0 -y 180
load inst data_out0_i RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 130 -y 70
load inst data_out0_i__0 RTL_ARSHIFT work -attr @cell(#000000) RTL_ARSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 1 -x 130 -y 180
load inst data_out_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[7:0] -pinBusAttr I0 @attr S=1'b0 -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[7:0] -pg 1 -lvl 2 -x 420 -y 60
load net <const1> -power -pin data_out0_i I2 -pin data_out0_i__0 I2
load net data_inp[0] -attr @rip data_inp[0] -port data_inp[0] -pin data_out0_i I0[0] -pin data_out0_i__0 I0[0]
load net data_inp[1] -attr @rip data_inp[1] -port data_inp[1] -pin data_out0_i I0[1] -pin data_out0_i__0 I0[1]
load net data_inp[2] -attr @rip data_inp[2] -port data_inp[2] -pin data_out0_i I0[2] -pin data_out0_i__0 I0[2]
load net data_inp[3] -attr @rip data_inp[3] -port data_inp[3] -pin data_out0_i I0[3] -pin data_out0_i__0 I0[3]
load net data_inp[4] -attr @rip data_inp[4] -port data_inp[4] -pin data_out0_i I0[4] -pin data_out0_i__0 I0[4]
load net data_inp[5] -attr @rip data_inp[5] -port data_inp[5] -pin data_out0_i I0[5] -pin data_out0_i__0 I0[5]
load net data_inp[6] -attr @rip data_inp[6] -port data_inp[6] -pin data_out0_i I0[6] -pin data_out0_i__0 I0[6]
load net data_inp[7] -attr @rip data_inp[7] -port data_inp[7] -pin data_out0_i I0[7] -pin data_out0_i__0 I0[7]
load net data_out0[0] -attr @rip O[0] -pin data_out0_i O[0] -pin data_out_i I0[0]
load net data_out0[1] -attr @rip O[1] -pin data_out0_i O[1] -pin data_out_i I0[1]
load net data_out0[2] -attr @rip O[2] -pin data_out0_i O[2] -pin data_out_i I0[2]
load net data_out0[3] -attr @rip O[3] -pin data_out0_i O[3] -pin data_out_i I0[3]
load net data_out0[4] -attr @rip O[4] -pin data_out0_i O[4] -pin data_out_i I0[4]
load net data_out0[5] -attr @rip O[5] -pin data_out0_i O[5] -pin data_out_i I0[5]
load net data_out0[6] -attr @rip O[6] -pin data_out0_i O[6] -pin data_out_i I0[6]
load net data_out0[7] -attr @rip O[7] -pin data_out0_i O[7] -pin data_out_i I0[7]
load net data_out0_i__0_n_0 -attr @rip O[7] -pin data_out0_i__0 O[7] -pin data_out_i I1[7]
load net data_out0_i__0_n_1 -attr @rip O[6] -pin data_out0_i__0 O[6] -pin data_out_i I1[6]
load net data_out0_i__0_n_2 -attr @rip O[5] -pin data_out0_i__0 O[5] -pin data_out_i I1[5]
load net data_out0_i__0_n_3 -attr @rip O[4] -pin data_out0_i__0 O[4] -pin data_out_i I1[4]
load net data_out0_i__0_n_4 -attr @rip O[3] -pin data_out0_i__0 O[3] -pin data_out_i I1[3]
load net data_out0_i__0_n_5 -attr @rip O[2] -pin data_out0_i__0 O[2] -pin data_out_i I1[2]
load net data_out0_i__0_n_6 -attr @rip O[1] -pin data_out0_i__0 O[1] -pin data_out_i I1[1]
load net data_out0_i__0_n_7 -attr @rip O[0] -pin data_out0_i__0 O[0] -pin data_out_i I1[0]
load net data_out[0] -attr @rip O[0] -port data_out[0] -pin data_out_i O[0]
load net data_out[1] -attr @rip O[1] -port data_out[1] -pin data_out_i O[1]
load net data_out[2] -attr @rip O[2] -port data_out[2] -pin data_out_i O[2]
load net data_out[3] -attr @rip O[3] -port data_out[3] -pin data_out_i O[3]
load net data_out[4] -attr @rip O[4] -port data_out[4] -pin data_out_i O[4]
load net data_out[5] -attr @rip O[5] -port data_out[5] -pin data_out_i O[5]
load net data_out[6] -attr @rip O[6] -port data_out[6] -pin data_out_i O[6]
load net data_out[7] -attr @rip O[7] -port data_out[7] -pin data_out_i O[7]
load net shamt[0] -attr @rip shamt[0] -pin data_out0_i I1[0] -pin data_out0_i__0 I1[0] -port shamt[0]
load net shamt[1] -attr @rip shamt[1] -pin data_out0_i I1[1] -pin data_out0_i__0 I1[1] -port shamt[1]
load net shamt[2] -attr @rip shamt[2] -pin data_out0_i I1[2] -pin data_out0_i__0 I1[2] -port shamt[2]
load net shmod -pin data_out_i S -port shmod
netloc shmod 1 0 2 NJ 120 NJ
load netBundle @data_inp 8 data_inp[7] data_inp[6] data_inp[5] data_inp[4] data_inp[3] data_inp[2] data_inp[1] data_inp[0] -autobundled
netbloc @data_inp 1 0 1 40 70n
load netBundle @shamt 3 shamt[2] shamt[1] shamt[0] -autobundled
netbloc @shamt 1 0 1 20 90n
load netBundle @data_out 8 data_out[7] data_out[6] data_out[5] data_out[4] data_out[3] data_out[2] data_out[1] data_out[0] -autobundled
netbloc @data_out 1 2 1 N 60
load netBundle @data_out0 8 data_out0[7] data_out0[6] data_out0[5] data_out0[4] data_out0[3] data_out0[2] data_out0[1] data_out0[0] -autobundled
netbloc @data_out0 1 1 1 280 50n
load netBundle @data_out0_i__0_n_ 8 data_out0_i__0_n_0 data_out0_i__0_n_1 data_out0_i__0_n_2 data_out0_i__0_n_3 data_out0_i__0_n_4 data_out0_i__0_n_5 data_out0_i__0_n_6 data_out0_i__0_n_7 -autobundled
netbloc @data_out0_i__0_n_ 1 1 1 300 70n
levelinfo -pg 1 0 130 420 540
pagesize -pg 1 -db -bbox -sgen -130 0 680 230
show
fullfit
#
# initialize ictrl to current module problem_2_3_a work:problem_2_3_a:NOFILE
ictrl init topinfo |
