# File saved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
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
property maxfontsize 12
property maxzoom 5
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
property rubberbandfontsize 12
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
module new carry_select_adder_32_bit work:carry_select_adder_32_bit:NOFILE -nosplit
load symbol carry_select_adder_23_bit work:carry_select_adder_23_bit:NOFILE HIERBOX pin carry_out output.right pin cin input.left pinBus a input.left [22:0] pinBus b input.left [22:0] pinBus sum_out output.right [22:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol carry_select_adder work:carry_select_adder:NOFILE HIERBOX pin carry_out output.right pin cin input.left pinBus a input.left [7:0] pinBus b input.left [7:0] pinBus sum_out output.right [7:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol carry_select_adder_1bit work:abstract:NOFILE HIERBOX pin a input.left pin b input.left pin c_input input.left pin c_out output.right pin sum output.right boxcolor 1 fillcolor 2 minwidth 13%
load port cin input -pg 1 -y 110
load port c_out output -pg 1 -y 190
load portBus a input [31:0] -attr @name a[31:0] -pg 1 -y 130
load portBus b input [31:0] -attr @name b[31:0] -pg 1 -y 150
load portBus sum output [31:0] -attr @name sum[31:0] -pg 1 -y 210
load inst add2 carry_select_adder_1bit work:abstract:NOFILE -autohide -attr @cell(#000000) carry_select_adder_1bit -pg 1 -lvl 2 -y 180
load inst add0 carry_select_adder_23_bit work:carry_select_adder_23_bit:NOFILE -autohide -attr @cell(#000000) carry_select_adder_23_bit -pinBusAttr a @name a[22:0] -pinBusAttr b @name b[22:0] -pinBusAttr sum_out @name sum_out[22:0] -pg 1 -lvl 2 -y 60
load inst add1 carry_select_adder work:carry_select_adder:NOFILE -autohide -attr @cell(#000000) carry_select_adder -pinBusAttr a @name a[7:0] -pinBusAttr b @name b[7:0] -pinBusAttr sum_out @name sum_out[7:0] -pg 1 -lvl 1 -y 160
load net a[26] -attr @rip a[26] -port a[26] -pin add1 a[3]
load net b[13] -attr @rip b[13] -pin add0 b[13] -port b[13]
load net carry_propagate_0 -pin add0 carry_out -pin add1 cin
netloc carry_propagate_0 1 0 3 60 10 NJ 10 580
load net b[26] -attr @rip b[26] -pin add1 b[3] -port b[26]
load net a[5] -attr @rip a[5] -port a[5] -pin add0 a[5]
load net b[21] -attr @rip b[21] -pin add0 b[21] -port b[21]
load net b[11] -attr @rip b[11] -pin add0 b[11] -port b[11]
load net a[21] -attr @rip a[21] -port a[21] -pin add0 a[21]
load net carry_propagate_1 -pin add1 carry_out -pin add2 c_input
netloc carry_propagate_1 1 1 1 300
load net b[9] -attr @rip b[9] -pin add0 b[9] -port b[9]
load net b[4] -attr @rip b[4] -pin add0 b[4] -port b[4]
load net a[23] -attr @rip a[23] -port a[23] -pin add1 a[0]
load net a[31] -attr @rip a[31] -port a[31] -pin add2 a
load net sum[20] -attr @rip sum_out[20] -pin add0 sum_out[20] -port sum[20]
load net sum[7] -attr @rip sum_out[7] -pin add0 sum_out[7] -port sum[7]
load net sum[2] -attr @rip sum_out[2] -pin add0 sum_out[2] -port sum[2]
load net b[14] -attr @rip b[14] -pin add0 b[14] -port b[14]
load net sum[12] -attr @rip sum_out[12] -pin add0 sum_out[12] -port sum[12]
load net sum[27] -attr @rip sum_out[4] -pin add1 sum_out[4] -port sum[27]
load net a[3] -attr @rip a[3] -port a[3] -pin add0 a[3]
load net sum[17] -attr @rip sum_out[17] -pin add0 sum_out[17] -port sum[17]
load net b[24] -attr @rip b[24] -pin add1 b[1] -port b[24]
load net a[24] -attr @rip a[24] -port a[24] -pin add1 a[1]
load net a[0] -attr @rip a[0] -port a[0] -pin add0 a[0]
load net b[29] -attr @rip b[29] -pin add1 b[6] -port b[29]
load net a[8] -attr @rip a[8] -port a[8] -pin add0 a[8]
load net a[15] -attr @rip a[15] -port a[15] -pin add0 a[15]
load net b[7] -attr @rip b[7] -pin add0 b[7] -port b[7]
load net b[31] -attr @rip b[31] -pin add2 b -port b[31]
load net sum[28] -attr @rip sum_out[5] -pin add1 sum_out[5] -port sum[28]
load net sum[5] -attr @rip sum_out[5] -pin add0 sum_out[5] -port sum[5]
load net a[14] -attr @rip a[14] -port a[14] -pin add0 a[14]
load net b[1] -attr @rip b[1] -pin add0 b[1] -port b[1]
load net sum[0] -attr @rip sum_out[0] -pin add0 sum_out[0] -port sum[0]
load net b[12] -attr @rip b[12] -pin add0 b[12] -port b[12]
load net sum[25] -attr @rip sum_out[2] -pin add1 sum_out[2] -port sum[25]
load net a[30] -attr @rip a[30] -port a[30] -pin add1 a[7]
load net cin -pin add0 cin -port cin
netloc cin 1 0 2 NJ 110 NJ
load net sum[10] -attr @rip sum_out[10] -pin add0 sum_out[10] -port sum[10]
load net sum[15] -attr @rip sum_out[15] -pin add0 sum_out[15] -port sum[15]
load net b[19] -attr @rip b[19] -pin add0 b[19] -port b[19]
load net b[27] -attr @rip b[27] -pin add1 b[4] -port b[27]
load net a[6] -attr @rip a[6] -port a[6] -pin add0 a[6]
load net b[22] -attr @rip b[22] -pin add0 b[22] -port b[22]
load net a[22] -attr @rip a[22] -port a[22] -pin add0 a[22]
load net sum[31] -attr @rip 31 -pin add2 sum -port sum[31]
load net b[20] -attr @rip b[20] -pin add0 b[20] -port b[20]
load net a[29] -attr @rip a[29] -port a[29] -pin add1 a[6]
load net b[5] -attr @rip b[5] -pin add0 b[5] -port b[5]
load net a[17] -attr @rip a[17] -port a[17] -pin add0 a[17]
load net sum[26] -attr @rip sum_out[3] -pin add1 sum_out[3] -port sum[26]
load net sum[30] -attr @rip sum_out[7] -pin add1 sum_out[7] -port sum[30]
load net sum[3] -attr @rip sum_out[3] -pin add0 sum_out[3] -port sum[3]
load net c_out -pin add2 c_out -port c_out
netloc c_out 1 2 1 NJ
load net a[2] -attr @rip a[2] -port a[2] -pin add0 a[2]
load net sum[8] -attr @rip sum_out[8] -pin add0 sum_out[8] -port sum[8]
load net sum[23] -attr @rip sum_out[0] -pin add1 sum_out[0] -port sum[23]
load net sum[13] -attr @rip sum_out[13] -pin add0 sum_out[13] -port sum[13]
load net sum[18] -attr @rip sum_out[18] -pin add0 sum_out[18] -port sum[18]
load net a[12] -attr @rip a[12] -port a[12] -pin add0 a[12]
load net b[17] -attr @rip b[17] -pin add0 b[17] -port b[17]
load net b[30] -attr @rip b[30] -pin add1 b[7] -port b[30]
load net a[16] -attr @rip a[16] -port a[16] -pin add0 a[16]
load net a[4] -attr @rip a[4] -port a[4] -pin add0 a[4]
load net b[10] -attr @rip b[10] -pin add0 b[10] -port b[10]
load net a[20] -attr @rip a[20] -port a[20] -pin add0 a[20]
load net a[9] -attr @rip a[9] -port a[9] -pin add0 a[9]
load net b[25] -attr @rip b[25] -pin add1 b[2] -port b[25]
load net a[27] -attr @rip a[27] -port a[27] -pin add1 a[4]
load net b[8] -attr @rip b[8] -pin add0 b[8] -port b[8]
load net b[0] -attr @rip b[0] -pin add0 b[0] -port b[0]
load net b[3] -attr @rip b[3] -pin add0 b[3] -port b[3]
load net sum[24] -attr @rip sum_out[1] -pin add1 sum_out[1] -port sum[24]
load net sum[6] -attr @rip sum_out[6] -pin add0 sum_out[6] -port sum[6]
load net sum[1] -attr @rip sum_out[1] -pin add0 sum_out[1] -port sum[1]
load net b[18] -attr @rip b[18] -pin add0 b[18] -port b[18]
load net sum[21] -attr @rip sum_out[21] -pin add0 sum_out[21] -port sum[21]
load net sum[11] -attr @rip sum_out[11] -pin add0 sum_out[11] -port sum[11]
load net sum[16] -attr @rip sum_out[16] -pin add0 sum_out[16] -port sum[16]
load net a[28] -attr @rip a[28] -port a[28] -pin add1 a[5]
load net b[15] -attr @rip b[15] -pin add0 b[15] -port b[15]
load net a[19] -attr @rip a[19] -port a[19] -pin add0 a[19]
load net a[7] -attr @rip a[7] -port a[7] -pin add0 a[7]
load net b[23] -attr @rip b[23] -pin add1 b[0] -port b[23]
load net a[10] -attr @rip a[10] -port a[10] -pin add0 a[10]
load net b[28] -attr @rip b[28] -pin add1 b[5] -port b[28]
load net a[25] -attr @rip a[25] -port a[25] -pin add1 a[2]
load net b[6] -attr @rip b[6] -pin add0 b[6] -port b[6]
load net a[1] -attr @rip a[1] -port a[1] -pin add0 a[1]
load net a[18] -attr @rip a[18] -port a[18] -pin add0 a[18]
load net sum[22] -attr @rip sum_out[22] -pin add0 sum_out[22] -port sum[22]
load net sum[4] -attr @rip sum_out[4] -pin add0 sum_out[4] -port sum[4]
load net a[13] -attr @rip a[13] -port a[13] -pin add0 a[13]
load net sum[9] -attr @rip sum_out[9] -pin add0 sum_out[9] -port sum[9]
load net a[11] -attr @rip a[11] -port a[11] -pin add0 a[11]
load net b[16] -attr @rip b[16] -pin add0 b[16] -port b[16]
load net sum[29] -attr @rip sum_out[6] -pin add1 sum_out[6] -port sum[29]
load net b[2] -attr @rip b[2] -pin add0 b[2] -port b[2]
load net sum[14] -attr @rip sum_out[14] -pin add0 sum_out[14] -port sum[14]
load net sum[19] -attr @rip sum_out[19] -pin add0 sum_out[19] -port sum[19]
load netBundle @a 32 a[31] a[30] a[29] a[28] a[27] a[26] a[25] a[24] a[23] a[22] a[21] a[20] a[19] a[18] a[17] a[16] a[15] a[14] a[13] a[12] a[11] a[10] a[9] a[8] a[7] a[6] a[5] a[4] a[3] a[2] a[1] a[0] -autobundled
netbloc @a 1 0 2 20 70 340
load netBundle @b 32 b[31] b[30] b[29] b[28] b[27] b[26] b[25] b[24] b[23] b[22] b[21] b[20] b[19] b[18] b[17] b[16] b[15] b[14] b[13] b[12] b[11] b[10] b[9] b[8] b[7] b[6] b[5] b[4] b[3] b[2] b[1] b[0] -autobundled
netbloc @b 1 0 2 40 90 320
load netBundle @sum 32 sum[31] sum[30] sum[29] sum[28] sum[27] sum[26] sum[25] sum[24] sum[23] sum[22] sum[21] sum[20] sum[19] sum[18] sum[17] sum[16] sum[15] sum[14] sum[13] sum[12] sum[11] sum[10] sum[9] sum[8] sum[7] sum[6] sum[5] sum[4] sum[3] sum[2] sum[1] sum[0] -autobundled
netbloc @sum 1 1 2 280 270 580
levelinfo -pg 1 0 120 420 600 -top 0 -bot 280
show
fullfit
#
# initialize ictrl to current module carry_select_adder_32_bit work:carry_select_adder_32_bit:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
