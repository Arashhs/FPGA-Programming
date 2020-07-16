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
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load port shmod input -pg 1 -lvl 0 -x 0 -y 1210
load portBus data_inp input [7:0] -attr @name data_inp[7:0] -pg 1 -lvl 0 -x 0 -y 140
load portBus data_out output [7:0] -attr @name data_out[7:0] -pg 1 -lvl 5 -x 1230 -y 330
load portBus shamt input [2:0] -attr @name shamt[2:0] -pg 1 -lvl 0 -x 0 -y 1070
load inst data_inp_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 140
load inst data_inp_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 210
load inst data_inp_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 280
load inst data_inp_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 350
load inst data_inp_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 420
load inst data_inp_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 490
load inst data_inp_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 560
load inst data_inp_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 630
load inst data_out_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 330
load inst data_out_OBUF[0]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 870 -y 300
load inst data_out_OBUF[0]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 30
load inst data_out_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 440
load inst data_out_OBUF[1]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 870 -y 410
load inst data_out_OBUF[1]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 200
load inst data_out_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 550
load inst data_out_OBUF[2]_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 3 -x 870 -y 520
load inst data_out_OBUF[2]_inst_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 2 -x 470 -y 370
load inst data_out_OBUF[2]_inst_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 520
load inst data_out_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 690
load inst data_out_OBUF[3]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 3 -x 870 -y 640
load inst data_out_OBUF[3]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 690
load inst data_out_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 840
load inst data_out_OBUF[4]_inst_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 870 -y 810
load inst data_out_OBUF[4]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 860
load inst data_out_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 970
load inst data_out_OBUF[5]_inst_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 3 -x 870 -y 940
load inst data_out_OBUF[5]_inst_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 470 -y 1060
load inst data_out_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 1120
load inst data_out_OBUF[6]_inst_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 3 -x 870 -y 1070
load inst data_out_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 4 -x 1030 -y 1290
load inst data_out_OBUF[7]_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 870 -y 1240
load inst shamt_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1070
load inst shamt_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1140
load inst shamt_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 470 -y 1250
load inst shmod_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 60 -y 1210
load net data_inp[0] -attr @rip(#000000) data_inp[0] -port data_inp[0] -pin data_inp_IBUF[0]_inst I
load net data_inp[1] -attr @rip(#000000) data_inp[1] -port data_inp[1] -pin data_inp_IBUF[1]_inst I
load net data_inp[2] -attr @rip(#000000) data_inp[2] -port data_inp[2] -pin data_inp_IBUF[2]_inst I
load net data_inp[3] -attr @rip(#000000) data_inp[3] -port data_inp[3] -pin data_inp_IBUF[3]_inst I
load net data_inp[4] -attr @rip(#000000) data_inp[4] -port data_inp[4] -pin data_inp_IBUF[4]_inst I
load net data_inp[5] -attr @rip(#000000) data_inp[5] -port data_inp[5] -pin data_inp_IBUF[5]_inst I
load net data_inp[6] -attr @rip(#000000) data_inp[6] -port data_inp[6] -pin data_inp_IBUF[6]_inst I
load net data_inp[7] -attr @rip(#000000) data_inp[7] -port data_inp[7] -pin data_inp_IBUF[7]_inst I
load net data_inp_IBUF[0] -pin data_inp_IBUF[0]_inst O -pin data_out_OBUF[0]_inst_i_2 I5
netloc data_inp_IBUF[0] 1 1 1 N 140
load net data_inp_IBUF[1] -pin data_inp_IBUF[1]_inst O -pin data_out_OBUF[0]_inst_i_2 I3 -pin data_out_OBUF[1]_inst_i_2 I5
netloc data_inp_IBUF[1] 1 1 1 230 100n
load net data_inp_IBUF[2] -pin data_inp_IBUF[2]_inst O -pin data_out_OBUF[0]_inst_i_2 I1 -pin data_out_OBUF[1]_inst_i_2 I3 -pin data_out_OBUF[2]_inst_i_3 I5
netloc data_inp_IBUF[2] 1 1 1 350 60n
load net data_inp_IBUF[3] -pin data_inp_IBUF[3]_inst O -pin data_out_OBUF[0]_inst_i_2 I0 -pin data_out_OBUF[1]_inst_i_2 I1 -pin data_out_OBUF[2]_inst_i_3 I3 -pin data_out_OBUF[3]_inst_i_2 I5
netloc data_inp_IBUF[3] 1 1 1 310 40n
load net data_inp_IBUF[4] -pin data_inp_IBUF[4]_inst O -pin data_out_OBUF[1]_inst_i_2 I0 -pin data_out_OBUF[2]_inst_i_3 I1 -pin data_out_OBUF[3]_inst_i_2 I3 -pin data_out_OBUF[4]_inst_i_2 I5
netloc data_inp_IBUF[4] 1 1 1 290 210n
load net data_inp_IBUF[5] -pin data_inp_IBUF[5]_inst O -pin data_out_OBUF[2]_inst_i_3 I0 -pin data_out_OBUF[3]_inst_i_2 I1 -pin data_out_OBUF[4]_inst_i_2 I3 -pin data_out_OBUF[5]_inst_i_2 I5
netloc data_inp_IBUF[5] 1 1 1 230 490n
load net data_inp_IBUF[6] -pin data_inp_IBUF[6]_inst O -pin data_out_OBUF[2]_inst_i_2 I4 -pin data_out_OBUF[3]_inst_i_2 I0 -pin data_out_OBUF[4]_inst_i_2 I1 -pin data_out_OBUF[5]_inst_i_2 I3 -pin data_out_OBUF[6]_inst_i_1 I5
netloc data_inp_IBUF[6] 1 1 2 250 1310 750J
load net data_inp_IBUF[7] -pin data_inp_IBUF[7]_inst O -pin data_out_OBUF[2]_inst_i_2 I2 -pin data_out_OBUF[3]_inst_i_1 I3 -pin data_out_OBUF[4]_inst_i_1 I0 -pin data_out_OBUF[4]_inst_i_2 I0 -pin data_out_OBUF[5]_inst_i_1 I0 -pin data_out_OBUF[5]_inst_i_2 I1 -pin data_out_OBUF[6]_inst_i_1 I3 -pin data_out_OBUF[7]_inst_i_1 I4
netloc data_inp_IBUF[7] 1 1 2 330 1010 650
load net data_out[0] -attr @rip(#000000) 0 -port data_out[0] -pin data_out_OBUF[0]_inst O
load net data_out[1] -attr @rip(#000000) 1 -port data_out[1] -pin data_out_OBUF[1]_inst O
load net data_out[2] -attr @rip(#000000) 2 -port data_out[2] -pin data_out_OBUF[2]_inst O
load net data_out[3] -attr @rip(#000000) 3 -port data_out[3] -pin data_out_OBUF[3]_inst O
load net data_out[4] -attr @rip(#000000) 4 -port data_out[4] -pin data_out_OBUF[4]_inst O
load net data_out[5] -attr @rip(#000000) 5 -port data_out[5] -pin data_out_OBUF[5]_inst O
load net data_out[6] -attr @rip(#000000) 6 -port data_out[6] -pin data_out_OBUF[6]_inst O
load net data_out[7] -attr @rip(#000000) 7 -port data_out[7] -pin data_out_OBUF[7]_inst O
load net data_out_OBUF[0] -pin data_out_OBUF[0]_inst I -pin data_out_OBUF[0]_inst_i_1 O
netloc data_out_OBUF[0] 1 3 1 N 330
load net data_out_OBUF[0]_inst_i_2_n_0 -pin data_out_OBUF[0]_inst_i_1 I2 -pin data_out_OBUF[0]_inst_i_2 O
netloc data_out_OBUF[0]_inst_i_2_n_0 1 2 1 790 80n
load net data_out_OBUF[1] -pin data_out_OBUF[1]_inst I -pin data_out_OBUF[1]_inst_i_1 O
netloc data_out_OBUF[1] 1 3 1 N 440
load net data_out_OBUF[1]_inst_i_2_n_0 -pin data_out_OBUF[1]_inst_i_1 I2 -pin data_out_OBUF[1]_inst_i_2 O
netloc data_out_OBUF[1]_inst_i_2_n_0 1 2 1 770 250n
load net data_out_OBUF[2] -pin data_out_OBUF[2]_inst I -pin data_out_OBUF[2]_inst_i_1 O
netloc data_out_OBUF[2] 1 3 1 N 550
load net data_out_OBUF[2]_inst_i_2_n_0 -pin data_out_OBUF[2]_inst_i_1 I0 -pin data_out_OBUF[2]_inst_i_2 O
netloc data_out_OBUF[2]_inst_i_2_n_0 1 2 1 650 420n
load net data_out_OBUF[2]_inst_i_3_n_0 -pin data_out_OBUF[2]_inst_i_1 I2 -pin data_out_OBUF[2]_inst_i_3 O
netloc data_out_OBUF[2]_inst_i_3_n_0 1 2 1 N 570
load net data_out_OBUF[3] -pin data_out_OBUF[3]_inst I -pin data_out_OBUF[3]_inst_i_1 O
netloc data_out_OBUF[3] 1 3 1 N 690
load net data_out_OBUF[3]_inst_i_2_n_0 -pin data_out_OBUF[3]_inst_i_1 I5 -pin data_out_OBUF[3]_inst_i_2 O
netloc data_out_OBUF[3]_inst_i_2_n_0 1 2 1 690 740n
load net data_out_OBUF[4] -pin data_out_OBUF[4]_inst I -pin data_out_OBUF[4]_inst_i_1 O
netloc data_out_OBUF[4] 1 3 1 N 840
load net data_out_OBUF[4]_inst_i_2_n_0 -pin data_out_OBUF[0]_inst_i_1 I0 -pin data_out_OBUF[4]_inst_i_1 I3 -pin data_out_OBUF[4]_inst_i_2 O
netloc data_out_OBUF[4]_inst_i_2_n_0 1 2 1 630 310n
load net data_out_OBUF[5] -pin data_out_OBUF[5]_inst I -pin data_out_OBUF[5]_inst_i_1 O
netloc data_out_OBUF[5] 1 3 1 N 970
load net data_out_OBUF[5]_inst_i_2_n_0 -pin data_out_OBUF[1]_inst_i_1 I0 -pin data_out_OBUF[5]_inst_i_1 I3 -pin data_out_OBUF[5]_inst_i_2 O
netloc data_out_OBUF[5]_inst_i_2_n_0 1 2 1 670 420n
load net data_out_OBUF[6] -pin data_out_OBUF[6]_inst I -pin data_out_OBUF[6]_inst_i_1 O
netloc data_out_OBUF[6] 1 3 1 N 1120
load net data_out_OBUF[7] -pin data_out_OBUF[7]_inst I -pin data_out_OBUF[7]_inst_i_1 O
netloc data_out_OBUF[7] 1 3 1 N 1290
load net shamt[0] -attr @rip(#000000) shamt[0] -port shamt[0] -pin shamt_IBUF[0]_inst I
load net shamt[1] -attr @rip(#000000) shamt[1] -port shamt[1] -pin shamt_IBUF[1]_inst I
load net shamt[2] -attr @rip(#000000) shamt[2] -port shamt[2] -pin shamt_IBUF[2]_inst I
load net shamt_IBUF[0] -pin data_out_OBUF[0]_inst_i_2 I4 -pin data_out_OBUF[1]_inst_i_2 I4 -pin data_out_OBUF[2]_inst_i_2 I3 -pin data_out_OBUF[2]_inst_i_3 I4 -pin data_out_OBUF[3]_inst_i_1 I2 -pin data_out_OBUF[3]_inst_i_2 I4 -pin data_out_OBUF[4]_inst_i_2 I4 -pin data_out_OBUF[5]_inst_i_2 I4 -pin data_out_OBUF[6]_inst_i_1 I4 -pin data_out_OBUF[7]_inst_i_1 I3 -pin shamt_IBUF[0]_inst O
netloc shamt_IBUF[0] 1 1 2 370 1030 790
load net shamt_IBUF[1] -pin data_out_OBUF[0]_inst_i_2 I2 -pin data_out_OBUF[1]_inst_i_2 I2 -pin data_out_OBUF[2]_inst_i_2 I1 -pin data_out_OBUF[2]_inst_i_3 I2 -pin data_out_OBUF[3]_inst_i_1 I0 -pin data_out_OBUF[3]_inst_i_2 I2 -pin data_out_OBUF[4]_inst_i_2 I2 -pin data_out_OBUF[5]_inst_i_2 I2 -pin data_out_OBUF[6]_inst_i_1 I2 -pin data_out_OBUF[7]_inst_i_1 I1 -pin shamt_IBUF[1]_inst O
netloc shamt_IBUF[1] 1 1 2 270 1210 770
load net shamt_IBUF[2] -pin data_out_OBUF[0]_inst_i_1 I1 -pin data_out_OBUF[1]_inst_i_1 I1 -pin data_out_OBUF[2]_inst_i_1 I1 -pin data_out_OBUF[3]_inst_i_1 I4 -pin data_out_OBUF[4]_inst_i_1 I2 -pin data_out_OBUF[5]_inst_i_1 I2 -pin data_out_OBUF[6]_inst_i_1 I0 -pin data_out_OBUF[7]_inst_i_1 I0 -pin shamt_IBUF[2]_inst O
netloc shamt_IBUF[2] 1 2 1 710 330n
load net shmod -port shmod -pin shmod_IBUF_inst I
netloc shmod 1 0 1 NJ 1210
load net shmod_IBUF -pin data_out_OBUF[2]_inst_i_2 I0 -pin data_out_OBUF[3]_inst_i_1 I1 -pin data_out_OBUF[4]_inst_i_1 I1 -pin data_out_OBUF[5]_inst_i_1 I1 -pin data_out_OBUF[5]_inst_i_2 I0 -pin data_out_OBUF[6]_inst_i_1 I1 -pin data_out_OBUF[7]_inst_i_1 I2 -pin shmod_IBUF_inst O
netloc shmod_IBUF 1 1 2 390 1290 730
load netBundle @data_inp 8 data_inp[7] data_inp[6] data_inp[5] data_inp[4] data_inp[3] data_inp[2] data_inp[1] data_inp[0] -autobundled
netbloc @data_inp 1 0 1 20 140n
load netBundle @shamt 3 shamt[2] shamt[1] shamt[0] -autobundled
netbloc @shamt 1 0 2 20 1250 350J
load netBundle @data_out 8 data_out[7] data_out[6] data_out[5] data_out[4] data_out[3] data_out[2] data_out[1] data_out[0] -autobundled
netbloc @data_out 1 4 1 1210 330n
levelinfo -pg 1 0 60 470 870 1030 1230
pagesize -pg 1 -db -bbox -sgen -130 0 1370 1370
show
fullfit
#
# initialize ictrl to current module problem_2_4_a work:problem_2_4_a:NOFILE
ictrl init topinfo |
