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
module new sequence_detector work:sequence_detector:NOFILE -nosplit
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol MUXF8 hdi_primitives MUX pin O output.right pin I0 input.left pin I1 input.left pin S input.bot fillcolor 1
load symbol MUXF7 hdi_primitives MUX pin O output.right pin I0 input.left pin I1 input.left pin S input.bot fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load port clock input -pg 1 -lvl 0 -x 0 -y 690
load port detected output -pg 1 -lvl 25 -x 7500 -y 710
load port din input -pg 1 -lvl 0 -x 0 -y 430
load port reset input -pg 1 -lvl 0 -x 0 -y 760
load inst FSM_johnson_cur_state[0]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 3 -x 630 -y 390
load inst FSM_johnson_cur_state[0]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 2 -x 350 -y 30
load inst FSM_johnson_cur_state[0]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 350 -y 210
load inst FSM_johnson_cur_state[0]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 2 -x 350 -y 390
load inst FSM_johnson_cur_state[1]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 5 -x 1380 -y 290
load inst FSM_johnson_cur_state[1]_i_2 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 4 -x 1070 -y 200
load inst FSM_johnson_cur_state[1]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 4 -x 1070 -y 330
load inst FSM_johnson_cur_state[2]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 8 -x 2320 -y 710
load inst FSM_johnson_cur_state[2]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2020 -y 490
load inst FSM_johnson_cur_state[2]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 7 -x 2020 -y 690
load inst FSM_johnson_cur_state[3]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 11 -x 3320 -y 730
load inst FSM_johnson_cur_state[3]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 10 -x 3020 -y 570
load inst FSM_johnson_cur_state[3]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 10 -x 3020 -y 750
load inst FSM_johnson_cur_state[4]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 17 -x 5240 -y 770
load inst FSM_johnson_cur_state[4]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -x 4920 -y 360
load inst FSM_johnson_cur_state[4]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -x 4920 -y 530
load inst FSM_johnson_cur_state[4]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 16 -x 4920 -y 710
load inst FSM_johnson_cur_state[5]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 19 -x 5980 -y 270
load inst FSM_johnson_cur_state[5]_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 19 -x 5980 -y 440
load inst FSM_johnson_cur_state[5]_i_6 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 19 -x 5980 -y 610
load inst FSM_johnson_cur_state[5]_i_7 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 19 -x 5980 -y 810
load inst FSM_johnson_cur_state[6]_i_1 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 14 -x 4260 -y 590
load inst FSM_johnson_cur_state[6]_i_2 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 13 -x 3960 -y 90
load inst FSM_johnson_cur_state[6]_i_3 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3960 -y 240
load inst FSM_johnson_cur_state[6]_i_4 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3960 -y 410
load inst FSM_johnson_cur_state[6]_i_5 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 13 -x 3960 -y 590
load inst FSM_johnson_cur_state_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 4 -x 1070 -y 720
load inst FSM_johnson_cur_state_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 6 -x 1670 -y 720
load inst FSM_johnson_cur_state_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 9 -x 2630 -y 1000
load inst FSM_johnson_cur_state_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -x 3610 -y 1060
load inst FSM_johnson_cur_state_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 18 -x 5590 -y 1080
load inst FSM_johnson_cur_state_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 22 -x 6890 -y 850
load inst FSM_johnson_cur_state_reg[5]_i_1 MUXF8 hdi_primitives -attr @cell(#000000) MUXF8 -pg 1 -lvl 21 -x 6570 -y 690
load inst FSM_johnson_cur_state_reg[5]_i_2 MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 20 -x 6290 -y 570
load inst FSM_johnson_cur_state_reg[5]_i_3 MUXF7 hdi_primitives -attr @cell(#000000) MUXF7 -pg 1 -lvl 20 -x 6290 -y 700
load inst FSM_johnson_cur_state_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 15 -x 4550 -y 980
load inst clock_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 3 -x 630 -y 690
load inst clock_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 350 -y 690
load inst detected_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 24 -x 7330 -y 710
load inst detected_OBUF_inst_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 23 -x 7170 -y 660
load inst detected_OBUF_inst_i_2 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 22 -x 6890 -y 970
load inst din_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 430
load inst reset_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 3 -x 630 -y 760
load net <const1> -power -pin FSM_johnson_cur_state_reg[0] CE -pin FSM_johnson_cur_state_reg[1] CE -pin FSM_johnson_cur_state_reg[2] CE -pin FSM_johnson_cur_state_reg[3] CE -pin FSM_johnson_cur_state_reg[4] CE -pin FSM_johnson_cur_state_reg[5] CE -pin FSM_johnson_cur_state_reg[6] CE
load net FSM_johnson_cur_state[0]_i_1_n_0 -pin FSM_johnson_cur_state[0]_i_1 O -pin FSM_johnson_cur_state_reg[0] D
netloc FSM_johnson_cur_state[0]_i_1_n_0 1 3 1 830 440n
load net FSM_johnson_cur_state[0]_i_2_n_0 -pin FSM_johnson_cur_state[0]_i_1 I0 -pin FSM_johnson_cur_state[0]_i_2 O
netloc FSM_johnson_cur_state[0]_i_2_n_0 1 2 1 520 80n
load net FSM_johnson_cur_state[0]_i_3_n_0 -pin FSM_johnson_cur_state[0]_i_1 I1 -pin FSM_johnson_cur_state[0]_i_3 O
netloc FSM_johnson_cur_state[0]_i_3_n_0 1 2 1 500 260n
load net FSM_johnson_cur_state[0]_i_4_n_0 -pin FSM_johnson_cur_state[0]_i_1 I3 -pin FSM_johnson_cur_state[0]_i_4 O
netloc FSM_johnson_cur_state[0]_i_4_n_0 1 2 1 500 440n
load net FSM_johnson_cur_state[1]_i_1_n_0 -pin FSM_johnson_cur_state[1]_i_1 O -pin FSM_johnson_cur_state_reg[1] D
netloc FSM_johnson_cur_state[1]_i_1_n_0 1 5 1 1530 340n
load net FSM_johnson_cur_state[1]_i_2_n_0 -pin FSM_johnson_cur_state[1]_i_1 I1 -pin FSM_johnson_cur_state[1]_i_2 O
netloc FSM_johnson_cur_state[1]_i_2_n_0 1 4 1 1230 230n
load net FSM_johnson_cur_state[1]_i_3_n_0 -pin FSM_johnson_cur_state[1]_i_1 I4 -pin FSM_johnson_cur_state[1]_i_3 O
netloc FSM_johnson_cur_state[1]_i_3_n_0 1 4 1 N 380
load net FSM_johnson_cur_state[2]_i_1_n_0 -pin FSM_johnson_cur_state[2]_i_1 O -pin FSM_johnson_cur_state_reg[2] D
netloc FSM_johnson_cur_state[2]_i_1_n_0 1 8 1 2490 760n
load net FSM_johnson_cur_state[2]_i_2_n_0 -pin FSM_johnson_cur_state[2]_i_1 I1 -pin FSM_johnson_cur_state[2]_i_2 O
netloc FSM_johnson_cur_state[2]_i_2_n_0 1 7 1 2210 540n
load net FSM_johnson_cur_state[2]_i_3_n_0 -pin FSM_johnson_cur_state[2]_i_1 I3 -pin FSM_johnson_cur_state[2]_i_3 O
netloc FSM_johnson_cur_state[2]_i_3_n_0 1 7 1 2170 740n
load net FSM_johnson_cur_state[3]_i_1_n_0 -pin FSM_johnson_cur_state[3]_i_1 O -pin FSM_johnson_cur_state_reg[3] D
netloc FSM_johnson_cur_state[3]_i_1_n_0 1 11 1 3490 780n
load net FSM_johnson_cur_state[3]_i_2_n_0 -pin FSM_johnson_cur_state[3]_i_1 I1 -pin FSM_johnson_cur_state[3]_i_2 O
netloc FSM_johnson_cur_state[3]_i_2_n_0 1 10 1 3210 620n
load net FSM_johnson_cur_state[3]_i_3_n_0 -pin FSM_johnson_cur_state[3]_i_1 I3 -pin FSM_johnson_cur_state[3]_i_3 O
netloc FSM_johnson_cur_state[3]_i_3_n_0 1 10 1 N 800
load net FSM_johnson_cur_state[4]_i_1_n_0 -pin FSM_johnson_cur_state[4]_i_1 O -pin FSM_johnson_cur_state_reg[4] D
netloc FSM_johnson_cur_state[4]_i_1_n_0 1 17 1 5470 820n
load net FSM_johnson_cur_state[4]_i_2_n_0 -pin FSM_johnson_cur_state[1]_i_1 I0 -pin FSM_johnson_cur_state[2]_i_1 I0 -pin FSM_johnson_cur_state[3]_i_1 I0 -pin FSM_johnson_cur_state[4]_i_1 I0 -pin FSM_johnson_cur_state[4]_i_2 O
netloc FSM_johnson_cur_state[4]_i_2_n_0 1 4 13 1290 440 NJ 440 NJ 440 2230 540 NJ 540 NJ 540 3230 560 NJ 560 NJ 560 NJ 560 NJ 560 4710J 680 5150
load net FSM_johnson_cur_state[4]_i_3_n_0 -pin FSM_johnson_cur_state[4]_i_1 I1 -pin FSM_johnson_cur_state[4]_i_3 O
netloc FSM_johnson_cur_state[4]_i_3_n_0 1 16 1 5130 580n
load net FSM_johnson_cur_state[4]_i_4_n_0 -pin FSM_johnson_cur_state[4]_i_1 I3 -pin FSM_johnson_cur_state[4]_i_4 O
netloc FSM_johnson_cur_state[4]_i_4_n_0 1 16 1 5070 760n
load net FSM_johnson_cur_state[5]_i_4_n_0 -pin FSM_johnson_cur_state[5]_i_4 O -pin FSM_johnson_cur_state_reg[5]_i_2 I0
netloc FSM_johnson_cur_state[5]_i_4_n_0 1 19 1 6150 320n
load net FSM_johnson_cur_state[5]_i_5_n_0 -pin FSM_johnson_cur_state[5]_i_5 O -pin FSM_johnson_cur_state_reg[5]_i_2 I1
netloc FSM_johnson_cur_state[5]_i_5_n_0 1 19 1 6130 490n
load net FSM_johnson_cur_state[5]_i_6_n_0 -pin FSM_johnson_cur_state[5]_i_6 O -pin FSM_johnson_cur_state_reg[5]_i_3 I0
netloc FSM_johnson_cur_state[5]_i_6_n_0 1 19 1 6130 660n
load net FSM_johnson_cur_state[5]_i_7_n_0 -pin FSM_johnson_cur_state[5]_i_7 O -pin FSM_johnson_cur_state_reg[5]_i_3 I1
netloc FSM_johnson_cur_state[5]_i_7_n_0 1 19 1 6170 710n
load net FSM_johnson_cur_state[6]_i_1_n_0 -pin FSM_johnson_cur_state[6]_i_1 O -pin FSM_johnson_cur_state_reg[6] D
netloc FSM_johnson_cur_state[6]_i_1_n_0 1 14 1 4430 640n
load net FSM_johnson_cur_state[6]_i_2_n_0 -pin FSM_johnson_cur_state[6]_i_1 I0 -pin FSM_johnson_cur_state[6]_i_2 O
netloc FSM_johnson_cur_state[6]_i_2_n_0 1 13 1 4170 140n
load net FSM_johnson_cur_state[6]_i_3_n_0 -pin FSM_johnson_cur_state[6]_i_1 I1 -pin FSM_johnson_cur_state[6]_i_3 O
netloc FSM_johnson_cur_state[6]_i_3_n_0 1 13 1 4150 290n
load net FSM_johnson_cur_state[6]_i_4_n_0 -pin FSM_johnson_cur_state[6]_i_1 I3 -pin FSM_johnson_cur_state[6]_i_4 O
netloc FSM_johnson_cur_state[6]_i_4_n_0 1 13 1 4130 460n
load net FSM_johnson_cur_state[6]_i_5_n_0 -pin FSM_johnson_cur_state[6]_i_1 I5 -pin FSM_johnson_cur_state[6]_i_5 O
netloc FSM_johnson_cur_state[6]_i_5_n_0 1 13 1 4110 640n
load net FSM_johnson_cur_state_reg[5]_i_1_n_0 -pin FSM_johnson_cur_state_reg[5] D -pin FSM_johnson_cur_state_reg[5]_i_1 O
netloc FSM_johnson_cur_state_reg[5]_i_1_n_0 1 21 1 6770 690n
load net FSM_johnson_cur_state_reg[5]_i_2_n_0 -pin FSM_johnson_cur_state_reg[5]_i_1 I0 -pin FSM_johnson_cur_state_reg[5]_i_2 O
netloc FSM_johnson_cur_state_reg[5]_i_2_n_0 1 20 1 6450 570n
load net FSM_johnson_cur_state_reg[5]_i_3_n_0 -pin FSM_johnson_cur_state_reg[5]_i_1 I1 -pin FSM_johnson_cur_state_reg[5]_i_3 O
netloc FSM_johnson_cur_state_reg[5]_i_3_n_0 1 20 1 N 700
load net FSM_johnson_cur_state_reg_n_0_[0] -pin FSM_johnson_cur_state[0]_i_1 I2 -pin FSM_johnson_cur_state[1]_i_1 I3 -pin FSM_johnson_cur_state[2]_i_1 I2 -pin FSM_johnson_cur_state[3]_i_1 I2 -pin FSM_johnson_cur_state[4]_i_1 I2 -pin FSM_johnson_cur_state[6]_i_1 I2 -pin FSM_johnson_cur_state_reg[0] Q -pin FSM_johnson_cur_state_reg[5]_i_1 S -pin detected_OBUF_inst_i_1 I4
netloc FSM_johnson_cur_state_reg_n_0_[0] 1 2 21 520 620 NJ 620 1230 840 NJ 840 NJ 840 2230 840 NJ 840 2790J 980 3230 860 NJ 860 NJ 860 4150 860 NJ 860 NJ 860 5090 960 NJ 960 NJ 960 NJ 960 6450J 750N NJ 750 N
load net FSM_johnson_cur_state_reg_n_0_[1] -pin FSM_johnson_cur_state[0]_i_2 I2 -pin FSM_johnson_cur_state[0]_i_3 I1 -pin FSM_johnson_cur_state[0]_i_4 I3 -pin FSM_johnson_cur_state[1]_i_2 I1 -pin FSM_johnson_cur_state[1]_i_3 I1 -pin FSM_johnson_cur_state[2]_i_2 I1 -pin FSM_johnson_cur_state[2]_i_3 I1 -pin FSM_johnson_cur_state[3]_i_2 I1 -pin FSM_johnson_cur_state[3]_i_3 I1 -pin FSM_johnson_cur_state[4]_i_2 I3 -pin FSM_johnson_cur_state[4]_i_3 I3 -pin FSM_johnson_cur_state[4]_i_4 I1 -pin FSM_johnson_cur_state[5]_i_4 I2 -pin FSM_johnson_cur_state[5]_i_5 I1 -pin FSM_johnson_cur_state[5]_i_6 I3 -pin FSM_johnson_cur_state[5]_i_7 I3 -pin FSM_johnson_cur_state[6]_i_2 I2 -pin FSM_johnson_cur_state[6]_i_3 I4 -pin FSM_johnson_cur_state[6]_i_4 I1 -pin FSM_johnson_cur_state[6]_i_5 I2 -pin FSM_johnson_cur_state_reg[1] Q -pin detected_OBUF_inst_i_2 I2
netloc FSM_johnson_cur_state_reg_n_0_[1] 1 1 21 200 160 NJ 160 970 540 NJ 540 NJ 540 1850 640 NJ 640 NJ 640 2890 720 3190J 900 NJ 900 3770 760 NJ 760 NJ 760 4750 1140 NJ 1140 5430J 1160 5830 1020 NJ 1020 NJ 1020 N
load net FSM_johnson_cur_state_reg_n_0_[2] -pin FSM_johnson_cur_state[0]_i_2 I3 -pin FSM_johnson_cur_state[0]_i_3 I0 -pin FSM_johnson_cur_state[0]_i_4 I1 -pin FSM_johnson_cur_state[1]_i_2 I0 -pin FSM_johnson_cur_state[1]_i_3 I3 -pin FSM_johnson_cur_state[2]_i_2 I0 -pin FSM_johnson_cur_state[2]_i_3 I3 -pin FSM_johnson_cur_state[3]_i_2 I0 -pin FSM_johnson_cur_state[3]_i_3 I3 -pin FSM_johnson_cur_state[4]_i_2 I4 -pin FSM_johnson_cur_state[4]_i_3 I4 -pin FSM_johnson_cur_state[4]_i_4 I2 -pin FSM_johnson_cur_state[5]_i_4 I1 -pin FSM_johnson_cur_state[5]_i_5 I2 -pin FSM_johnson_cur_state[5]_i_6 I2 -pin FSM_johnson_cur_state[5]_i_7 I4 -pin FSM_johnson_cur_state[6]_i_2 I3 -pin FSM_johnson_cur_state[6]_i_3 I3 -pin FSM_johnson_cur_state[6]_i_4 I2 -pin FSM_johnson_cur_state[6]_i_5 I4 -pin FSM_johnson_cur_state_reg[2] Q -pin detected_OBUF_inst_i_2 I3
netloc FSM_johnson_cur_state_reg_n_0_[2] 1 1 21 260 180 NJ 180 890 520 NJ 520 NJ 520 1830 900 NJ 900 NJ 900 2810 920 NJ 920 NJ 920 3790 780 NJ 780 NJ 780 4770 330 NJ 330 NJ 330 5810 1040 NJ 1040 NJ 1040 N
load net FSM_johnson_cur_state_reg_n_0_[3] -pin FSM_johnson_cur_state[0]_i_2 I0 -pin FSM_johnson_cur_state[0]_i_3 I3 -pin FSM_johnson_cur_state[0]_i_4 I4 -pin FSM_johnson_cur_state[1]_i_2 I3 -pin FSM_johnson_cur_state[1]_i_3 I0 -pin FSM_johnson_cur_state[2]_i_2 I3 -pin FSM_johnson_cur_state[2]_i_3 I0 -pin FSM_johnson_cur_state[3]_i_2 I3 -pin FSM_johnson_cur_state[3]_i_3 I0 -pin FSM_johnson_cur_state[4]_i_2 I2 -pin FSM_johnson_cur_state[4]_i_3 I1 -pin FSM_johnson_cur_state[4]_i_4 I0 -pin FSM_johnson_cur_state[5]_i_4 I4 -pin FSM_johnson_cur_state[5]_i_5 I0 -pin FSM_johnson_cur_state[5]_i_6 I1 -pin FSM_johnson_cur_state[5]_i_7 I1 -pin FSM_johnson_cur_state[6]_i_2 I0 -pin FSM_johnson_cur_state[6]_i_3 I2 -pin FSM_johnson_cur_state[6]_i_4 I0 -pin FSM_johnson_cur_state[6]_i_5 I1 -pin FSM_johnson_cur_state_reg[3] Q -pin detected_OBUF_inst_i_2 I0
netloc FSM_johnson_cur_state_reg_n_0_[3] 1 1 21 180 360 NJ 360 950 580 NJ 580 NJ 580 1890 1080 NJ 1080 NJ 1080 2910 1160 NJ 1160 NJ 1160 3810 740 NJ 740 NJ 740 4730 900 NJ 900 NJ 900 5790 980 NJ 980 NJ 980 N
load net FSM_johnson_cur_state_reg_n_0_[4] -pin FSM_johnson_cur_state[0]_i_2 I4 -pin FSM_johnson_cur_state[0]_i_3 I4 -pin FSM_johnson_cur_state[0]_i_4 I0 -pin FSM_johnson_cur_state[1]_i_3 I4 -pin FSM_johnson_cur_state[2]_i_2 I4 -pin FSM_johnson_cur_state[2]_i_3 I4 -pin FSM_johnson_cur_state[3]_i_2 I4 -pin FSM_johnson_cur_state[3]_i_3 I4 -pin FSM_johnson_cur_state[4]_i_2 I5 -pin FSM_johnson_cur_state[4]_i_3 I0 -pin FSM_johnson_cur_state[4]_i_4 I3 -pin FSM_johnson_cur_state[5]_i_4 I0 -pin FSM_johnson_cur_state[5]_i_5 I3 -pin FSM_johnson_cur_state[5]_i_6 I0 -pin FSM_johnson_cur_state[5]_i_7 I5 -pin FSM_johnson_cur_state[6]_i_2 I4 -pin FSM_johnson_cur_state[6]_i_3 I0 -pin FSM_johnson_cur_state[6]_i_4 I3 -pin FSM_johnson_cur_state[6]_i_5 I5 -pin FSM_johnson_cur_state_reg[4] Q -pin detected_OBUF_inst_i_1 I1
netloc FSM_johnson_cur_state_reg_n_0_[4] 1 1 22 220 560 NJ 560 910 600 NJ 600 NJ 600 1910 660 NJ 660 NJ 660 2850 940 NJ 940 NJ 940 3850 800 NJ 800 NJ 800 4790 920 NJ 920 NJ 920 5750 240 NJ 240 NJ 240 NJ 240 7090
load net FSM_johnson_cur_state_reg_n_0_[5] -pin FSM_johnson_cur_state[0]_i_1 I4 -pin FSM_johnson_cur_state[1]_i_1 I5 -pin FSM_johnson_cur_state[2]_i_1 I4 -pin FSM_johnson_cur_state[3]_i_1 I4 -pin FSM_johnson_cur_state[4]_i_1 I4 -pin FSM_johnson_cur_state[6]_i_1 I4 -pin FSM_johnson_cur_state_reg[5] Q -pin FSM_johnson_cur_state_reg[5]_i_2 S -pin FSM_johnson_cur_state_reg[5]_i_3 S -pin detected_OBUF_inst_i_1 I0
netloc FSM_johnson_cur_state_reg_n_0_[5] 1 2 21 540 600 870J 480 1270 460 NJ 460 NJ 460 2190 680 NJ 680 2830J 900 3170 880 NJ 880 NJ 880 4170 880 NJ 880 NJ 880 5110 740 NJ 740 5870J 760 6150 630N NJ 630 NJ 630 7050
load net FSM_johnson_cur_state_reg_n_0_[6] -pin FSM_johnson_cur_state[0]_i_3 I5 -pin FSM_johnson_cur_state[0]_i_4 I5 -pin FSM_johnson_cur_state[1]_i_1 I2 -pin FSM_johnson_cur_state[1]_i_3 I5 -pin FSM_johnson_cur_state[2]_i_2 I5 -pin FSM_johnson_cur_state[2]_i_3 I5 -pin FSM_johnson_cur_state[3]_i_2 I5 -pin FSM_johnson_cur_state[3]_i_3 I5 -pin FSM_johnson_cur_state[4]_i_2 I1 -pin FSM_johnson_cur_state[4]_i_3 I5 -pin FSM_johnson_cur_state[4]_i_4 I5 -pin FSM_johnson_cur_state[5]_i_4 I5 -pin FSM_johnson_cur_state[5]_i_5 I5 -pin FSM_johnson_cur_state[5]_i_6 I5 -pin FSM_johnson_cur_state[5]_i_7 I0 -pin FSM_johnson_cur_state[6]_i_3 I5 -pin FSM_johnson_cur_state[6]_i_4 I5 -pin FSM_johnson_cur_state[6]_i_5 I0 -pin FSM_johnson_cur_state_reg[6] Q -pin detected_OBUF_inst_i_1 I3
netloc FSM_johnson_cur_state_reg_n_0_[6] 1 1 22 240 580 NJ 580 850 500 1250 620 NJ 620 1930 860 NJ 860 NJ 860 2930 960 NJ 960 NJ 960 3870 840 NJ 840 NJ 840 4830 940 NJ 940 NJ 940 5850 780 NJ 780 NJ 780 6730J 930 7090
load net clock -port clock -pin clock_IBUF_inst I
netloc clock 1 0 2 NJ 690 NJ
load net clock_IBUF -pin clock_IBUF_BUFG_inst I -pin clock_IBUF_inst O
netloc clock_IBUF 1 2 1 NJ 690
load net clock_IBUF_BUFG -pin FSM_johnson_cur_state_reg[0] C -pin FSM_johnson_cur_state_reg[1] C -pin FSM_johnson_cur_state_reg[2] C -pin FSM_johnson_cur_state_reg[3] C -pin FSM_johnson_cur_state_reg[4] C -pin FSM_johnson_cur_state_reg[5] C -pin FSM_johnson_cur_state_reg[6] C -pin clock_IBUF_BUFG_inst O
netloc clock_IBUF_BUFG 1 3 19 870 800 NJ 800 1550 970 NJ 970 NJ 970 2510 1100 NJ 1100 NJ 1100 3470 1180 NJ 1180 NJ 1180 4410 1180 NJ 1180 NJ 1180 5390 980 5770J 1060 NJ 1060 NJ 1060 6750
load net detected -port detected -pin detected_OBUF_inst O
netloc detected 1 24 1 NJ 710
load net detected_OBUF -pin detected_OBUF_inst I -pin detected_OBUF_inst_i_1 O
netloc detected_OBUF 1 23 1 NJ 710
load net detected_OBUF_inst_i_2_n_0 -pin detected_OBUF_inst_i_1 I2 -pin detected_OBUF_inst_i_2 O
netloc detected_OBUF_inst_i_2_n_0 1 22 1 7070 710n
load net din -port din -pin din_IBUF_inst I
netloc din 1 0 1 NJ 430
load net din_IBUF -pin FSM_johnson_cur_state[0]_i_2 I1 -pin FSM_johnson_cur_state[0]_i_3 I2 -pin FSM_johnson_cur_state[0]_i_4 I2 -pin FSM_johnson_cur_state[1]_i_2 I2 -pin FSM_johnson_cur_state[1]_i_3 I2 -pin FSM_johnson_cur_state[2]_i_2 I2 -pin FSM_johnson_cur_state[2]_i_3 I2 -pin FSM_johnson_cur_state[3]_i_2 I2 -pin FSM_johnson_cur_state[3]_i_3 I2 -pin FSM_johnson_cur_state[4]_i_2 I0 -pin FSM_johnson_cur_state[4]_i_3 I2 -pin FSM_johnson_cur_state[4]_i_4 I4 -pin FSM_johnson_cur_state[5]_i_4 I3 -pin FSM_johnson_cur_state[5]_i_5 I4 -pin FSM_johnson_cur_state[5]_i_6 I4 -pin FSM_johnson_cur_state[5]_i_7 I2 -pin FSM_johnson_cur_state[6]_i_2 I1 -pin FSM_johnson_cur_state[6]_i_3 I1 -pin FSM_johnson_cur_state[6]_i_4 I4 -pin FSM_johnson_cur_state[6]_i_5 I3 -pin detected_OBUF_inst_i_2 I1 -pin din_IBUF_inst O
netloc din_IBUF 1 1 21 160 540 NJ 540 930 560 NJ 560 NJ 560 1870 880 NJ 880 NJ 880 2870 1140 NJ 1140 NJ 1140 3830 820 NJ 820 NJ 820 4810 1160 NJ 1160 5410J 1180 5890 1000 NJ 1000 NJ 1000 N
load net reset -port reset -pin reset_IBUF_inst I
netloc reset 1 0 3 NJ 760 NJ 760 NJ
load net reset_IBUF -pin FSM_johnson_cur_state_reg[0] CLR -pin FSM_johnson_cur_state_reg[1] CLR -pin FSM_johnson_cur_state_reg[2] CLR -pin FSM_johnson_cur_state_reg[3] CLR -pin FSM_johnson_cur_state_reg[4] CLR -pin FSM_johnson_cur_state_reg[5] CLR -pin FSM_johnson_cur_state_reg[6] CLR -pin reset_IBUF_inst O
netloc reset_IBUF 1 3 19 810 820 NJ 820 1570 1010 NJ 1010 NJ 1010 2470 1120 NJ 1120 NJ 1120 3510 1200 NJ 1200 NJ 1200 4450 1200 NJ 1200 NJ 1200 5450 1200 NJ 1200 NJ 1200 NJ 1200 6790
levelinfo -pg 1 0 40 350 630 1070 1380 1670 2020 2320 2630 3020 3320 3610 3960 4260 4550 4920 5240 5590 5980 6290 6570 6890 7170 7330 7500
pagesize -pg 1 -db -bbox -sgen -90 0 7610 1210
show
fullfit
#
# initialize ictrl to current module sequence_detector work:sequence_detector:NOFILE
ictrl init topinfo |
