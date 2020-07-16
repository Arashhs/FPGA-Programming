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
load symbol LUT2 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left fillcolor 1
load symbol LUT3 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol FDPE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin PRE input.left fillcolor 1
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load port clock input -pg 1 -lvl 0 -x 0 -y 480
load port detected output -pg 1 -lvl 27 -x 7380 -y 700
load port din input -pg 1 -lvl 0 -x 0 -y 590
load port reset input -pg 1 -lvl 0 -x 0 -y 640
load inst FSM_onehot_cur_state[0]_i_1 LUT5 hdi_primitives -attr @cell(#000000) LUT5 -pg 1 -lvl 5 -x 1270 -y 470
load inst FSM_onehot_cur_state[10]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 19 -x 5310 -y 430
load inst FSM_onehot_cur_state[11]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 870 -y 690
load inst FSM_onehot_cur_state[12]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 23 -x 6530 -y 510
load inst FSM_onehot_cur_state[13]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 870 -y 780
load inst FSM_onehot_cur_state[1]_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 7 -x 1980 -y 300
load inst FSM_onehot_cur_state[1]_i_2 LUT6 hdi_primitives -attr @cell(#000000) LUT6 -pg 1 -lvl 6 -x 1680 -y 30
load inst FSM_onehot_cur_state[2]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 9 -x 2560 -y 270
load inst FSM_onehot_cur_state[3]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 2 -x 270 -y 540
load inst FSM_onehot_cur_state[4]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 4 -x 870 -y 490
load inst FSM_onehot_cur_state[5]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 21 -x 5960 -y 570
load inst FSM_onehot_cur_state[6]_i_1 LUT4 hdi_primitives -attr @cell(#000000) LUT4 -pg 1 -lvl 11 -x 3180 -y 310
load inst FSM_onehot_cur_state[7]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 13 -x 3720 -y 390
load inst FSM_onehot_cur_state[8]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 15 -x 4240 -y 300
load inst FSM_onehot_cur_state[9]_i_1 LUT2 hdi_primitives -attr @cell(#000000) LUT2 -pg 1 -lvl 17 -x 4760 -y 410
load inst FSM_onehot_cur_state_reg[0] FDPE hdi_primitives -attr @cell(#000000) FDPE -pg 1 -lvl 6 -x 1680 -y 300
load inst FSM_onehot_cur_state_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 20 -x 5630 -y 400
load inst FSM_onehot_cur_state_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 1270 -y 740
load inst FSM_onehot_cur_state_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 24 -x 6810 -y 490
load inst FSM_onehot_cur_state_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 1270 -y 890
load inst FSM_onehot_cur_state_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 8 -x 2260 -y 300
load inst FSM_onehot_cur_state_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 10 -x 2860 -y 320
load inst FSM_onehot_cur_state_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 3 -x 560 -y 520
load inst FSM_onehot_cur_state_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 5 -x 1270 -y 280
load inst FSM_onehot_cur_state_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 22 -x 6260 -y 600
load inst FSM_onehot_cur_state_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 12 -x 3440 -y 310
load inst FSM_onehot_cur_state_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 14 -x 3980 -y 310
load inst FSM_onehot_cur_state_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 16 -x 4500 -y 280
load inst FSM_onehot_cur_state_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pg 1 -lvl 18 -x 5040 -y 300
load inst clock_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pg 1 -lvl 2 -x 270 -y 480
load inst clock_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 480
load inst detected_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pg 1 -lvl 26 -x 7210 -y 700
load inst detected_OBUF_inst_i_1 LUT3 hdi_primitives -attr @cell(#000000) LUT3 -pg 1 -lvl 25 -x 7050 -y 670
load inst din_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 1 -x 40 -y 590
load inst reset_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pg 1 -lvl 2 -x 270 -y 640
load net <const1> -power -pin FSM_onehot_cur_state_reg[0] CE -pin FSM_onehot_cur_state_reg[10] CE -pin FSM_onehot_cur_state_reg[11] CE -pin FSM_onehot_cur_state_reg[12] CE -pin FSM_onehot_cur_state_reg[13] CE -pin FSM_onehot_cur_state_reg[1] CE -pin FSM_onehot_cur_state_reg[2] CE -pin FSM_onehot_cur_state_reg[3] CE -pin FSM_onehot_cur_state_reg[4] CE -pin FSM_onehot_cur_state_reg[5] CE -pin FSM_onehot_cur_state_reg[6] CE -pin FSM_onehot_cur_state_reg[7] CE -pin FSM_onehot_cur_state_reg[8] CE -pin FSM_onehot_cur_state_reg[9] CE
load net FSM_onehot_cur_state[0]_i_1_n_0 -pin FSM_onehot_cur_state[0]_i_1 O -pin FSM_onehot_cur_state_reg[0] D
netloc FSM_onehot_cur_state[0]_i_1_n_0 1 5 1 1550 310n
load net FSM_onehot_cur_state[10]_i_1_n_0 -pin FSM_onehot_cur_state[10]_i_1 O -pin FSM_onehot_cur_state_reg[10] D
netloc FSM_onehot_cur_state[10]_i_1_n_0 1 19 1 5490 430n
load net FSM_onehot_cur_state[11]_i_1_n_0 -pin FSM_onehot_cur_state[11]_i_1 O -pin FSM_onehot_cur_state_reg[11] D
netloc FSM_onehot_cur_state[11]_i_1_n_0 1 4 1 1030 700n
load net FSM_onehot_cur_state[12]_i_1_n_0 -pin FSM_onehot_cur_state[12]_i_1 O -pin FSM_onehot_cur_state_reg[12] D
netloc FSM_onehot_cur_state[12]_i_1_n_0 1 23 1 N 520
load net FSM_onehot_cur_state[13]_i_1_n_0 -pin FSM_onehot_cur_state[13]_i_1 O -pin FSM_onehot_cur_state_reg[13] D
netloc FSM_onehot_cur_state[13]_i_1_n_0 1 4 1 1030 790n
load net FSM_onehot_cur_state[1]_i_1_n_0 -pin FSM_onehot_cur_state[1]_i_1 O -pin FSM_onehot_cur_state_reg[1] D
netloc FSM_onehot_cur_state[1]_i_1_n_0 1 7 1 N 330
load net FSM_onehot_cur_state[1]_i_2_n_0 -pin FSM_onehot_cur_state[1]_i_1 I2 -pin FSM_onehot_cur_state[1]_i_2 O
netloc FSM_onehot_cur_state[1]_i_2_n_0 1 6 1 1850 80n
load net FSM_onehot_cur_state[2]_i_1_n_0 -pin FSM_onehot_cur_state[2]_i_1 O -pin FSM_onehot_cur_state_reg[2] D
netloc FSM_onehot_cur_state[2]_i_1_n_0 1 9 1 2710 300n
load net FSM_onehot_cur_state[3]_i_1_n_0 -pin FSM_onehot_cur_state[3]_i_1 O -pin FSM_onehot_cur_state_reg[3] D
netloc FSM_onehot_cur_state[3]_i_1_n_0 1 2 1 N 550
load net FSM_onehot_cur_state[4]_i_1_n_0 -pin FSM_onehot_cur_state[4]_i_1 O -pin FSM_onehot_cur_state_reg[4] D
netloc FSM_onehot_cur_state[4]_i_1_n_0 1 4 1 1030 310n
load net FSM_onehot_cur_state[5]_i_1_n_0 -pin FSM_onehot_cur_state[5]_i_1 O -pin FSM_onehot_cur_state_reg[5] D
netloc FSM_onehot_cur_state[5]_i_1_n_0 1 21 1 6110 600n
load net FSM_onehot_cur_state[6]_i_1_n_0 -pin FSM_onehot_cur_state[6]_i_1 O -pin FSM_onehot_cur_state_reg[6] D
netloc FSM_onehot_cur_state[6]_i_1_n_0 1 11 1 N 340
load net FSM_onehot_cur_state[7]_i_1_n_0 -pin FSM_onehot_cur_state[7]_i_1 O -pin FSM_onehot_cur_state_reg[7] D
netloc FSM_onehot_cur_state[7]_i_1_n_0 1 13 1 3870 340n
load net FSM_onehot_cur_state[8]_i_1_n_0 -pin FSM_onehot_cur_state[8]_i_1 O -pin FSM_onehot_cur_state_reg[8] D
netloc FSM_onehot_cur_state[8]_i_1_n_0 1 15 1 N 310
load net FSM_onehot_cur_state[9]_i_1_n_0 -pin FSM_onehot_cur_state[9]_i_1 O -pin FSM_onehot_cur_state_reg[9] D
netloc FSM_onehot_cur_state[9]_i_1_n_0 1 17 1 4950 330n
load net FSM_onehot_cur_state_reg_n_0_[0] -pin FSM_onehot_cur_state[0]_i_1 I2 -pin FSM_onehot_cur_state[1]_i_1 I1 -pin FSM_onehot_cur_state_reg[0] Q
netloc FSM_onehot_cur_state_reg_n_0_[0] 1 4 3 1130 400 NJ 400 1830
load net FSM_onehot_cur_state_reg_n_0_[10] -pin FSM_onehot_cur_state[11]_i_1 I0 -pin FSM_onehot_cur_state[5]_i_1 I2 -pin FSM_onehot_cur_state_reg[10] Q -pin detected_OBUF_inst_i_1 I2
netloc FSM_onehot_cur_state_reg_n_0_[10] 1 3 22 750 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 NJ 640 5830 720 NJ 720 NJ 720 NJ 720 N
load net FSM_onehot_cur_state_reg_n_0_[11] -pin FSM_onehot_cur_state[1]_i_2 I4 -pin FSM_onehot_cur_state[2]_i_1 I0 -pin FSM_onehot_cur_state_reg[11] Q
netloc FSM_onehot_cur_state_reg_n_0_[11] 1 5 4 1490 660 NJ 660 NJ 660 2430
load net FSM_onehot_cur_state_reg_n_0_[12] -pin FSM_onehot_cur_state[0]_i_1 I0 -pin FSM_onehot_cur_state[13]_i_1 I0 -pin FSM_onehot_cur_state_reg[12] Q -pin detected_OBUF_inst_i_1 I1
netloc FSM_onehot_cur_state_reg_n_0_[12] 1 3 22 770 660 1110 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 NJ 620 5790J 700 NJ 700 NJ 700 NJ 700 6970
load net FSM_onehot_cur_state_reg_n_0_[13] -pin FSM_onehot_cur_state[1]_i_2 I5 -pin FSM_onehot_cur_state[5]_i_1 I0 -pin FSM_onehot_cur_state_reg[13] Q
netloc FSM_onehot_cur_state_reg_n_0_[13] 1 5 16 1530 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 NJ 680 5850
load net FSM_onehot_cur_state_reg_n_0_[1] -pin FSM_onehot_cur_state[1]_i_2 I0 -pin FSM_onehot_cur_state[2]_i_1 I3 -pin FSM_onehot_cur_state_reg[1] Q
netloc FSM_onehot_cur_state_reg_n_0_[1] 1 5 4 1570 200 NJ 200 NJ 200 2410
load net FSM_onehot_cur_state_reg_n_0_[2] -pin FSM_onehot_cur_state[3]_i_1 I0 -pin FSM_onehot_cur_state[6]_i_1 I1 -pin FSM_onehot_cur_state_reg[2] Q
netloc FSM_onehot_cur_state_reg_n_0_[2] 1 1 10 180 420 NJ 420 NJ 420 NJ 420 1430J 480 NJ 480 NJ 480 NJ 480 NJ 480 3030
load net FSM_onehot_cur_state_reg_n_0_[3] -pin FSM_onehot_cur_state[0]_i_1 I4 -pin FSM_onehot_cur_state[4]_i_1 I0 -pin FSM_onehot_cur_state_reg[3] Q
netloc FSM_onehot_cur_state_reg_n_0_[3] 1 3 2 710 560 N
load net FSM_onehot_cur_state_reg_n_0_[4] -pin FSM_onehot_cur_state[1]_i_2 I1 -pin FSM_onehot_cur_state[5]_i_1 I3 -pin FSM_onehot_cur_state_reg[4] Q
netloc FSM_onehot_cur_state_reg_n_0_[4] 1 5 16 1510 460 NJ 460 NJ 460 NJ 460 NJ 460 3010J 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 NJ 500 5870
load net FSM_onehot_cur_state_reg_n_0_[5] -pin FSM_onehot_cur_state[12]_i_1 I0 -pin FSM_onehot_cur_state[6]_i_1 I0 -pin FSM_onehot_cur_state_reg[5] Q
netloc FSM_onehot_cur_state_reg_n_0_[5] 1 10 13 3070 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 NJ 520 6110J 500 6410
load net FSM_onehot_cur_state_reg_n_0_[6] -pin FSM_onehot_cur_state[2]_i_1 I2 -pin FSM_onehot_cur_state[7]_i_1 I0 -pin FSM_onehot_cur_state_reg[6] Q
netloc FSM_onehot_cur_state_reg_n_0_[6] 1 8 5 2470 440 NJ 440 NJ 440 NJ 440 3610
load net FSM_onehot_cur_state_reg_n_0_[7] -pin FSM_onehot_cur_state[1]_i_2 I3 -pin FSM_onehot_cur_state[8]_i_1 I0 -pin FSM_onehot_cur_state_reg[7] Q
netloc FSM_onehot_cur_state_reg_n_0_[7] 1 5 10 1590 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 NJ 180 4130
load net FSM_onehot_cur_state_reg_n_0_[8] -pin FSM_onehot_cur_state[6]_i_1 I3 -pin FSM_onehot_cur_state[9]_i_1 I0 -pin FSM_onehot_cur_state_reg[8] Q
netloc FSM_onehot_cur_state_reg_n_0_[8] 1 10 7 3090 480 NJ 480 NJ 480 NJ 480 4150J 460 NJ 460 4650
load net FSM_onehot_cur_state_reg_n_0_[9] -pin FSM_onehot_cur_state[0]_i_1 I1 -pin FSM_onehot_cur_state[10]_i_1 I0 -pin FSM_onehot_cur_state_reg[9] Q
netloc FSM_onehot_cur_state_reg_n_0_[9] 1 4 15 1150 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 NJ 600 5190
load net clock -port clock -pin clock_IBUF_inst I
netloc clock 1 0 1 NJ 480
load net clock_IBUF -pin clock_IBUF_BUFG_inst I -pin clock_IBUF_inst O
netloc clock_IBUF 1 1 1 NJ 480
load net clock_IBUF_BUFG -pin FSM_onehot_cur_state_reg[0] C -pin FSM_onehot_cur_state_reg[10] C -pin FSM_onehot_cur_state_reg[11] C -pin FSM_onehot_cur_state_reg[12] C -pin FSM_onehot_cur_state_reg[13] C -pin FSM_onehot_cur_state_reg[1] C -pin FSM_onehot_cur_state_reg[2] C -pin FSM_onehot_cur_state_reg[3] C -pin FSM_onehot_cur_state_reg[4] C -pin FSM_onehot_cur_state_reg[5] C -pin FSM_onehot_cur_state_reg[6] C -pin FSM_onehot_cur_state_reg[7] C -pin FSM_onehot_cur_state_reg[8] C -pin FSM_onehot_cur_state_reg[9] C -pin clock_IBUF_BUFG_inst O
netloc clock_IBUF_BUFG 1 2 22 450 400 NJ 400 1090 360 1570 440 1870J 420 2150 400 NJ 400 2730 220 NJ 220 3330 210 NJ 210 3870 210 NJ 210 4390 360 NJ 360 4930 380 NJ 380 5510 480 NJ 480 6130 460 NJ 460 NJ
load net detected -port detected -pin detected_OBUF_inst O
netloc detected 1 26 1 NJ 700
load net detected_OBUF -pin detected_OBUF_inst I -pin detected_OBUF_inst_i_1 O
netloc detected_OBUF 1 25 1 NJ 700
load net din -port din -pin din_IBUF_inst I
netloc din 1 0 1 NJ 590
load net din_IBUF -pin FSM_onehot_cur_state[0]_i_1 I3 -pin FSM_onehot_cur_state[10]_i_1 I1 -pin FSM_onehot_cur_state[11]_i_1 I1 -pin FSM_onehot_cur_state[12]_i_1 I1 -pin FSM_onehot_cur_state[13]_i_1 I1 -pin FSM_onehot_cur_state[1]_i_1 I0 -pin FSM_onehot_cur_state[1]_i_2 I2 -pin FSM_onehot_cur_state[2]_i_1 I1 -pin FSM_onehot_cur_state[3]_i_1 I1 -pin FSM_onehot_cur_state[4]_i_1 I1 -pin FSM_onehot_cur_state[5]_i_1 I1 -pin FSM_onehot_cur_state[6]_i_1 I2 -pin FSM_onehot_cur_state[7]_i_1 I1 -pin FSM_onehot_cur_state[8]_i_1 I1 -pin FSM_onehot_cur_state[9]_i_1 I1 -pin detected_OBUF_inst_i_1 I0 -pin din_IBUF_inst O
netloc din_IBUF 1 1 24 180 680 NJ 680 730 580 1070 440 1470 380 1890 440 NJ 440 2450 420 2750J 400 3050 460 NJ 460 3630 460 NJ 460 4130 480 NJ 480 4670 480 NJ 480 5210 570 NJ 570 5810 680 NJ 680 6430 680 NJ 680 NJ
load net reset -port reset -pin reset_IBUF_inst I
netloc reset 1 0 2 NJ 640 NJ
load net reset_IBUF -pin FSM_onehot_cur_state_reg[0] PRE -pin FSM_onehot_cur_state_reg[10] CLR -pin FSM_onehot_cur_state_reg[11] CLR -pin FSM_onehot_cur_state_reg[12] CLR -pin FSM_onehot_cur_state_reg[13] CLR -pin FSM_onehot_cur_state_reg[1] CLR -pin FSM_onehot_cur_state_reg[2] CLR -pin FSM_onehot_cur_state_reg[3] CLR -pin FSM_onehot_cur_state_reg[4] CLR -pin FSM_onehot_cur_state_reg[5] CLR -pin FSM_onehot_cur_state_reg[6] CLR -pin FSM_onehot_cur_state_reg[7] CLR -pin FSM_onehot_cur_state_reg[8] CLR -pin FSM_onehot_cur_state_reg[9] CLR -pin reset_IBUF_inst O
netloc reset_IBUF 1 2 22 450 850 NJ 850 1050 380 1450 420 1850J 400 2130 380 NJ 380 2770 420 NJ 420 3330 390 3590J 360 3890 390 NJ 390 4410 380 NJ 380 4910 400 NJ 400 5470 540 NJ 540 6150 480 NJ 480 6690J
levelinfo -pg 1 0 40 270 560 870 1270 1680 1980 2260 2560 2860 3180 3440 3720 3980 4240 4500 4760 5040 5310 5630 5960 6260 6530 6810 7050 7210 7380
pagesize -pg 1 -db -bbox -sgen -90 0 7490 970
show
fullfit
#
# initialize ictrl to current module sequence_detector work:sequence_detector:NOFILE
ictrl init topinfo |
