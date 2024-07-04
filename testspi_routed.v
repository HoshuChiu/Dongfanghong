`timescale 1 ps/ 1 ps

module testspi(
	CLK,
	KEY,
	LED,
	CLKO,
	BENCH_OUT);
input	CLK;
input	[2:1] KEY;
output	[2:1] LED;
output	[2:0] CLKO;
output	BENCH_OUT;

//wire	gnd;
//wire	vcc;
wire	AsyncReset_X10_Y1_GND;
wire	AsyncReset_X10_Y2_GND;
wire	AsyncReset_X1_Y8_GND;
wire	\CLK~input_o ;
wire	\CLK~inputclkctrl_outclk ;
wire	\CLK~inputclkctrl_outclk_X10_Y2_SIG_VCC ;
wire	\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ;
wire	\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ;
wire	\KEY[1]~input_o ;
wire	\KEY[1]~input_o_X1_Y8_INV_VCC ;
wire	\KEY[2]~input_o ;
wire	\KEY[2]~inputclkctrl_outclk ;
wire	\KEY[2]~inputclkctrl_outclk__AsyncReset_X1_Y8_INV ;
wire	\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ;
wire	\KEY[2]~inputclkctrl_outclk__AsyncReset_X7_Y5_INV ;
wire	\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ;
wire	SyncLoad_X10_Y2_VCC;
wire	SyncLoad_X12_Y2_GND;
wire	SyncLoad_X13_Y5_GND;
wire	SyncLoad_X2_Y4_GND;
wire	SyncLoad_X2_Y5_GND;
wire	SyncLoad_X5_Y5_GND;
wire	SyncLoad_X6_Y3_GND;
wire	SyncLoad_X6_Y6_GND;
wire	SyncLoad_X6_Y7_GND;
wire	SyncLoad_X6_Y8_GND;
wire	SyncLoad_X8_Y2_GND;
wire	SyncLoad_X8_Y4_GND;
wire	SyncLoad_X9_Y2_VCC;
wire	SyncLoad_X9_Y3_GND;
wire	SyncLoad_X9_Y4_GND;
wire	SyncLoad_X9_Y6_GND;
wire	SyncReset_X10_Y2_GND;
wire	SyncReset_X6_Y2_GND;
wire	SyncReset_X8_Y5_GND;
wire	\c0|LessThan0~0_combout ;
wire	\c0|LessThan0~1_combout ;
wire	\c0|LessThan0~2_combout ;
wire	\c0|LessThan0~3_combout ;
wire	\c0|LessThan0~4_combout ;
wire	\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ;
wire	\c0|clkout~0_combout ;
wire	\c0|clkout~clkctrl_outclk ;
wire	\c0|clkout~clkctrl_outclk_X10_Y4_SIG_VCC ;
wire	\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ;
wire	\c0|clkout~q ;
wire	[15:0] \c0|cnt ;
//wire	\c0|cnt [0];
wire	\c0|cnt[0]~16_combout ;
wire	\c0|cnt[0]~17 ;
//wire	\c0|cnt [10];
wire	\c0|cnt[10]~36_combout ;
wire	\c0|cnt[10]~37 ;
//wire	\c0|cnt [11];
wire	\c0|cnt[11]~38_combout ;
wire	\c0|cnt[11]~39 ;
//wire	\c0|cnt [12];
wire	\c0|cnt[12]~40_combout ;
wire	\c0|cnt[12]~41 ;
//wire	\c0|cnt [13];
wire	\c0|cnt[13]~42_combout ;
wire	\c0|cnt[13]~43 ;
//wire	\c0|cnt [14];
wire	\c0|cnt[14]~44_combout ;
wire	\c0|cnt[14]~45 ;
//wire	\c0|cnt [15];
wire	\c0|cnt[15]~46_combout ;
//wire	\c0|cnt [1];
wire	\c0|cnt[1]~18_combout ;
wire	\c0|cnt[1]~19 ;
//wire	\c0|cnt [2];
wire	\c0|cnt[2]~20_combout ;
wire	\c0|cnt[2]~21 ;
//wire	\c0|cnt [3];
wire	\c0|cnt[3]~22_combout ;
wire	\c0|cnt[3]~23 ;
//wire	\c0|cnt [4];
wire	\c0|cnt[4]~24_combout ;
wire	\c0|cnt[4]~25 ;
//wire	\c0|cnt [5];
wire	\c0|cnt[5]~26_combout ;
wire	\c0|cnt[5]~27 ;
//wire	\c0|cnt [6];
wire	\c0|cnt[6]~28_combout ;
wire	\c0|cnt[6]~29 ;
//wire	\c0|cnt [7];
wire	\c0|cnt[7]~30_combout ;
wire	\c0|cnt[7]~31 ;
//wire	\c0|cnt [8];
wire	\c0|cnt[8]~32_combout ;
wire	\c0|cnt[8]~33 ;
//wire	\c0|cnt [9];
wire	\c0|cnt[9]~34_combout ;
wire	\c0|cnt[9]~35 ;
wire	\c1|LessThan0~2_combout ;
wire	\c1|LessThan0~3_combout ;
wire	\c1|LessThan0~4_combout ;
wire	\c1|LessThan0~5_combout ;
wire	\c1|LessThan0~6_combout ;
wire	\c1|LessThan0~7_RESYN32_BDD33 ;
wire	\c1|LessThan0~7_combout ;
wire	\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ;
wire	\c1|clkout~0_combout ;
wire	\c1|clkout~clkctrl_outclk ;
wire	\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ;
wire	\c1|clkout~clkctrl_outclk_X13_Y2_SIG_VCC ;
wire	\c1|clkout~q ;
wire	[15:0] \c1|cnt ;
//wire	\c1|cnt [0];
wire	\c1|cnt[0]~16_combout ;
wire	\c1|cnt[0]~17 ;
//wire	\c1|cnt [10];
wire	\c1|cnt[10]~36_combout ;
wire	\c1|cnt[10]~37 ;
//wire	\c1|cnt [11];
wire	\c1|cnt[11]~38_combout ;
wire	\c1|cnt[11]~39 ;
//wire	\c1|cnt [12];
wire	\c1|cnt[12]~40_combout ;
wire	\c1|cnt[12]~41 ;
//wire	\c1|cnt [13];
wire	\c1|cnt[13]~42_combout ;
wire	\c1|cnt[13]~43 ;
//wire	\c1|cnt [14];
wire	\c1|cnt[14]~44_combout ;
wire	\c1|cnt[14]~45 ;
//wire	\c1|cnt [15];
wire	\c1|cnt[15]~46_combout ;
//wire	\c1|cnt [1];
wire	\c1|cnt[1]~18_combout ;
wire	\c1|cnt[1]~19 ;
//wire	\c1|cnt [2];
wire	\c1|cnt[2]~20_combout ;
wire	\c1|cnt[2]~21 ;
//wire	\c1|cnt [3];
wire	\c1|cnt[3]~22_combout ;
wire	\c1|cnt[3]~23 ;
//wire	\c1|cnt [4];
wire	\c1|cnt[4]~24_combout ;
wire	\c1|cnt[4]~25 ;
//wire	\c1|cnt [5];
wire	\c1|cnt[5]~26_combout ;
wire	\c1|cnt[5]~27 ;
//wire	\c1|cnt [6];
wire	\c1|cnt[6]~28_combout ;
wire	\c1|cnt[6]~29 ;
//wire	\c1|cnt [7];
wire	\c1|cnt[7]~30_combout ;
wire	\c1|cnt[7]~31 ;
//wire	\c1|cnt [8];
wire	\c1|cnt[8]~32_combout ;
wire	\c1|cnt[8]~33 ;
//wire	\c1|cnt [9];
wire	\c1|cnt[9]~34_combout ;
wire	\c1|cnt[9]~35 ;
wire	\c2|LessThan0~10_combout ;
wire	\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ;
wire	\c2|LessThan0~4_combout ;
wire	\c2|LessThan0~5_combout ;
wire	\c2|LessThan0~6_combout ;
wire	\c2|LessThan0~9_RESYN6_BDD7 ;
wire	\c2|LessThan0~9_RESYN8_BDD9 ;
wire	\c2|LessThan0~9_combout ;
wire	\c2|clkout~0_combout ;
wire	\c2|clkout~clkctrl_outclk ;
wire	\c2|clkout~clkctrl_outclk_X1_Y8_INV_VCC ;
wire	\c2|clkout~clkctrl_outclk_X7_Y5_INV_VCC ;
wire	\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ;
wire	\c2|clkout~q ;
wire	[15:0] \c2|cnt ;
//wire	\c2|cnt [0];
wire	\c2|cnt[0]~16_combout ;
wire	\c2|cnt[0]~17 ;
//wire	\c2|cnt [10];
wire	\c2|cnt[10]~36_combout ;
wire	\c2|cnt[10]~37 ;
//wire	\c2|cnt [11];
wire	\c2|cnt[11]~38_combout ;
wire	\c2|cnt[11]~39 ;
//wire	\c2|cnt [12];
wire	\c2|cnt[12]~40_combout ;
wire	\c2|cnt[12]~41 ;
//wire	\c2|cnt [13];
wire	\c2|cnt[13]~42_combout ;
wire	\c2|cnt[13]~43 ;
//wire	\c2|cnt [14];
wire	\c2|cnt[14]~44_combout ;
wire	\c2|cnt[14]~45 ;
//wire	\c2|cnt [15];
wire	\c2|cnt[15]~46_combout ;
//wire	\c2|cnt [1];
wire	\c2|cnt[1]~18_combout ;
wire	\c2|cnt[1]~19 ;
//wire	\c2|cnt [2];
wire	\c2|cnt[2]~20_combout ;
wire	\c2|cnt[2]~21 ;
//wire	\c2|cnt [3];
wire	\c2|cnt[3]~22_combout ;
wire	\c2|cnt[3]~23 ;
//wire	\c2|cnt [4];
wire	\c2|cnt[4]~24_combout ;
wire	\c2|cnt[4]~25 ;
//wire	\c2|cnt [5];
wire	\c2|cnt[5]~26_combout ;
wire	\c2|cnt[5]~27 ;
//wire	\c2|cnt [6];
wire	\c2|cnt[6]~28_combout ;
wire	\c2|cnt[6]~29 ;
//wire	\c2|cnt [7];
wire	\c2|cnt[7]~30_combout ;
wire	\c2|cnt[7]~31 ;
//wire	\c2|cnt [8];
wire	\c2|cnt[8]~32_combout ;
wire	\c2|cnt[8]~33 ;
//wire	\c2|cnt [9];
wire	\c2|cnt[9]~34_combout ;
wire	\c2|cnt[9]~35 ;
tri1	devclrn;
tri1	devoe;
tri1	devpor;
wire	\dfh_jiezou|LessThan0~0_combout ;
wire	\dfh_jiezou|LessThan1~2_RESYN10_BDD11 ;
wire	\dfh_jiezou|LessThan1~2_RESYN12_BDD13 ;
wire	\dfh_jiezou|LessThan1~2_combout ;
wire	\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ;
wire	\dfh_jiezou|Mux0~0_combout ;
wire	\dfh_jiezou|Mux0~1_combout ;
wire	[8:0] \dfh_jiezou|counter ;
//wire	\dfh_jiezou|counter [0];
//wire	\dfh_jiezou|counter [1];
wire	\dfh_jiezou|counter[1]~8_combout ;
wire	\dfh_jiezou|counter[1]~9 ;
//wire	\dfh_jiezou|counter [2];
wire	\dfh_jiezou|counter[2]~10_combout ;
wire	\dfh_jiezou|counter[2]~11 ;
//wire	\dfh_jiezou|counter [3];
wire	\dfh_jiezou|counter[3]~12_combout ;
wire	\dfh_jiezou|counter[3]~13 ;
//wire	\dfh_jiezou|counter [4];
wire	\dfh_jiezou|counter[4]~14_combout ;
wire	\dfh_jiezou|counter[4]~15 ;
//wire	\dfh_jiezou|counter [5];
wire	\dfh_jiezou|counter[5]~16_combout ;
wire	\dfh_jiezou|counter[5]~17 ;
//wire	\dfh_jiezou|counter [6];
wire	\dfh_jiezou|counter[6]~18_combout ;
wire	\dfh_jiezou|counter[6]~19 ;
//wire	\dfh_jiezou|counter [7];
wire	\dfh_jiezou|counter[7]~20_combout ;
wire	\dfh_jiezou|counter[7]~21 ;
//wire	\dfh_jiezou|counter [8];
wire	\dfh_jiezou|counter[8]~22_combout ;
wire	[3:0] \dfh_jiezou|pulse_counter ;
//wire	\dfh_jiezou|pulse_counter [0];
wire	\dfh_jiezou|pulse_counter[0]~8_combout ;
//wire	\dfh_jiezou|pulse_counter [1];
//wire	\dfh_jiezou|pulse_counter [2];
//wire	\dfh_jiezou|pulse_counter [3];
wire	\dfh_jiezou|pulse_counter~0_combout ;
wire	\dfh_jiezou|pulse_counter~1_combout ;
wire	\dfh_jiezou|pulse_counter~2_combout ;
wire	\dfh_jiezou|pulse_counter~3_combout ;
wire	\dfh_jiezou|pulse_counter~4_combout ;
wire	\dfh_jiezou|pulse_counter~5_combout ;
wire	\dfh_jiezou|tick~clkctrl_outclk ;
wire	\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X12_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X1_Y4_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X3_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y5_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y3_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y6_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y7_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y8_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y3_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y6_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ;
wire	\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ;
wire	\dfh_jiezou|tick~feeder_combout ;
wire	\dfh_jiezou|tick~q ;
wire	\dfh|LessThan0~0_RESYN34_BDD35 ;
wire	\dfh|LessThan0~0_combout ;
wire	\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ;
wire	\dfh|Mux0~0_combout ;
wire	\dfh|Mux1~0_combout ;
wire	\dfh|Mux1~1_combout ;
wire	\dfh|Mux1~2_combout ;
wire	\dfh|Mux1~3_combout ;
wire	\dfh|Mux1~4_combout ;
wire	\dfh|Mux2~0_combout ;
wire	\dfh|Mux2~1_combout ;
wire	\dfh|Mux2~2_combout ;
wire	\dfh|Mux2~3_combout ;
wire	\dfh|Mux3~0_combout ;
wire	\dfh|Mux3~1_combout ;
wire	\dfh|Mux3~2_combout ;
wire	\dfh|Mux3~3_combout ;
wire	\dfh|Mux3~4_combout ;
wire	\dfh|Mux3~5_combout ;
wire	[8:0] \dfh|counter ;
//wire	\dfh|counter [0];
//wire	\dfh|counter [1];
//wire	\dfh|counter [2];
wire	\dfh|counter[2]~7_combout ;
wire	\dfh|counter[2]~8 ;
//wire	\dfh|counter [3];
wire	\dfh|counter[3]~10 ;
wire	\dfh|counter[3]~9_combout ;
//wire	\dfh|counter [4];
wire	\dfh|counter[4]~11_combout ;
wire	\dfh|counter[4]~12 ;
//wire	\dfh|counter [5];
wire	\dfh|counter[5]~13_combout ;
wire	\dfh|counter[5]~14 ;
//wire	\dfh|counter [6];
wire	\dfh|counter[6]~15_combout ;
wire	\dfh|counter[6]~16 ;
//wire	\dfh|counter [7];
wire	\dfh|counter[7]~17_combout ;
wire	\dfh|counter[7]~18 ;
//wire	\dfh|counter [8];
wire	\dfh|counter[8]~19_combout ;
wire	\nRst~combout ;
wire	\nRst~combout__AsyncReset_X10_Y4_SIG ;
wire	\nRst~combout__AsyncReset_X12_Y2_SIG ;
wire	\nRst~combout__AsyncReset_X13_Y2_SIG ;
wire	\nRst~combout__AsyncReset_X7_Y4_SIG ;
wire	\nRst~combout__AsyncReset_X8_Y4_SIG ;
wire	\nRst~combout__AsyncReset_X9_Y4_SIG ;
wire	\p0|PLL_D84CC99B.clkout0 ;
wire	\p0|PLL_D84CC99B.clkout1 ;
wire	\p0|PLL_D84CC99B.clkout1_X1_Y4_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_X7_Y4_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ;
wire	\p0|PLL_D84CC99B.clkout1_int ;
wire	\p0|PLL_D84CC99B.clkout2 ;
wire	\p0|PLL_D84CC99B.clkout3 ;
wire	\p0|PLL_D84CC99B.lock ;
wire	\por0|Equal0~0_combout ;
wire	\por0|Equal0~1_combout ;
wire	\por0|Equal0~2_combout ;
wire	\por0|Equal0~3_combout ;
wire	\por0|Equal0~4_combout ;
wire	\por0|Equal0~5_combout ;
wire	\por0|Equal0~6_combout ;
wire	[19:0] \por0|cnt ;
//wire	\por0|cnt [0];
wire	\por0|cnt[0]~57_combout ;
//wire	\por0|cnt [10];
wire	\por0|cnt[10]~37_combout ;
wire	\por0|cnt[10]~38 ;
//wire	\por0|cnt [11];
wire	\por0|cnt[11]~39_combout ;
wire	\por0|cnt[11]~40 ;
//wire	\por0|cnt [12];
wire	\por0|cnt[12]~41_combout ;
wire	\por0|cnt[12]~42 ;
//wire	\por0|cnt [13];
wire	\por0|cnt[13]~43_combout ;
wire	\por0|cnt[13]~44 ;
//wire	\por0|cnt [14];
wire	\por0|cnt[14]~45_combout ;
wire	\por0|cnt[14]~46 ;
//wire	\por0|cnt [15];
wire	\por0|cnt[15]~47_combout ;
wire	\por0|cnt[15]~48 ;
//wire	\por0|cnt [16];
wire	\por0|cnt[16]~49_combout ;
wire	\por0|cnt[16]~50 ;
//wire	\por0|cnt [17];
wire	\por0|cnt[17]~51_combout ;
wire	\por0|cnt[17]~52 ;
//wire	\por0|cnt [18];
wire	\por0|cnt[18]~53_combout ;
wire	\por0|cnt[18]~54 ;
//wire	\por0|cnt [19];
wire	\por0|cnt[19]~55_combout ;
//wire	\por0|cnt [1];
wire	\por0|cnt[1]~19_combout ;
wire	\por0|cnt[1]~20 ;
//wire	\por0|cnt [2];
wire	\por0|cnt[2]~21_combout ;
wire	\por0|cnt[2]~22 ;
//wire	\por0|cnt [3];
wire	\por0|cnt[3]~23_combout ;
wire	\por0|cnt[3]~24 ;
//wire	\por0|cnt [4];
wire	\por0|cnt[4]~25_combout ;
wire	\por0|cnt[4]~26 ;
//wire	\por0|cnt [5];
wire	\por0|cnt[5]~27_combout ;
wire	\por0|cnt[5]~28 ;
//wire	\por0|cnt [6];
wire	\por0|cnt[6]~29_combout ;
wire	\por0|cnt[6]~30 ;
//wire	\por0|cnt [7];
wire	\por0|cnt[7]~31_combout ;
wire	\por0|cnt[7]~32 ;
//wire	\por0|cnt [8];
wire	\por0|cnt[8]~33_combout ;
wire	\por0|cnt[8]~34 ;
//wire	\por0|cnt [9];
wire	\por0|cnt[9]~35_combout ;
wire	\por0|cnt[9]~36 ;
wire	\por0|oRESET~q ;
wire	unknown;
wire	\wav|Mux0~0_combout ;
wire	\wav|Mux0~1_combout ;
wire	\wav|Mux0~2_combout ;
wire	\wav|Mux0~3_combout ;
wire	\wav|Mux0~4_combout ;
wire	\wav|Mux0~5_combout ;
wire	\wav|a|LessThan0~0_combout ;
wire	\wav|a|LessThan0~1_combout ;
wire	\wav|a|LessThan0~2_combout ;
wire	\wav|a|LessThan0~3_combout ;
wire	\wav|a|LessThan0~4_combout ;
wire	\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ;
wire	\wav|a|clkout~0_combout ;
wire	\wav|a|clkout~q ;
wire	[15:0] \wav|a|cnt ;
//wire	\wav|a|cnt [0];
wire	\wav|a|cnt[0]~16_combout ;
wire	\wav|a|cnt[0]~17 ;
//wire	\wav|a|cnt [10];
wire	\wav|a|cnt[10]~36_combout ;
wire	\wav|a|cnt[10]~37 ;
//wire	\wav|a|cnt [11];
wire	\wav|a|cnt[11]~38_combout ;
wire	\wav|a|cnt[11]~39 ;
//wire	\wav|a|cnt [12];
wire	\wav|a|cnt[12]~40_combout ;
wire	\wav|a|cnt[12]~41 ;
//wire	\wav|a|cnt [13];
wire	\wav|a|cnt[13]~42_combout ;
wire	\wav|a|cnt[13]~43 ;
//wire	\wav|a|cnt [14];
wire	\wav|a|cnt[14]~44_combout ;
wire	\wav|a|cnt[14]~45 ;
//wire	\wav|a|cnt [15];
wire	\wav|a|cnt[15]~46_combout ;
//wire	\wav|a|cnt [1];
wire	\wav|a|cnt[1]~18_combout ;
wire	\wav|a|cnt[1]~19 ;
//wire	\wav|a|cnt [2];
wire	\wav|a|cnt[2]~20_combout ;
wire	\wav|a|cnt[2]~21 ;
//wire	\wav|a|cnt [3];
wire	\wav|a|cnt[3]~22_combout ;
wire	\wav|a|cnt[3]~23 ;
//wire	\wav|a|cnt [4];
wire	\wav|a|cnt[4]~24_combout ;
wire	\wav|a|cnt[4]~25 ;
//wire	\wav|a|cnt [5];
wire	\wav|a|cnt[5]~26_combout ;
wire	\wav|a|cnt[5]~27 ;
//wire	\wav|a|cnt [6];
wire	\wav|a|cnt[6]~28_combout ;
wire	\wav|a|cnt[6]~29 ;
//wire	\wav|a|cnt [7];
wire	\wav|a|cnt[7]~30_combout ;
wire	\wav|a|cnt[7]~31 ;
//wire	\wav|a|cnt [8];
wire	\wav|a|cnt[8]~32_combout ;
wire	\wav|a|cnt[8]~33 ;
//wire	\wav|a|cnt [9];
wire	\wav|a|cnt[9]~34_combout ;
wire	\wav|a|cnt[9]~35 ;
wire	\wav|clk124gen|LessThan0~3_combout ;
wire	\wav|clk124gen|LessThan0~4_RESYN14_BDD15 ;
wire	\wav|clk124gen|LessThan0~4_RESYN16_BDD17 ;
wire	\wav|clk124gen|LessThan0~4_RESYN18_BDD19 ;
wire	\wav|clk124gen|LessThan0~4_combout ;
wire	\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ;
wire	\wav|clk124gen|clkout~0_combout ;
wire	\wav|clk124gen|clkout~q ;
wire	[15:0] \wav|clk124gen|cnt ;
//wire	\wav|clk124gen|cnt [0];
wire	\wav|clk124gen|cnt[0]~16_combout ;
wire	\wav|clk124gen|cnt[0]~17 ;
//wire	\wav|clk124gen|cnt [10];
wire	\wav|clk124gen|cnt[10]~36_combout ;
wire	\wav|clk124gen|cnt[10]~37 ;
//wire	\wav|clk124gen|cnt [11];
wire	\wav|clk124gen|cnt[11]~38_combout ;
wire	\wav|clk124gen|cnt[11]~39 ;
//wire	\wav|clk124gen|cnt [12];
wire	\wav|clk124gen|cnt[12]~40_combout ;
wire	\wav|clk124gen|cnt[12]~41 ;
//wire	\wav|clk124gen|cnt [13];
wire	\wav|clk124gen|cnt[13]~42_combout ;
wire	\wav|clk124gen|cnt[13]~43 ;
//wire	\wav|clk124gen|cnt [14];
wire	\wav|clk124gen|cnt[14]~44_combout ;
wire	\wav|clk124gen|cnt[14]~45 ;
//wire	\wav|clk124gen|cnt [15];
wire	\wav|clk124gen|cnt[15]~46_combout ;
//wire	\wav|clk124gen|cnt [1];
wire	\wav|clk124gen|cnt[1]~18_combout ;
wire	\wav|clk124gen|cnt[1]~19 ;
//wire	\wav|clk124gen|cnt [2];
wire	\wav|clk124gen|cnt[2]~20_combout ;
wire	\wav|clk124gen|cnt[2]~21 ;
//wire	\wav|clk124gen|cnt [3];
wire	\wav|clk124gen|cnt[3]~22_combout ;
wire	\wav|clk124gen|cnt[3]~23 ;
//wire	\wav|clk124gen|cnt [4];
wire	\wav|clk124gen|cnt[4]~24_combout ;
wire	\wav|clk124gen|cnt[4]~25 ;
//wire	\wav|clk124gen|cnt [5];
wire	\wav|clk124gen|cnt[5]~26_combout ;
wire	\wav|clk124gen|cnt[5]~27 ;
//wire	\wav|clk124gen|cnt [6];
wire	\wav|clk124gen|cnt[6]~28_combout ;
wire	\wav|clk124gen|cnt[6]~29 ;
//wire	\wav|clk124gen|cnt [7];
wire	\wav|clk124gen|cnt[7]~30_combout ;
wire	\wav|clk124gen|cnt[7]~31 ;
//wire	\wav|clk124gen|cnt [8];
wire	\wav|clk124gen|cnt[8]~32_combout ;
wire	\wav|clk124gen|cnt[8]~33 ;
//wire	\wav|clk124gen|cnt [9];
wire	\wav|clk124gen|cnt[9]~34_combout ;
wire	\wav|clk124gen|cnt[9]~35 ;
wire	\wav|clk166gen|LessThan0~3_combout ;
wire	\wav|clk166gen|LessThan0~4_RESYN28_BDD29 ;
wire	\wav|clk166gen|LessThan0~4_RESYN28_RESYN36_BDD37 ;
wire	\wav|clk166gen|LessThan0~4_RESYN30_BDD31 ;
wire	\wav|clk166gen|LessThan0~4_combout ;
wire	\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ;
wire	\wav|clk166gen|LessThan0~4_combout__SyncReset_X9_Y2_SIG ;
wire	\wav|clk166gen|clkout~0_combout ;
wire	\wav|clk166gen|clkout~q ;
wire	[15:0] \wav|clk166gen|cnt ;
//wire	\wav|clk166gen|cnt [0];
wire	\wav|clk166gen|cnt[0]~16_combout ;
wire	\wav|clk166gen|cnt[0]~17 ;
//wire	\wav|clk166gen|cnt [10];
wire	\wav|clk166gen|cnt[10]~36_combout ;
wire	\wav|clk166gen|cnt[10]~37 ;
//wire	\wav|clk166gen|cnt [11];
wire	\wav|clk166gen|cnt[11]~38_combout ;
wire	\wav|clk166gen|cnt[11]~39 ;
//wire	\wav|clk166gen|cnt [12];
wire	\wav|clk166gen|cnt[12]~40_combout ;
wire	\wav|clk166gen|cnt[12]~41 ;
//wire	\wav|clk166gen|cnt [13];
wire	\wav|clk166gen|cnt[13]~42_combout ;
wire	\wav|clk166gen|cnt[13]~43 ;
//wire	\wav|clk166gen|cnt [14];
wire	\wav|clk166gen|cnt[14]~44_combout ;
wire	\wav|clk166gen|cnt[14]~45 ;
//wire	\wav|clk166gen|cnt [15];
wire	\wav|clk166gen|cnt[15]~46_combout ;
//wire	\wav|clk166gen|cnt [1];
wire	\wav|clk166gen|cnt[1]~18_combout ;
wire	\wav|clk166gen|cnt[1]~19 ;
//wire	\wav|clk166gen|cnt [2];
wire	\wav|clk166gen|cnt[2]~20_combout ;
wire	\wav|clk166gen|cnt[2]~21 ;
//wire	\wav|clk166gen|cnt [3];
wire	\wav|clk166gen|cnt[3]~22_combout ;
wire	\wav|clk166gen|cnt[3]~23 ;
//wire	\wav|clk166gen|cnt [4];
wire	\wav|clk166gen|cnt[4]~24_combout ;
wire	\wav|clk166gen|cnt[4]~25 ;
//wire	\wav|clk166gen|cnt [5];
wire	\wav|clk166gen|cnt[5]~26_combout ;
wire	\wav|clk166gen|cnt[5]~27 ;
//wire	\wav|clk166gen|cnt [6];
wire	\wav|clk166gen|cnt[6]~28_combout ;
wire	\wav|clk166gen|cnt[6]~29 ;
//wire	\wav|clk166gen|cnt [7];
wire	\wav|clk166gen|cnt[7]~30_combout ;
wire	\wav|clk166gen|cnt[7]~31 ;
//wire	\wav|clk166gen|cnt [8];
wire	\wav|clk166gen|cnt[8]~32_combout ;
wire	\wav|clk166gen|cnt[8]~33 ;
//wire	\wav|clk166gen|cnt [9];
wire	\wav|clk166gen|cnt[9]~34_combout ;
wire	\wav|clk166gen|cnt[9]~35 ;
wire	\wav|c|LessThan0~0_combout ;
wire	\wav|c|LessThan0~1_combout ;
wire	\wav|c|LessThan0~2_combout ;
wire	\wav|c|LessThan0~3_combout ;
wire	\wav|c|LessThan0~4_combout ;
wire	\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ;
wire	\wav|c|clkout~0_combout ;
wire	\wav|c|clkout~q ;
wire	[15:0] \wav|c|cnt ;
//wire	\wav|c|cnt [0];
wire	\wav|c|cnt[0]~16_combout ;
wire	\wav|c|cnt[0]~17 ;
//wire	\wav|c|cnt [10];
wire	\wav|c|cnt[10]~36_combout ;
wire	\wav|c|cnt[10]~37 ;
//wire	\wav|c|cnt [11];
wire	\wav|c|cnt[11]~38_combout ;
wire	\wav|c|cnt[11]~39 ;
//wire	\wav|c|cnt [12];
wire	\wav|c|cnt[12]~40_combout ;
wire	\wav|c|cnt[12]~41 ;
//wire	\wav|c|cnt [13];
wire	\wav|c|cnt[13]~42_combout ;
wire	\wav|c|cnt[13]~43 ;
//wire	\wav|c|cnt [14];
wire	\wav|c|cnt[14]~44_combout ;
wire	\wav|c|cnt[14]~45 ;
//wire	\wav|c|cnt [15];
wire	\wav|c|cnt[15]~46_combout ;
//wire	\wav|c|cnt [1];
wire	\wav|c|cnt[1]~18_combout ;
wire	\wav|c|cnt[1]~19 ;
//wire	\wav|c|cnt [2];
wire	\wav|c|cnt[2]~20_combout ;
wire	\wav|c|cnt[2]~21 ;
//wire	\wav|c|cnt [3];
wire	\wav|c|cnt[3]~22_combout ;
wire	\wav|c|cnt[3]~23 ;
//wire	\wav|c|cnt [4];
wire	\wav|c|cnt[4]~24_combout ;
wire	\wav|c|cnt[4]~25 ;
//wire	\wav|c|cnt [5];
wire	\wav|c|cnt[5]~26_combout ;
wire	\wav|c|cnt[5]~27 ;
//wire	\wav|c|cnt [6];
wire	\wav|c|cnt[6]~28_combout ;
wire	\wav|c|cnt[6]~29 ;
//wire	\wav|c|cnt [7];
wire	\wav|c|cnt[7]~30_combout ;
wire	\wav|c|cnt[7]~31 ;
//wire	\wav|c|cnt [8];
wire	\wav|c|cnt[8]~32_combout ;
wire	\wav|c|cnt[8]~33 ;
//wire	\wav|c|cnt [9];
wire	\wav|c|cnt[9]~34_combout ;
wire	\wav|c|cnt[9]~35 ;
wire	\wav|d|LessThan0~0_combout ;
wire	\wav|d|LessThan0~1_combout ;
wire	\wav|d|LessThan0~2_combout ;
wire	\wav|d|LessThan0~3_combout ;
wire	\wav|d|LessThan0~4_combout ;
wire	\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ;
wire	\wav|d|clkout~0_combout ;
wire	\wav|d|clkout~q ;
wire	[15:0] \wav|d|cnt ;
//wire	\wav|d|cnt [0];
wire	\wav|d|cnt[0]~16_combout ;
wire	\wav|d|cnt[0]~17 ;
//wire	\wav|d|cnt [10];
wire	\wav|d|cnt[10]~36_combout ;
wire	\wav|d|cnt[10]~37 ;
//wire	\wav|d|cnt [11];
wire	\wav|d|cnt[11]~38_combout ;
wire	\wav|d|cnt[11]~39 ;
//wire	\wav|d|cnt [12];
wire	\wav|d|cnt[12]~40_combout ;
wire	\wav|d|cnt[12]~41 ;
//wire	\wav|d|cnt [13];
wire	\wav|d|cnt[13]~42_combout ;
wire	\wav|d|cnt[13]~43 ;
//wire	\wav|d|cnt [14];
wire	\wav|d|cnt[14]~44_combout ;
wire	\wav|d|cnt[14]~45 ;
//wire	\wav|d|cnt [15];
wire	\wav|d|cnt[15]~46_combout ;
//wire	\wav|d|cnt [1];
wire	\wav|d|cnt[1]~18_combout ;
wire	\wav|d|cnt[1]~19 ;
//wire	\wav|d|cnt [2];
wire	\wav|d|cnt[2]~20_combout ;
wire	\wav|d|cnt[2]~21 ;
//wire	\wav|d|cnt [3];
wire	\wav|d|cnt[3]~22_combout ;
wire	\wav|d|cnt[3]~23 ;
//wire	\wav|d|cnt [4];
wire	\wav|d|cnt[4]~24_combout ;
wire	\wav|d|cnt[4]~25 ;
//wire	\wav|d|cnt [5];
wire	\wav|d|cnt[5]~26_combout ;
wire	\wav|d|cnt[5]~27 ;
//wire	\wav|d|cnt [6];
wire	\wav|d|cnt[6]~28_combout ;
wire	\wav|d|cnt[6]~29 ;
//wire	\wav|d|cnt [7];
wire	\wav|d|cnt[7]~30_combout ;
wire	\wav|d|cnt[7]~31 ;
//wire	\wav|d|cnt [8];
wire	\wav|d|cnt[8]~32_combout ;
wire	\wav|d|cnt[8]~33 ;
//wire	\wav|d|cnt [9];
wire	\wav|d|cnt[9]~34_combout ;
wire	\wav|d|cnt[9]~35 ;
wire	\wav|e|LessThan0~0_combout ;
wire	\wav|e|LessThan0~1_combout ;
wire	\wav|e|LessThan0~3_RESYN0_BDD1 ;
wire	\wav|e|LessThan0~3_combout ;
wire	\wav|e|LessThan0~4_combout ;
wire	\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ;
wire	\wav|e|clkout~0_combout ;
wire	\wav|e|clkout~q ;
wire	[15:0] \wav|e|cnt ;
//wire	\wav|e|cnt [0];
wire	\wav|e|cnt[0]~16_combout ;
wire	\wav|e|cnt[0]~17 ;
//wire	\wav|e|cnt [10];
wire	\wav|e|cnt[10]~36_combout ;
wire	\wav|e|cnt[10]~37 ;
//wire	\wav|e|cnt [11];
wire	\wav|e|cnt[11]~38_combout ;
wire	\wav|e|cnt[11]~39 ;
//wire	\wav|e|cnt [12];
wire	\wav|e|cnt[12]~40_combout ;
wire	\wav|e|cnt[12]~41 ;
//wire	\wav|e|cnt [13];
wire	\wav|e|cnt[13]~42_combout ;
wire	\wav|e|cnt[13]~43 ;
//wire	\wav|e|cnt [14];
wire	\wav|e|cnt[14]~44_combout ;
wire	\wav|e|cnt[14]~45 ;
//wire	\wav|e|cnt [15];
wire	\wav|e|cnt[15]~46_combout ;
//wire	\wav|e|cnt [1];
wire	\wav|e|cnt[1]~18_combout ;
wire	\wav|e|cnt[1]~19 ;
//wire	\wav|e|cnt [2];
wire	\wav|e|cnt[2]~20_combout ;
wire	\wav|e|cnt[2]~21 ;
//wire	\wav|e|cnt [3];
wire	\wav|e|cnt[3]~22_combout ;
wire	\wav|e|cnt[3]~23 ;
//wire	\wav|e|cnt [4];
wire	\wav|e|cnt[4]~24_combout ;
wire	\wav|e|cnt[4]~25 ;
//wire	\wav|e|cnt [5];
wire	\wav|e|cnt[5]~26_combout ;
wire	\wav|e|cnt[5]~27 ;
//wire	\wav|e|cnt [6];
wire	\wav|e|cnt[6]~28_combout ;
wire	\wav|e|cnt[6]~29 ;
//wire	\wav|e|cnt [7];
wire	\wav|e|cnt[7]~30_combout ;
wire	\wav|e|cnt[7]~31 ;
//wire	\wav|e|cnt [8];
wire	\wav|e|cnt[8]~32_combout ;
wire	\wav|e|cnt[8]~33 ;
//wire	\wav|e|cnt [9];
wire	\wav|e|cnt[9]~34_combout ;
wire	\wav|e|cnt[9]~35 ;
wire	\wav|freqclk~clkctrl_outclk ;
wire	\wav|freqclk~clkctrl_outclk_X12_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X3_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X6_Y5_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X7_Y3_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X7_Y6_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X7_Y7_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X7_Y8_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X8_Y3_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X8_Y6_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ;
wire	\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ;
wire	\wav|freqclk~combout ;
wire	\wav|g|LessThan0~0_combout ;
wire	\wav|g|LessThan0~1_combout ;
wire	\wav|g|LessThan0~3_RESYN2_BDD3 ;
wire	\wav|g|LessThan0~3_combout ;
wire	\wav|g|LessThan0~4_combout ;
wire	\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ;
wire	\wav|g|clkout~0_combout ;
wire	\wav|g|clkout~q ;
wire	[15:0] \wav|g|cnt ;
//wire	\wav|g|cnt [0];
wire	\wav|g|cnt[0]~16_combout ;
wire	\wav|g|cnt[0]~17 ;
//wire	\wav|g|cnt [10];
wire	\wav|g|cnt[10]~36_combout ;
wire	\wav|g|cnt[10]~37 ;
//wire	\wav|g|cnt [11];
wire	\wav|g|cnt[11]~38_combout ;
wire	\wav|g|cnt[11]~39 ;
//wire	\wav|g|cnt [12];
wire	\wav|g|cnt[12]~40_combout ;
wire	\wav|g|cnt[12]~41 ;
//wire	\wav|g|cnt [13];
wire	\wav|g|cnt[13]~42_combout ;
wire	\wav|g|cnt[13]~43 ;
//wire	\wav|g|cnt [14];
wire	\wav|g|cnt[14]~44_combout ;
wire	\wav|g|cnt[14]~45 ;
//wire	\wav|g|cnt [15];
wire	\wav|g|cnt[15]~46_combout ;
//wire	\wav|g|cnt [1];
wire	\wav|g|cnt[1]~18_combout ;
wire	\wav|g|cnt[1]~19 ;
//wire	\wav|g|cnt [2];
wire	\wav|g|cnt[2]~20_combout ;
wire	\wav|g|cnt[2]~21 ;
//wire	\wav|g|cnt [3];
wire	\wav|g|cnt[3]~22_combout ;
wire	\wav|g|cnt[3]~23 ;
//wire	\wav|g|cnt [4];
wire	\wav|g|cnt[4]~24_combout ;
wire	\wav|g|cnt[4]~25 ;
//wire	\wav|g|cnt [5];
wire	\wav|g|cnt[5]~26_combout ;
wire	\wav|g|cnt[5]~27 ;
//wire	\wav|g|cnt [6];
wire	\wav|g|cnt[6]~28_combout ;
wire	\wav|g|cnt[6]~29 ;
//wire	\wav|g|cnt [7];
wire	\wav|g|cnt[7]~30_combout ;
wire	\wav|g|cnt[7]~31 ;
//wire	\wav|g|cnt [8];
wire	\wav|g|cnt[8]~32_combout ;
wire	\wav|g|cnt[8]~33 ;
//wire	\wav|g|cnt [9];
wire	\wav|g|cnt[9]~34_combout ;
wire	\wav|g|cnt[9]~35 ;
wire	\wav|highc|LessThan0~0_combout ;
wire	\wav|highc|LessThan0~1_combout ;
wire	\wav|highc|LessThan0~2_combout ;
wire	\wav|highc|LessThan0~3_combout ;
wire	\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ;
wire	\wav|highc|clkout~0_combout ;
wire	\wav|highc|clkout~q ;
wire	[15:0] \wav|highc|cnt ;
//wire	\wav|highc|cnt [0];
wire	\wav|highc|cnt[0]~16_combout ;
wire	\wav|highc|cnt[0]~17 ;
//wire	\wav|highc|cnt [10];
wire	\wav|highc|cnt[10]~36_combout ;
wire	\wav|highc|cnt[10]~37 ;
//wire	\wav|highc|cnt [11];
wire	\wav|highc|cnt[11]~38_combout ;
wire	\wav|highc|cnt[11]~39 ;
//wire	\wav|highc|cnt [12];
wire	\wav|highc|cnt[12]~40_combout ;
wire	\wav|highc|cnt[12]~41 ;
//wire	\wav|highc|cnt [13];
wire	\wav|highc|cnt[13]~42_combout ;
wire	\wav|highc|cnt[13]~43 ;
//wire	\wav|highc|cnt [14];
wire	\wav|highc|cnt[14]~44_combout ;
wire	\wav|highc|cnt[14]~45 ;
//wire	\wav|highc|cnt [15];
wire	\wav|highc|cnt[15]~46_combout ;
//wire	\wav|highc|cnt [1];
wire	\wav|highc|cnt[1]~18_combout ;
wire	\wav|highc|cnt[1]~19 ;
//wire	\wav|highc|cnt [2];
wire	\wav|highc|cnt[2]~20_combout ;
wire	\wav|highc|cnt[2]~21 ;
//wire	\wav|highc|cnt [3];
wire	\wav|highc|cnt[3]~22_combout ;
wire	\wav|highc|cnt[3]~23 ;
//wire	\wav|highc|cnt [4];
wire	\wav|highc|cnt[4]~24_combout ;
wire	\wav|highc|cnt[4]~25 ;
//wire	\wav|highc|cnt [5];
wire	\wav|highc|cnt[5]~26_combout ;
wire	\wav|highc|cnt[5]~27 ;
//wire	\wav|highc|cnt [6];
wire	\wav|highc|cnt[6]~28_combout ;
wire	\wav|highc|cnt[6]~29 ;
//wire	\wav|highc|cnt [7];
wire	\wav|highc|cnt[7]~30_combout ;
wire	\wav|highc|cnt[7]~31 ;
//wire	\wav|highc|cnt [8];
wire	\wav|highc|cnt[8]~32_combout ;
wire	\wav|highc|cnt[8]~33 ;
//wire	\wav|highc|cnt [9];
wire	\wav|highc|cnt[9]~34_combout ;
wire	\wav|highc|cnt[9]~35 ;
wire	\wav|lowa|LessThan0~0_combout ;
wire	\wav|lowa|LessThan0~1_combout ;
wire	\wav|lowa|LessThan0~2_combout ;
wire	\wav|lowa|LessThan0~3_combout ;
wire	\wav|lowa|LessThan0~4_combout ;
wire	\wav|lowa|LessThan0~5_combout ;
wire	\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ;
wire	\wav|lowa|clkout~0_combout ;
wire	\wav|lowa|clkout~q ;
wire	[15:0] \wav|lowa|cnt ;
//wire	\wav|lowa|cnt [0];
wire	\wav|lowa|cnt[0]~16_combout ;
wire	\wav|lowa|cnt[0]~17 ;
//wire	\wav|lowa|cnt [10];
wire	\wav|lowa|cnt[10]~36_combout ;
wire	\wav|lowa|cnt[10]~37 ;
//wire	\wav|lowa|cnt [11];
wire	\wav|lowa|cnt[11]~38_combout ;
wire	\wav|lowa|cnt[11]~39 ;
//wire	\wav|lowa|cnt [12];
wire	\wav|lowa|cnt[12]~40_combout ;
wire	\wav|lowa|cnt[12]~41 ;
//wire	\wav|lowa|cnt [13];
wire	\wav|lowa|cnt[13]~42_combout ;
wire	\wav|lowa|cnt[13]~43 ;
//wire	\wav|lowa|cnt [14];
wire	\wav|lowa|cnt[14]~44_combout ;
wire	\wav|lowa|cnt[14]~45 ;
//wire	\wav|lowa|cnt [15];
wire	\wav|lowa|cnt[15]~46_combout ;
//wire	\wav|lowa|cnt [1];
wire	\wav|lowa|cnt[1]~18_combout ;
wire	\wav|lowa|cnt[1]~19 ;
//wire	\wav|lowa|cnt [2];
wire	\wav|lowa|cnt[2]~20_combout ;
wire	\wav|lowa|cnt[2]~21 ;
//wire	\wav|lowa|cnt [3];
wire	\wav|lowa|cnt[3]~22_combout ;
wire	\wav|lowa|cnt[3]~23 ;
//wire	\wav|lowa|cnt [4];
wire	\wav|lowa|cnt[4]~24_combout ;
wire	\wav|lowa|cnt[4]~25 ;
//wire	\wav|lowa|cnt [5];
wire	\wav|lowa|cnt[5]~26_combout ;
wire	\wav|lowa|cnt[5]~27 ;
//wire	\wav|lowa|cnt [6];
wire	\wav|lowa|cnt[6]~28_combout ;
wire	\wav|lowa|cnt[6]~29 ;
//wire	\wav|lowa|cnt [7];
wire	\wav|lowa|cnt[7]~30_combout ;
wire	\wav|lowa|cnt[7]~31 ;
//wire	\wav|lowa|cnt [8];
wire	\wav|lowa|cnt[8]~32_combout ;
wire	\wav|lowa|cnt[8]~33 ;
//wire	\wav|lowa|cnt [9];
wire	\wav|lowa|cnt[9]~34_combout ;
wire	\wav|lowa|cnt[9]~35 ;
wire	\wav|lowb|LessThan0~0_combout ;
wire	\wav|lowb|LessThan0~1_combout ;
wire	\wav|lowb|LessThan0~2_combout ;
wire	\wav|lowb|LessThan0~3_combout ;
wire	\wav|lowb|LessThan0~4_combout ;
wire	\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ;
wire	\wav|lowb|clkout~0_combout ;
wire	\wav|lowb|clkout~q ;
wire	[15:0] \wav|lowb|cnt ;
//wire	\wav|lowb|cnt [0];
wire	\wav|lowb|cnt[0]~16_combout ;
wire	\wav|lowb|cnt[0]~17 ;
//wire	\wav|lowb|cnt [10];
wire	\wav|lowb|cnt[10]~36_combout ;
wire	\wav|lowb|cnt[10]~37 ;
//wire	\wav|lowb|cnt [11];
wire	\wav|lowb|cnt[11]~38_combout ;
wire	\wav|lowb|cnt[11]~39 ;
//wire	\wav|lowb|cnt [12];
wire	\wav|lowb|cnt[12]~40_combout ;
wire	\wav|lowb|cnt[12]~41 ;
//wire	\wav|lowb|cnt [13];
wire	\wav|lowb|cnt[13]~42_combout ;
wire	\wav|lowb|cnt[13]~43 ;
//wire	\wav|lowb|cnt [14];
wire	\wav|lowb|cnt[14]~44_combout ;
wire	\wav|lowb|cnt[14]~45 ;
//wire	\wav|lowb|cnt [15];
wire	\wav|lowb|cnt[15]~46_combout ;
//wire	\wav|lowb|cnt [1];
wire	\wav|lowb|cnt[1]~18_combout ;
wire	\wav|lowb|cnt[1]~19 ;
//wire	\wav|lowb|cnt [2];
wire	\wav|lowb|cnt[2]~20_combout ;
wire	\wav|lowb|cnt[2]~21 ;
//wire	\wav|lowb|cnt [3];
wire	\wav|lowb|cnt[3]~22_combout ;
wire	\wav|lowb|cnt[3]~23 ;
//wire	\wav|lowb|cnt [4];
wire	\wav|lowb|cnt[4]~24_combout ;
wire	\wav|lowb|cnt[4]~25 ;
//wire	\wav|lowb|cnt [5];
wire	\wav|lowb|cnt[5]~26_combout ;
wire	\wav|lowb|cnt[5]~27 ;
//wire	\wav|lowb|cnt [6];
wire	\wav|lowb|cnt[6]~28_combout ;
wire	\wav|lowb|cnt[6]~29 ;
//wire	\wav|lowb|cnt [7];
wire	\wav|lowb|cnt[7]~30_combout ;
wire	\wav|lowb|cnt[7]~31 ;
//wire	\wav|lowb|cnt [8];
wire	\wav|lowb|cnt[8]~32_combout ;
wire	\wav|lowb|cnt[8]~33 ;
//wire	\wav|lowb|cnt [9];
wire	\wav|lowb|cnt[9]~34_combout ;
wire	\wav|lowb|cnt[9]~35 ;
wire	\wav|lowg|LessThan0~1_RESYN22_BDD23 ;
wire	\wav|lowg|LessThan0~1_combout ;
wire	\wav|lowg|LessThan0~2_combout ;
wire	\wav|lowg|LessThan0~3_combout ;
wire	\wav|lowg|LessThan0~4_combout ;
wire	\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ;
wire	\wav|lowg|clkout~0_combout ;
wire	\wav|lowg|clkout~q ;
wire	[15:0] \wav|lowg|cnt ;
//wire	\wav|lowg|cnt [0];
wire	\wav|lowg|cnt[0]~16_combout ;
wire	\wav|lowg|cnt[0]~17 ;
//wire	\wav|lowg|cnt [10];
wire	\wav|lowg|cnt[10]~36_combout ;
wire	\wav|lowg|cnt[10]~37 ;
//wire	\wav|lowg|cnt [11];
wire	\wav|lowg|cnt[11]~38_combout ;
wire	\wav|lowg|cnt[11]~39 ;
//wire	\wav|lowg|cnt [12];
wire	\wav|lowg|cnt[12]~40_combout ;
wire	\wav|lowg|cnt[12]~41 ;
//wire	\wav|lowg|cnt [13];
wire	\wav|lowg|cnt[13]~42_combout ;
wire	\wav|lowg|cnt[13]~43 ;
//wire	\wav|lowg|cnt [14];
wire	\wav|lowg|cnt[14]~44_combout ;
wire	\wav|lowg|cnt[14]~45 ;
//wire	\wav|lowg|cnt [15];
wire	\wav|lowg|cnt[15]~46_combout ;
//wire	\wav|lowg|cnt [1];
wire	\wav|lowg|cnt[1]~18_combout ;
wire	\wav|lowg|cnt[1]~19 ;
//wire	\wav|lowg|cnt [2];
wire	\wav|lowg|cnt[2]~20_combout ;
wire	\wav|lowg|cnt[2]~21 ;
//wire	\wav|lowg|cnt [3];
wire	\wav|lowg|cnt[3]~22_combout ;
wire	\wav|lowg|cnt[3]~23 ;
//wire	\wav|lowg|cnt [4];
wire	\wav|lowg|cnt[4]~24_combout ;
wire	\wav|lowg|cnt[4]~25 ;
//wire	\wav|lowg|cnt [5];
wire	\wav|lowg|cnt[5]~26_combout ;
wire	\wav|lowg|cnt[5]~27 ;
//wire	\wav|lowg|cnt [6];
wire	\wav|lowg|cnt[6]~28_combout ;
wire	\wav|lowg|cnt[6]~29 ;
//wire	\wav|lowg|cnt [7];
wire	\wav|lowg|cnt[7]~30_combout ;
wire	\wav|lowg|cnt[7]~31 ;
//wire	\wav|lowg|cnt [8];
wire	\wav|lowg|cnt[8]~32_combout ;
wire	\wav|lowg|cnt[8]~33 ;
//wire	\wav|lowg|cnt [9];
wire	\wav|lowg|cnt[9]~34_combout ;
wire	\wav|lowg|cnt[9]~35 ;
wire	\wav|mode~0_combout ;
wire	\wav|mode~q ;
wire	\~ALTERA_ASDO_DATA1~~ibuf_o ;
wire	\~ALTERA_ASDO_DATA1~~padout ;
wire	\~ALTERA_DATA0~~ibuf_o ;
wire	\~ALTERA_DATA0~~padout ;
wire	\~ALTERA_FLASH_nCE_nCSO~~ibuf_o ;
wire	\~ALTERA_FLASH_nCE_nCSO~~padout ;
wire	\~GND~combout ;
wire	\~VCC~combout ;

wire vcc;
wire gnd;
assign vcc = 1'b1;
assign gnd = 1'b0;

alta_rio \BENCH_OUT~output (
	.padio(BENCH_OUT),
	.datain(\wav|Mux0~5_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \BENCH_OUT~output .coord_x = 0;
defparam \BENCH_OUT~output .coord_y = 9;
defparam \BENCH_OUT~output .coord_z = 0;
defparam \BENCH_OUT~output .IN_ASYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .IN_SYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .IN_POWERUP = 1'b0;
defparam \BENCH_OUT~output .OUT_REG_MODE = 1'b0;
defparam \BENCH_OUT~output .OUT_ASYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .OUT_SYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .OUT_POWERUP = 1'b0;
defparam \BENCH_OUT~output .OE_REG_MODE = 1'b0;
defparam \BENCH_OUT~output .OE_ASYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .OE_SYNC_MODE = 1'b0;
defparam \BENCH_OUT~output .OE_POWERUP = 1'b0;
defparam \BENCH_OUT~output .CFG_TRI_INPUT = 1'b0;
defparam \BENCH_OUT~output .CFG_PULL_UP = 1'b0;
defparam \BENCH_OUT~output .CFG_SLR = 1'b0;
defparam \BENCH_OUT~output .CFG_OPEN_DRAIN = 1'b0;
defparam \BENCH_OUT~output .CFG_PDRCTRL = 4'b0010;
defparam \BENCH_OUT~output .CFG_KEEP = 2'b00;
defparam \BENCH_OUT~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \BENCH_OUT~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \BENCH_OUT~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \BENCH_OUT~output .CFG_LVDS_IN_EN = 1'b0;
defparam \BENCH_OUT~output .DPCLK_DELAY = 4'b0000;
defparam \BENCH_OUT~output .OUT_DELAY = 1'b0;
defparam \BENCH_OUT~output .IN_DATA_DELAY = 3'b000;
defparam \BENCH_OUT~output .IN_REG_DELAY = 3'b000;

alta_rio \CLKO[0]~output (
	.padio(CLKO[0]),
	.datain(\dfh|Mux1~4_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \CLKO[0]~output .coord_x = 2;
defparam \CLKO[0]~output .coord_y = 9;
defparam \CLKO[0]~output .coord_z = 0;
defparam \CLKO[0]~output .IN_ASYNC_MODE = 1'b0;
defparam \CLKO[0]~output .IN_SYNC_MODE = 1'b0;
defparam \CLKO[0]~output .IN_POWERUP = 1'b0;
defparam \CLKO[0]~output .OUT_REG_MODE = 1'b0;
defparam \CLKO[0]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CLKO[0]~output .OUT_SYNC_MODE = 1'b0;
defparam \CLKO[0]~output .OUT_POWERUP = 1'b0;
defparam \CLKO[0]~output .OE_REG_MODE = 1'b0;
defparam \CLKO[0]~output .OE_ASYNC_MODE = 1'b0;
defparam \CLKO[0]~output .OE_SYNC_MODE = 1'b0;
defparam \CLKO[0]~output .OE_POWERUP = 1'b0;
defparam \CLKO[0]~output .CFG_TRI_INPUT = 1'b0;
defparam \CLKO[0]~output .CFG_PULL_UP = 1'b0;
defparam \CLKO[0]~output .CFG_SLR = 1'b0;
defparam \CLKO[0]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CLKO[0]~output .CFG_PDRCTRL = 4'b0010;
defparam \CLKO[0]~output .CFG_KEEP = 2'b00;
defparam \CLKO[0]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CLKO[0]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CLKO[0]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CLKO[0]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CLKO[0]~output .DPCLK_DELAY = 4'b0000;
defparam \CLKO[0]~output .OUT_DELAY = 1'b0;
defparam \CLKO[0]~output .IN_DATA_DELAY = 3'b000;
defparam \CLKO[0]~output .IN_REG_DELAY = 3'b000;

alta_rio \CLKO[1]~output (
	.padio(CLKO[1]),
	.datain(\dfh|Mux2~3_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \CLKO[1]~output .coord_x = 1;
defparam \CLKO[1]~output .coord_y = 9;
defparam \CLKO[1]~output .coord_z = 3;
defparam \CLKO[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \CLKO[1]~output .IN_SYNC_MODE = 1'b0;
defparam \CLKO[1]~output .IN_POWERUP = 1'b0;
defparam \CLKO[1]~output .OUT_REG_MODE = 1'b0;
defparam \CLKO[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CLKO[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \CLKO[1]~output .OUT_POWERUP = 1'b0;
defparam \CLKO[1]~output .OE_REG_MODE = 1'b0;
defparam \CLKO[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \CLKO[1]~output .OE_SYNC_MODE = 1'b0;
defparam \CLKO[1]~output .OE_POWERUP = 1'b0;
defparam \CLKO[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \CLKO[1]~output .CFG_PULL_UP = 1'b0;
defparam \CLKO[1]~output .CFG_SLR = 1'b0;
defparam \CLKO[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CLKO[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \CLKO[1]~output .CFG_KEEP = 2'b00;
defparam \CLKO[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CLKO[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CLKO[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CLKO[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CLKO[1]~output .DPCLK_DELAY = 4'b0000;
defparam \CLKO[1]~output .OUT_DELAY = 1'b0;
defparam \CLKO[1]~output .IN_DATA_DELAY = 3'b000;
defparam \CLKO[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \CLKO[2]~output (
	.padio(CLKO[2]),
	.datain(\dfh|Mux3~5_combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \CLKO[2]~output .coord_x = 0;
defparam \CLKO[2]~output .coord_y = 9;
defparam \CLKO[2]~output .coord_z = 2;
defparam \CLKO[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \CLKO[2]~output .IN_SYNC_MODE = 1'b0;
defparam \CLKO[2]~output .IN_POWERUP = 1'b0;
defparam \CLKO[2]~output .OUT_REG_MODE = 1'b0;
defparam \CLKO[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \CLKO[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \CLKO[2]~output .OUT_POWERUP = 1'b0;
defparam \CLKO[2]~output .OE_REG_MODE = 1'b0;
defparam \CLKO[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \CLKO[2]~output .OE_SYNC_MODE = 1'b0;
defparam \CLKO[2]~output .OE_POWERUP = 1'b0;
defparam \CLKO[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \CLKO[2]~output .CFG_PULL_UP = 1'b0;
defparam \CLKO[2]~output .CFG_SLR = 1'b0;
defparam \CLKO[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \CLKO[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \CLKO[2]~output .CFG_KEEP = 2'b00;
defparam \CLKO[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \CLKO[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CLKO[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \CLKO[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \CLKO[2]~output .DPCLK_DELAY = 4'b0000;
defparam \CLKO[2]~output .OUT_DELAY = 1'b0;
defparam \CLKO[2]~output .IN_DATA_DELAY = 3'b000;
defparam \CLKO[2]~output .IN_REG_DELAY = 3'b000;

alta_rio \CLK~input (
	.padio(CLK),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\CLK~input_o ),
	.regout());
defparam \CLK~input .coord_x = 4;
defparam \CLK~input .coord_y = 1;
defparam \CLK~input .coord_z = 0;
defparam \CLK~input .IN_ASYNC_MODE = 1'b0;
defparam \CLK~input .IN_SYNC_MODE = 1'b0;
defparam \CLK~input .IN_POWERUP = 1'b0;
defparam \CLK~input .OUT_REG_MODE = 1'b0;
defparam \CLK~input .OUT_ASYNC_MODE = 1'b0;
defparam \CLK~input .OUT_SYNC_MODE = 1'b0;
defparam \CLK~input .OUT_POWERUP = 1'b0;
defparam \CLK~input .OE_REG_MODE = 1'b0;
defparam \CLK~input .OE_ASYNC_MODE = 1'b0;
defparam \CLK~input .OE_SYNC_MODE = 1'b0;
defparam \CLK~input .OE_POWERUP = 1'b0;
defparam \CLK~input .CFG_TRI_INPUT = 1'b0;
defparam \CLK~input .CFG_PULL_UP = 1'b0;
defparam \CLK~input .CFG_SLR = 1'b0;
defparam \CLK~input .CFG_OPEN_DRAIN = 1'b0;
defparam \CLK~input .CFG_PDRCTRL = 4'b0010;
defparam \CLK~input .CFG_KEEP = 2'b00;
defparam \CLK~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \CLK~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \CLK~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \CLK~input .CFG_LVDS_IN_EN = 1'b0;
defparam \CLK~input .DPCLK_DELAY = 4'b0000;
defparam \CLK~input .OUT_DELAY = 1'b0;
defparam \CLK~input .IN_DATA_DELAY = 3'b000;
defparam \CLK~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \CLK~inputclkctrl (
	.inclk(\CLK~input_o ),
	.outclk(\CLK~inputclkctrl_outclk ));
defparam \CLK~inputclkctrl .coord_x = 4;
defparam \CLK~inputclkctrl .coord_y = 1;
defparam \CLK~inputclkctrl .coord_z = 0;

alta_rio \KEY[1]~input (
	.padio(KEY[1]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\KEY[1]~input_o ),
	.regout());
defparam \KEY[1]~input .coord_x = 2;
defparam \KEY[1]~input .coord_y = 1;
defparam \KEY[1]~input .coord_z = 2;
defparam \KEY[1]~input .IN_ASYNC_MODE = 1'b0;
defparam \KEY[1]~input .IN_SYNC_MODE = 1'b0;
defparam \KEY[1]~input .IN_POWERUP = 1'b0;
defparam \KEY[1]~input .OUT_REG_MODE = 1'b0;
defparam \KEY[1]~input .OUT_ASYNC_MODE = 1'b0;
defparam \KEY[1]~input .OUT_SYNC_MODE = 1'b0;
defparam \KEY[1]~input .OUT_POWERUP = 1'b0;
defparam \KEY[1]~input .OE_REG_MODE = 1'b0;
defparam \KEY[1]~input .OE_ASYNC_MODE = 1'b0;
defparam \KEY[1]~input .OE_SYNC_MODE = 1'b0;
defparam \KEY[1]~input .OE_POWERUP = 1'b0;
defparam \KEY[1]~input .CFG_TRI_INPUT = 1'b0;
defparam \KEY[1]~input .CFG_PULL_UP = 1'b0;
defparam \KEY[1]~input .CFG_SLR = 1'b0;
defparam \KEY[1]~input .CFG_OPEN_DRAIN = 1'b0;
defparam \KEY[1]~input .CFG_PDRCTRL = 4'b0010;
defparam \KEY[1]~input .CFG_KEEP = 2'b00;
defparam \KEY[1]~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \KEY[1]~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \KEY[1]~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \KEY[1]~input .CFG_LVDS_IN_EN = 1'b0;
defparam \KEY[1]~input .DPCLK_DELAY = 4'b0000;
defparam \KEY[1]~input .OUT_DELAY = 1'b0;
defparam \KEY[1]~input .IN_DATA_DELAY = 3'b000;
defparam \KEY[1]~input .IN_REG_DELAY = 3'b000;

alta_rio \KEY[2]~input (
	.padio(KEY[2]),
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(\KEY[2]~input_o ),
	.regout());
defparam \KEY[2]~input .coord_x = 1;
defparam \KEY[2]~input .coord_y = 9;
defparam \KEY[2]~input .coord_z = 1;
defparam \KEY[2]~input .IN_ASYNC_MODE = 1'b0;
defparam \KEY[2]~input .IN_SYNC_MODE = 1'b0;
defparam \KEY[2]~input .IN_POWERUP = 1'b0;
defparam \KEY[2]~input .OUT_REG_MODE = 1'b0;
defparam \KEY[2]~input .OUT_ASYNC_MODE = 1'b0;
defparam \KEY[2]~input .OUT_SYNC_MODE = 1'b0;
defparam \KEY[2]~input .OUT_POWERUP = 1'b0;
defparam \KEY[2]~input .OE_REG_MODE = 1'b0;
defparam \KEY[2]~input .OE_ASYNC_MODE = 1'b0;
defparam \KEY[2]~input .OE_SYNC_MODE = 1'b0;
defparam \KEY[2]~input .OE_POWERUP = 1'b0;
defparam \KEY[2]~input .CFG_TRI_INPUT = 1'b0;
defparam \KEY[2]~input .CFG_PULL_UP = 1'b0;
defparam \KEY[2]~input .CFG_SLR = 1'b0;
defparam \KEY[2]~input .CFG_OPEN_DRAIN = 1'b0;
defparam \KEY[2]~input .CFG_PDRCTRL = 4'b0010;
defparam \KEY[2]~input .CFG_KEEP = 2'b00;
defparam \KEY[2]~input .CFG_LVDS_OUT_EN = 1'b0;
defparam \KEY[2]~input .CFG_LVDS_SEL_CUA = 2'b00;
defparam \KEY[2]~input .CFG_LVDS_IREF = 10'b0110000000;
defparam \KEY[2]~input .CFG_LVDS_IN_EN = 1'b0;
defparam \KEY[2]~input .DPCLK_DELAY = 4'b0000;
defparam \KEY[2]~input .OUT_DELAY = 1'b0;
defparam \KEY[2]~input .IN_DATA_DELAY = 3'b000;
defparam \KEY[2]~input .IN_REG_DELAY = 3'b000;

alta_io_gclk \KEY[2]~inputclkctrl (
	.inclk(\KEY[2]~input_o ),
	.outclk(\KEY[2]~inputclkctrl_outclk ));
defparam \KEY[2]~inputclkctrl .coord_x = 5;
defparam \KEY[2]~inputclkctrl .coord_y = 9;
defparam \KEY[2]~inputclkctrl .coord_z = 0;

alta_rio \LED[1]~output (
	.padio(LED[1]),
	.datain(\dfh_jiezou|tick~q ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED[1]~output .coord_x = 6;
defparam \LED[1]~output .coord_y = 9;
defparam \LED[1]~output .coord_z = 2;
defparam \LED[1]~output .IN_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .IN_SYNC_MODE = 1'b0;
defparam \LED[1]~output .IN_POWERUP = 1'b0;
defparam \LED[1]~output .OUT_REG_MODE = 1'b0;
defparam \LED[1]~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .OUT_SYNC_MODE = 1'b0;
defparam \LED[1]~output .OUT_POWERUP = 1'b0;
defparam \LED[1]~output .OE_REG_MODE = 1'b0;
defparam \LED[1]~output .OE_ASYNC_MODE = 1'b0;
defparam \LED[1]~output .OE_SYNC_MODE = 1'b0;
defparam \LED[1]~output .OE_POWERUP = 1'b0;
defparam \LED[1]~output .CFG_TRI_INPUT = 1'b0;
defparam \LED[1]~output .CFG_PULL_UP = 1'b0;
defparam \LED[1]~output .CFG_SLR = 1'b0;
defparam \LED[1]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED[1]~output .CFG_PDRCTRL = 4'b0010;
defparam \LED[1]~output .CFG_KEEP = 2'b00;
defparam \LED[1]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED[1]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED[1]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED[1]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED[1]~output .DPCLK_DELAY = 4'b0000;
defparam \LED[1]~output .OUT_DELAY = 1'b0;
defparam \LED[1]~output .IN_DATA_DELAY = 3'b000;
defparam \LED[1]~output .IN_REG_DELAY = 3'b000;

alta_rio \LED[2]~output (
	.padio(LED[2]),
	.datain(!\KEY[1]~input_o ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.combout(),
	.regout());
defparam \LED[2]~output .coord_x = 7;
defparam \LED[2]~output .coord_y = 1;
defparam \LED[2]~output .coord_z = 0;
defparam \LED[2]~output .IN_ASYNC_MODE = 1'b0;
defparam \LED[2]~output .IN_SYNC_MODE = 1'b0;
defparam \LED[2]~output .IN_POWERUP = 1'b0;
defparam \LED[2]~output .OUT_REG_MODE = 1'b0;
defparam \LED[2]~output .OUT_ASYNC_MODE = 1'b0;
defparam \LED[2]~output .OUT_SYNC_MODE = 1'b0;
defparam \LED[2]~output .OUT_POWERUP = 1'b0;
defparam \LED[2]~output .OE_REG_MODE = 1'b0;
defparam \LED[2]~output .OE_ASYNC_MODE = 1'b0;
defparam \LED[2]~output .OE_SYNC_MODE = 1'b0;
defparam \LED[2]~output .OE_POWERUP = 1'b0;
defparam \LED[2]~output .CFG_TRI_INPUT = 1'b0;
defparam \LED[2]~output .CFG_PULL_UP = 1'b0;
defparam \LED[2]~output .CFG_SLR = 1'b0;
defparam \LED[2]~output .CFG_OPEN_DRAIN = 1'b0;
defparam \LED[2]~output .CFG_PDRCTRL = 4'b0010;
defparam \LED[2]~output .CFG_KEEP = 2'b00;
defparam \LED[2]~output .CFG_LVDS_OUT_EN = 1'b0;
defparam \LED[2]~output .CFG_LVDS_SEL_CUA = 2'b00;
defparam \LED[2]~output .CFG_LVDS_IREF = 10'b0110000000;
defparam \LED[2]~output .CFG_LVDS_IN_EN = 1'b0;
defparam \LED[2]~output .DPCLK_DELAY = 4'b0000;
defparam \LED[2]~output .OUT_DELAY = 1'b0;
defparam \LED[2]~output .IN_DATA_DELAY = 3'b000;
defparam \LED[2]~output .IN_REG_DELAY = 3'b000;

alta_asyncctrl asyncreset_ctrl_X10_Y1_N0(
	.Din(),
	.Dout(AsyncReset_X10_Y1_GND));
defparam asyncreset_ctrl_X10_Y1_N0.coord_x = 7;
defparam asyncreset_ctrl_X10_Y1_N0.coord_y = 3;
defparam asyncreset_ctrl_X10_Y1_N0.coord_z = 0;
defparam asyncreset_ctrl_X10_Y1_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X10_Y2_N0(
	.Din(),
	.Dout(AsyncReset_X10_Y2_GND));
defparam asyncreset_ctrl_X10_Y2_N0.coord_x = 7;
defparam asyncreset_ctrl_X10_Y2_N0.coord_y = 4;
defparam asyncreset_ctrl_X10_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X10_Y2_N0.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X10_Y4_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X10_Y4_SIG ));
defparam asyncreset_ctrl_X10_Y4_N0.coord_x = 11;
defparam asyncreset_ctrl_X10_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X10_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X10_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X12_Y2_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X12_Y2_SIG ));
defparam asyncreset_ctrl_X12_Y2_N0.coord_x = 12;
defparam asyncreset_ctrl_X12_Y2_N0.coord_y = 6;
defparam asyncreset_ctrl_X12_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X12_Y2_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X12_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X12_Y5_SIG ));
defparam asyncreset_ctrl_X12_Y5_N0.coord_x = 1;
defparam asyncreset_ctrl_X12_Y5_N0.coord_y = 6;
defparam asyncreset_ctrl_X12_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X12_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X13_Y2_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X13_Y2_SIG ));
defparam asyncreset_ctrl_X13_Y2_N0.coord_x = 11;
defparam asyncreset_ctrl_X13_Y2_N0.coord_y = 6;
defparam asyncreset_ctrl_X13_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X13_Y2_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X13_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ));
defparam asyncreset_ctrl_X13_Y5_N0.coord_x = 2;
defparam asyncreset_ctrl_X13_Y5_N0.coord_y = 6;
defparam asyncreset_ctrl_X13_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X13_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X1_Y4_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X1_Y4_SIG ));
defparam asyncreset_ctrl_X1_Y4_N0.coord_x = 6;
defparam asyncreset_ctrl_X1_Y4_N0.coord_y = 5;
defparam asyncreset_ctrl_X1_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X1_Y8_N0(
	.Din(\KEY[2]~inputclkctrl_outclk ),
	.Dout(\KEY[2]~inputclkctrl_outclk__AsyncReset_X1_Y8_INV ));
defparam asyncreset_ctrl_X1_Y8_N0.coord_x = 6;
defparam asyncreset_ctrl_X1_Y8_N0.coord_y = 8;
defparam asyncreset_ctrl_X1_Y8_N0.coord_z = 0;
defparam asyncreset_ctrl_X1_Y8_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X1_Y8_N1(
	.Din(),
	.Dout(AsyncReset_X1_Y8_GND));
defparam asyncreset_ctrl_X1_Y8_N1.coord_x = 6;
defparam asyncreset_ctrl_X1_Y8_N1.coord_y = 8;
defparam asyncreset_ctrl_X1_Y8_N1.coord_z = 1;
defparam asyncreset_ctrl_X1_Y8_N1.AsyncCtrlMux = 2'b00;

alta_asyncctrl asyncreset_ctrl_X2_Y4_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ));
defparam asyncreset_ctrl_X2_Y4_N0.coord_x = 5;
defparam asyncreset_ctrl_X2_Y4_N0.coord_y = 5;
defparam asyncreset_ctrl_X2_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X2_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ));
defparam asyncreset_ctrl_X2_Y5_N0.coord_x = 5;
defparam asyncreset_ctrl_X2_Y5_N0.coord_y = 6;
defparam asyncreset_ctrl_X2_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X2_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X3_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X3_Y5_SIG ));
defparam asyncreset_ctrl_X3_Y5_N0.coord_x = 4;
defparam asyncreset_ctrl_X3_Y5_N0.coord_y = 6;
defparam asyncreset_ctrl_X3_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X3_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X5_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ));
defparam asyncreset_ctrl_X5_Y5_N0.coord_x = 0;
defparam asyncreset_ctrl_X5_Y5_N0.coord_y = 4;
defparam asyncreset_ctrl_X5_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X5_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y2_N0(
	.Din(\KEY[2]~inputclkctrl_outclk ),
	.Dout(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ));
defparam asyncreset_ctrl_X6_Y2_N0.coord_x = 0;
defparam asyncreset_ctrl_X6_Y2_N0.coord_y = 8;
defparam asyncreset_ctrl_X6_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y2_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X6_Y3_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ));
defparam asyncreset_ctrl_X6_Y3_N0.coord_x = 1;
defparam asyncreset_ctrl_X6_Y3_N0.coord_y = 3;
defparam asyncreset_ctrl_X6_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y5_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y5_SIG ));
defparam asyncreset_ctrl_X6_Y5_N0.coord_x = 1;
defparam asyncreset_ctrl_X6_Y5_N0.coord_y = 4;
defparam asyncreset_ctrl_X6_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y5_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y6_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ));
defparam asyncreset_ctrl_X6_Y6_N0.coord_x = 2;
defparam asyncreset_ctrl_X6_Y6_N0.coord_y = 8;
defparam asyncreset_ctrl_X6_Y6_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y6_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y7_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ));
defparam asyncreset_ctrl_X6_Y7_N0.coord_x = 7;
defparam asyncreset_ctrl_X6_Y7_N0.coord_y = 7;
defparam asyncreset_ctrl_X6_Y7_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y7_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X6_Y8_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ));
defparam asyncreset_ctrl_X6_Y8_N0.coord_x = 4;
defparam asyncreset_ctrl_X6_Y8_N0.coord_y = 7;
defparam asyncreset_ctrl_X6_Y8_N0.coord_z = 0;
defparam asyncreset_ctrl_X6_Y8_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y3_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y3_SIG ));
defparam asyncreset_ctrl_X7_Y3_N0.coord_x = 0;
defparam asyncreset_ctrl_X7_Y3_N0.coord_y = 3;
defparam asyncreset_ctrl_X7_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y4_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X7_Y4_SIG ));
defparam asyncreset_ctrl_X7_Y4_N0.coord_x = 7;
defparam asyncreset_ctrl_X7_Y4_N0.coord_y = 5;
defparam asyncreset_ctrl_X7_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y5_N0(
	.Din(\KEY[2]~inputclkctrl_outclk ),
	.Dout(\KEY[2]~inputclkctrl_outclk__AsyncReset_X7_Y5_INV ));
defparam asyncreset_ctrl_X7_Y5_N0.coord_x = 7;
defparam asyncreset_ctrl_X7_Y5_N0.coord_y = 8;
defparam asyncreset_ctrl_X7_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y5_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X7_Y6_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y6_SIG ));
defparam asyncreset_ctrl_X7_Y6_N0.coord_x = 1;
defparam asyncreset_ctrl_X7_Y6_N0.coord_y = 8;
defparam asyncreset_ctrl_X7_Y6_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y6_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y7_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y7_SIG ));
defparam asyncreset_ctrl_X7_Y7_N0.coord_x = 6;
defparam asyncreset_ctrl_X7_Y7_N0.coord_y = 7;
defparam asyncreset_ctrl_X7_Y7_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y7_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X7_Y8_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y8_SIG ));
defparam asyncreset_ctrl_X7_Y8_N0.coord_x = 5;
defparam asyncreset_ctrl_X7_Y8_N0.coord_y = 7;
defparam asyncreset_ctrl_X7_Y8_N0.coord_z = 0;
defparam asyncreset_ctrl_X7_Y8_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X8_Y2_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ));
defparam asyncreset_ctrl_X8_Y2_N0.coord_x = 5;
defparam asyncreset_ctrl_X8_Y2_N0.coord_y = 4;
defparam asyncreset_ctrl_X8_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y2_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X8_Y3_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y3_SIG ));
defparam asyncreset_ctrl_X8_Y3_N0.coord_x = 1;
defparam asyncreset_ctrl_X8_Y3_N0.coord_y = 7;
defparam asyncreset_ctrl_X8_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X8_Y4_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X8_Y4_SIG ));
defparam asyncreset_ctrl_X8_Y4_N0.coord_x = 8;
defparam asyncreset_ctrl_X8_Y4_N0.coord_y = 5;
defparam asyncreset_ctrl_X8_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X8_Y5_N0(
	.Din(\KEY[2]~inputclkctrl_outclk ),
	.Dout(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ));
defparam asyncreset_ctrl_X8_Y5_N0.coord_x = 8;
defparam asyncreset_ctrl_X8_Y5_N0.coord_y = 8;
defparam asyncreset_ctrl_X8_Y5_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y5_N0.AsyncCtrlMux = 2'b11;

alta_asyncctrl asyncreset_ctrl_X8_Y6_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y6_SIG ));
defparam asyncreset_ctrl_X8_Y6_N0.coord_x = 1;
defparam asyncreset_ctrl_X8_Y6_N0.coord_y = 5;
defparam asyncreset_ctrl_X8_Y6_N0.coord_z = 0;
defparam asyncreset_ctrl_X8_Y6_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X9_Y2_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ));
defparam asyncreset_ctrl_X9_Y2_N0.coord_x = 6;
defparam asyncreset_ctrl_X9_Y2_N0.coord_y = 4;
defparam asyncreset_ctrl_X9_Y2_N0.coord_z = 0;
defparam asyncreset_ctrl_X9_Y2_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X9_Y3_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ));
defparam asyncreset_ctrl_X9_Y3_N0.coord_x = 2;
defparam asyncreset_ctrl_X9_Y3_N0.coord_y = 7;
defparam asyncreset_ctrl_X9_Y3_N0.coord_z = 0;
defparam asyncreset_ctrl_X9_Y3_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X9_Y4_N0(
	.Din(\nRst~combout ),
	.Dout(\nRst~combout__AsyncReset_X9_Y4_SIG ));
defparam asyncreset_ctrl_X9_Y4_N0.coord_x = 12;
defparam asyncreset_ctrl_X9_Y4_N0.coord_y = 8;
defparam asyncreset_ctrl_X9_Y4_N0.coord_z = 0;
defparam asyncreset_ctrl_X9_Y4_N0.AsyncCtrlMux = 2'b10;

alta_asyncctrl asyncreset_ctrl_X9_Y6_N0(
	.Din(\dfh_jiezou|tick~clkctrl_outclk ),
	.Dout(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ));
defparam asyncreset_ctrl_X9_Y6_N0.coord_x = 0;
defparam asyncreset_ctrl_X9_Y6_N0.coord_y = 5;
defparam asyncreset_ctrl_X9_Y6_N0.coord_z = 0;
defparam asyncreset_ctrl_X9_Y6_N0.AsyncCtrlMux = 2'b10;

alta_slice \c0|LessThan0~0 (
	.A(\c0|cnt [1]),
	.B(\c0|cnt [0]),
	.C(\c0|cnt [3]),
	.D(\c0|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \c0|LessThan0~0 .coord_x = 7;
defparam \c0|LessThan0~0 .coord_y = 5;
defparam \c0|LessThan0~0 .coord_z = 12;
defparam \c0|LessThan0~0 .mask = 16'h010F;
defparam \c0|LessThan0~0 .modeMux = 1'b0;
defparam \c0|LessThan0~0 .FeedbackMux = 1'b0;
defparam \c0|LessThan0~0 .ShiftMux = 1'b0;
defparam \c0|LessThan0~0 .BypassEn = 1'b0;
defparam \c0|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \c0|LessThan0~1 (
	.A(\c0|cnt [4]),
	.B(\c0|cnt [5]),
	.C(\c0|cnt [6]),
	.D(\c0|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \c0|LessThan0~1 .coord_x = 7;
defparam \c0|LessThan0~1 .coord_y = 5;
defparam \c0|LessThan0~1 .coord_z = 5;
defparam \c0|LessThan0~1 .mask = 16'h0001;
defparam \c0|LessThan0~1 .modeMux = 1'b0;
defparam \c0|LessThan0~1 .FeedbackMux = 1'b0;
defparam \c0|LessThan0~1 .ShiftMux = 1'b0;
defparam \c0|LessThan0~1 .BypassEn = 1'b0;
defparam \c0|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \c0|LessThan0~2 (
	.A(\c0|cnt [8]),
	.B(\c0|cnt [9]),
	.C(\c0|cnt [11]),
	.D(\c0|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \c0|LessThan0~2 .coord_x = 7;
defparam \c0|LessThan0~2 .coord_y = 5;
defparam \c0|LessThan0~2 .coord_z = 6;
defparam \c0|LessThan0~2 .mask = 16'h0001;
defparam \c0|LessThan0~2 .modeMux = 1'b0;
defparam \c0|LessThan0~2 .FeedbackMux = 1'b0;
defparam \c0|LessThan0~2 .ShiftMux = 1'b0;
defparam \c0|LessThan0~2 .BypassEn = 1'b0;
defparam \c0|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \c0|LessThan0~3 (
	.A(\c0|cnt [12]),
	.B(\c0|cnt [13]),
	.C(\c0|cnt [15]),
	.D(\c0|cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \c0|LessThan0~3 .coord_x = 7;
defparam \c0|LessThan0~3 .coord_y = 5;
defparam \c0|LessThan0~3 .coord_z = 2;
defparam \c0|LessThan0~3 .mask = 16'h0001;
defparam \c0|LessThan0~3 .modeMux = 1'b0;
defparam \c0|LessThan0~3 .FeedbackMux = 1'b0;
defparam \c0|LessThan0~3 .ShiftMux = 1'b0;
defparam \c0|LessThan0~3 .BypassEn = 1'b0;
defparam \c0|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \c0|LessThan0~4 (
	.A(\c0|LessThan0~0_combout ),
	.B(\c0|LessThan0~1_combout ),
	.C(\c0|LessThan0~2_combout ),
	.D(\c0|LessThan0~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \c0|LessThan0~4 .coord_x = 7;
defparam \c0|LessThan0~4 .coord_y = 5;
defparam \c0|LessThan0~4 .coord_z = 3;
defparam \c0|LessThan0~4 .mask = 16'h7FFF;
defparam \c0|LessThan0~4 .modeMux = 1'b0;
defparam \c0|LessThan0~4 .FeedbackMux = 1'b0;
defparam \c0|LessThan0~4 .ShiftMux = 1'b0;
defparam \c0|LessThan0~4 .BypassEn = 1'b0;
defparam \c0|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \c0|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\c0|LessThan0~4_combout ),
	.Cin(),
	.Qin(\c0|clkout~q ),
	.Clk(\p0|PLL_D84CC99B.clkout1_X7_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X7_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c0|clkout~0_combout ),
	.Cout(),
	.Q(\c0|clkout~q ));
defparam \c0|clkout .coord_x = 7;
defparam \c0|clkout .coord_y = 5;
defparam \c0|clkout .coord_z = 15;
defparam \c0|clkout .mask = 16'h0FF0;
defparam \c0|clkout .modeMux = 1'b0;
defparam \c0|clkout .FeedbackMux = 1'b1;
defparam \c0|clkout .ShiftMux = 1'b0;
defparam \c0|clkout .BypassEn = 1'b0;
defparam \c0|clkout .CarryEnb = 1'b1;

alta_io_gclk \c0|clkout~clkctrl (
	.inclk(\c0|clkout~q ),
	.outclk(\c0|clkout~clkctrl_outclk ));
defparam \c0|clkout~clkctrl .coord_x = 6;
defparam \c0|clkout~clkctrl .coord_y = 1;
defparam \c0|clkout~clkctrl .coord_z = 0;

alta_slice \c0|cnt[0] (
	.A(vcc),
	.B(\c0|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\c0|cnt [0]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[0]~16_combout ),
	.Cout(\c0|cnt[0]~17 ),
	.Q(\c0|cnt [0]));
defparam \c0|cnt[0] .coord_x = 8;
defparam \c0|cnt[0] .coord_y = 5;
defparam \c0|cnt[0] .coord_z = 0;
defparam \c0|cnt[0] .mask = 16'h33CC;
defparam \c0|cnt[0] .modeMux = 1'b0;
defparam \c0|cnt[0] .FeedbackMux = 1'b0;
defparam \c0|cnt[0] .ShiftMux = 1'b0;
defparam \c0|cnt[0] .BypassEn = 1'b1;
defparam \c0|cnt[0] .CarryEnb = 1'b0;

alta_slice \c0|cnt[10] (
	.A(vcc),
	.B(\c0|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[9]~35 ),
	.Qin(\c0|cnt [10]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[10]~36_combout ),
	.Cout(\c0|cnt[10]~37 ),
	.Q(\c0|cnt [10]));
defparam \c0|cnt[10] .coord_x = 8;
defparam \c0|cnt[10] .coord_y = 5;
defparam \c0|cnt[10] .coord_z = 10;
defparam \c0|cnt[10] .mask = 16'hC30C;
defparam \c0|cnt[10] .modeMux = 1'b1;
defparam \c0|cnt[10] .FeedbackMux = 1'b0;
defparam \c0|cnt[10] .ShiftMux = 1'b0;
defparam \c0|cnt[10] .BypassEn = 1'b1;
defparam \c0|cnt[10] .CarryEnb = 1'b0;

alta_slice \c0|cnt[11] (
	.A(vcc),
	.B(\c0|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[10]~37 ),
	.Qin(\c0|cnt [11]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[11]~38_combout ),
	.Cout(\c0|cnt[11]~39 ),
	.Q(\c0|cnt [11]));
defparam \c0|cnt[11] .coord_x = 8;
defparam \c0|cnt[11] .coord_y = 5;
defparam \c0|cnt[11] .coord_z = 11;
defparam \c0|cnt[11] .mask = 16'h3C3F;
defparam \c0|cnt[11] .modeMux = 1'b1;
defparam \c0|cnt[11] .FeedbackMux = 1'b0;
defparam \c0|cnt[11] .ShiftMux = 1'b0;
defparam \c0|cnt[11] .BypassEn = 1'b1;
defparam \c0|cnt[11] .CarryEnb = 1'b0;

alta_slice \c0|cnt[12] (
	.A(vcc),
	.B(\c0|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[11]~39 ),
	.Qin(\c0|cnt [12]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[12]~40_combout ),
	.Cout(\c0|cnt[12]~41 ),
	.Q(\c0|cnt [12]));
defparam \c0|cnt[12] .coord_x = 8;
defparam \c0|cnt[12] .coord_y = 5;
defparam \c0|cnt[12] .coord_z = 12;
defparam \c0|cnt[12] .mask = 16'hC30C;
defparam \c0|cnt[12] .modeMux = 1'b1;
defparam \c0|cnt[12] .FeedbackMux = 1'b0;
defparam \c0|cnt[12] .ShiftMux = 1'b0;
defparam \c0|cnt[12] .BypassEn = 1'b1;
defparam \c0|cnt[12] .CarryEnb = 1'b0;

alta_slice \c0|cnt[13] (
	.A(vcc),
	.B(\c0|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[12]~41 ),
	.Qin(\c0|cnt [13]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[13]~42_combout ),
	.Cout(\c0|cnt[13]~43 ),
	.Q(\c0|cnt [13]));
defparam \c0|cnt[13] .coord_x = 8;
defparam \c0|cnt[13] .coord_y = 5;
defparam \c0|cnt[13] .coord_z = 13;
defparam \c0|cnt[13] .mask = 16'h3C3F;
defparam \c0|cnt[13] .modeMux = 1'b1;
defparam \c0|cnt[13] .FeedbackMux = 1'b0;
defparam \c0|cnt[13] .ShiftMux = 1'b0;
defparam \c0|cnt[13] .BypassEn = 1'b1;
defparam \c0|cnt[13] .CarryEnb = 1'b0;

alta_slice \c0|cnt[14] (
	.A(vcc),
	.B(\c0|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[13]~43 ),
	.Qin(\c0|cnt [14]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[14]~44_combout ),
	.Cout(\c0|cnt[14]~45 ),
	.Q(\c0|cnt [14]));
defparam \c0|cnt[14] .coord_x = 8;
defparam \c0|cnt[14] .coord_y = 5;
defparam \c0|cnt[14] .coord_z = 14;
defparam \c0|cnt[14] .mask = 16'hC30C;
defparam \c0|cnt[14] .modeMux = 1'b1;
defparam \c0|cnt[14] .FeedbackMux = 1'b0;
defparam \c0|cnt[14] .ShiftMux = 1'b0;
defparam \c0|cnt[14] .BypassEn = 1'b1;
defparam \c0|cnt[14] .CarryEnb = 1'b0;

alta_slice \c0|cnt[15] (
	.A(vcc),
	.B(\c0|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[14]~45 ),
	.Qin(\c0|cnt [15]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[15]~46_combout ),
	.Cout(),
	.Q(\c0|cnt [15]));
defparam \c0|cnt[15] .coord_x = 8;
defparam \c0|cnt[15] .coord_y = 5;
defparam \c0|cnt[15] .coord_z = 15;
defparam \c0|cnt[15] .mask = 16'h3C3C;
defparam \c0|cnt[15] .modeMux = 1'b1;
defparam \c0|cnt[15] .FeedbackMux = 1'b0;
defparam \c0|cnt[15] .ShiftMux = 1'b0;
defparam \c0|cnt[15] .BypassEn = 1'b1;
defparam \c0|cnt[15] .CarryEnb = 1'b1;

alta_slice \c0|cnt[1] (
	.A(vcc),
	.B(\c0|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[0]~17 ),
	.Qin(\c0|cnt [1]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[1]~18_combout ),
	.Cout(\c0|cnt[1]~19 ),
	.Q(\c0|cnt [1]));
defparam \c0|cnt[1] .coord_x = 8;
defparam \c0|cnt[1] .coord_y = 5;
defparam \c0|cnt[1] .coord_z = 1;
defparam \c0|cnt[1] .mask = 16'h3C3F;
defparam \c0|cnt[1] .modeMux = 1'b1;
defparam \c0|cnt[1] .FeedbackMux = 1'b0;
defparam \c0|cnt[1] .ShiftMux = 1'b0;
defparam \c0|cnt[1] .BypassEn = 1'b1;
defparam \c0|cnt[1] .CarryEnb = 1'b0;

alta_slice \c0|cnt[2] (
	.A(vcc),
	.B(\c0|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[1]~19 ),
	.Qin(\c0|cnt [2]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[2]~20_combout ),
	.Cout(\c0|cnt[2]~21 ),
	.Q(\c0|cnt [2]));
defparam \c0|cnt[2] .coord_x = 8;
defparam \c0|cnt[2] .coord_y = 5;
defparam \c0|cnt[2] .coord_z = 2;
defparam \c0|cnt[2] .mask = 16'hC30C;
defparam \c0|cnt[2] .modeMux = 1'b1;
defparam \c0|cnt[2] .FeedbackMux = 1'b0;
defparam \c0|cnt[2] .ShiftMux = 1'b0;
defparam \c0|cnt[2] .BypassEn = 1'b1;
defparam \c0|cnt[2] .CarryEnb = 1'b0;

alta_slice \c0|cnt[3] (
	.A(vcc),
	.B(\c0|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[2]~21 ),
	.Qin(\c0|cnt [3]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[3]~22_combout ),
	.Cout(\c0|cnt[3]~23 ),
	.Q(\c0|cnt [3]));
defparam \c0|cnt[3] .coord_x = 8;
defparam \c0|cnt[3] .coord_y = 5;
defparam \c0|cnt[3] .coord_z = 3;
defparam \c0|cnt[3] .mask = 16'h3C3F;
defparam \c0|cnt[3] .modeMux = 1'b1;
defparam \c0|cnt[3] .FeedbackMux = 1'b0;
defparam \c0|cnt[3] .ShiftMux = 1'b0;
defparam \c0|cnt[3] .BypassEn = 1'b1;
defparam \c0|cnt[3] .CarryEnb = 1'b0;

alta_slice \c0|cnt[4] (
	.A(vcc),
	.B(\c0|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[3]~23 ),
	.Qin(\c0|cnt [4]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[4]~24_combout ),
	.Cout(\c0|cnt[4]~25 ),
	.Q(\c0|cnt [4]));
defparam \c0|cnt[4] .coord_x = 8;
defparam \c0|cnt[4] .coord_y = 5;
defparam \c0|cnt[4] .coord_z = 4;
defparam \c0|cnt[4] .mask = 16'hC30C;
defparam \c0|cnt[4] .modeMux = 1'b1;
defparam \c0|cnt[4] .FeedbackMux = 1'b0;
defparam \c0|cnt[4] .ShiftMux = 1'b0;
defparam \c0|cnt[4] .BypassEn = 1'b1;
defparam \c0|cnt[4] .CarryEnb = 1'b0;

alta_slice \c0|cnt[5] (
	.A(vcc),
	.B(\c0|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[4]~25 ),
	.Qin(\c0|cnt [5]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[5]~26_combout ),
	.Cout(\c0|cnt[5]~27 ),
	.Q(\c0|cnt [5]));
defparam \c0|cnt[5] .coord_x = 8;
defparam \c0|cnt[5] .coord_y = 5;
defparam \c0|cnt[5] .coord_z = 5;
defparam \c0|cnt[5] .mask = 16'h3C3F;
defparam \c0|cnt[5] .modeMux = 1'b1;
defparam \c0|cnt[5] .FeedbackMux = 1'b0;
defparam \c0|cnt[5] .ShiftMux = 1'b0;
defparam \c0|cnt[5] .BypassEn = 1'b1;
defparam \c0|cnt[5] .CarryEnb = 1'b0;

alta_slice \c0|cnt[6] (
	.A(vcc),
	.B(\c0|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[5]~27 ),
	.Qin(\c0|cnt [6]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[6]~28_combout ),
	.Cout(\c0|cnt[6]~29 ),
	.Q(\c0|cnt [6]));
defparam \c0|cnt[6] .coord_x = 8;
defparam \c0|cnt[6] .coord_y = 5;
defparam \c0|cnt[6] .coord_z = 6;
defparam \c0|cnt[6] .mask = 16'hC30C;
defparam \c0|cnt[6] .modeMux = 1'b1;
defparam \c0|cnt[6] .FeedbackMux = 1'b0;
defparam \c0|cnt[6] .ShiftMux = 1'b0;
defparam \c0|cnt[6] .BypassEn = 1'b1;
defparam \c0|cnt[6] .CarryEnb = 1'b0;

alta_slice \c0|cnt[7] (
	.A(vcc),
	.B(\c0|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[6]~29 ),
	.Qin(\c0|cnt [7]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[7]~30_combout ),
	.Cout(\c0|cnt[7]~31 ),
	.Q(\c0|cnt [7]));
defparam \c0|cnt[7] .coord_x = 8;
defparam \c0|cnt[7] .coord_y = 5;
defparam \c0|cnt[7] .coord_z = 7;
defparam \c0|cnt[7] .mask = 16'h3C3F;
defparam \c0|cnt[7] .modeMux = 1'b1;
defparam \c0|cnt[7] .FeedbackMux = 1'b0;
defparam \c0|cnt[7] .ShiftMux = 1'b0;
defparam \c0|cnt[7] .BypassEn = 1'b1;
defparam \c0|cnt[7] .CarryEnb = 1'b0;

alta_slice \c0|cnt[8] (
	.A(vcc),
	.B(\c0|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[7]~31 ),
	.Qin(\c0|cnt [8]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[8]~32_combout ),
	.Cout(\c0|cnt[8]~33 ),
	.Q(\c0|cnt [8]));
defparam \c0|cnt[8] .coord_x = 8;
defparam \c0|cnt[8] .coord_y = 5;
defparam \c0|cnt[8] .coord_z = 8;
defparam \c0|cnt[8] .mask = 16'hC30C;
defparam \c0|cnt[8] .modeMux = 1'b1;
defparam \c0|cnt[8] .FeedbackMux = 1'b0;
defparam \c0|cnt[8] .ShiftMux = 1'b0;
defparam \c0|cnt[8] .BypassEn = 1'b1;
defparam \c0|cnt[8] .CarryEnb = 1'b0;

alta_slice \c0|cnt[9] (
	.A(vcc),
	.B(\c0|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\c0|cnt[8]~33 ),
	.Qin(\c0|cnt [9]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X8_Y4_SIG ),
	.SyncReset(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y4_GND),
	.LutOut(\c0|cnt[9]~34_combout ),
	.Cout(\c0|cnt[9]~35 ),
	.Q(\c0|cnt [9]));
defparam \c0|cnt[9] .coord_x = 8;
defparam \c0|cnt[9] .coord_y = 5;
defparam \c0|cnt[9] .coord_z = 9;
defparam \c0|cnt[9] .mask = 16'h3C3F;
defparam \c0|cnt[9] .modeMux = 1'b1;
defparam \c0|cnt[9] .FeedbackMux = 1'b0;
defparam \c0|cnt[9] .ShiftMux = 1'b0;
defparam \c0|cnt[9] .BypassEn = 1'b1;
defparam \c0|cnt[9] .CarryEnb = 1'b0;

alta_slice \c1|LessThan0~2 (
	.A(vcc),
	.B(\c1|cnt [15]),
	.C(\c1|cnt [13]),
	.D(\c1|cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~2 .coord_x = 11;
defparam \c1|LessThan0~2 .coord_y = 8;
defparam \c1|LessThan0~2 .coord_z = 10;
defparam \c1|LessThan0~2 .mask = 16'h0003;
defparam \c1|LessThan0~2 .modeMux = 1'b0;
defparam \c1|LessThan0~2 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~2 .ShiftMux = 1'b0;
defparam \c1|LessThan0~2 .BypassEn = 1'b0;
defparam \c1|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~3 (
	.A(\c1|cnt [9]),
	.B(\c1|cnt [12]),
	.C(\c1|cnt [11]),
	.D(\c1|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~3 .coord_x = 11;
defparam \c1|LessThan0~3 .coord_y = 8;
defparam \c1|LessThan0~3 .coord_z = 2;
defparam \c1|LessThan0~3 .mask = 16'h0001;
defparam \c1|LessThan0~3 .modeMux = 1'b0;
defparam \c1|LessThan0~3 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~3 .ShiftMux = 1'b0;
defparam \c1|LessThan0~3 .BypassEn = 1'b0;
defparam \c1|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~4 (
	.A(\c1|cnt [0]),
	.B(\c1|cnt [1]),
	.C(\c1|cnt [2]),
	.D(\c1|cnt [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~4 .coord_x = 11;
defparam \c1|LessThan0~4 .coord_y = 8;
defparam \c1|LessThan0~4 .coord_z = 9;
defparam \c1|LessThan0~4 .mask = 16'h0007;
defparam \c1|LessThan0~4 .modeMux = 1'b0;
defparam \c1|LessThan0~4 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~4 .ShiftMux = 1'b0;
defparam \c1|LessThan0~4 .BypassEn = 1'b0;
defparam \c1|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~5 (
	.A(\c1|cnt [4]),
	.B(\c1|cnt [6]),
	.C(\c1|cnt [7]),
	.D(\c1|cnt [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~5_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~5 .coord_x = 11;
defparam \c1|LessThan0~5 .coord_y = 8;
defparam \c1|LessThan0~5 .coord_z = 8;
defparam \c1|LessThan0~5 .mask = 16'h7FFF;
defparam \c1|LessThan0~5 .modeMux = 1'b0;
defparam \c1|LessThan0~5 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~5 .ShiftMux = 1'b0;
defparam \c1|LessThan0~5 .BypassEn = 1'b0;
defparam \c1|LessThan0~5 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~6 (
	.A(\c1|LessThan0~5_combout ),
	.B(\c1|LessThan0~4_combout ),
	.C(\c1|LessThan0~3_combout ),
	.D(\c1|cnt [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~6_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~6 .coord_x = 11;
defparam \c1|LessThan0~6 .coord_y = 8;
defparam \c1|LessThan0~6 .coord_z = 3;
defparam \c1|LessThan0~6 .mask = 16'hE0F0;
defparam \c1|LessThan0~6 .modeMux = 1'b0;
defparam \c1|LessThan0~6 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~6 .ShiftMux = 1'b0;
defparam \c1|LessThan0~6 .BypassEn = 1'b0;
defparam \c1|LessThan0~6 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~7 (
	.A(\c1|LessThan0~3_combout ),
	.B(\c1|LessThan0~7_RESYN32_BDD33 ),
	.C(\c1|cnt [13]),
	.D(\c1|cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~7_combout ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~7 .coord_x = 11;
defparam \c1|LessThan0~7 .coord_y = 8;
defparam \c1|LessThan0~7 .coord_z = 5;
defparam \c1|LessThan0~7 .mask = 16'hFFFD;
defparam \c1|LessThan0~7 .modeMux = 1'b0;
defparam \c1|LessThan0~7 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~7 .ShiftMux = 1'b0;
defparam \c1|LessThan0~7 .BypassEn = 1'b0;
defparam \c1|LessThan0~7 .CarryEnb = 1'b1;

alta_slice \c1|LessThan0~7_RESYN32 (
	.A(\c1|cnt [8]),
	.B(\c1|cnt [15]),
	.C(\c1|LessThan0~5_combout ),
	.D(\c1|LessThan0~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|LessThan0~7_RESYN32_BDD33 ),
	.Cout(),
	.Q());
defparam \c1|LessThan0~7_RESYN32 .coord_x = 11;
defparam \c1|LessThan0~7_RESYN32 .coord_y = 8;
defparam \c1|LessThan0~7_RESYN32 .coord_z = 4;
defparam \c1|LessThan0~7_RESYN32 .mask = 16'hCCCE;
defparam \c1|LessThan0~7_RESYN32 .modeMux = 1'b0;
defparam \c1|LessThan0~7_RESYN32 .FeedbackMux = 1'b0;
defparam \c1|LessThan0~7_RESYN32 .ShiftMux = 1'b0;
defparam \c1|LessThan0~7_RESYN32 .BypassEn = 1'b0;
defparam \c1|LessThan0~7_RESYN32 .CarryEnb = 1'b1;

alta_slice \c1|clkout (
	.A(\c1|LessThan0~2_combout ),
	.B(vcc),
	.C(vcc),
	.D(\c1|LessThan0~6_combout ),
	.Cin(),
	.Qin(\c1|clkout~q ),
	.Clk(\c0|clkout~clkctrl_outclk_X10_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X10_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c1|clkout~0_combout ),
	.Cout(),
	.Q(\c1|clkout~q ));
defparam \c1|clkout .coord_x = 11;
defparam \c1|clkout .coord_y = 8;
defparam \c1|clkout .coord_z = 0;
defparam \c1|clkout .mask = 16'hA50F;
defparam \c1|clkout .modeMux = 1'b0;
defparam \c1|clkout .FeedbackMux = 1'b1;
defparam \c1|clkout .ShiftMux = 1'b0;
defparam \c1|clkout .BypassEn = 1'b0;
defparam \c1|clkout .CarryEnb = 1'b1;

alta_io_gclk \c1|clkout~clkctrl (
	.inclk(\c1|clkout~q ),
	.outclk(\c1|clkout~clkctrl_outclk ));
defparam \c1|clkout~clkctrl .coord_x = 7;
defparam \c1|clkout~clkctrl .coord_y = 1;
defparam \c1|clkout~clkctrl .coord_z = 0;

alta_slice \c1|cnt[0] (
	.A(vcc),
	.B(\c1|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\c1|cnt [0]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[0]~16_combout ),
	.Cout(\c1|cnt[0]~17 ),
	.Q(\c1|cnt [0]));
defparam \c1|cnt[0] .coord_x = 12;
defparam \c1|cnt[0] .coord_y = 8;
defparam \c1|cnt[0] .coord_z = 0;
defparam \c1|cnt[0] .mask = 16'h33CC;
defparam \c1|cnt[0] .modeMux = 1'b0;
defparam \c1|cnt[0] .FeedbackMux = 1'b0;
defparam \c1|cnt[0] .ShiftMux = 1'b0;
defparam \c1|cnt[0] .BypassEn = 1'b1;
defparam \c1|cnt[0] .CarryEnb = 1'b0;

alta_slice \c1|cnt[10] (
	.A(vcc),
	.B(\c1|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[9]~35 ),
	.Qin(\c1|cnt [10]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[10]~36_combout ),
	.Cout(\c1|cnt[10]~37 ),
	.Q(\c1|cnt [10]));
defparam \c1|cnt[10] .coord_x = 12;
defparam \c1|cnt[10] .coord_y = 8;
defparam \c1|cnt[10] .coord_z = 10;
defparam \c1|cnt[10] .mask = 16'hC30C;
defparam \c1|cnt[10] .modeMux = 1'b1;
defparam \c1|cnt[10] .FeedbackMux = 1'b0;
defparam \c1|cnt[10] .ShiftMux = 1'b0;
defparam \c1|cnt[10] .BypassEn = 1'b1;
defparam \c1|cnt[10] .CarryEnb = 1'b0;

alta_slice \c1|cnt[11] (
	.A(vcc),
	.B(\c1|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[10]~37 ),
	.Qin(\c1|cnt [11]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[11]~38_combout ),
	.Cout(\c1|cnt[11]~39 ),
	.Q(\c1|cnt [11]));
defparam \c1|cnt[11] .coord_x = 12;
defparam \c1|cnt[11] .coord_y = 8;
defparam \c1|cnt[11] .coord_z = 11;
defparam \c1|cnt[11] .mask = 16'h3C3F;
defparam \c1|cnt[11] .modeMux = 1'b1;
defparam \c1|cnt[11] .FeedbackMux = 1'b0;
defparam \c1|cnt[11] .ShiftMux = 1'b0;
defparam \c1|cnt[11] .BypassEn = 1'b1;
defparam \c1|cnt[11] .CarryEnb = 1'b0;

alta_slice \c1|cnt[12] (
	.A(vcc),
	.B(\c1|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[11]~39 ),
	.Qin(\c1|cnt [12]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[12]~40_combout ),
	.Cout(\c1|cnt[12]~41 ),
	.Q(\c1|cnt [12]));
defparam \c1|cnt[12] .coord_x = 12;
defparam \c1|cnt[12] .coord_y = 8;
defparam \c1|cnt[12] .coord_z = 12;
defparam \c1|cnt[12] .mask = 16'hC30C;
defparam \c1|cnt[12] .modeMux = 1'b1;
defparam \c1|cnt[12] .FeedbackMux = 1'b0;
defparam \c1|cnt[12] .ShiftMux = 1'b0;
defparam \c1|cnt[12] .BypassEn = 1'b1;
defparam \c1|cnt[12] .CarryEnb = 1'b0;

alta_slice \c1|cnt[13] (
	.A(vcc),
	.B(\c1|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[12]~41 ),
	.Qin(\c1|cnt [13]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[13]~42_combout ),
	.Cout(\c1|cnt[13]~43 ),
	.Q(\c1|cnt [13]));
defparam \c1|cnt[13] .coord_x = 12;
defparam \c1|cnt[13] .coord_y = 8;
defparam \c1|cnt[13] .coord_z = 13;
defparam \c1|cnt[13] .mask = 16'h3C3F;
defparam \c1|cnt[13] .modeMux = 1'b1;
defparam \c1|cnt[13] .FeedbackMux = 1'b0;
defparam \c1|cnt[13] .ShiftMux = 1'b0;
defparam \c1|cnt[13] .BypassEn = 1'b1;
defparam \c1|cnt[13] .CarryEnb = 1'b0;

alta_slice \c1|cnt[14] (
	.A(vcc),
	.B(\c1|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[13]~43 ),
	.Qin(\c1|cnt [14]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[14]~44_combout ),
	.Cout(\c1|cnt[14]~45 ),
	.Q(\c1|cnt [14]));
defparam \c1|cnt[14] .coord_x = 12;
defparam \c1|cnt[14] .coord_y = 8;
defparam \c1|cnt[14] .coord_z = 14;
defparam \c1|cnt[14] .mask = 16'hC30C;
defparam \c1|cnt[14] .modeMux = 1'b1;
defparam \c1|cnt[14] .FeedbackMux = 1'b0;
defparam \c1|cnt[14] .ShiftMux = 1'b0;
defparam \c1|cnt[14] .BypassEn = 1'b1;
defparam \c1|cnt[14] .CarryEnb = 1'b0;

alta_slice \c1|cnt[15] (
	.A(vcc),
	.B(\c1|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[14]~45 ),
	.Qin(\c1|cnt [15]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[15]~46_combout ),
	.Cout(),
	.Q(\c1|cnt [15]));
defparam \c1|cnt[15] .coord_x = 12;
defparam \c1|cnt[15] .coord_y = 8;
defparam \c1|cnt[15] .coord_z = 15;
defparam \c1|cnt[15] .mask = 16'h3C3C;
defparam \c1|cnt[15] .modeMux = 1'b1;
defparam \c1|cnt[15] .FeedbackMux = 1'b0;
defparam \c1|cnt[15] .ShiftMux = 1'b0;
defparam \c1|cnt[15] .BypassEn = 1'b1;
defparam \c1|cnt[15] .CarryEnb = 1'b1;

alta_slice \c1|cnt[1] (
	.A(vcc),
	.B(\c1|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[0]~17 ),
	.Qin(\c1|cnt [1]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[1]~18_combout ),
	.Cout(\c1|cnt[1]~19 ),
	.Q(\c1|cnt [1]));
defparam \c1|cnt[1] .coord_x = 12;
defparam \c1|cnt[1] .coord_y = 8;
defparam \c1|cnt[1] .coord_z = 1;
defparam \c1|cnt[1] .mask = 16'h3C3F;
defparam \c1|cnt[1] .modeMux = 1'b1;
defparam \c1|cnt[1] .FeedbackMux = 1'b0;
defparam \c1|cnt[1] .ShiftMux = 1'b0;
defparam \c1|cnt[1] .BypassEn = 1'b1;
defparam \c1|cnt[1] .CarryEnb = 1'b0;

alta_slice \c1|cnt[2] (
	.A(vcc),
	.B(\c1|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[1]~19 ),
	.Qin(\c1|cnt [2]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[2]~20_combout ),
	.Cout(\c1|cnt[2]~21 ),
	.Q(\c1|cnt [2]));
defparam \c1|cnt[2] .coord_x = 12;
defparam \c1|cnt[2] .coord_y = 8;
defparam \c1|cnt[2] .coord_z = 2;
defparam \c1|cnt[2] .mask = 16'hC30C;
defparam \c1|cnt[2] .modeMux = 1'b1;
defparam \c1|cnt[2] .FeedbackMux = 1'b0;
defparam \c1|cnt[2] .ShiftMux = 1'b0;
defparam \c1|cnt[2] .BypassEn = 1'b1;
defparam \c1|cnt[2] .CarryEnb = 1'b0;

alta_slice \c1|cnt[3] (
	.A(vcc),
	.B(\c1|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[2]~21 ),
	.Qin(\c1|cnt [3]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[3]~22_combout ),
	.Cout(\c1|cnt[3]~23 ),
	.Q(\c1|cnt [3]));
defparam \c1|cnt[3] .coord_x = 12;
defparam \c1|cnt[3] .coord_y = 8;
defparam \c1|cnt[3] .coord_z = 3;
defparam \c1|cnt[3] .mask = 16'h3C3F;
defparam \c1|cnt[3] .modeMux = 1'b1;
defparam \c1|cnt[3] .FeedbackMux = 1'b0;
defparam \c1|cnt[3] .ShiftMux = 1'b0;
defparam \c1|cnt[3] .BypassEn = 1'b1;
defparam \c1|cnt[3] .CarryEnb = 1'b0;

alta_slice \c1|cnt[4] (
	.A(vcc),
	.B(\c1|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[3]~23 ),
	.Qin(\c1|cnt [4]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[4]~24_combout ),
	.Cout(\c1|cnt[4]~25 ),
	.Q(\c1|cnt [4]));
defparam \c1|cnt[4] .coord_x = 12;
defparam \c1|cnt[4] .coord_y = 8;
defparam \c1|cnt[4] .coord_z = 4;
defparam \c1|cnt[4] .mask = 16'hC30C;
defparam \c1|cnt[4] .modeMux = 1'b1;
defparam \c1|cnt[4] .FeedbackMux = 1'b0;
defparam \c1|cnt[4] .ShiftMux = 1'b0;
defparam \c1|cnt[4] .BypassEn = 1'b1;
defparam \c1|cnt[4] .CarryEnb = 1'b0;

alta_slice \c1|cnt[5] (
	.A(vcc),
	.B(\c1|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[4]~25 ),
	.Qin(\c1|cnt [5]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[5]~26_combout ),
	.Cout(\c1|cnt[5]~27 ),
	.Q(\c1|cnt [5]));
defparam \c1|cnt[5] .coord_x = 12;
defparam \c1|cnt[5] .coord_y = 8;
defparam \c1|cnt[5] .coord_z = 5;
defparam \c1|cnt[5] .mask = 16'h3C3F;
defparam \c1|cnt[5] .modeMux = 1'b1;
defparam \c1|cnt[5] .FeedbackMux = 1'b0;
defparam \c1|cnt[5] .ShiftMux = 1'b0;
defparam \c1|cnt[5] .BypassEn = 1'b1;
defparam \c1|cnt[5] .CarryEnb = 1'b0;

alta_slice \c1|cnt[6] (
	.A(vcc),
	.B(\c1|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[5]~27 ),
	.Qin(\c1|cnt [6]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[6]~28_combout ),
	.Cout(\c1|cnt[6]~29 ),
	.Q(\c1|cnt [6]));
defparam \c1|cnt[6] .coord_x = 12;
defparam \c1|cnt[6] .coord_y = 8;
defparam \c1|cnt[6] .coord_z = 6;
defparam \c1|cnt[6] .mask = 16'hC30C;
defparam \c1|cnt[6] .modeMux = 1'b1;
defparam \c1|cnt[6] .FeedbackMux = 1'b0;
defparam \c1|cnt[6] .ShiftMux = 1'b0;
defparam \c1|cnt[6] .BypassEn = 1'b1;
defparam \c1|cnt[6] .CarryEnb = 1'b0;

alta_slice \c1|cnt[7] (
	.A(vcc),
	.B(\c1|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[6]~29 ),
	.Qin(\c1|cnt [7]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[7]~30_combout ),
	.Cout(\c1|cnt[7]~31 ),
	.Q(\c1|cnt [7]));
defparam \c1|cnt[7] .coord_x = 12;
defparam \c1|cnt[7] .coord_y = 8;
defparam \c1|cnt[7] .coord_z = 7;
defparam \c1|cnt[7] .mask = 16'h3C3F;
defparam \c1|cnt[7] .modeMux = 1'b1;
defparam \c1|cnt[7] .FeedbackMux = 1'b0;
defparam \c1|cnt[7] .ShiftMux = 1'b0;
defparam \c1|cnt[7] .BypassEn = 1'b1;
defparam \c1|cnt[7] .CarryEnb = 1'b0;

alta_slice \c1|cnt[8] (
	.A(vcc),
	.B(\c1|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[7]~31 ),
	.Qin(\c1|cnt [8]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[8]~32_combout ),
	.Cout(\c1|cnt[8]~33 ),
	.Q(\c1|cnt [8]));
defparam \c1|cnt[8] .coord_x = 12;
defparam \c1|cnt[8] .coord_y = 8;
defparam \c1|cnt[8] .coord_z = 8;
defparam \c1|cnt[8] .mask = 16'hC30C;
defparam \c1|cnt[8] .modeMux = 1'b1;
defparam \c1|cnt[8] .FeedbackMux = 1'b0;
defparam \c1|cnt[8] .ShiftMux = 1'b0;
defparam \c1|cnt[8] .BypassEn = 1'b1;
defparam \c1|cnt[8] .CarryEnb = 1'b0;

alta_slice \c1|cnt[9] (
	.A(vcc),
	.B(\c1|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\c1|cnt[8]~33 ),
	.Qin(\c1|cnt [9]),
	.Clk(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X9_Y4_SIG ),
	.SyncReset(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y4_GND),
	.LutOut(\c1|cnt[9]~34_combout ),
	.Cout(\c1|cnt[9]~35 ),
	.Q(\c1|cnt [9]));
defparam \c1|cnt[9] .coord_x = 12;
defparam \c1|cnt[9] .coord_y = 8;
defparam \c1|cnt[9] .coord_z = 9;
defparam \c1|cnt[9] .mask = 16'h3C3F;
defparam \c1|cnt[9] .modeMux = 1'b1;
defparam \c1|cnt[9] .FeedbackMux = 1'b0;
defparam \c1|cnt[9] .ShiftMux = 1'b0;
defparam \c1|cnt[9] .BypassEn = 1'b1;
defparam \c1|cnt[9] .CarryEnb = 1'b0;

alta_slice \c2|LessThan0~10 (
	.A(\c2|cnt [14]),
	.B(\c2|LessThan0~9_combout ),
	.C(\c2|cnt [15]),
	.D(\c2|LessThan0~6_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~10_combout ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~10 .coord_x = 11;
defparam \c2|LessThan0~10 .coord_y = 6;
defparam \c2|LessThan0~10 .coord_z = 12;
defparam \c2|LessThan0~10 .mask = 16'hFBFF;
defparam \c2|LessThan0~10 .modeMux = 1'b0;
defparam \c2|LessThan0~10 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~10 .ShiftMux = 1'b0;
defparam \c2|LessThan0~10 .BypassEn = 1'b0;
defparam \c2|LessThan0~10 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~4 (
	.A(\c2|cnt [14]),
	.B(vcc),
	.C(\c2|cnt [15]),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~4 .coord_x = 11;
defparam \c2|LessThan0~4 .coord_y = 6;
defparam \c2|LessThan0~4 .coord_z = 6;
defparam \c2|LessThan0~4 .mask = 16'h0505;
defparam \c2|LessThan0~4 .modeMux = 1'b0;
defparam \c2|LessThan0~4 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~4 .ShiftMux = 1'b0;
defparam \c2|LessThan0~4 .BypassEn = 1'b0;
defparam \c2|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~5 (
	.A(\c2|cnt [0]),
	.B(\c2|cnt [1]),
	.C(\c2|cnt [2]),
	.D(\c2|cnt [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~5_combout ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~5 .coord_x = 11;
defparam \c2|LessThan0~5 .coord_y = 6;
defparam \c2|LessThan0~5 .coord_z = 9;
defparam \c2|LessThan0~5 .mask = 16'h1FFF;
defparam \c2|LessThan0~5 .modeMux = 1'b0;
defparam \c2|LessThan0~5 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~5 .ShiftMux = 1'b0;
defparam \c2|LessThan0~5 .BypassEn = 1'b0;
defparam \c2|LessThan0~5 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~6 (
	.A(\c2|cnt [5]),
	.B(\c2|cnt [4]),
	.C(vcc),
	.D(\c2|LessThan0~5_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~6_combout ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~6 .coord_x = 11;
defparam \c2|LessThan0~6 .coord_y = 6;
defparam \c2|LessThan0~6 .coord_z = 13;
defparam \c2|LessThan0~6 .mask = 16'hFF77;
defparam \c2|LessThan0~6 .modeMux = 1'b0;
defparam \c2|LessThan0~6 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~6 .ShiftMux = 1'b0;
defparam \c2|LessThan0~6 .BypassEn = 1'b0;
defparam \c2|LessThan0~6 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~9 (
	.A(\c2|LessThan0~9_RESYN8_BDD9 ),
	.B(\c2|LessThan0~9_RESYN6_BDD7 ),
	.C(\c2|cnt [6]),
	.D(\c2|cnt [9]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~9_combout ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~9 .coord_x = 11;
defparam \c2|LessThan0~9 .coord_y = 6;
defparam \c2|LessThan0~9 .coord_z = 11;
defparam \c2|LessThan0~9 .mask = 16'h0008;
defparam \c2|LessThan0~9 .modeMux = 1'b0;
defparam \c2|LessThan0~9 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~9 .ShiftMux = 1'b0;
defparam \c2|LessThan0~9 .BypassEn = 1'b0;
defparam \c2|LessThan0~9 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~9_RESYN6 (
	.A(\c2|cnt [13]),
	.B(\c2|cnt [12]),
	.C(\c2|cnt [11]),
	.D(\c2|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~9_RESYN6_BDD7 ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~9_RESYN6 .coord_x = 11;
defparam \c2|LessThan0~9_RESYN6 .coord_y = 6;
defparam \c2|LessThan0~9_RESYN6 .coord_z = 5;
defparam \c2|LessThan0~9_RESYN6 .mask = 16'h0001;
defparam \c2|LessThan0~9_RESYN6 .modeMux = 1'b0;
defparam \c2|LessThan0~9_RESYN6 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~9_RESYN6 .ShiftMux = 1'b0;
defparam \c2|LessThan0~9_RESYN6 .BypassEn = 1'b0;
defparam \c2|LessThan0~9_RESYN6 .CarryEnb = 1'b1;

alta_slice \c2|LessThan0~9_RESYN8 (
	.A(vcc),
	.B(\c2|cnt [8]),
	.C(vcc),
	.D(\c2|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|LessThan0~9_RESYN8_BDD9 ),
	.Cout(),
	.Q());
defparam \c2|LessThan0~9_RESYN8 .coord_x = 11;
defparam \c2|LessThan0~9_RESYN8 .coord_y = 6;
defparam \c2|LessThan0~9_RESYN8 .coord_z = 14;
defparam \c2|LessThan0~9_RESYN8 .mask = 16'h0033;
defparam \c2|LessThan0~9_RESYN8 .modeMux = 1'b0;
defparam \c2|LessThan0~9_RESYN8 .FeedbackMux = 1'b0;
defparam \c2|LessThan0~9_RESYN8 .ShiftMux = 1'b0;
defparam \c2|LessThan0~9_RESYN8 .BypassEn = 1'b0;
defparam \c2|LessThan0~9_RESYN8 .CarryEnb = 1'b1;

alta_slice \c2|clkout (
	.A(\c2|LessThan0~4_combout ),
	.B(\c2|LessThan0~9_combout ),
	.C(vcc),
	.D(\c2|LessThan0~6_combout ),
	.Cin(),
	.Qin(\c2|clkout~q ),
	.Clk(\c1|clkout~clkctrl_outclk_X13_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X13_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\c2|clkout~0_combout ),
	.Cout(),
	.Q(\c2|clkout~q ));
defparam \c2|clkout .coord_x = 11;
defparam \c2|clkout .coord_y = 6;
defparam \c2|clkout .coord_z = 4;
defparam \c2|clkout .mask = 16'h870F;
defparam \c2|clkout .modeMux = 1'b0;
defparam \c2|clkout .FeedbackMux = 1'b1;
defparam \c2|clkout .ShiftMux = 1'b0;
defparam \c2|clkout .BypassEn = 1'b0;
defparam \c2|clkout .CarryEnb = 1'b1;

alta_io_gclk \c2|clkout~clkctrl (
	.inclk(\c2|clkout~q ),
	.outclk(\c2|clkout~clkctrl_outclk ));
defparam \c2|clkout~clkctrl .coord_x = 5;
defparam \c2|clkout~clkctrl .coord_y = 1;
defparam \c2|clkout~clkctrl .coord_z = 0;

alta_slice \c2|cnt[0] (
	.A(vcc),
	.B(\c2|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\c2|cnt [0]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[0]~16_combout ),
	.Cout(\c2|cnt[0]~17 ),
	.Q(\c2|cnt [0]));
defparam \c2|cnt[0] .coord_x = 12;
defparam \c2|cnt[0] .coord_y = 6;
defparam \c2|cnt[0] .coord_z = 0;
defparam \c2|cnt[0] .mask = 16'h33CC;
defparam \c2|cnt[0] .modeMux = 1'b0;
defparam \c2|cnt[0] .FeedbackMux = 1'b0;
defparam \c2|cnt[0] .ShiftMux = 1'b0;
defparam \c2|cnt[0] .BypassEn = 1'b1;
defparam \c2|cnt[0] .CarryEnb = 1'b0;

alta_slice \c2|cnt[10] (
	.A(vcc),
	.B(\c2|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[9]~35 ),
	.Qin(\c2|cnt [10]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[10]~36_combout ),
	.Cout(\c2|cnt[10]~37 ),
	.Q(\c2|cnt [10]));
defparam \c2|cnt[10] .coord_x = 12;
defparam \c2|cnt[10] .coord_y = 6;
defparam \c2|cnt[10] .coord_z = 10;
defparam \c2|cnt[10] .mask = 16'hC30C;
defparam \c2|cnt[10] .modeMux = 1'b1;
defparam \c2|cnt[10] .FeedbackMux = 1'b0;
defparam \c2|cnt[10] .ShiftMux = 1'b0;
defparam \c2|cnt[10] .BypassEn = 1'b1;
defparam \c2|cnt[10] .CarryEnb = 1'b0;

alta_slice \c2|cnt[11] (
	.A(vcc),
	.B(\c2|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[10]~37 ),
	.Qin(\c2|cnt [11]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[11]~38_combout ),
	.Cout(\c2|cnt[11]~39 ),
	.Q(\c2|cnt [11]));
defparam \c2|cnt[11] .coord_x = 12;
defparam \c2|cnt[11] .coord_y = 6;
defparam \c2|cnt[11] .coord_z = 11;
defparam \c2|cnt[11] .mask = 16'h3C3F;
defparam \c2|cnt[11] .modeMux = 1'b1;
defparam \c2|cnt[11] .FeedbackMux = 1'b0;
defparam \c2|cnt[11] .ShiftMux = 1'b0;
defparam \c2|cnt[11] .BypassEn = 1'b1;
defparam \c2|cnt[11] .CarryEnb = 1'b0;

alta_slice \c2|cnt[12] (
	.A(vcc),
	.B(\c2|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[11]~39 ),
	.Qin(\c2|cnt [12]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[12]~40_combout ),
	.Cout(\c2|cnt[12]~41 ),
	.Q(\c2|cnt [12]));
defparam \c2|cnt[12] .coord_x = 12;
defparam \c2|cnt[12] .coord_y = 6;
defparam \c2|cnt[12] .coord_z = 12;
defparam \c2|cnt[12] .mask = 16'hC30C;
defparam \c2|cnt[12] .modeMux = 1'b1;
defparam \c2|cnt[12] .FeedbackMux = 1'b0;
defparam \c2|cnt[12] .ShiftMux = 1'b0;
defparam \c2|cnt[12] .BypassEn = 1'b1;
defparam \c2|cnt[12] .CarryEnb = 1'b0;

alta_slice \c2|cnt[13] (
	.A(vcc),
	.B(\c2|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[12]~41 ),
	.Qin(\c2|cnt [13]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[13]~42_combout ),
	.Cout(\c2|cnt[13]~43 ),
	.Q(\c2|cnt [13]));
defparam \c2|cnt[13] .coord_x = 12;
defparam \c2|cnt[13] .coord_y = 6;
defparam \c2|cnt[13] .coord_z = 13;
defparam \c2|cnt[13] .mask = 16'h3C3F;
defparam \c2|cnt[13] .modeMux = 1'b1;
defparam \c2|cnt[13] .FeedbackMux = 1'b0;
defparam \c2|cnt[13] .ShiftMux = 1'b0;
defparam \c2|cnt[13] .BypassEn = 1'b1;
defparam \c2|cnt[13] .CarryEnb = 1'b0;

alta_slice \c2|cnt[14] (
	.A(vcc),
	.B(\c2|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[13]~43 ),
	.Qin(\c2|cnt [14]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[14]~44_combout ),
	.Cout(\c2|cnt[14]~45 ),
	.Q(\c2|cnt [14]));
defparam \c2|cnt[14] .coord_x = 12;
defparam \c2|cnt[14] .coord_y = 6;
defparam \c2|cnt[14] .coord_z = 14;
defparam \c2|cnt[14] .mask = 16'hC30C;
defparam \c2|cnt[14] .modeMux = 1'b1;
defparam \c2|cnt[14] .FeedbackMux = 1'b0;
defparam \c2|cnt[14] .ShiftMux = 1'b0;
defparam \c2|cnt[14] .BypassEn = 1'b1;
defparam \c2|cnt[14] .CarryEnb = 1'b0;

alta_slice \c2|cnt[15] (
	.A(vcc),
	.B(\c2|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[14]~45 ),
	.Qin(\c2|cnt [15]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[15]~46_combout ),
	.Cout(),
	.Q(\c2|cnt [15]));
defparam \c2|cnt[15] .coord_x = 12;
defparam \c2|cnt[15] .coord_y = 6;
defparam \c2|cnt[15] .coord_z = 15;
defparam \c2|cnt[15] .mask = 16'h3C3C;
defparam \c2|cnt[15] .modeMux = 1'b1;
defparam \c2|cnt[15] .FeedbackMux = 1'b0;
defparam \c2|cnt[15] .ShiftMux = 1'b0;
defparam \c2|cnt[15] .BypassEn = 1'b1;
defparam \c2|cnt[15] .CarryEnb = 1'b1;

alta_slice \c2|cnt[1] (
	.A(vcc),
	.B(\c2|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[0]~17 ),
	.Qin(\c2|cnt [1]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[1]~18_combout ),
	.Cout(\c2|cnt[1]~19 ),
	.Q(\c2|cnt [1]));
defparam \c2|cnt[1] .coord_x = 12;
defparam \c2|cnt[1] .coord_y = 6;
defparam \c2|cnt[1] .coord_z = 1;
defparam \c2|cnt[1] .mask = 16'h3C3F;
defparam \c2|cnt[1] .modeMux = 1'b1;
defparam \c2|cnt[1] .FeedbackMux = 1'b0;
defparam \c2|cnt[1] .ShiftMux = 1'b0;
defparam \c2|cnt[1] .BypassEn = 1'b1;
defparam \c2|cnt[1] .CarryEnb = 1'b0;

alta_slice \c2|cnt[2] (
	.A(vcc),
	.B(\c2|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[1]~19 ),
	.Qin(\c2|cnt [2]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[2]~20_combout ),
	.Cout(\c2|cnt[2]~21 ),
	.Q(\c2|cnt [2]));
defparam \c2|cnt[2] .coord_x = 12;
defparam \c2|cnt[2] .coord_y = 6;
defparam \c2|cnt[2] .coord_z = 2;
defparam \c2|cnt[2] .mask = 16'hC30C;
defparam \c2|cnt[2] .modeMux = 1'b1;
defparam \c2|cnt[2] .FeedbackMux = 1'b0;
defparam \c2|cnt[2] .ShiftMux = 1'b0;
defparam \c2|cnt[2] .BypassEn = 1'b1;
defparam \c2|cnt[2] .CarryEnb = 1'b0;

alta_slice \c2|cnt[3] (
	.A(vcc),
	.B(\c2|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[2]~21 ),
	.Qin(\c2|cnt [3]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[3]~22_combout ),
	.Cout(\c2|cnt[3]~23 ),
	.Q(\c2|cnt [3]));
defparam \c2|cnt[3] .coord_x = 12;
defparam \c2|cnt[3] .coord_y = 6;
defparam \c2|cnt[3] .coord_z = 3;
defparam \c2|cnt[3] .mask = 16'h3C3F;
defparam \c2|cnt[3] .modeMux = 1'b1;
defparam \c2|cnt[3] .FeedbackMux = 1'b0;
defparam \c2|cnt[3] .ShiftMux = 1'b0;
defparam \c2|cnt[3] .BypassEn = 1'b1;
defparam \c2|cnt[3] .CarryEnb = 1'b0;

alta_slice \c2|cnt[4] (
	.A(vcc),
	.B(\c2|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[3]~23 ),
	.Qin(\c2|cnt [4]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[4]~24_combout ),
	.Cout(\c2|cnt[4]~25 ),
	.Q(\c2|cnt [4]));
defparam \c2|cnt[4] .coord_x = 12;
defparam \c2|cnt[4] .coord_y = 6;
defparam \c2|cnt[4] .coord_z = 4;
defparam \c2|cnt[4] .mask = 16'hC30C;
defparam \c2|cnt[4] .modeMux = 1'b1;
defparam \c2|cnt[4] .FeedbackMux = 1'b0;
defparam \c2|cnt[4] .ShiftMux = 1'b0;
defparam \c2|cnt[4] .BypassEn = 1'b1;
defparam \c2|cnt[4] .CarryEnb = 1'b0;

alta_slice \c2|cnt[5] (
	.A(vcc),
	.B(\c2|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[4]~25 ),
	.Qin(\c2|cnt [5]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[5]~26_combout ),
	.Cout(\c2|cnt[5]~27 ),
	.Q(\c2|cnt [5]));
defparam \c2|cnt[5] .coord_x = 12;
defparam \c2|cnt[5] .coord_y = 6;
defparam \c2|cnt[5] .coord_z = 5;
defparam \c2|cnt[5] .mask = 16'h3C3F;
defparam \c2|cnt[5] .modeMux = 1'b1;
defparam \c2|cnt[5] .FeedbackMux = 1'b0;
defparam \c2|cnt[5] .ShiftMux = 1'b0;
defparam \c2|cnt[5] .BypassEn = 1'b1;
defparam \c2|cnt[5] .CarryEnb = 1'b0;

alta_slice \c2|cnt[6] (
	.A(vcc),
	.B(\c2|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[5]~27 ),
	.Qin(\c2|cnt [6]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[6]~28_combout ),
	.Cout(\c2|cnt[6]~29 ),
	.Q(\c2|cnt [6]));
defparam \c2|cnt[6] .coord_x = 12;
defparam \c2|cnt[6] .coord_y = 6;
defparam \c2|cnt[6] .coord_z = 6;
defparam \c2|cnt[6] .mask = 16'hC30C;
defparam \c2|cnt[6] .modeMux = 1'b1;
defparam \c2|cnt[6] .FeedbackMux = 1'b0;
defparam \c2|cnt[6] .ShiftMux = 1'b0;
defparam \c2|cnt[6] .BypassEn = 1'b1;
defparam \c2|cnt[6] .CarryEnb = 1'b0;

alta_slice \c2|cnt[7] (
	.A(vcc),
	.B(\c2|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[6]~29 ),
	.Qin(\c2|cnt [7]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[7]~30_combout ),
	.Cout(\c2|cnt[7]~31 ),
	.Q(\c2|cnt [7]));
defparam \c2|cnt[7] .coord_x = 12;
defparam \c2|cnt[7] .coord_y = 6;
defparam \c2|cnt[7] .coord_z = 7;
defparam \c2|cnt[7] .mask = 16'h3C3F;
defparam \c2|cnt[7] .modeMux = 1'b1;
defparam \c2|cnt[7] .FeedbackMux = 1'b0;
defparam \c2|cnt[7] .ShiftMux = 1'b0;
defparam \c2|cnt[7] .BypassEn = 1'b1;
defparam \c2|cnt[7] .CarryEnb = 1'b0;

alta_slice \c2|cnt[8] (
	.A(vcc),
	.B(\c2|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[7]~31 ),
	.Qin(\c2|cnt [8]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[8]~32_combout ),
	.Cout(\c2|cnt[8]~33 ),
	.Q(\c2|cnt [8]));
defparam \c2|cnt[8] .coord_x = 12;
defparam \c2|cnt[8] .coord_y = 6;
defparam \c2|cnt[8] .coord_z = 8;
defparam \c2|cnt[8] .mask = 16'hC30C;
defparam \c2|cnt[8] .modeMux = 1'b1;
defparam \c2|cnt[8] .FeedbackMux = 1'b0;
defparam \c2|cnt[8] .ShiftMux = 1'b0;
defparam \c2|cnt[8] .BypassEn = 1'b1;
defparam \c2|cnt[8] .CarryEnb = 1'b0;

alta_slice \c2|cnt[9] (
	.A(vcc),
	.B(\c2|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\c2|cnt[8]~33 ),
	.Qin(\c2|cnt [9]),
	.Clk(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ),
	.AsyncReset(\nRst~combout__AsyncReset_X12_Y2_SIG ),
	.SyncReset(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X12_Y2_GND),
	.LutOut(\c2|cnt[9]~34_combout ),
	.Cout(\c2|cnt[9]~35 ),
	.Q(\c2|cnt [9]));
defparam \c2|cnt[9] .coord_x = 12;
defparam \c2|cnt[9] .coord_y = 6;
defparam \c2|cnt[9] .coord_z = 9;
defparam \c2|cnt[9] .mask = 16'h3C3F;
defparam \c2|cnt[9] .modeMux = 1'b1;
defparam \c2|cnt[9] .FeedbackMux = 1'b0;
defparam \c2|cnt[9] .ShiftMux = 1'b0;
defparam \c2|cnt[9] .BypassEn = 1'b1;
defparam \c2|cnt[9] .CarryEnb = 1'b0;

alta_clkenctrl clken_ctrl_X10_Y1_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\por0|Equal0~6_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ));
defparam clken_ctrl_X10_Y1_N0.coord_x = 7;
defparam clken_ctrl_X10_Y1_N0.coord_y = 3;
defparam clken_ctrl_X10_Y1_N0.coord_z = 0;
defparam clken_ctrl_X10_Y1_N0.ClkMux = 2'b10;
defparam clken_ctrl_X10_Y1_N0.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X10_Y2_N0(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\CLK~inputclkctrl_outclk_X10_Y2_SIG_VCC ));
defparam clken_ctrl_X10_Y2_N0.coord_x = 7;
defparam clken_ctrl_X10_Y2_N0.coord_y = 4;
defparam clken_ctrl_X10_Y2_N0.coord_z = 0;
defparam clken_ctrl_X10_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X10_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X10_Y2_N1(
	.ClkIn(\CLK~inputclkctrl_outclk ),
	.ClkEn(\por0|Equal0~6_combout ),
	.ClkOut(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ));
defparam clken_ctrl_X10_Y2_N1.coord_x = 7;
defparam clken_ctrl_X10_Y2_N1.coord_y = 4;
defparam clken_ctrl_X10_Y2_N1.coord_z = 1;
defparam clken_ctrl_X10_Y2_N1.ClkMux = 2'b10;
defparam clken_ctrl_X10_Y2_N1.ClkEnMux = 2'b11;

alta_clkenctrl clken_ctrl_X10_Y4_N0(
	.ClkIn(\c0|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c0|clkout~clkctrl_outclk_X10_Y4_SIG_VCC ));
defparam clken_ctrl_X10_Y4_N0.coord_x = 11;
defparam clken_ctrl_X10_Y4_N0.coord_y = 8;
defparam clken_ctrl_X10_Y4_N0.coord_z = 0;
defparam clken_ctrl_X10_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X10_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X12_Y2_N0(
	.ClkIn(\c1|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c1|clkout~clkctrl_outclk_X12_Y2_SIG_VCC ));
defparam clken_ctrl_X12_Y2_N0.coord_x = 12;
defparam clken_ctrl_X12_Y2_N0.coord_y = 6;
defparam clken_ctrl_X12_Y2_N0.coord_z = 0;
defparam clken_ctrl_X12_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X12_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X12_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X12_Y5_SIG_VCC ));
defparam clken_ctrl_X12_Y5_N0.coord_x = 1;
defparam clken_ctrl_X12_Y5_N0.coord_y = 6;
defparam clken_ctrl_X12_Y5_N0.coord_z = 0;
defparam clken_ctrl_X12_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X12_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X13_Y2_N0(
	.ClkIn(\c1|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c1|clkout~clkctrl_outclk_X13_Y2_SIG_VCC ));
defparam clken_ctrl_X13_Y2_N0.coord_x = 11;
defparam clken_ctrl_X13_Y2_N0.coord_y = 6;
defparam clken_ctrl_X13_Y2_N0.coord_z = 0;
defparam clken_ctrl_X13_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X13_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X13_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ));
defparam clken_ctrl_X13_Y5_N0.coord_x = 2;
defparam clken_ctrl_X13_Y5_N0.coord_y = 6;
defparam clken_ctrl_X13_Y5_N0.coord_z = 0;
defparam clken_ctrl_X13_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X13_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y4_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X1_Y4_SIG_VCC ));
defparam clken_ctrl_X1_Y4_N0.coord_x = 6;
defparam clken_ctrl_X1_Y4_N0.coord_y = 5;
defparam clken_ctrl_X1_Y4_N0.coord_z = 0;
defparam clken_ctrl_X1_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X1_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y8_N0(
	.ClkIn(\c2|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c2|clkout~clkctrl_outclk_X1_Y8_INV_VCC ));
defparam clken_ctrl_X1_Y8_N0.coord_x = 6;
defparam clken_ctrl_X1_Y8_N0.coord_y = 8;
defparam clken_ctrl_X1_Y8_N0.coord_z = 0;
defparam clken_ctrl_X1_Y8_N0.ClkMux = 2'b11;
defparam clken_ctrl_X1_Y8_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X1_Y8_N1(
	.ClkIn(\KEY[1]~input_o ),
	.ClkEn(),
	.ClkOut(\KEY[1]~input_o_X1_Y8_INV_VCC ));
defparam clken_ctrl_X1_Y8_N1.coord_x = 6;
defparam clken_ctrl_X1_Y8_N1.coord_y = 8;
defparam clken_ctrl_X1_Y8_N1.coord_z = 1;
defparam clken_ctrl_X1_Y8_N1.ClkMux = 2'b11;
defparam clken_ctrl_X1_Y8_N1.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X2_Y4_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ));
defparam clken_ctrl_X2_Y4_N0.coord_x = 5;
defparam clken_ctrl_X2_Y4_N0.coord_y = 5;
defparam clken_ctrl_X2_Y4_N0.coord_z = 0;
defparam clken_ctrl_X2_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X2_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ));
defparam clken_ctrl_X2_Y5_N0.coord_x = 5;
defparam clken_ctrl_X2_Y5_N0.coord_y = 6;
defparam clken_ctrl_X2_Y5_N0.coord_z = 0;
defparam clken_ctrl_X2_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X2_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X3_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X3_Y5_SIG_VCC ));
defparam clken_ctrl_X3_Y5_N0.coord_x = 4;
defparam clken_ctrl_X3_Y5_N0.coord_y = 6;
defparam clken_ctrl_X3_Y5_N0.coord_z = 0;
defparam clken_ctrl_X3_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X3_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X5_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ));
defparam clken_ctrl_X5_Y5_N0.coord_x = 0;
defparam clken_ctrl_X5_Y5_N0.coord_y = 4;
defparam clken_ctrl_X5_Y5_N0.coord_z = 0;
defparam clken_ctrl_X5_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X5_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y2_N0(
	.ClkIn(\dfh_jiezou|tick~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ));
defparam clken_ctrl_X6_Y2_N0.coord_x = 0;
defparam clken_ctrl_X6_Y2_N0.coord_y = 8;
defparam clken_ctrl_X6_Y2_N0.coord_z = 0;
defparam clken_ctrl_X6_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y3_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ));
defparam clken_ctrl_X6_Y3_N0.coord_x = 1;
defparam clken_ctrl_X6_Y3_N0.coord_y = 3;
defparam clken_ctrl_X6_Y3_N0.coord_z = 0;
defparam clken_ctrl_X6_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y5_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X6_Y5_SIG_VCC ));
defparam clken_ctrl_X6_Y5_N0.coord_x = 1;
defparam clken_ctrl_X6_Y5_N0.coord_y = 4;
defparam clken_ctrl_X6_Y5_N0.coord_z = 0;
defparam clken_ctrl_X6_Y5_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y6_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ));
defparam clken_ctrl_X6_Y6_N0.coord_x = 2;
defparam clken_ctrl_X6_Y6_N0.coord_y = 8;
defparam clken_ctrl_X6_Y6_N0.coord_z = 0;
defparam clken_ctrl_X6_Y6_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y6_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y7_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ));
defparam clken_ctrl_X6_Y7_N0.coord_x = 7;
defparam clken_ctrl_X6_Y7_N0.coord_y = 7;
defparam clken_ctrl_X6_Y7_N0.coord_z = 0;
defparam clken_ctrl_X6_Y7_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y7_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X6_Y8_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ));
defparam clken_ctrl_X6_Y8_N0.coord_x = 4;
defparam clken_ctrl_X6_Y8_N0.coord_y = 7;
defparam clken_ctrl_X6_Y8_N0.coord_z = 0;
defparam clken_ctrl_X6_Y8_N0.ClkMux = 2'b10;
defparam clken_ctrl_X6_Y8_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y3_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X7_Y3_SIG_VCC ));
defparam clken_ctrl_X7_Y3_N0.coord_x = 0;
defparam clken_ctrl_X7_Y3_N0.coord_y = 3;
defparam clken_ctrl_X7_Y3_N0.coord_z = 0;
defparam clken_ctrl_X7_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y4_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X7_Y4_SIG_VCC ));
defparam clken_ctrl_X7_Y4_N0.coord_x = 7;
defparam clken_ctrl_X7_Y4_N0.coord_y = 5;
defparam clken_ctrl_X7_Y4_N0.coord_z = 0;
defparam clken_ctrl_X7_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y5_N0(
	.ClkIn(\c2|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c2|clkout~clkctrl_outclk_X7_Y5_INV_VCC ));
defparam clken_ctrl_X7_Y5_N0.coord_x = 7;
defparam clken_ctrl_X7_Y5_N0.coord_y = 8;
defparam clken_ctrl_X7_Y5_N0.coord_z = 0;
defparam clken_ctrl_X7_Y5_N0.ClkMux = 2'b11;
defparam clken_ctrl_X7_Y5_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y6_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X7_Y6_SIG_VCC ));
defparam clken_ctrl_X7_Y6_N0.coord_x = 1;
defparam clken_ctrl_X7_Y6_N0.coord_y = 8;
defparam clken_ctrl_X7_Y6_N0.coord_z = 0;
defparam clken_ctrl_X7_Y6_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y6_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y7_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X7_Y7_SIG_VCC ));
defparam clken_ctrl_X7_Y7_N0.coord_x = 6;
defparam clken_ctrl_X7_Y7_N0.coord_y = 7;
defparam clken_ctrl_X7_Y7_N0.coord_z = 0;
defparam clken_ctrl_X7_Y7_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y7_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X7_Y8_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X7_Y8_SIG_VCC ));
defparam clken_ctrl_X7_Y8_N0.coord_x = 5;
defparam clken_ctrl_X7_Y8_N0.coord_y = 7;
defparam clken_ctrl_X7_Y8_N0.coord_z = 0;
defparam clken_ctrl_X7_Y8_N0.ClkMux = 2'b10;
defparam clken_ctrl_X7_Y8_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y2_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ));
defparam clken_ctrl_X8_Y2_N0.coord_x = 5;
defparam clken_ctrl_X8_Y2_N0.coord_y = 4;
defparam clken_ctrl_X8_Y2_N0.coord_z = 0;
defparam clken_ctrl_X8_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X8_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y3_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X8_Y3_SIG_VCC ));
defparam clken_ctrl_X8_Y3_N0.coord_x = 1;
defparam clken_ctrl_X8_Y3_N0.coord_y = 7;
defparam clken_ctrl_X8_Y3_N0.coord_z = 0;
defparam clken_ctrl_X8_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X8_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y4_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X8_Y4_SIG_VCC ));
defparam clken_ctrl_X8_Y4_N0.coord_x = 8;
defparam clken_ctrl_X8_Y4_N0.coord_y = 5;
defparam clken_ctrl_X8_Y4_N0.coord_z = 0;
defparam clken_ctrl_X8_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X8_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X8_Y5_N0(
	.ClkIn(\c2|clkout~clkctrl_outclk ),
	.ClkEn(\dfh_jiezou|LessThan0~0_combout ),
	.ClkOut(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ));
defparam clken_ctrl_X8_Y5_N0.coord_x = 8;
defparam clken_ctrl_X8_Y5_N0.coord_y = 8;
defparam clken_ctrl_X8_Y5_N0.coord_z = 0;
defparam clken_ctrl_X8_Y5_N0.ClkMux = 2'b11;
defparam clken_ctrl_X8_Y5_N0.ClkEnMux = 2'b10;

alta_clkenctrl clken_ctrl_X8_Y6_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X8_Y6_SIG_VCC ));
defparam clken_ctrl_X8_Y6_N0.coord_x = 1;
defparam clken_ctrl_X8_Y6_N0.coord_y = 5;
defparam clken_ctrl_X8_Y6_N0.coord_z = 0;
defparam clken_ctrl_X8_Y6_N0.ClkMux = 2'b10;
defparam clken_ctrl_X8_Y6_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X9_Y2_N0(
	.ClkIn(\p0|PLL_D84CC99B.clkout1 ),
	.ClkEn(),
	.ClkOut(\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ));
defparam clken_ctrl_X9_Y2_N0.coord_x = 6;
defparam clken_ctrl_X9_Y2_N0.coord_y = 4;
defparam clken_ctrl_X9_Y2_N0.coord_z = 0;
defparam clken_ctrl_X9_Y2_N0.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y2_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X9_Y3_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ));
defparam clken_ctrl_X9_Y3_N0.coord_x = 2;
defparam clken_ctrl_X9_Y3_N0.coord_y = 7;
defparam clken_ctrl_X9_Y3_N0.coord_z = 0;
defparam clken_ctrl_X9_Y3_N0.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y3_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X9_Y4_N0(
	.ClkIn(\c0|clkout~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\c0|clkout~clkctrl_outclk_X9_Y4_SIG_VCC ));
defparam clken_ctrl_X9_Y4_N0.coord_x = 12;
defparam clken_ctrl_X9_Y4_N0.coord_y = 8;
defparam clken_ctrl_X9_Y4_N0.coord_z = 0;
defparam clken_ctrl_X9_Y4_N0.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y4_N0.ClkEnMux = 2'b01;

alta_clkenctrl clken_ctrl_X9_Y6_N0(
	.ClkIn(\wav|freqclk~clkctrl_outclk ),
	.ClkEn(),
	.ClkOut(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ));
defparam clken_ctrl_X9_Y6_N0.coord_x = 0;
defparam clken_ctrl_X9_Y6_N0.coord_y = 5;
defparam clken_ctrl_X9_Y6_N0.coord_z = 0;
defparam clken_ctrl_X9_Y6_N0.ClkMux = 2'b10;
defparam clken_ctrl_X9_Y6_N0.ClkEnMux = 2'b01;

alta_slice \dfh_jiezou|LessThan0~0 (
	.A(\dfh_jiezou|pulse_counter [1]),
	.B(vcc),
	.C(\dfh_jiezou|pulse_counter [2]),
	.D(\dfh_jiezou|pulse_counter [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|LessThan0~0 .coord_x = 7;
defparam \dfh_jiezou|LessThan0~0 .coord_y = 8;
defparam \dfh_jiezou|LessThan0~0 .coord_z = 7;
defparam \dfh_jiezou|LessThan0~0 .mask = 16'h0005;
defparam \dfh_jiezou|LessThan0~0 .modeMux = 1'b0;
defparam \dfh_jiezou|LessThan0~0 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|LessThan0~0 .ShiftMux = 1'b0;
defparam \dfh_jiezou|LessThan0~0 .BypassEn = 1'b0;
defparam \dfh_jiezou|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|LessThan1~2 (
	.A(\dfh_jiezou|counter [4]),
	.B(\dfh_jiezou|LessThan1~2_RESYN12_BDD13 ),
	.C(\dfh_jiezou|counter [3]),
	.D(\dfh_jiezou|LessThan1~2_RESYN10_BDD11 ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|LessThan1~2_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|LessThan1~2 .coord_x = 8;
defparam \dfh_jiezou|LessThan1~2 .coord_y = 8;
defparam \dfh_jiezou|LessThan1~2 .coord_z = 13;
defparam \dfh_jiezou|LessThan1~2 .mask = 16'h4000;
defparam \dfh_jiezou|LessThan1~2 .modeMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2 .ShiftMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2 .BypassEn = 1'b0;
defparam \dfh_jiezou|LessThan1~2 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|LessThan1~2_RESYN10 (
	.A(\dfh_jiezou|counter [7]),
	.B(\dfh_jiezou|counter [8]),
	.C(\dfh_jiezou|counter [1]),
	.D(\dfh_jiezou|counter [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|LessThan1~2_RESYN10_BDD11 ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|LessThan1~2_RESYN10 .coord_x = 8;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .coord_y = 8;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .coord_z = 9;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .mask = 16'h1000;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .modeMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .ShiftMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .BypassEn = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN10 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|LessThan1~2_RESYN12 (
	.A(vcc),
	.B(vcc),
	.C(\dfh_jiezou|counter [5]),
	.D(\dfh_jiezou|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|LessThan1~2_RESYN12_BDD13 ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|LessThan1~2_RESYN12 .coord_x = 8;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .coord_y = 8;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .coord_z = 11;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .mask = 16'h0F00;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .modeMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .ShiftMux = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .BypassEn = 1'b0;
defparam \dfh_jiezou|LessThan1~2_RESYN12 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|Mux0~0 (
	.A(\dfh_jiezou|counter [5]),
	.B(\dfh_jiezou|counter [6]),
	.C(\dfh_jiezou|counter [3]),
	.D(\dfh_jiezou|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|Mux0~0_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|Mux0~0 .coord_x = 8;
defparam \dfh_jiezou|Mux0~0 .coord_y = 8;
defparam \dfh_jiezou|Mux0~0 .coord_z = 8;
defparam \dfh_jiezou|Mux0~0 .mask = 16'hAEF7;
defparam \dfh_jiezou|Mux0~0 .modeMux = 1'b0;
defparam \dfh_jiezou|Mux0~0 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|Mux0~0 .ShiftMux = 1'b0;
defparam \dfh_jiezou|Mux0~0 .BypassEn = 1'b0;
defparam \dfh_jiezou|Mux0~0 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|Mux0~1 (
	.A(\dfh_jiezou|Mux0~0_combout ),
	.B(vcc),
	.C(\dfh_jiezou|counter [1]),
	.D(\dfh_jiezou|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|Mux0~1_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|Mux0~1 .coord_x = 8;
defparam \dfh_jiezou|Mux0~1 .coord_y = 8;
defparam \dfh_jiezou|Mux0~1 .coord_z = 12;
defparam \dfh_jiezou|Mux0~1 .mask = 16'hFFAF;
defparam \dfh_jiezou|Mux0~1 .modeMux = 1'b0;
defparam \dfh_jiezou|Mux0~1 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|Mux0~1 .ShiftMux = 1'b0;
defparam \dfh_jiezou|Mux0~1 .BypassEn = 1'b0;
defparam \dfh_jiezou|Mux0~1 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|counter[1] (
	.A(vcc),
	.B(\dfh_jiezou|counter [1]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(),
	.Qin(\dfh_jiezou|counter [1]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[1]~8_combout ),
	.Cout(\dfh_jiezou|counter[1]~9 ),
	.Q(\dfh_jiezou|counter [1]));
defparam \dfh_jiezou|counter[1] .coord_x = 8;
defparam \dfh_jiezou|counter[1] .coord_y = 8;
defparam \dfh_jiezou|counter[1] .coord_z = 0;
defparam \dfh_jiezou|counter[1] .mask = 16'h3333;
defparam \dfh_jiezou|counter[1] .modeMux = 1'b0;
defparam \dfh_jiezou|counter[1] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[1] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[1] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[1] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[2] (
	.A(vcc),
	.B(\dfh_jiezou|counter [2]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[1]~9 ),
	.Qin(\dfh_jiezou|counter [2]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[2]~10_combout ),
	.Cout(\dfh_jiezou|counter[2]~11 ),
	.Q(\dfh_jiezou|counter [2]));
defparam \dfh_jiezou|counter[2] .coord_x = 8;
defparam \dfh_jiezou|counter[2] .coord_y = 8;
defparam \dfh_jiezou|counter[2] .coord_z = 1;
defparam \dfh_jiezou|counter[2] .mask = 16'hC30C;
defparam \dfh_jiezou|counter[2] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[2] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[2] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[2] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[2] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[3] (
	.A(vcc),
	.B(\dfh_jiezou|counter [3]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[2]~11 ),
	.Qin(\dfh_jiezou|counter [3]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[3]~12_combout ),
	.Cout(\dfh_jiezou|counter[3]~13 ),
	.Q(\dfh_jiezou|counter [3]));
defparam \dfh_jiezou|counter[3] .coord_x = 8;
defparam \dfh_jiezou|counter[3] .coord_y = 8;
defparam \dfh_jiezou|counter[3] .coord_z = 2;
defparam \dfh_jiezou|counter[3] .mask = 16'h3C3F;
defparam \dfh_jiezou|counter[3] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[3] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[3] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[3] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[3] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[4] (
	.A(vcc),
	.B(\dfh_jiezou|counter [4]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[3]~13 ),
	.Qin(\dfh_jiezou|counter [4]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[4]~14_combout ),
	.Cout(\dfh_jiezou|counter[4]~15 ),
	.Q(\dfh_jiezou|counter [4]));
defparam \dfh_jiezou|counter[4] .coord_x = 8;
defparam \dfh_jiezou|counter[4] .coord_y = 8;
defparam \dfh_jiezou|counter[4] .coord_z = 3;
defparam \dfh_jiezou|counter[4] .mask = 16'hC303;
defparam \dfh_jiezou|counter[4] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[4] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[4] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[4] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[4] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[5] (
	.A(vcc),
	.B(\dfh_jiezou|counter [5]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[4]~15 ),
	.Qin(\dfh_jiezou|counter [5]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[5]~16_combout ),
	.Cout(\dfh_jiezou|counter[5]~17 ),
	.Q(\dfh_jiezou|counter [5]));
defparam \dfh_jiezou|counter[5] .coord_x = 8;
defparam \dfh_jiezou|counter[5] .coord_y = 8;
defparam \dfh_jiezou|counter[5] .coord_z = 4;
defparam \dfh_jiezou|counter[5] .mask = 16'h3CCF;
defparam \dfh_jiezou|counter[5] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[5] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[5] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[5] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[5] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[6] (
	.A(vcc),
	.B(\dfh_jiezou|counter [6]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[5]~17 ),
	.Qin(\dfh_jiezou|counter [6]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[6]~18_combout ),
	.Cout(\dfh_jiezou|counter[6]~19 ),
	.Q(\dfh_jiezou|counter [6]));
defparam \dfh_jiezou|counter[6] .coord_x = 8;
defparam \dfh_jiezou|counter[6] .coord_y = 8;
defparam \dfh_jiezou|counter[6] .coord_z = 5;
defparam \dfh_jiezou|counter[6] .mask = 16'hC30C;
defparam \dfh_jiezou|counter[6] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[6] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[6] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[6] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[6] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[7] (
	.A(vcc),
	.B(\dfh_jiezou|counter [7]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[6]~19 ),
	.Qin(\dfh_jiezou|counter [7]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[7]~20_combout ),
	.Cout(\dfh_jiezou|counter[7]~21 ),
	.Q(\dfh_jiezou|counter [7]));
defparam \dfh_jiezou|counter[7] .coord_x = 8;
defparam \dfh_jiezou|counter[7] .coord_y = 8;
defparam \dfh_jiezou|counter[7] .coord_z = 6;
defparam \dfh_jiezou|counter[7] .mask = 16'h3CCF;
defparam \dfh_jiezou|counter[7] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[7] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[7] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[7] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[7] .CarryEnb = 1'b0;

alta_slice \dfh_jiezou|counter[8] (
	.A(vcc),
	.B(\dfh_jiezou|counter [8]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh_jiezou|counter[7]~21 ),
	.Qin(\dfh_jiezou|counter [8]),
	.Clk(\c2|clkout~clkctrl_outclk__dfh_jiezou|LessThan0~0_combout_X8_Y5_INV_SIG ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X8_Y5_INV ),
	.SyncReset(SyncReset_X8_Y5_GND),
	.ShiftData(),
	.SyncLoad(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ),
	.LutOut(\dfh_jiezou|counter[8]~22_combout ),
	.Cout(),
	.Q(\dfh_jiezou|counter [8]));
defparam \dfh_jiezou|counter[8] .coord_x = 8;
defparam \dfh_jiezou|counter[8] .coord_y = 8;
defparam \dfh_jiezou|counter[8] .coord_z = 7;
defparam \dfh_jiezou|counter[8] .mask = 16'hC3C3;
defparam \dfh_jiezou|counter[8] .modeMux = 1'b1;
defparam \dfh_jiezou|counter[8] .FeedbackMux = 1'b0;
defparam \dfh_jiezou|counter[8] .ShiftMux = 1'b0;
defparam \dfh_jiezou|counter[8] .BypassEn = 1'b1;
defparam \dfh_jiezou|counter[8] .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter[0] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\dfh_jiezou|pulse_counter [0]),
	.Clk(\c2|clkout~clkctrl_outclk_X7_Y5_INV_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X7_Y5_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter[0]~8_combout ),
	.Cout(),
	.Q(\dfh_jiezou|pulse_counter [0]));
defparam \dfh_jiezou|pulse_counter[0] .coord_x = 7;
defparam \dfh_jiezou|pulse_counter[0] .coord_y = 8;
defparam \dfh_jiezou|pulse_counter[0] .coord_z = 11;
defparam \dfh_jiezou|pulse_counter[0] .mask = 16'h0F0F;
defparam \dfh_jiezou|pulse_counter[0] .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[0] .FeedbackMux = 1'b1;
defparam \dfh_jiezou|pulse_counter[0] .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[0] .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter[0] .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter[1] (
	.A(vcc),
	.B(\dfh_jiezou|pulse_counter~4_combout ),
	.C(vcc),
	.D(\dfh_jiezou|pulse_counter [0]),
	.Cin(),
	.Qin(\dfh_jiezou|pulse_counter [1]),
	.Clk(\c2|clkout~clkctrl_outclk_X7_Y5_INV_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X7_Y5_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~5_combout ),
	.Cout(),
	.Q(\dfh_jiezou|pulse_counter [1]));
defparam \dfh_jiezou|pulse_counter[1] .coord_x = 7;
defparam \dfh_jiezou|pulse_counter[1] .coord_y = 8;
defparam \dfh_jiezou|pulse_counter[1] .coord_z = 2;
defparam \dfh_jiezou|pulse_counter[1] .mask = 16'hF00C;
defparam \dfh_jiezou|pulse_counter[1] .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[1] .FeedbackMux = 1'b1;
defparam \dfh_jiezou|pulse_counter[1] .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[1] .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter[1] .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter[2] (
	.A(\dfh_jiezou|pulse_counter [1]),
	.B(\dfh_jiezou|Mux0~1_combout ),
	.C(vcc),
	.D(\dfh_jiezou|pulse_counter [0]),
	.Cin(),
	.Qin(\dfh_jiezou|pulse_counter [2]),
	.Clk(\c2|clkout~clkctrl_outclk_X7_Y5_INV_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X7_Y5_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~0_combout ),
	.Cout(),
	.Q(\dfh_jiezou|pulse_counter [2]));
defparam \dfh_jiezou|pulse_counter[2] .coord_x = 7;
defparam \dfh_jiezou|pulse_counter[2] .coord_y = 8;
defparam \dfh_jiezou|pulse_counter[2] .coord_z = 6;
defparam \dfh_jiezou|pulse_counter[2] .mask = 16'hF0A1;
defparam \dfh_jiezou|pulse_counter[2] .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[2] .FeedbackMux = 1'b1;
defparam \dfh_jiezou|pulse_counter[2] .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter[2] .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter[2] .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter~1 (
	.A(\dfh_jiezou|counter [3]),
	.B(\dfh_jiezou|counter [5]),
	.C(\dfh_jiezou|counter [1]),
	.D(\dfh_jiezou|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~1_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|pulse_counter~1 .coord_x = 8;
defparam \dfh_jiezou|pulse_counter~1 .coord_y = 8;
defparam \dfh_jiezou|pulse_counter~1 .coord_z = 14;
defparam \dfh_jiezou|pulse_counter~1 .mask = 16'hCC5C;
defparam \dfh_jiezou|pulse_counter~1 .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~1 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~1 .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~1 .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter~1 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter~2 (
	.A(\dfh_jiezou|counter [3]),
	.B(\dfh_jiezou|counter [5]),
	.C(\dfh_jiezou|counter [1]),
	.D(\dfh_jiezou|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~2_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|pulse_counter~2 .coord_x = 8;
defparam \dfh_jiezou|pulse_counter~2 .coord_y = 8;
defparam \dfh_jiezou|pulse_counter~2 .coord_z = 15;
defparam \dfh_jiezou|pulse_counter~2 .mask = 16'hF7A8;
defparam \dfh_jiezou|pulse_counter~2 .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~2 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~2 .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~2 .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter~2 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter~3 (
	.A(\dfh_jiezou|counter [6]),
	.B(\dfh_jiezou|counter [4]),
	.C(\dfh_jiezou|pulse_counter~1_combout ),
	.D(\dfh_jiezou|pulse_counter~2_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~3_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|pulse_counter~3 .coord_x = 8;
defparam \dfh_jiezou|pulse_counter~3 .coord_y = 8;
defparam \dfh_jiezou|pulse_counter~3 .coord_z = 10;
defparam \dfh_jiezou|pulse_counter~3 .mask = 16'hDF76;
defparam \dfh_jiezou|pulse_counter~3 .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~3 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~3 .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~3 .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter~3 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|pulse_counter~4 (
	.A(vcc),
	.B(\dfh_jiezou|pulse_counter~3_combout ),
	.C(\dfh_jiezou|pulse_counter [2]),
	.D(\dfh_jiezou|Mux0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|pulse_counter~4_combout ),
	.Cout(),
	.Q());
defparam \dfh_jiezou|pulse_counter~4 .coord_x = 7;
defparam \dfh_jiezou|pulse_counter~4 .coord_y = 8;
defparam \dfh_jiezou|pulse_counter~4 .coord_z = 5;
defparam \dfh_jiezou|pulse_counter~4 .mask = 16'hF3FC;
defparam \dfh_jiezou|pulse_counter~4 .modeMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~4 .FeedbackMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~4 .ShiftMux = 1'b0;
defparam \dfh_jiezou|pulse_counter~4 .BypassEn = 1'b0;
defparam \dfh_jiezou|pulse_counter~4 .CarryEnb = 1'b1;

alta_slice \dfh_jiezou|tick (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\dfh_jiezou|LessThan0~0_combout ),
	.Cin(),
	.Qin(\dfh_jiezou|tick~q ),
	.Clk(\c2|clkout~clkctrl_outclk_X1_Y8_INV_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X1_Y8_INV ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh_jiezou|tick~feeder_combout ),
	.Cout(),
	.Q(\dfh_jiezou|tick~q ));
defparam \dfh_jiezou|tick .coord_x = 6;
defparam \dfh_jiezou|tick .coord_y = 8;
defparam \dfh_jiezou|tick .coord_z = 9;
defparam \dfh_jiezou|tick .mask = 16'hFF00;
defparam \dfh_jiezou|tick .modeMux = 1'b0;
defparam \dfh_jiezou|tick .FeedbackMux = 1'b0;
defparam \dfh_jiezou|tick .ShiftMux = 1'b0;
defparam \dfh_jiezou|tick .BypassEn = 1'b0;
defparam \dfh_jiezou|tick .CarryEnb = 1'b1;

alta_io_gclk \dfh_jiezou|tick~clkctrl (
	.inclk(\dfh_jiezou|tick~q ),
	.outclk(\dfh_jiezou|tick~clkctrl_outclk ));
defparam \dfh_jiezou|tick~clkctrl .coord_x = 6;
defparam \dfh_jiezou|tick~clkctrl .coord_y = 9;
defparam \dfh_jiezou|tick~clkctrl .coord_z = 0;

alta_slice \dfh|LessThan0~0 (
	.A(\dfh|LessThan0~0_RESYN34_BDD35 ),
	.B(\dfh|counter [8]),
	.C(\dfh|counter [7]),
	.D(\dfh|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \dfh|LessThan0~0 .coord_x = 0;
defparam \dfh|LessThan0~0 .coord_y = 8;
defparam \dfh|LessThan0~0 .coord_z = 0;
defparam \dfh|LessThan0~0 .mask = 16'h2000;
defparam \dfh|LessThan0~0 .modeMux = 1'b0;
defparam \dfh|LessThan0~0 .FeedbackMux = 1'b0;
defparam \dfh|LessThan0~0 .ShiftMux = 1'b0;
defparam \dfh|LessThan0~0 .BypassEn = 1'b0;
defparam \dfh|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \dfh|LessThan0~0_RESYN34 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [5]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|LessThan0~0_RESYN34_BDD35 ),
	.Cout(),
	.Q());
defparam \dfh|LessThan0~0_RESYN34 .coord_x = 0;
defparam \dfh|LessThan0~0_RESYN34 .coord_y = 8;
defparam \dfh|LessThan0~0_RESYN34 .coord_z = 1;
defparam \dfh|LessThan0~0_RESYN34 .mask = 16'h0200;
defparam \dfh|LessThan0~0_RESYN34 .modeMux = 1'b0;
defparam \dfh|LessThan0~0_RESYN34 .FeedbackMux = 1'b0;
defparam \dfh|LessThan0~0_RESYN34 .ShiftMux = 1'b0;
defparam \dfh|LessThan0~0_RESYN34 .BypassEn = 1'b0;
defparam \dfh|LessThan0~0_RESYN34 .CarryEnb = 1'b1;

alta_slice \dfh|Mux0~0 (
	.A(\dfh|counter [2]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [3]),
	.D(\dfh|counter [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux0~0_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux0~0 .coord_x = 0;
defparam \dfh|Mux0~0 .coord_y = 7;
defparam \dfh|Mux0~0 .coord_z = 7;
defparam \dfh|Mux0~0 .mask = 16'h0400;
defparam \dfh|Mux0~0 .modeMux = 1'b0;
defparam \dfh|Mux0~0 .FeedbackMux = 1'b0;
defparam \dfh|Mux0~0 .ShiftMux = 1'b0;
defparam \dfh|Mux0~0 .BypassEn = 1'b0;
defparam \dfh|Mux0~0 .CarryEnb = 1'b1;

alta_slice \dfh|Mux1~0 (
	.A(\dfh|counter [2]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [4]),
	.D(\dfh|counter [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux1~0_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux1~0 .coord_x = 0;
defparam \dfh|Mux1~0 .coord_y = 7;
defparam \dfh|Mux1~0 .coord_z = 1;
defparam \dfh|Mux1~0 .mask = 16'h6EA2;
defparam \dfh|Mux1~0 .modeMux = 1'b0;
defparam \dfh|Mux1~0 .FeedbackMux = 1'b0;
defparam \dfh|Mux1~0 .ShiftMux = 1'b0;
defparam \dfh|Mux1~0 .BypassEn = 1'b0;
defparam \dfh|Mux1~0 .CarryEnb = 1'b1;

alta_slice \dfh|Mux1~1 (
	.A(\dfh|counter [5]),
	.B(\dfh|counter [4]),
	.C(\dfh|counter [2]),
	.D(\dfh|counter [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux1~1_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux1~1 .coord_x = 0;
defparam \dfh|Mux1~1 .coord_y = 7;
defparam \dfh|Mux1~1 .coord_z = 6;
defparam \dfh|Mux1~1 .mask = 16'hBF2A;
defparam \dfh|Mux1~1 .modeMux = 1'b0;
defparam \dfh|Mux1~1 .FeedbackMux = 1'b0;
defparam \dfh|Mux1~1 .ShiftMux = 1'b0;
defparam \dfh|Mux1~1 .BypassEn = 1'b0;
defparam \dfh|Mux1~1 .CarryEnb = 1'b1;

alta_slice \dfh|Mux1~2 (
	.A(\dfh|Mux1~1_combout ),
	.B(\dfh|counter [4]),
	.C(\dfh|counter [3]),
	.D(\dfh|Mux1~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux1~2_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux1~2 .coord_x = 0;
defparam \dfh|Mux1~2 .coord_y = 7;
defparam \dfh|Mux1~2 .coord_z = 3;
defparam \dfh|Mux1~2 .mask = 16'h1114;
defparam \dfh|Mux1~2 .modeMux = 1'b0;
defparam \dfh|Mux1~2 .FeedbackMux = 1'b0;
defparam \dfh|Mux1~2 .ShiftMux = 1'b0;
defparam \dfh|Mux1~2 .BypassEn = 1'b0;
defparam \dfh|Mux1~2 .CarryEnb = 1'b1;

alta_slice \dfh|Mux1~3 (
	.A(\dfh|Mux1~1_combout ),
	.B(\dfh|counter [4]),
	.C(\dfh|counter [3]),
	.D(\dfh|Mux1~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux1~3_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux1~3 .coord_x = 0;
defparam \dfh|Mux1~3 .coord_y = 7;
defparam \dfh|Mux1~3 .coord_z = 8;
defparam \dfh|Mux1~3 .mask = 16'h5CC2;
defparam \dfh|Mux1~3 .modeMux = 1'b0;
defparam \dfh|Mux1~3 .FeedbackMux = 1'b0;
defparam \dfh|Mux1~3 .ShiftMux = 1'b0;
defparam \dfh|Mux1~3 .BypassEn = 1'b0;
defparam \dfh|Mux1~3 .CarryEnb = 1'b1;

alta_slice \dfh|Mux1~4 (
	.A(vcc),
	.B(\dfh|Mux1~2_combout ),
	.C(\dfh|Mux1~3_combout ),
	.D(\dfh|counter [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux1~4_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux1~4 .coord_x = 0;
defparam \dfh|Mux1~4 .coord_y = 7;
defparam \dfh|Mux1~4 .coord_z = 5;
defparam \dfh|Mux1~4 .mask = 16'h0FCC;
defparam \dfh|Mux1~4 .modeMux = 1'b0;
defparam \dfh|Mux1~4 .FeedbackMux = 1'b0;
defparam \dfh|Mux1~4 .ShiftMux = 1'b0;
defparam \dfh|Mux1~4 .BypassEn = 1'b0;
defparam \dfh|Mux1~4 .CarryEnb = 1'b1;

alta_slice \dfh|Mux2~0 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [5]),
	.C(\dfh|counter [2]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux2~0_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux2~0 .coord_x = 0;
defparam \dfh|Mux2~0 .coord_y = 7;
defparam \dfh|Mux2~0 .coord_z = 15;
defparam \dfh|Mux2~0 .mask = 16'h7B60;
defparam \dfh|Mux2~0 .modeMux = 1'b0;
defparam \dfh|Mux2~0 .FeedbackMux = 1'b0;
defparam \dfh|Mux2~0 .ShiftMux = 1'b0;
defparam \dfh|Mux2~0 .BypassEn = 1'b0;
defparam \dfh|Mux2~0 .CarryEnb = 1'b1;

alta_slice \dfh|Mux2~1 (
	.A(\dfh|counter [2]),
	.B(\dfh|counter [5]),
	.C(\dfh|counter [3]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux2~1_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux2~1 .coord_x = 0;
defparam \dfh|Mux2~1 .coord_y = 7;
defparam \dfh|Mux2~1 .coord_z = 11;
defparam \dfh|Mux2~1 .mask = 16'h92F2;
defparam \dfh|Mux2~1 .modeMux = 1'b0;
defparam \dfh|Mux2~1 .FeedbackMux = 1'b0;
defparam \dfh|Mux2~1 .ShiftMux = 1'b0;
defparam \dfh|Mux2~1 .BypassEn = 1'b0;
defparam \dfh|Mux2~1 .CarryEnb = 1'b1;

alta_slice \dfh|Mux2~2 (
	.A(vcc),
	.B(\dfh|counter [7]),
	.C(\dfh|counter [5]),
	.D(\dfh|Mux2~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux2~2_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux2~2 .coord_x = 0;
defparam \dfh|Mux2~2 .coord_y = 7;
defparam \dfh|Mux2~2 .coord_z = 13;
defparam \dfh|Mux2~2 .mask = 16'h0FC0;
defparam \dfh|Mux2~2 .modeMux = 1'b0;
defparam \dfh|Mux2~2 .FeedbackMux = 1'b0;
defparam \dfh|Mux2~2 .ShiftMux = 1'b0;
defparam \dfh|Mux2~2 .BypassEn = 1'b0;
defparam \dfh|Mux2~2 .CarryEnb = 1'b1;

alta_slice \dfh|Mux2~3 (
	.A(\dfh|counter [6]),
	.B(\dfh|counter [7]),
	.C(\dfh|Mux2~2_combout ),
	.D(\dfh|Mux2~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux2~3_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux2~3 .coord_x = 0;
defparam \dfh|Mux2~3 .coord_y = 7;
defparam \dfh|Mux2~3 .coord_z = 12;
defparam \dfh|Mux2~3 .mask = 16'hD018;
defparam \dfh|Mux2~3 .modeMux = 1'b0;
defparam \dfh|Mux2~3 .FeedbackMux = 1'b0;
defparam \dfh|Mux2~3 .ShiftMux = 1'b0;
defparam \dfh|Mux2~3 .BypassEn = 1'b0;
defparam \dfh|Mux2~3 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~0 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [5]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~0_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~0 .coord_x = 0;
defparam \dfh|Mux3~0 .coord_y = 8;
defparam \dfh|Mux3~0 .coord_z = 12;
defparam \dfh|Mux3~0 .mask = 16'hFCFD;
defparam \dfh|Mux3~0 .modeMux = 1'b0;
defparam \dfh|Mux3~0 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~0 .ShiftMux = 1'b0;
defparam \dfh|Mux3~0 .BypassEn = 1'b0;
defparam \dfh|Mux3~0 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~1 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [5]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~1_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~1 .coord_x = 0;
defparam \dfh|Mux3~1 .coord_y = 8;
defparam \dfh|Mux3~1 .coord_z = 10;
defparam \dfh|Mux3~1 .mask = 16'h2004;
defparam \dfh|Mux3~1 .modeMux = 1'b0;
defparam \dfh|Mux3~1 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~1 .ShiftMux = 1'b0;
defparam \dfh|Mux3~1 .BypassEn = 1'b0;
defparam \dfh|Mux3~1 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~2 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [5]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~2_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~2 .coord_x = 0;
defparam \dfh|Mux3~2 .coord_y = 8;
defparam \dfh|Mux3~2 .coord_z = 11;
defparam \dfh|Mux3~2 .mask = 16'h0058;
defparam \dfh|Mux3~2 .modeMux = 1'b0;
defparam \dfh|Mux3~2 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~2 .ShiftMux = 1'b0;
defparam \dfh|Mux3~2 .BypassEn = 1'b0;
defparam \dfh|Mux3~2 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~3 (
	.A(\dfh|Mux3~1_combout ),
	.B(\dfh|Mux3~2_combout ),
	.C(\dfh|counter [7]),
	.D(\dfh|counter [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~3_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~3 .coord_x = 0;
defparam \dfh|Mux3~3 .coord_y = 8;
defparam \dfh|Mux3~3 .coord_z = 2;
defparam \dfh|Mux3~3 .mask = 16'h30AF;
defparam \dfh|Mux3~3 .modeMux = 1'b0;
defparam \dfh|Mux3~3 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~3 .ShiftMux = 1'b0;
defparam \dfh|Mux3~3 .BypassEn = 1'b0;
defparam \dfh|Mux3~3 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~4 (
	.A(\dfh|counter [3]),
	.B(\dfh|counter [6]),
	.C(\dfh|counter [5]),
	.D(\dfh|counter [4]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~4_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~4 .coord_x = 0;
defparam \dfh|Mux3~4 .coord_y = 8;
defparam \dfh|Mux3~4 .coord_z = 15;
defparam \dfh|Mux3~4 .mask = 16'h0200;
defparam \dfh|Mux3~4 .modeMux = 1'b0;
defparam \dfh|Mux3~4 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~4 .ShiftMux = 1'b0;
defparam \dfh|Mux3~4 .BypassEn = 1'b0;
defparam \dfh|Mux3~4 .CarryEnb = 1'b1;

alta_slice \dfh|Mux3~5 (
	.A(\dfh|Mux3~0_combout ),
	.B(\dfh|counter [7]),
	.C(\dfh|Mux3~3_combout ),
	.D(\dfh|Mux3~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\dfh|Mux3~5_combout ),
	.Cout(),
	.Q());
defparam \dfh|Mux3~5 .coord_x = 0;
defparam \dfh|Mux3~5 .coord_y = 8;
defparam \dfh|Mux3~5 .coord_z = 14;
defparam \dfh|Mux3~5 .mask = 16'hF1C1;
defparam \dfh|Mux3~5 .modeMux = 1'b0;
defparam \dfh|Mux3~5 .FeedbackMux = 1'b0;
defparam \dfh|Mux3~5 .ShiftMux = 1'b0;
defparam \dfh|Mux3~5 .BypassEn = 1'b0;
defparam \dfh|Mux3~5 .CarryEnb = 1'b1;

alta_slice \dfh|counter[2] (
	.A(vcc),
	.B(\dfh|counter [2]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(),
	.Qin(\dfh|counter [2]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[2]~7_combout ),
	.Cout(\dfh|counter[2]~8 ),
	.Q(\dfh|counter [2]));
defparam \dfh|counter[2] .coord_x = 0;
defparam \dfh|counter[2] .coord_y = 8;
defparam \dfh|counter[2] .coord_z = 3;
defparam \dfh|counter[2] .mask = 16'h3333;
defparam \dfh|counter[2] .modeMux = 1'b0;
defparam \dfh|counter[2] .FeedbackMux = 1'b0;
defparam \dfh|counter[2] .ShiftMux = 1'b0;
defparam \dfh|counter[2] .BypassEn = 1'b1;
defparam \dfh|counter[2] .CarryEnb = 1'b0;

alta_slice \dfh|counter[3] (
	.A(vcc),
	.B(\dfh|counter [3]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh|counter[2]~8 ),
	.Qin(\dfh|counter [3]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[3]~9_combout ),
	.Cout(\dfh|counter[3]~10 ),
	.Q(\dfh|counter [3]));
defparam \dfh|counter[3] .coord_x = 0;
defparam \dfh|counter[3] .coord_y = 8;
defparam \dfh|counter[3] .coord_z = 4;
defparam \dfh|counter[3] .mask = 16'hC30C;
defparam \dfh|counter[3] .modeMux = 1'b1;
defparam \dfh|counter[3] .FeedbackMux = 1'b0;
defparam \dfh|counter[3] .ShiftMux = 1'b0;
defparam \dfh|counter[3] .BypassEn = 1'b1;
defparam \dfh|counter[3] .CarryEnb = 1'b0;

alta_slice \dfh|counter[4] (
	.A(vcc),
	.B(\dfh|counter [4]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh|counter[3]~10 ),
	.Qin(\dfh|counter [4]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[4]~11_combout ),
	.Cout(\dfh|counter[4]~12 ),
	.Q(\dfh|counter [4]));
defparam \dfh|counter[4] .coord_x = 0;
defparam \dfh|counter[4] .coord_y = 8;
defparam \dfh|counter[4] .coord_z = 5;
defparam \dfh|counter[4] .mask = 16'h3C3F;
defparam \dfh|counter[4] .modeMux = 1'b1;
defparam \dfh|counter[4] .FeedbackMux = 1'b0;
defparam \dfh|counter[4] .ShiftMux = 1'b0;
defparam \dfh|counter[4] .BypassEn = 1'b1;
defparam \dfh|counter[4] .CarryEnb = 1'b0;

alta_slice \dfh|counter[5] (
	.A(vcc),
	.B(\dfh|counter [5]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh|counter[4]~12 ),
	.Qin(\dfh|counter [5]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[5]~13_combout ),
	.Cout(\dfh|counter[5]~14 ),
	.Q(\dfh|counter [5]));
defparam \dfh|counter[5] .coord_x = 0;
defparam \dfh|counter[5] .coord_y = 8;
defparam \dfh|counter[5] .coord_z = 6;
defparam \dfh|counter[5] .mask = 16'hC303;
defparam \dfh|counter[5] .modeMux = 1'b1;
defparam \dfh|counter[5] .FeedbackMux = 1'b0;
defparam \dfh|counter[5] .ShiftMux = 1'b0;
defparam \dfh|counter[5] .BypassEn = 1'b1;
defparam \dfh|counter[5] .CarryEnb = 1'b0;

alta_slice \dfh|counter[6] (
	.A(vcc),
	.B(\dfh|counter [6]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh|counter[5]~14 ),
	.Qin(\dfh|counter [6]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[6]~15_combout ),
	.Cout(\dfh|counter[6]~16 ),
	.Q(\dfh|counter [6]));
defparam \dfh|counter[6] .coord_x = 0;
defparam \dfh|counter[6] .coord_y = 8;
defparam \dfh|counter[6] .coord_z = 7;
defparam \dfh|counter[6] .mask = 16'h3CCF;
defparam \dfh|counter[6] .modeMux = 1'b1;
defparam \dfh|counter[6] .FeedbackMux = 1'b0;
defparam \dfh|counter[6] .ShiftMux = 1'b0;
defparam \dfh|counter[6] .BypassEn = 1'b1;
defparam \dfh|counter[6] .CarryEnb = 1'b0;

alta_slice \dfh|counter[7] (
	.A(vcc),
	.B(\dfh|counter [7]),
	.C(\~GND~combout ),
	.D(vcc),
	.Cin(\dfh|counter[6]~16 ),
	.Qin(\dfh|counter [7]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[7]~17_combout ),
	.Cout(\dfh|counter[7]~18 ),
	.Q(\dfh|counter [7]));
defparam \dfh|counter[7] .coord_x = 0;
defparam \dfh|counter[7] .coord_y = 8;
defparam \dfh|counter[7] .coord_z = 8;
defparam \dfh|counter[7] .mask = 16'hC30C;
defparam \dfh|counter[7] .modeMux = 1'b1;
defparam \dfh|counter[7] .FeedbackMux = 1'b0;
defparam \dfh|counter[7] .ShiftMux = 1'b0;
defparam \dfh|counter[7] .BypassEn = 1'b1;
defparam \dfh|counter[7] .CarryEnb = 1'b0;

alta_slice \dfh|counter[8] (
	.A(vcc),
	.B(vcc),
	.C(\~GND~combout ),
	.D(\dfh|counter [8]),
	.Cin(\dfh|counter[7]~18 ),
	.Qin(\dfh|counter [8]),
	.Clk(\dfh_jiezou|tick~clkctrl_outclk_X6_Y2_SIG_VCC ),
	.AsyncReset(\KEY[2]~inputclkctrl_outclk__AsyncReset_X6_Y2_INV ),
	.SyncReset(SyncReset_X6_Y2_GND),
	.ShiftData(),
	.SyncLoad(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ),
	.LutOut(\dfh|counter[8]~19_combout ),
	.Cout(),
	.Q(\dfh|counter [8]));
defparam \dfh|counter[8] .coord_x = 0;
defparam \dfh|counter[8] .coord_y = 8;
defparam \dfh|counter[8] .coord_z = 9;
defparam \dfh|counter[8] .mask = 16'h0FF0;
defparam \dfh|counter[8] .modeMux = 1'b1;
defparam \dfh|counter[8] .FeedbackMux = 1'b0;
defparam \dfh|counter[8] .ShiftMux = 1'b0;
defparam \dfh|counter[8] .BypassEn = 1'b1;
defparam \dfh|counter[8] .CarryEnb = 1'b1;

alta_slice nRst(
	.A(vcc),
	.B(\p0|PLL_D84CC99B.lock ),
	.C(\por0|oRESET~q ),
	.D(\KEY[2]~input_o ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\nRst~combout ),
	.Cout(),
	.Q());
defparam nRst.coord_x = 6;
defparam nRst.coord_y = 4;
defparam nRst.coord_z = 12;
defparam nRst.mask = 16'h030F;
defparam nRst.modeMux = 1'b0;
defparam nRst.FeedbackMux = 1'b0;
defparam nRst.ShiftMux = 1'b0;
defparam nRst.BypassEn = 1'b0;
defparam nRst.CarryEnb = 1'b1;

alta_pllx \p0|PLL_D84CC99B (
	.clkin(\CLK~input_o ),
	.clkfb(\p0|PLL_D84CC99B.clkout0 ),
	.pllen(vcc),
	.resetn(vcc),
	.clkout0en(vcc),
	.clkout1en(vcc),
	.clkout2en(gnd),
	.clkout3en(gnd),
	.clkout0(\p0|PLL_D84CC99B.clkout0 ),
	.clkout1(\p0|PLL_D84CC99B.clkout1_int ),
	.clkout2(\p0|PLL_D84CC99B.clkout2 ),
	.clkout3(\p0|PLL_D84CC99B.clkout3 ),
	.lock(\p0|PLL_D84CC99B.lock ));
defparam \p0|PLL_D84CC99B .coord_x = 1;
defparam \p0|PLL_D84CC99B .coord_y = 0;
defparam \p0|PLL_D84CC99B .coord_z = 0;
defparam \p0|PLL_D84CC99B .CLKIN_DIV = 6'b000001;
defparam \p0|PLL_D84CC99B .CLKFB_DIV = 6'b000001;
defparam \p0|PLL_D84CC99B .CLKDIV0_EN = 1'b1;
defparam \p0|PLL_D84CC99B .CLKDIV1_EN = 1'b1;
defparam \p0|PLL_D84CC99B .CLKDIV2_EN = 1'b0;
defparam \p0|PLL_D84CC99B .CLKDIV3_EN = 1'b0;
defparam \p0|PLL_D84CC99B .CLKOUT0_DIV = 6'b011110;
defparam \p0|PLL_D84CC99B .CLKOUT1_DIV = 6'b111101;
defparam \p0|PLL_D84CC99B .CLKOUT2_DIV = 6'b111111;
defparam \p0|PLL_D84CC99B .CLKOUT3_DIV = 6'b111111;
defparam \p0|PLL_D84CC99B .CLKOUT0_DEL = 6'b000000;
defparam \p0|PLL_D84CC99B .CLKOUT1_DEL = 6'b000000;
defparam \p0|PLL_D84CC99B .CLKOUT2_DEL = 6'b000000;
defparam \p0|PLL_D84CC99B .CLKOUT3_DEL = 6'b000000;
defparam \p0|PLL_D84CC99B .CLKOUT0_PHASE = 3'b000;
defparam \p0|PLL_D84CC99B .CLKOUT1_PHASE = 3'b000;
defparam \p0|PLL_D84CC99B .CLKOUT2_PHASE = 3'b000;
defparam \p0|PLL_D84CC99B .CLKOUT3_PHASE = 3'b000;
defparam \p0|PLL_D84CC99B .FEEDBACK_MODE = 1'b1;
defparam \p0|PLL_D84CC99B .FEEDBACK_CLOCK = 2'b00;

alta_io_gclk \p0|PLL_D84CC99B|clkout1~ALTA_GCLK (
	.inclk(\p0|PLL_D84CC99B.clkout1_int ),
	.outclk(\p0|PLL_D84CC99B.clkout1 ));
defparam \p0|PLL_D84CC99B|clkout1~ALTA_GCLK .coord_x = 4;
defparam \p0|PLL_D84CC99B|clkout1~ALTA_GCLK .coord_y = 9;
defparam \p0|PLL_D84CC99B|clkout1~ALTA_GCLK .coord_z = 0;

alta_slice \por0|Equal0~0 (
	.A(\por0|cnt [0]),
	.B(\por0|cnt [17]),
	.C(\por0|cnt [18]),
	.D(\por0|cnt [19]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~0_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~0 .coord_x = 7;
defparam \por0|Equal0~0 .coord_y = 3;
defparam \por0|Equal0~0 .coord_z = 13;
defparam \por0|Equal0~0 .mask = 16'h8000;
defparam \por0|Equal0~0 .modeMux = 1'b0;
defparam \por0|Equal0~0 .FeedbackMux = 1'b0;
defparam \por0|Equal0~0 .ShiftMux = 1'b0;
defparam \por0|Equal0~0 .BypassEn = 1'b0;
defparam \por0|Equal0~0 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~1 (
	.A(\por0|cnt [4]),
	.B(\por0|cnt [1]),
	.C(\por0|cnt [2]),
	.D(\por0|cnt [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~1_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~1 .coord_x = 7;
defparam \por0|Equal0~1 .coord_y = 4;
defparam \por0|Equal0~1 .coord_z = 6;
defparam \por0|Equal0~1 .mask = 16'h8000;
defparam \por0|Equal0~1 .modeMux = 1'b0;
defparam \por0|Equal0~1 .FeedbackMux = 1'b0;
defparam \por0|Equal0~1 .ShiftMux = 1'b0;
defparam \por0|Equal0~1 .BypassEn = 1'b0;
defparam \por0|Equal0~1 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~2 (
	.A(\por0|cnt [8]),
	.B(\por0|cnt [5]),
	.C(\por0|cnt [6]),
	.D(\por0|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~2_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~2 .coord_x = 7;
defparam \por0|Equal0~2 .coord_y = 4;
defparam \por0|Equal0~2 .coord_z = 4;
defparam \por0|Equal0~2 .mask = 16'h8000;
defparam \por0|Equal0~2 .modeMux = 1'b0;
defparam \por0|Equal0~2 .FeedbackMux = 1'b0;
defparam \por0|Equal0~2 .ShiftMux = 1'b0;
defparam \por0|Equal0~2 .BypassEn = 1'b0;
defparam \por0|Equal0~2 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~3 (
	.A(vcc),
	.B(vcc),
	.C(\por0|cnt [12]),
	.D(\por0|cnt [11]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~3_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~3 .coord_x = 7;
defparam \por0|Equal0~3 .coord_y = 3;
defparam \por0|Equal0~3 .coord_z = 14;
defparam \por0|Equal0~3 .mask = 16'hF000;
defparam \por0|Equal0~3 .modeMux = 1'b0;
defparam \por0|Equal0~3 .FeedbackMux = 1'b0;
defparam \por0|Equal0~3 .ShiftMux = 1'b0;
defparam \por0|Equal0~3 .BypassEn = 1'b0;
defparam \por0|Equal0~3 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~4 (
	.A(\por0|cnt [14]),
	.B(\por0|cnt [15]),
	.C(\por0|cnt [16]),
	.D(\por0|cnt [13]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~4_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~4 .coord_x = 7;
defparam \por0|Equal0~4 .coord_y = 3;
defparam \por0|Equal0~4 .coord_z = 11;
defparam \por0|Equal0~4 .mask = 16'h8000;
defparam \por0|Equal0~4 .modeMux = 1'b0;
defparam \por0|Equal0~4 .FeedbackMux = 1'b0;
defparam \por0|Equal0~4 .ShiftMux = 1'b0;
defparam \por0|Equal0~4 .BypassEn = 1'b0;
defparam \por0|Equal0~4 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~5 (
	.A(\por0|cnt [10]),
	.B(\por0|cnt [9]),
	.C(\por0|Equal0~3_combout ),
	.D(\por0|Equal0~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~5_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~5 .coord_x = 7;
defparam \por0|Equal0~5 .coord_y = 3;
defparam \por0|Equal0~5 .coord_z = 12;
defparam \por0|Equal0~5 .mask = 16'h8000;
defparam \por0|Equal0~5 .modeMux = 1'b0;
defparam \por0|Equal0~5 .FeedbackMux = 1'b0;
defparam \por0|Equal0~5 .ShiftMux = 1'b0;
defparam \por0|Equal0~5 .BypassEn = 1'b0;
defparam \por0|Equal0~5 .CarryEnb = 1'b1;

alta_slice \por0|Equal0~6 (
	.A(\por0|Equal0~2_combout ),
	.B(\por0|Equal0~0_combout ),
	.C(\por0|Equal0~1_combout ),
	.D(\por0|Equal0~5_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|Equal0~6_combout ),
	.Cout(),
	.Q());
defparam \por0|Equal0~6 .coord_x = 7;
defparam \por0|Equal0~6 .coord_y = 4;
defparam \por0|Equal0~6 .coord_z = 2;
defparam \por0|Equal0~6 .mask = 16'h8000;
defparam \por0|Equal0~6 .modeMux = 1'b0;
defparam \por0|Equal0~6 .FeedbackMux = 1'b0;
defparam \por0|Equal0~6 .ShiftMux = 1'b0;
defparam \por0|Equal0~6 .BypassEn = 1'b0;
defparam \por0|Equal0~6 .CarryEnb = 1'b1;

alta_slice \por0|cnt[0] (
	.A(\por0|Equal0~6_combout ),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\por0|cnt [0]),
	.Clk(\CLK~inputclkctrl_outclk_X10_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[0]~57_combout ),
	.Cout(),
	.Q(\por0|cnt [0]));
defparam \por0|cnt[0] .coord_x = 7;
defparam \por0|cnt[0] .coord_y = 4;
defparam \por0|cnt[0] .coord_z = 5;
defparam \por0|cnt[0] .mask = 16'hAFAF;
defparam \por0|cnt[0] .modeMux = 1'b0;
defparam \por0|cnt[0] .FeedbackMux = 1'b1;
defparam \por0|cnt[0] .ShiftMux = 1'b0;
defparam \por0|cnt[0] .BypassEn = 1'b0;
defparam \por0|cnt[0] .CarryEnb = 1'b1;

alta_slice \por0|cnt[10] (
	.A(vcc),
	.B(\por0|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[9]~36 ),
	.Qin(\por0|cnt [10]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[10]~37_combout ),
	.Cout(\por0|cnt[10]~38 ),
	.Q(\por0|cnt [10]));
defparam \por0|cnt[10] .coord_x = 7;
defparam \por0|cnt[10] .coord_y = 3;
defparam \por0|cnt[10] .coord_z = 0;
defparam \por0|cnt[10] .mask = 16'h3C3F;
defparam \por0|cnt[10] .modeMux = 1'b1;
defparam \por0|cnt[10] .FeedbackMux = 1'b0;
defparam \por0|cnt[10] .ShiftMux = 1'b0;
defparam \por0|cnt[10] .BypassEn = 1'b0;
defparam \por0|cnt[10] .CarryEnb = 1'b0;

alta_slice \por0|cnt[11] (
	.A(vcc),
	.B(\por0|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[10]~38 ),
	.Qin(\por0|cnt [11]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[11]~39_combout ),
	.Cout(\por0|cnt[11]~40 ),
	.Q(\por0|cnt [11]));
defparam \por0|cnt[11] .coord_x = 7;
defparam \por0|cnt[11] .coord_y = 3;
defparam \por0|cnt[11] .coord_z = 1;
defparam \por0|cnt[11] .mask = 16'hC30C;
defparam \por0|cnt[11] .modeMux = 1'b1;
defparam \por0|cnt[11] .FeedbackMux = 1'b0;
defparam \por0|cnt[11] .ShiftMux = 1'b0;
defparam \por0|cnt[11] .BypassEn = 1'b0;
defparam \por0|cnt[11] .CarryEnb = 1'b0;

alta_slice \por0|cnt[12] (
	.A(vcc),
	.B(\por0|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[11]~40 ),
	.Qin(\por0|cnt [12]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[12]~41_combout ),
	.Cout(\por0|cnt[12]~42 ),
	.Q(\por0|cnt [12]));
defparam \por0|cnt[12] .coord_x = 7;
defparam \por0|cnt[12] .coord_y = 3;
defparam \por0|cnt[12] .coord_z = 2;
defparam \por0|cnt[12] .mask = 16'h3C3F;
defparam \por0|cnt[12] .modeMux = 1'b1;
defparam \por0|cnt[12] .FeedbackMux = 1'b0;
defparam \por0|cnt[12] .ShiftMux = 1'b0;
defparam \por0|cnt[12] .BypassEn = 1'b0;
defparam \por0|cnt[12] .CarryEnb = 1'b0;

alta_slice \por0|cnt[13] (
	.A(vcc),
	.B(\por0|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[12]~42 ),
	.Qin(\por0|cnt [13]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[13]~43_combout ),
	.Cout(\por0|cnt[13]~44 ),
	.Q(\por0|cnt [13]));
defparam \por0|cnt[13] .coord_x = 7;
defparam \por0|cnt[13] .coord_y = 3;
defparam \por0|cnt[13] .coord_z = 3;
defparam \por0|cnt[13] .mask = 16'hC30C;
defparam \por0|cnt[13] .modeMux = 1'b1;
defparam \por0|cnt[13] .FeedbackMux = 1'b0;
defparam \por0|cnt[13] .ShiftMux = 1'b0;
defparam \por0|cnt[13] .BypassEn = 1'b0;
defparam \por0|cnt[13] .CarryEnb = 1'b0;

alta_slice \por0|cnt[14] (
	.A(vcc),
	.B(\por0|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[13]~44 ),
	.Qin(\por0|cnt [14]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[14]~45_combout ),
	.Cout(\por0|cnt[14]~46 ),
	.Q(\por0|cnt [14]));
defparam \por0|cnt[14] .coord_x = 7;
defparam \por0|cnt[14] .coord_y = 3;
defparam \por0|cnt[14] .coord_z = 4;
defparam \por0|cnt[14] .mask = 16'h3C3F;
defparam \por0|cnt[14] .modeMux = 1'b1;
defparam \por0|cnt[14] .FeedbackMux = 1'b0;
defparam \por0|cnt[14] .ShiftMux = 1'b0;
defparam \por0|cnt[14] .BypassEn = 1'b0;
defparam \por0|cnt[14] .CarryEnb = 1'b0;

alta_slice \por0|cnt[15] (
	.A(vcc),
	.B(\por0|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[14]~46 ),
	.Qin(\por0|cnt [15]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[15]~47_combout ),
	.Cout(\por0|cnt[15]~48 ),
	.Q(\por0|cnt [15]));
defparam \por0|cnt[15] .coord_x = 7;
defparam \por0|cnt[15] .coord_y = 3;
defparam \por0|cnt[15] .coord_z = 5;
defparam \por0|cnt[15] .mask = 16'hC30C;
defparam \por0|cnt[15] .modeMux = 1'b1;
defparam \por0|cnt[15] .FeedbackMux = 1'b0;
defparam \por0|cnt[15] .ShiftMux = 1'b0;
defparam \por0|cnt[15] .BypassEn = 1'b0;
defparam \por0|cnt[15] .CarryEnb = 1'b0;

alta_slice \por0|cnt[16] (
	.A(vcc),
	.B(\por0|cnt [16]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[15]~48 ),
	.Qin(\por0|cnt [16]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[16]~49_combout ),
	.Cout(\por0|cnt[16]~50 ),
	.Q(\por0|cnt [16]));
defparam \por0|cnt[16] .coord_x = 7;
defparam \por0|cnt[16] .coord_y = 3;
defparam \por0|cnt[16] .coord_z = 6;
defparam \por0|cnt[16] .mask = 16'h3C3F;
defparam \por0|cnt[16] .modeMux = 1'b1;
defparam \por0|cnt[16] .FeedbackMux = 1'b0;
defparam \por0|cnt[16] .ShiftMux = 1'b0;
defparam \por0|cnt[16] .BypassEn = 1'b0;
defparam \por0|cnt[16] .CarryEnb = 1'b0;

alta_slice \por0|cnt[17] (
	.A(vcc),
	.B(\por0|cnt [17]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[16]~50 ),
	.Qin(\por0|cnt [17]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[17]~51_combout ),
	.Cout(\por0|cnt[17]~52 ),
	.Q(\por0|cnt [17]));
defparam \por0|cnt[17] .coord_x = 7;
defparam \por0|cnt[17] .coord_y = 3;
defparam \por0|cnt[17] .coord_z = 7;
defparam \por0|cnt[17] .mask = 16'hC30C;
defparam \por0|cnt[17] .modeMux = 1'b1;
defparam \por0|cnt[17] .FeedbackMux = 1'b0;
defparam \por0|cnt[17] .ShiftMux = 1'b0;
defparam \por0|cnt[17] .BypassEn = 1'b0;
defparam \por0|cnt[17] .CarryEnb = 1'b0;

alta_slice \por0|cnt[18] (
	.A(vcc),
	.B(\por0|cnt [18]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[17]~52 ),
	.Qin(\por0|cnt [18]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[18]~53_combout ),
	.Cout(\por0|cnt[18]~54 ),
	.Q(\por0|cnt [18]));
defparam \por0|cnt[18] .coord_x = 7;
defparam \por0|cnt[18] .coord_y = 3;
defparam \por0|cnt[18] .coord_z = 8;
defparam \por0|cnt[18] .mask = 16'h3C3F;
defparam \por0|cnt[18] .modeMux = 1'b1;
defparam \por0|cnt[18] .FeedbackMux = 1'b0;
defparam \por0|cnt[18] .ShiftMux = 1'b0;
defparam \por0|cnt[18] .BypassEn = 1'b0;
defparam \por0|cnt[18] .CarryEnb = 1'b0;

alta_slice \por0|cnt[19] (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\por0|cnt [19]),
	.Cin(\por0|cnt[18]~54 ),
	.Qin(\por0|cnt [19]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y1_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y1_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[19]~55_combout ),
	.Cout(),
	.Q(\por0|cnt [19]));
defparam \por0|cnt[19] .coord_x = 7;
defparam \por0|cnt[19] .coord_y = 3;
defparam \por0|cnt[19] .coord_z = 9;
defparam \por0|cnt[19] .mask = 16'hF00F;
defparam \por0|cnt[19] .modeMux = 1'b1;
defparam \por0|cnt[19] .FeedbackMux = 1'b0;
defparam \por0|cnt[19] .ShiftMux = 1'b0;
defparam \por0|cnt[19] .BypassEn = 1'b0;
defparam \por0|cnt[19] .CarryEnb = 1'b1;

alta_slice \por0|cnt[1] (
	.A(\por0|cnt [1]),
	.B(\por0|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\por0|cnt [1]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[1]~19_combout ),
	.Cout(\por0|cnt[1]~20 ),
	.Q(\por0|cnt [1]));
defparam \por0|cnt[1] .coord_x = 7;
defparam \por0|cnt[1] .coord_y = 4;
defparam \por0|cnt[1] .coord_z = 7;
defparam \por0|cnt[1] .mask = 16'h6688;
defparam \por0|cnt[1] .modeMux = 1'b0;
defparam \por0|cnt[1] .FeedbackMux = 1'b0;
defparam \por0|cnt[1] .ShiftMux = 1'b0;
defparam \por0|cnt[1] .BypassEn = 1'b0;
defparam \por0|cnt[1] .CarryEnb = 1'b0;

alta_slice \por0|cnt[2] (
	.A(vcc),
	.B(\por0|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[1]~20 ),
	.Qin(\por0|cnt [2]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[2]~21_combout ),
	.Cout(\por0|cnt[2]~22 ),
	.Q(\por0|cnt [2]));
defparam \por0|cnt[2] .coord_x = 7;
defparam \por0|cnt[2] .coord_y = 4;
defparam \por0|cnt[2] .coord_z = 8;
defparam \por0|cnt[2] .mask = 16'h3C3F;
defparam \por0|cnt[2] .modeMux = 1'b1;
defparam \por0|cnt[2] .FeedbackMux = 1'b0;
defparam \por0|cnt[2] .ShiftMux = 1'b0;
defparam \por0|cnt[2] .BypassEn = 1'b0;
defparam \por0|cnt[2] .CarryEnb = 1'b0;

alta_slice \por0|cnt[3] (
	.A(vcc),
	.B(\por0|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[2]~22 ),
	.Qin(\por0|cnt [3]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[3]~23_combout ),
	.Cout(\por0|cnt[3]~24 ),
	.Q(\por0|cnt [3]));
defparam \por0|cnt[3] .coord_x = 7;
defparam \por0|cnt[3] .coord_y = 4;
defparam \por0|cnt[3] .coord_z = 9;
defparam \por0|cnt[3] .mask = 16'hC30C;
defparam \por0|cnt[3] .modeMux = 1'b1;
defparam \por0|cnt[3] .FeedbackMux = 1'b0;
defparam \por0|cnt[3] .ShiftMux = 1'b0;
defparam \por0|cnt[3] .BypassEn = 1'b0;
defparam \por0|cnt[3] .CarryEnb = 1'b0;

alta_slice \por0|cnt[4] (
	.A(vcc),
	.B(\por0|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[3]~24 ),
	.Qin(\por0|cnt [4]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[4]~25_combout ),
	.Cout(\por0|cnt[4]~26 ),
	.Q(\por0|cnt [4]));
defparam \por0|cnt[4] .coord_x = 7;
defparam \por0|cnt[4] .coord_y = 4;
defparam \por0|cnt[4] .coord_z = 10;
defparam \por0|cnt[4] .mask = 16'h3C3F;
defparam \por0|cnt[4] .modeMux = 1'b1;
defparam \por0|cnt[4] .FeedbackMux = 1'b0;
defparam \por0|cnt[4] .ShiftMux = 1'b0;
defparam \por0|cnt[4] .BypassEn = 1'b0;
defparam \por0|cnt[4] .CarryEnb = 1'b0;

alta_slice \por0|cnt[5] (
	.A(vcc),
	.B(\por0|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[4]~26 ),
	.Qin(\por0|cnt [5]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[5]~27_combout ),
	.Cout(\por0|cnt[5]~28 ),
	.Q(\por0|cnt [5]));
defparam \por0|cnt[5] .coord_x = 7;
defparam \por0|cnt[5] .coord_y = 4;
defparam \por0|cnt[5] .coord_z = 11;
defparam \por0|cnt[5] .mask = 16'hC30C;
defparam \por0|cnt[5] .modeMux = 1'b1;
defparam \por0|cnt[5] .FeedbackMux = 1'b0;
defparam \por0|cnt[5] .ShiftMux = 1'b0;
defparam \por0|cnt[5] .BypassEn = 1'b0;
defparam \por0|cnt[5] .CarryEnb = 1'b0;

alta_slice \por0|cnt[6] (
	.A(vcc),
	.B(\por0|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[5]~28 ),
	.Qin(\por0|cnt [6]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[6]~29_combout ),
	.Cout(\por0|cnt[6]~30 ),
	.Q(\por0|cnt [6]));
defparam \por0|cnt[6] .coord_x = 7;
defparam \por0|cnt[6] .coord_y = 4;
defparam \por0|cnt[6] .coord_z = 12;
defparam \por0|cnt[6] .mask = 16'h3C3F;
defparam \por0|cnt[6] .modeMux = 1'b1;
defparam \por0|cnt[6] .FeedbackMux = 1'b0;
defparam \por0|cnt[6] .ShiftMux = 1'b0;
defparam \por0|cnt[6] .BypassEn = 1'b0;
defparam \por0|cnt[6] .CarryEnb = 1'b0;

alta_slice \por0|cnt[7] (
	.A(vcc),
	.B(\por0|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[6]~30 ),
	.Qin(\por0|cnt [7]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[7]~31_combout ),
	.Cout(\por0|cnt[7]~32 ),
	.Q(\por0|cnt [7]));
defparam \por0|cnt[7] .coord_x = 7;
defparam \por0|cnt[7] .coord_y = 4;
defparam \por0|cnt[7] .coord_z = 13;
defparam \por0|cnt[7] .mask = 16'hC30C;
defparam \por0|cnt[7] .modeMux = 1'b1;
defparam \por0|cnt[7] .FeedbackMux = 1'b0;
defparam \por0|cnt[7] .ShiftMux = 1'b0;
defparam \por0|cnt[7] .BypassEn = 1'b0;
defparam \por0|cnt[7] .CarryEnb = 1'b0;

alta_slice \por0|cnt[8] (
	.A(vcc),
	.B(\por0|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[7]~32 ),
	.Qin(\por0|cnt [8]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[8]~33_combout ),
	.Cout(\por0|cnt[8]~34 ),
	.Q(\por0|cnt [8]));
defparam \por0|cnt[8] .coord_x = 7;
defparam \por0|cnt[8] .coord_y = 4;
defparam \por0|cnt[8] .coord_z = 14;
defparam \por0|cnt[8] .mask = 16'h3C3F;
defparam \por0|cnt[8] .modeMux = 1'b1;
defparam \por0|cnt[8] .FeedbackMux = 1'b0;
defparam \por0|cnt[8] .ShiftMux = 1'b0;
defparam \por0|cnt[8] .BypassEn = 1'b0;
defparam \por0|cnt[8] .CarryEnb = 1'b0;

alta_slice \por0|cnt[9] (
	.A(vcc),
	.B(\por0|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\por0|cnt[8]~34 ),
	.Qin(\por0|cnt [9]),
	.Clk(\CLK~inputclkctrl_outclk__por0|Equal0~6_combout_X10_Y2_SIG_INV ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\por0|cnt[9]~35_combout ),
	.Cout(\por0|cnt[9]~36 ),
	.Q(\por0|cnt [9]));
defparam \por0|cnt[9] .coord_x = 7;
defparam \por0|cnt[9] .coord_y = 4;
defparam \por0|cnt[9] .coord_z = 15;
defparam \por0|cnt[9] .mask = 16'hC30C;
defparam \por0|cnt[9] .modeMux = 1'b1;
defparam \por0|cnt[9] .FeedbackMux = 1'b0;
defparam \por0|cnt[9] .ShiftMux = 1'b0;
defparam \por0|cnt[9] .BypassEn = 1'b0;
defparam \por0|cnt[9] .CarryEnb = 1'b0;

alta_slice \por0|oRESET (
	.A(),
	.B(),
	.C(\por0|Equal0~6_combout ),
	.D(),
	.Cin(),
	.Qin(\por0|oRESET~q ),
	.Clk(\CLK~inputclkctrl_outclk_X10_Y2_SIG_VCC ),
	.AsyncReset(AsyncReset_X10_Y2_GND),
	.SyncReset(SyncReset_X10_Y2_GND),
	.ShiftData(),
	.SyncLoad(SyncLoad_X10_Y2_VCC),
	.LutOut(),
	.Cout(),
	.Q(\por0|oRESET~q ));
defparam \por0|oRESET .coord_x = 7;
defparam \por0|oRESET .coord_y = 4;
defparam \por0|oRESET .coord_z = 3;
defparam \por0|oRESET .mask = 16'hFFFF;
defparam \por0|oRESET .modeMux = 1'b1;
defparam \por0|oRESET .FeedbackMux = 1'b0;
defparam \por0|oRESET .ShiftMux = 1'b0;
defparam \por0|oRESET .BypassEn = 1'b1;
defparam \por0|oRESET .CarryEnb = 1'b1;

alta_syncctrl syncload_ctrl_X10_Y2(
	.Din(),
	.Dout(SyncLoad_X10_Y2_VCC));
defparam syncload_ctrl_X10_Y2.coord_x = 7;
defparam syncload_ctrl_X10_Y2.coord_y = 4;
defparam syncload_ctrl_X10_Y2.coord_z = 1;
defparam syncload_ctrl_X10_Y2.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X12_Y2(
	.Din(),
	.Dout(SyncLoad_X12_Y2_GND));
defparam syncload_ctrl_X12_Y2.coord_x = 12;
defparam syncload_ctrl_X12_Y2.coord_y = 6;
defparam syncload_ctrl_X12_Y2.coord_z = 1;
defparam syncload_ctrl_X12_Y2.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X13_Y5(
	.Din(),
	.Dout(SyncLoad_X13_Y5_GND));
defparam syncload_ctrl_X13_Y5.coord_x = 2;
defparam syncload_ctrl_X13_Y5.coord_y = 6;
defparam syncload_ctrl_X13_Y5.coord_z = 1;
defparam syncload_ctrl_X13_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X2_Y4(
	.Din(),
	.Dout(SyncLoad_X2_Y4_GND));
defparam syncload_ctrl_X2_Y4.coord_x = 5;
defparam syncload_ctrl_X2_Y4.coord_y = 5;
defparam syncload_ctrl_X2_Y4.coord_z = 1;
defparam syncload_ctrl_X2_Y4.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X2_Y5(
	.Din(),
	.Dout(SyncLoad_X2_Y5_GND));
defparam syncload_ctrl_X2_Y5.coord_x = 5;
defparam syncload_ctrl_X2_Y5.coord_y = 6;
defparam syncload_ctrl_X2_Y5.coord_z = 1;
defparam syncload_ctrl_X2_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X5_Y5(
	.Din(),
	.Dout(SyncLoad_X5_Y5_GND));
defparam syncload_ctrl_X5_Y5.coord_x = 0;
defparam syncload_ctrl_X5_Y5.coord_y = 4;
defparam syncload_ctrl_X5_Y5.coord_z = 1;
defparam syncload_ctrl_X5_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X6_Y2(
	.Din(\dfh|LessThan0~0_combout ),
	.Dout(\dfh|LessThan0~0_combout__SyncLoad_X6_Y2_SIG ));
defparam syncload_ctrl_X6_Y2.coord_x = 0;
defparam syncload_ctrl_X6_Y2.coord_y = 8;
defparam syncload_ctrl_X6_Y2.coord_z = 1;
defparam syncload_ctrl_X6_Y2.SyncCtrlMux = 2'b10;

alta_syncctrl syncload_ctrl_X6_Y3(
	.Din(),
	.Dout(SyncLoad_X6_Y3_GND));
defparam syncload_ctrl_X6_Y3.coord_x = 1;
defparam syncload_ctrl_X6_Y3.coord_y = 3;
defparam syncload_ctrl_X6_Y3.coord_z = 1;
defparam syncload_ctrl_X6_Y3.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X6_Y6(
	.Din(),
	.Dout(SyncLoad_X6_Y6_GND));
defparam syncload_ctrl_X6_Y6.coord_x = 2;
defparam syncload_ctrl_X6_Y6.coord_y = 8;
defparam syncload_ctrl_X6_Y6.coord_z = 1;
defparam syncload_ctrl_X6_Y6.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X6_Y7(
	.Din(),
	.Dout(SyncLoad_X6_Y7_GND));
defparam syncload_ctrl_X6_Y7.coord_x = 7;
defparam syncload_ctrl_X6_Y7.coord_y = 7;
defparam syncload_ctrl_X6_Y7.coord_z = 1;
defparam syncload_ctrl_X6_Y7.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X6_Y8(
	.Din(),
	.Dout(SyncLoad_X6_Y8_GND));
defparam syncload_ctrl_X6_Y8.coord_x = 4;
defparam syncload_ctrl_X6_Y8.coord_y = 7;
defparam syncload_ctrl_X6_Y8.coord_z = 1;
defparam syncload_ctrl_X6_Y8.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X8_Y2(
	.Din(),
	.Dout(SyncLoad_X8_Y2_GND));
defparam syncload_ctrl_X8_Y2.coord_x = 5;
defparam syncload_ctrl_X8_Y2.coord_y = 4;
defparam syncload_ctrl_X8_Y2.coord_z = 1;
defparam syncload_ctrl_X8_Y2.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X8_Y4(
	.Din(),
	.Dout(SyncLoad_X8_Y4_GND));
defparam syncload_ctrl_X8_Y4.coord_x = 8;
defparam syncload_ctrl_X8_Y4.coord_y = 5;
defparam syncload_ctrl_X8_Y4.coord_z = 1;
defparam syncload_ctrl_X8_Y4.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X8_Y5(
	.Din(\dfh_jiezou|LessThan1~2_combout ),
	.Dout(\dfh_jiezou|LessThan1~2_combout__SyncLoad_X8_Y5_SIG ));
defparam syncload_ctrl_X8_Y5.coord_x = 8;
defparam syncload_ctrl_X8_Y5.coord_y = 8;
defparam syncload_ctrl_X8_Y5.coord_z = 1;
defparam syncload_ctrl_X8_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncload_ctrl_X9_Y2(
	.Din(),
	.Dout(SyncLoad_X9_Y2_VCC));
defparam syncload_ctrl_X9_Y2.coord_x = 6;
defparam syncload_ctrl_X9_Y2.coord_y = 4;
defparam syncload_ctrl_X9_Y2.coord_z = 1;
defparam syncload_ctrl_X9_Y2.SyncCtrlMux = 2'b01;

alta_syncctrl syncload_ctrl_X9_Y3(
	.Din(),
	.Dout(SyncLoad_X9_Y3_GND));
defparam syncload_ctrl_X9_Y3.coord_x = 2;
defparam syncload_ctrl_X9_Y3.coord_y = 7;
defparam syncload_ctrl_X9_Y3.coord_z = 1;
defparam syncload_ctrl_X9_Y3.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X9_Y4(
	.Din(),
	.Dout(SyncLoad_X9_Y4_GND));
defparam syncload_ctrl_X9_Y4.coord_x = 12;
defparam syncload_ctrl_X9_Y4.coord_y = 8;
defparam syncload_ctrl_X9_Y4.coord_z = 1;
defparam syncload_ctrl_X9_Y4.SyncCtrlMux = 2'b00;

alta_syncctrl syncload_ctrl_X9_Y6(
	.Din(),
	.Dout(SyncLoad_X9_Y6_GND));
defparam syncload_ctrl_X9_Y6.coord_x = 0;
defparam syncload_ctrl_X9_Y6.coord_y = 5;
defparam syncload_ctrl_X9_Y6.coord_z = 1;
defparam syncload_ctrl_X9_Y6.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X10_Y2(
	.Din(),
	.Dout(SyncReset_X10_Y2_GND));
defparam syncreset_ctrl_X10_Y2.coord_x = 7;
defparam syncreset_ctrl_X10_Y2.coord_y = 4;
defparam syncreset_ctrl_X10_Y2.coord_z = 0;
defparam syncreset_ctrl_X10_Y2.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X12_Y2(
	.Din(\c2|LessThan0~10_combout ),
	.Dout(\c2|LessThan0~10_combout__SyncReset_X12_Y2_SIG ));
defparam syncreset_ctrl_X12_Y2.coord_x = 12;
defparam syncreset_ctrl_X12_Y2.coord_y = 6;
defparam syncreset_ctrl_X12_Y2.coord_z = 0;
defparam syncreset_ctrl_X12_Y2.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X13_Y5(
	.Din(\wav|highc|LessThan0~3_combout ),
	.Dout(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ));
defparam syncreset_ctrl_X13_Y5.coord_x = 2;
defparam syncreset_ctrl_X13_Y5.coord_y = 6;
defparam syncreset_ctrl_X13_Y5.coord_z = 0;
defparam syncreset_ctrl_X13_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X2_Y4(
	.Din(\wav|clk124gen|LessThan0~4_combout ),
	.Dout(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ));
defparam syncreset_ctrl_X2_Y4.coord_x = 5;
defparam syncreset_ctrl_X2_Y4.coord_y = 5;
defparam syncreset_ctrl_X2_Y4.coord_z = 0;
defparam syncreset_ctrl_X2_Y4.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X2_Y5(
	.Din(\wav|lowb|LessThan0~4_combout ),
	.Dout(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ));
defparam syncreset_ctrl_X2_Y5.coord_x = 5;
defparam syncreset_ctrl_X2_Y5.coord_y = 6;
defparam syncreset_ctrl_X2_Y5.coord_z = 0;
defparam syncreset_ctrl_X2_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X5_Y5(
	.Din(\wav|d|LessThan0~4_combout ),
	.Dout(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ));
defparam syncreset_ctrl_X5_Y5.coord_x = 0;
defparam syncreset_ctrl_X5_Y5.coord_y = 4;
defparam syncreset_ctrl_X5_Y5.coord_z = 0;
defparam syncreset_ctrl_X5_Y5.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X6_Y2(
	.Din(),
	.Dout(SyncReset_X6_Y2_GND));
defparam syncreset_ctrl_X6_Y2.coord_x = 0;
defparam syncreset_ctrl_X6_Y2.coord_y = 8;
defparam syncreset_ctrl_X6_Y2.coord_z = 0;
defparam syncreset_ctrl_X6_Y2.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X6_Y3(
	.Din(\wav|c|LessThan0~4_combout ),
	.Dout(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ));
defparam syncreset_ctrl_X6_Y3.coord_x = 1;
defparam syncreset_ctrl_X6_Y3.coord_y = 3;
defparam syncreset_ctrl_X6_Y3.coord_z = 0;
defparam syncreset_ctrl_X6_Y3.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X6_Y6(
	.Din(\wav|g|LessThan0~4_combout ),
	.Dout(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ));
defparam syncreset_ctrl_X6_Y6.coord_x = 2;
defparam syncreset_ctrl_X6_Y6.coord_y = 8;
defparam syncreset_ctrl_X6_Y6.coord_z = 0;
defparam syncreset_ctrl_X6_Y6.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X6_Y7(
	.Din(\wav|e|LessThan0~4_combout ),
	.Dout(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ));
defparam syncreset_ctrl_X6_Y7.coord_x = 7;
defparam syncreset_ctrl_X6_Y7.coord_y = 7;
defparam syncreset_ctrl_X6_Y7.coord_z = 0;
defparam syncreset_ctrl_X6_Y7.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X6_Y8(
	.Din(\wav|lowg|LessThan0~4_combout ),
	.Dout(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ));
defparam syncreset_ctrl_X6_Y8.coord_x = 4;
defparam syncreset_ctrl_X6_Y8.coord_y = 7;
defparam syncreset_ctrl_X6_Y8.coord_z = 0;
defparam syncreset_ctrl_X6_Y8.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X8_Y2(
	.Din(\wav|clk166gen|LessThan0~4_combout ),
	.Dout(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ));
defparam syncreset_ctrl_X8_Y2.coord_x = 5;
defparam syncreset_ctrl_X8_Y2.coord_y = 4;
defparam syncreset_ctrl_X8_Y2.coord_z = 0;
defparam syncreset_ctrl_X8_Y2.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X8_Y4(
	.Din(\c0|LessThan0~4_combout ),
	.Dout(\c0|LessThan0~4_combout__SyncReset_X8_Y4_SIG ));
defparam syncreset_ctrl_X8_Y4.coord_x = 8;
defparam syncreset_ctrl_X8_Y4.coord_y = 5;
defparam syncreset_ctrl_X8_Y4.coord_z = 0;
defparam syncreset_ctrl_X8_Y4.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X8_Y5(
	.Din(),
	.Dout(SyncReset_X8_Y5_GND));
defparam syncreset_ctrl_X8_Y5.coord_x = 8;
defparam syncreset_ctrl_X8_Y5.coord_y = 8;
defparam syncreset_ctrl_X8_Y5.coord_z = 0;
defparam syncreset_ctrl_X8_Y5.SyncCtrlMux = 2'b00;

alta_syncctrl syncreset_ctrl_X9_Y2(
	.Din(\wav|clk166gen|LessThan0~4_combout ),
	.Dout(\wav|clk166gen|LessThan0~4_combout__SyncReset_X9_Y2_SIG ));
defparam syncreset_ctrl_X9_Y2.coord_x = 6;
defparam syncreset_ctrl_X9_Y2.coord_y = 4;
defparam syncreset_ctrl_X9_Y2.coord_z = 0;
defparam syncreset_ctrl_X9_Y2.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X9_Y3(
	.Din(\wav|a|LessThan0~4_combout ),
	.Dout(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ));
defparam syncreset_ctrl_X9_Y3.coord_x = 2;
defparam syncreset_ctrl_X9_Y3.coord_y = 7;
defparam syncreset_ctrl_X9_Y3.coord_z = 0;
defparam syncreset_ctrl_X9_Y3.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X9_Y4(
	.Din(\c1|LessThan0~7_combout ),
	.Dout(\c1|LessThan0~7_combout__SyncReset_X9_Y4_SIG ));
defparam syncreset_ctrl_X9_Y4.coord_x = 12;
defparam syncreset_ctrl_X9_Y4.coord_y = 8;
defparam syncreset_ctrl_X9_Y4.coord_z = 0;
defparam syncreset_ctrl_X9_Y4.SyncCtrlMux = 2'b10;

alta_syncctrl syncreset_ctrl_X9_Y6(
	.Din(\wav|lowa|LessThan0~5_combout ),
	.Dout(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ));
defparam syncreset_ctrl_X9_Y6.coord_x = 0;
defparam syncreset_ctrl_X9_Y6.coord_y = 5;
defparam syncreset_ctrl_X9_Y6.coord_z = 0;
defparam syncreset_ctrl_X9_Y6.SyncCtrlMux = 2'b10;

alta_slice \wav|Mux0~0 (
	.A(\wav|d|clkout~q ),
	.B(\wav|g|clkout~q ),
	.C(\dfh|Mux2~3_combout ),
	.D(\dfh|Mux3~5_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~0 .coord_x = 0;
defparam \wav|Mux0~0 .coord_y = 7;
defparam \wav|Mux0~0 .coord_z = 10;
defparam \wav|Mux0~0 .mask = 16'hF0CA;
defparam \wav|Mux0~0 .modeMux = 1'b0;
defparam \wav|Mux0~0 .FeedbackMux = 1'b0;
defparam \wav|Mux0~0 .ShiftMux = 1'b0;
defparam \wav|Mux0~0 .BypassEn = 1'b0;
defparam \wav|Mux0~0 .CarryEnb = 1'b1;

alta_slice \wav|Mux0~1 (
	.A(\wav|Mux0~0_combout ),
	.B(\wav|a|clkout~q ),
	.C(\wav|e|clkout~q ),
	.D(\dfh|Mux3~5_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~1 .coord_x = 0;
defparam \wav|Mux0~1 .coord_y = 7;
defparam \wav|Mux0~1 .coord_z = 0;
defparam \wav|Mux0~1 .mask = 16'hD8AA;
defparam \wav|Mux0~1 .modeMux = 1'b0;
defparam \wav|Mux0~1 .FeedbackMux = 1'b0;
defparam \wav|Mux0~1 .ShiftMux = 1'b0;
defparam \wav|Mux0~1 .BypassEn = 1'b0;
defparam \wav|Mux0~1 .CarryEnb = 1'b1;

alta_slice \wav|Mux0~2 (
	.A(\wav|lowg|clkout~q ),
	.B(\wav|lowa|clkout~q ),
	.C(\dfh|Mux2~3_combout ),
	.D(\dfh|Mux3~5_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~2 .coord_x = 0;
defparam \wav|Mux0~2 .coord_y = 7;
defparam \wav|Mux0~2 .coord_z = 9;
defparam \wav|Mux0~2 .mask = 16'hFC0A;
defparam \wav|Mux0~2 .modeMux = 1'b0;
defparam \wav|Mux0~2 .FeedbackMux = 1'b0;
defparam \wav|Mux0~2 .ShiftMux = 1'b0;
defparam \wav|Mux0~2 .BypassEn = 1'b0;
defparam \wav|Mux0~2 .CarryEnb = 1'b1;

alta_slice \wav|Mux0~3 (
	.A(\wav|c|clkout~q ),
	.B(\wav|Mux0~2_combout ),
	.C(\dfh|Mux2~3_combout ),
	.D(\wav|lowb|clkout~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~3 .coord_x = 0;
defparam \wav|Mux0~3 .coord_y = 7;
defparam \wav|Mux0~3 .coord_z = 2;
defparam \wav|Mux0~3 .mask = 16'hBC8C;
defparam \wav|Mux0~3 .modeMux = 1'b0;
defparam \wav|Mux0~3 .FeedbackMux = 1'b0;
defparam \wav|Mux0~3 .ShiftMux = 1'b0;
defparam \wav|Mux0~3 .BypassEn = 1'b0;
defparam \wav|Mux0~3 .CarryEnb = 1'b1;

alta_slice \wav|Mux0~4 (
	.A(\wav|Mux0~3_combout ),
	.B(vcc),
	.C(\wav|Mux0~1_combout ),
	.D(\dfh|Mux1~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~4 .coord_x = 0;
defparam \wav|Mux0~4 .coord_y = 7;
defparam \wav|Mux0~4 .coord_z = 14;
defparam \wav|Mux0~4 .mask = 16'hF0AA;
defparam \wav|Mux0~4 .modeMux = 1'b0;
defparam \wav|Mux0~4 .FeedbackMux = 1'b0;
defparam \wav|Mux0~4 .ShiftMux = 1'b0;
defparam \wav|Mux0~4 .BypassEn = 1'b0;
defparam \wav|Mux0~4 .CarryEnb = 1'b1;

alta_slice \wav|Mux0~5 (
	.A(\wav|highc|clkout~q ),
	.B(\dfh|counter [4]),
	.C(\wav|Mux0~4_combout ),
	.D(\dfh|Mux0~0_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|Mux0~5_combout ),
	.Cout(),
	.Q());
defparam \wav|Mux0~5 .coord_x = 0;
defparam \wav|Mux0~5 .coord_y = 7;
defparam \wav|Mux0~5 .coord_z = 4;
defparam \wav|Mux0~5 .mask = 16'hB8F0;
defparam \wav|Mux0~5 .modeMux = 1'b0;
defparam \wav|Mux0~5 .FeedbackMux = 1'b0;
defparam \wav|Mux0~5 .ShiftMux = 1'b0;
defparam \wav|Mux0~5 .BypassEn = 1'b0;
defparam \wav|Mux0~5 .CarryEnb = 1'b1;

alta_slice \wav|a|LessThan0~0 (
	.A(\wav|a|cnt [12]),
	.B(\wav|a|cnt [13]),
	.C(\wav|a|cnt [14]),
	.D(\wav|a|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|a|LessThan0~0 .coord_x = 1;
defparam \wav|a|LessThan0~0 .coord_y = 7;
defparam \wav|a|LessThan0~0 .coord_z = 14;
defparam \wav|a|LessThan0~0 .mask = 16'h0001;
defparam \wav|a|LessThan0~0 .modeMux = 1'b0;
defparam \wav|a|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|a|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|a|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|a|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|a|LessThan0~1 (
	.A(\wav|a|cnt [8]),
	.B(\wav|a|cnt [9]),
	.C(\wav|a|cnt [11]),
	.D(\wav|a|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|a|LessThan0~1 .coord_x = 1;
defparam \wav|a|LessThan0~1 .coord_y = 7;
defparam \wav|a|LessThan0~1 .coord_z = 2;
defparam \wav|a|LessThan0~1 .mask = 16'h0001;
defparam \wav|a|LessThan0~1 .modeMux = 1'b0;
defparam \wav|a|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|a|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|a|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|a|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|a|LessThan0~2 (
	.A(\wav|a|cnt [1]),
	.B(\wav|a|cnt [2]),
	.C(\wav|a|cnt [3]),
	.D(\wav|a|cnt [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|a|LessThan0~2 .coord_x = 1;
defparam \wav|a|LessThan0~2 .coord_y = 7;
defparam \wav|a|LessThan0~2 .coord_z = 5;
defparam \wav|a|LessThan0~2 .mask = 16'h7FFF;
defparam \wav|a|LessThan0~2 .modeMux = 1'b0;
defparam \wav|a|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|a|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|a|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|a|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|a|LessThan0~3 (
	.A(\wav|a|cnt [4]),
	.B(\wav|a|cnt [6]),
	.C(\wav|a|cnt [5]),
	.D(\wav|a|LessThan0~2_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|a|LessThan0~3 .coord_x = 1;
defparam \wav|a|LessThan0~3 .coord_y = 7;
defparam \wav|a|LessThan0~3 .coord_z = 6;
defparam \wav|a|LessThan0~3 .mask = 16'h0100;
defparam \wav|a|LessThan0~3 .modeMux = 1'b0;
defparam \wav|a|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|a|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|a|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|a|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|a|LessThan0~4 (
	.A(\wav|a|LessThan0~0_combout ),
	.B(\wav|a|LessThan0~3_combout ),
	.C(\wav|a|LessThan0~1_combout ),
	.D(\wav|a|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|a|LessThan0~4 .coord_x = 1;
defparam \wav|a|LessThan0~4 .coord_y = 7;
defparam \wav|a|LessThan0~4 .coord_z = 7;
defparam \wav|a|LessThan0~4 .mask = 16'h7F5F;
defparam \wav|a|LessThan0~4 .modeMux = 1'b0;
defparam \wav|a|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|a|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|a|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|a|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|a|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|a|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|a|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X8_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|a|clkout~0_combout ),
	.Cout(),
	.Q(\wav|a|clkout~q ));
defparam \wav|a|clkout .coord_x = 1;
defparam \wav|a|clkout .coord_y = 7;
defparam \wav|a|clkout .coord_z = 15;
defparam \wav|a|clkout .mask = 16'h0FF0;
defparam \wav|a|clkout .modeMux = 1'b0;
defparam \wav|a|clkout .FeedbackMux = 1'b1;
defparam \wav|a|clkout .ShiftMux = 1'b0;
defparam \wav|a|clkout .BypassEn = 1'b0;
defparam \wav|a|clkout .CarryEnb = 1'b1;

alta_slice \wav|a|cnt[0] (
	.A(vcc),
	.B(\wav|a|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|a|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[0]~16_combout ),
	.Cout(\wav|a|cnt[0]~17 ),
	.Q(\wav|a|cnt [0]));
defparam \wav|a|cnt[0] .coord_x = 2;
defparam \wav|a|cnt[0] .coord_y = 7;
defparam \wav|a|cnt[0] .coord_z = 0;
defparam \wav|a|cnt[0] .mask = 16'h33CC;
defparam \wav|a|cnt[0] .modeMux = 1'b0;
defparam \wav|a|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[0] .ShiftMux = 1'b0;
defparam \wav|a|cnt[0] .BypassEn = 1'b1;
defparam \wav|a|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[10] (
	.A(vcc),
	.B(\wav|a|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[9]~35 ),
	.Qin(\wav|a|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[10]~36_combout ),
	.Cout(\wav|a|cnt[10]~37 ),
	.Q(\wav|a|cnt [10]));
defparam \wav|a|cnt[10] .coord_x = 2;
defparam \wav|a|cnt[10] .coord_y = 7;
defparam \wav|a|cnt[10] .coord_z = 10;
defparam \wav|a|cnt[10] .mask = 16'hC30C;
defparam \wav|a|cnt[10] .modeMux = 1'b1;
defparam \wav|a|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[10] .ShiftMux = 1'b0;
defparam \wav|a|cnt[10] .BypassEn = 1'b1;
defparam \wav|a|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[11] (
	.A(vcc),
	.B(\wav|a|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[10]~37 ),
	.Qin(\wav|a|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[11]~38_combout ),
	.Cout(\wav|a|cnt[11]~39 ),
	.Q(\wav|a|cnt [11]));
defparam \wav|a|cnt[11] .coord_x = 2;
defparam \wav|a|cnt[11] .coord_y = 7;
defparam \wav|a|cnt[11] .coord_z = 11;
defparam \wav|a|cnt[11] .mask = 16'h3C3F;
defparam \wav|a|cnt[11] .modeMux = 1'b1;
defparam \wav|a|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[11] .ShiftMux = 1'b0;
defparam \wav|a|cnt[11] .BypassEn = 1'b1;
defparam \wav|a|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[12] (
	.A(vcc),
	.B(\wav|a|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[11]~39 ),
	.Qin(\wav|a|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[12]~40_combout ),
	.Cout(\wav|a|cnt[12]~41 ),
	.Q(\wav|a|cnt [12]));
defparam \wav|a|cnt[12] .coord_x = 2;
defparam \wav|a|cnt[12] .coord_y = 7;
defparam \wav|a|cnt[12] .coord_z = 12;
defparam \wav|a|cnt[12] .mask = 16'hC30C;
defparam \wav|a|cnt[12] .modeMux = 1'b1;
defparam \wav|a|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[12] .ShiftMux = 1'b0;
defparam \wav|a|cnt[12] .BypassEn = 1'b1;
defparam \wav|a|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[13] (
	.A(vcc),
	.B(\wav|a|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[12]~41 ),
	.Qin(\wav|a|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[13]~42_combout ),
	.Cout(\wav|a|cnt[13]~43 ),
	.Q(\wav|a|cnt [13]));
defparam \wav|a|cnt[13] .coord_x = 2;
defparam \wav|a|cnt[13] .coord_y = 7;
defparam \wav|a|cnt[13] .coord_z = 13;
defparam \wav|a|cnt[13] .mask = 16'h3C3F;
defparam \wav|a|cnt[13] .modeMux = 1'b1;
defparam \wav|a|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[13] .ShiftMux = 1'b0;
defparam \wav|a|cnt[13] .BypassEn = 1'b1;
defparam \wav|a|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[14] (
	.A(vcc),
	.B(\wav|a|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[13]~43 ),
	.Qin(\wav|a|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[14]~44_combout ),
	.Cout(\wav|a|cnt[14]~45 ),
	.Q(\wav|a|cnt [14]));
defparam \wav|a|cnt[14] .coord_x = 2;
defparam \wav|a|cnt[14] .coord_y = 7;
defparam \wav|a|cnt[14] .coord_z = 14;
defparam \wav|a|cnt[14] .mask = 16'hC30C;
defparam \wav|a|cnt[14] .modeMux = 1'b1;
defparam \wav|a|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[14] .ShiftMux = 1'b0;
defparam \wav|a|cnt[14] .BypassEn = 1'b1;
defparam \wav|a|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[15] (
	.A(vcc),
	.B(\wav|a|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[14]~45 ),
	.Qin(\wav|a|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|a|cnt [15]));
defparam \wav|a|cnt[15] .coord_x = 2;
defparam \wav|a|cnt[15] .coord_y = 7;
defparam \wav|a|cnt[15] .coord_z = 15;
defparam \wav|a|cnt[15] .mask = 16'h3C3C;
defparam \wav|a|cnt[15] .modeMux = 1'b1;
defparam \wav|a|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[15] .ShiftMux = 1'b0;
defparam \wav|a|cnt[15] .BypassEn = 1'b1;
defparam \wav|a|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|a|cnt[1] (
	.A(vcc),
	.B(\wav|a|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[0]~17 ),
	.Qin(\wav|a|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[1]~18_combout ),
	.Cout(\wav|a|cnt[1]~19 ),
	.Q(\wav|a|cnt [1]));
defparam \wav|a|cnt[1] .coord_x = 2;
defparam \wav|a|cnt[1] .coord_y = 7;
defparam \wav|a|cnt[1] .coord_z = 1;
defparam \wav|a|cnt[1] .mask = 16'h3C3F;
defparam \wav|a|cnt[1] .modeMux = 1'b1;
defparam \wav|a|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[1] .ShiftMux = 1'b0;
defparam \wav|a|cnt[1] .BypassEn = 1'b1;
defparam \wav|a|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[2] (
	.A(vcc),
	.B(\wav|a|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[1]~19 ),
	.Qin(\wav|a|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[2]~20_combout ),
	.Cout(\wav|a|cnt[2]~21 ),
	.Q(\wav|a|cnt [2]));
defparam \wav|a|cnt[2] .coord_x = 2;
defparam \wav|a|cnt[2] .coord_y = 7;
defparam \wav|a|cnt[2] .coord_z = 2;
defparam \wav|a|cnt[2] .mask = 16'hC30C;
defparam \wav|a|cnt[2] .modeMux = 1'b1;
defparam \wav|a|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[2] .ShiftMux = 1'b0;
defparam \wav|a|cnt[2] .BypassEn = 1'b1;
defparam \wav|a|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[3] (
	.A(vcc),
	.B(\wav|a|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[2]~21 ),
	.Qin(\wav|a|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[3]~22_combout ),
	.Cout(\wav|a|cnt[3]~23 ),
	.Q(\wav|a|cnt [3]));
defparam \wav|a|cnt[3] .coord_x = 2;
defparam \wav|a|cnt[3] .coord_y = 7;
defparam \wav|a|cnt[3] .coord_z = 3;
defparam \wav|a|cnt[3] .mask = 16'h3C3F;
defparam \wav|a|cnt[3] .modeMux = 1'b1;
defparam \wav|a|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[3] .ShiftMux = 1'b0;
defparam \wav|a|cnt[3] .BypassEn = 1'b1;
defparam \wav|a|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[4] (
	.A(vcc),
	.B(\wav|a|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[3]~23 ),
	.Qin(\wav|a|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[4]~24_combout ),
	.Cout(\wav|a|cnt[4]~25 ),
	.Q(\wav|a|cnt [4]));
defparam \wav|a|cnt[4] .coord_x = 2;
defparam \wav|a|cnt[4] .coord_y = 7;
defparam \wav|a|cnt[4] .coord_z = 4;
defparam \wav|a|cnt[4] .mask = 16'hC30C;
defparam \wav|a|cnt[4] .modeMux = 1'b1;
defparam \wav|a|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[4] .ShiftMux = 1'b0;
defparam \wav|a|cnt[4] .BypassEn = 1'b1;
defparam \wav|a|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[5] (
	.A(vcc),
	.B(\wav|a|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[4]~25 ),
	.Qin(\wav|a|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[5]~26_combout ),
	.Cout(\wav|a|cnt[5]~27 ),
	.Q(\wav|a|cnt [5]));
defparam \wav|a|cnt[5] .coord_x = 2;
defparam \wav|a|cnt[5] .coord_y = 7;
defparam \wav|a|cnt[5] .coord_z = 5;
defparam \wav|a|cnt[5] .mask = 16'h3C3F;
defparam \wav|a|cnt[5] .modeMux = 1'b1;
defparam \wav|a|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[5] .ShiftMux = 1'b0;
defparam \wav|a|cnt[5] .BypassEn = 1'b1;
defparam \wav|a|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[6] (
	.A(vcc),
	.B(\wav|a|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[5]~27 ),
	.Qin(\wav|a|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[6]~28_combout ),
	.Cout(\wav|a|cnt[6]~29 ),
	.Q(\wav|a|cnt [6]));
defparam \wav|a|cnt[6] .coord_x = 2;
defparam \wav|a|cnt[6] .coord_y = 7;
defparam \wav|a|cnt[6] .coord_z = 6;
defparam \wav|a|cnt[6] .mask = 16'hC30C;
defparam \wav|a|cnt[6] .modeMux = 1'b1;
defparam \wav|a|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[6] .ShiftMux = 1'b0;
defparam \wav|a|cnt[6] .BypassEn = 1'b1;
defparam \wav|a|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[7] (
	.A(vcc),
	.B(\wav|a|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[6]~29 ),
	.Qin(\wav|a|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[7]~30_combout ),
	.Cout(\wav|a|cnt[7]~31 ),
	.Q(\wav|a|cnt [7]));
defparam \wav|a|cnt[7] .coord_x = 2;
defparam \wav|a|cnt[7] .coord_y = 7;
defparam \wav|a|cnt[7] .coord_z = 7;
defparam \wav|a|cnt[7] .mask = 16'h3C3F;
defparam \wav|a|cnt[7] .modeMux = 1'b1;
defparam \wav|a|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[7] .ShiftMux = 1'b0;
defparam \wav|a|cnt[7] .BypassEn = 1'b1;
defparam \wav|a|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[8] (
	.A(vcc),
	.B(\wav|a|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[7]~31 ),
	.Qin(\wav|a|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[8]~32_combout ),
	.Cout(\wav|a|cnt[8]~33 ),
	.Q(\wav|a|cnt [8]));
defparam \wav|a|cnt[8] .coord_x = 2;
defparam \wav|a|cnt[8] .coord_y = 7;
defparam \wav|a|cnt[8] .coord_z = 8;
defparam \wav|a|cnt[8] .mask = 16'hC30C;
defparam \wav|a|cnt[8] .modeMux = 1'b1;
defparam \wav|a|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[8] .ShiftMux = 1'b0;
defparam \wav|a|cnt[8] .BypassEn = 1'b1;
defparam \wav|a|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|a|cnt[9] (
	.A(vcc),
	.B(\wav|a|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|a|cnt[8]~33 ),
	.Qin(\wav|a|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y3_SIG ),
	.SyncReset(\wav|a|LessThan0~4_combout__SyncReset_X9_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y3_GND),
	.LutOut(\wav|a|cnt[9]~34_combout ),
	.Cout(\wav|a|cnt[9]~35 ),
	.Q(\wav|a|cnt [9]));
defparam \wav|a|cnt[9] .coord_x = 2;
defparam \wav|a|cnt[9] .coord_y = 7;
defparam \wav|a|cnt[9] .coord_z = 9;
defparam \wav|a|cnt[9] .mask = 16'h3C3F;
defparam \wav|a|cnt[9] .modeMux = 1'b1;
defparam \wav|a|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|a|cnt[9] .ShiftMux = 1'b0;
defparam \wav|a|cnt[9] .BypassEn = 1'b1;
defparam \wav|a|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|LessThan0~3 (
	.A(\wav|clk124gen|cnt [11]),
	.B(\wav|clk124gen|cnt [12]),
	.C(\wav|clk124gen|cnt [10]),
	.D(\wav|clk124gen|cnt [13]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|clk124gen|LessThan0~3 .coord_x = 6;
defparam \wav|clk124gen|LessThan0~3 .coord_y = 5;
defparam \wav|clk124gen|LessThan0~3 .coord_z = 6;
defparam \wav|clk124gen|LessThan0~3 .mask = 16'h0001;
defparam \wav|clk124gen|LessThan0~3 .modeMux = 1'b0;
defparam \wav|clk124gen|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|clk124gen|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|clk124gen|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|clk124gen|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|LessThan0~4 (
	.A(\wav|clk124gen|LessThan0~3_combout ),
	.B(\wav|clk124gen|LessThan0~4_RESYN16_BDD17 ),
	.C(\wav|clk124gen|LessThan0~4_RESYN18_BDD19 ),
	.D(\wav|clk124gen|cnt [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|clk124gen|LessThan0~4 .coord_x = 6;
defparam \wav|clk124gen|LessThan0~4 .coord_y = 5;
defparam \wav|clk124gen|LessThan0~4 .coord_z = 3;
defparam \wav|clk124gen|LessThan0~4 .mask = 16'hFFFD;
defparam \wav|clk124gen|LessThan0~4 .modeMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|clk124gen|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|LessThan0~4_RESYN14 (
	.A(\wav|clk124gen|cnt [2]),
	.B(\wav|clk124gen|cnt [3]),
	.C(\wav|clk124gen|cnt [0]),
	.D(\wav|clk124gen|cnt [1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|LessThan0~4_RESYN14_BDD15 ),
	.Cout(),
	.Q());
defparam \wav|clk124gen|LessThan0~4_RESYN14 .coord_x = 6;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .coord_y = 5;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .coord_z = 5;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .mask = 16'h8000;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .modeMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .FeedbackMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .ShiftMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .BypassEn = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN14 .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|LessThan0~4_RESYN16 (
	.A(\wav|clk124gen|cnt [5]),
	.B(\wav|clk124gen|cnt [15]),
	.C(\wav|clk124gen|cnt [4]),
	.D(\wav|clk124gen|LessThan0~4_RESYN14_BDD15 ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|LessThan0~4_RESYN16_BDD17 ),
	.Cout(),
	.Q());
defparam \wav|clk124gen|LessThan0~4_RESYN16 .coord_x = 6;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .coord_y = 5;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .coord_z = 1;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .mask = 16'hEEEC;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .modeMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .FeedbackMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .ShiftMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .BypassEn = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN16 .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|LessThan0~4_RESYN18 (
	.A(\wav|clk124gen|cnt [8]),
	.B(\wav|clk124gen|cnt [7]),
	.C(\wav|clk124gen|cnt [14]),
	.D(\wav|clk124gen|cnt [9]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|LessThan0~4_RESYN18_BDD19 ),
	.Cout(),
	.Q());
defparam \wav|clk124gen|LessThan0~4_RESYN18 .coord_x = 6;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .coord_y = 5;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .coord_z = 2;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .mask = 16'hFFFE;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .modeMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .FeedbackMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .ShiftMux = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .BypassEn = 1'b0;
defparam \wav|clk124gen|LessThan0~4_RESYN18 .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|clk124gen|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|clk124gen|clkout~q ),
	.Clk(\p0|PLL_D84CC99B.clkout1_X1_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X1_Y4_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk124gen|clkout~0_combout ),
	.Cout(),
	.Q(\wav|clk124gen|clkout~q ));
defparam \wav|clk124gen|clkout .coord_x = 6;
defparam \wav|clk124gen|clkout .coord_y = 5;
defparam \wav|clk124gen|clkout .coord_z = 10;
defparam \wav|clk124gen|clkout .mask = 16'h0FF0;
defparam \wav|clk124gen|clkout .modeMux = 1'b0;
defparam \wav|clk124gen|clkout .FeedbackMux = 1'b1;
defparam \wav|clk124gen|clkout .ShiftMux = 1'b0;
defparam \wav|clk124gen|clkout .BypassEn = 1'b0;
defparam \wav|clk124gen|clkout .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|cnt[0] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|clk124gen|cnt [0]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[0]~16_combout ),
	.Cout(\wav|clk124gen|cnt[0]~17 ),
	.Q(\wav|clk124gen|cnt [0]));
defparam \wav|clk124gen|cnt[0] .coord_x = 5;
defparam \wav|clk124gen|cnt[0] .coord_y = 5;
defparam \wav|clk124gen|cnt[0] .coord_z = 0;
defparam \wav|clk124gen|cnt[0] .mask = 16'h33CC;
defparam \wav|clk124gen|cnt[0] .modeMux = 1'b0;
defparam \wav|clk124gen|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[0] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[0] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[10] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[9]~35 ),
	.Qin(\wav|clk124gen|cnt [10]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[10]~36_combout ),
	.Cout(\wav|clk124gen|cnt[10]~37 ),
	.Q(\wav|clk124gen|cnt [10]));
defparam \wav|clk124gen|cnt[10] .coord_x = 5;
defparam \wav|clk124gen|cnt[10] .coord_y = 5;
defparam \wav|clk124gen|cnt[10] .coord_z = 10;
defparam \wav|clk124gen|cnt[10] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[10] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[10] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[10] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[11] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[10]~37 ),
	.Qin(\wav|clk124gen|cnt [11]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[11]~38_combout ),
	.Cout(\wav|clk124gen|cnt[11]~39 ),
	.Q(\wav|clk124gen|cnt [11]));
defparam \wav|clk124gen|cnt[11] .coord_x = 5;
defparam \wav|clk124gen|cnt[11] .coord_y = 5;
defparam \wav|clk124gen|cnt[11] .coord_z = 11;
defparam \wav|clk124gen|cnt[11] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[11] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[11] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[11] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[12] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[11]~39 ),
	.Qin(\wav|clk124gen|cnt [12]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[12]~40_combout ),
	.Cout(\wav|clk124gen|cnt[12]~41 ),
	.Q(\wav|clk124gen|cnt [12]));
defparam \wav|clk124gen|cnt[12] .coord_x = 5;
defparam \wav|clk124gen|cnt[12] .coord_y = 5;
defparam \wav|clk124gen|cnt[12] .coord_z = 12;
defparam \wav|clk124gen|cnt[12] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[12] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[12] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[12] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[13] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[12]~41 ),
	.Qin(\wav|clk124gen|cnt [13]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[13]~42_combout ),
	.Cout(\wav|clk124gen|cnt[13]~43 ),
	.Q(\wav|clk124gen|cnt [13]));
defparam \wav|clk124gen|cnt[13] .coord_x = 5;
defparam \wav|clk124gen|cnt[13] .coord_y = 5;
defparam \wav|clk124gen|cnt[13] .coord_z = 13;
defparam \wav|clk124gen|cnt[13] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[13] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[13] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[13] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[14] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[13]~43 ),
	.Qin(\wav|clk124gen|cnt [14]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[14]~44_combout ),
	.Cout(\wav|clk124gen|cnt[14]~45 ),
	.Q(\wav|clk124gen|cnt [14]));
defparam \wav|clk124gen|cnt[14] .coord_x = 5;
defparam \wav|clk124gen|cnt[14] .coord_y = 5;
defparam \wav|clk124gen|cnt[14] .coord_z = 14;
defparam \wav|clk124gen|cnt[14] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[14] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[14] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[14] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[15] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[14]~45 ),
	.Qin(\wav|clk124gen|cnt [15]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|clk124gen|cnt [15]));
defparam \wav|clk124gen|cnt[15] .coord_x = 5;
defparam \wav|clk124gen|cnt[15] .coord_y = 5;
defparam \wav|clk124gen|cnt[15] .coord_z = 15;
defparam \wav|clk124gen|cnt[15] .mask = 16'h3C3C;
defparam \wav|clk124gen|cnt[15] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[15] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[15] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|clk124gen|cnt[1] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[0]~17 ),
	.Qin(\wav|clk124gen|cnt [1]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[1]~18_combout ),
	.Cout(\wav|clk124gen|cnt[1]~19 ),
	.Q(\wav|clk124gen|cnt [1]));
defparam \wav|clk124gen|cnt[1] .coord_x = 5;
defparam \wav|clk124gen|cnt[1] .coord_y = 5;
defparam \wav|clk124gen|cnt[1] .coord_z = 1;
defparam \wav|clk124gen|cnt[1] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[1] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[1] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[1] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[2] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[1]~19 ),
	.Qin(\wav|clk124gen|cnt [2]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[2]~20_combout ),
	.Cout(\wav|clk124gen|cnt[2]~21 ),
	.Q(\wav|clk124gen|cnt [2]));
defparam \wav|clk124gen|cnt[2] .coord_x = 5;
defparam \wav|clk124gen|cnt[2] .coord_y = 5;
defparam \wav|clk124gen|cnt[2] .coord_z = 2;
defparam \wav|clk124gen|cnt[2] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[2] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[2] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[2] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[3] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[2]~21 ),
	.Qin(\wav|clk124gen|cnt [3]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[3]~22_combout ),
	.Cout(\wav|clk124gen|cnt[3]~23 ),
	.Q(\wav|clk124gen|cnt [3]));
defparam \wav|clk124gen|cnt[3] .coord_x = 5;
defparam \wav|clk124gen|cnt[3] .coord_y = 5;
defparam \wav|clk124gen|cnt[3] .coord_z = 3;
defparam \wav|clk124gen|cnt[3] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[3] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[3] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[3] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[4] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[3]~23 ),
	.Qin(\wav|clk124gen|cnt [4]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[4]~24_combout ),
	.Cout(\wav|clk124gen|cnt[4]~25 ),
	.Q(\wav|clk124gen|cnt [4]));
defparam \wav|clk124gen|cnt[4] .coord_x = 5;
defparam \wav|clk124gen|cnt[4] .coord_y = 5;
defparam \wav|clk124gen|cnt[4] .coord_z = 4;
defparam \wav|clk124gen|cnt[4] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[4] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[4] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[4] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[5] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[4]~25 ),
	.Qin(\wav|clk124gen|cnt [5]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[5]~26_combout ),
	.Cout(\wav|clk124gen|cnt[5]~27 ),
	.Q(\wav|clk124gen|cnt [5]));
defparam \wav|clk124gen|cnt[5] .coord_x = 5;
defparam \wav|clk124gen|cnt[5] .coord_y = 5;
defparam \wav|clk124gen|cnt[5] .coord_z = 5;
defparam \wav|clk124gen|cnt[5] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[5] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[5] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[5] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[6] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[5]~27 ),
	.Qin(\wav|clk124gen|cnt [6]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[6]~28_combout ),
	.Cout(\wav|clk124gen|cnt[6]~29 ),
	.Q(\wav|clk124gen|cnt [6]));
defparam \wav|clk124gen|cnt[6] .coord_x = 5;
defparam \wav|clk124gen|cnt[6] .coord_y = 5;
defparam \wav|clk124gen|cnt[6] .coord_z = 6;
defparam \wav|clk124gen|cnt[6] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[6] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[6] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[6] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[7] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[6]~29 ),
	.Qin(\wav|clk124gen|cnt [7]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[7]~30_combout ),
	.Cout(\wav|clk124gen|cnt[7]~31 ),
	.Q(\wav|clk124gen|cnt [7]));
defparam \wav|clk124gen|cnt[7] .coord_x = 5;
defparam \wav|clk124gen|cnt[7] .coord_y = 5;
defparam \wav|clk124gen|cnt[7] .coord_z = 7;
defparam \wav|clk124gen|cnt[7] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[7] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[7] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[7] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[8] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[7]~31 ),
	.Qin(\wav|clk124gen|cnt [8]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[8]~32_combout ),
	.Cout(\wav|clk124gen|cnt[8]~33 ),
	.Q(\wav|clk124gen|cnt [8]));
defparam \wav|clk124gen|cnt[8] .coord_x = 5;
defparam \wav|clk124gen|cnt[8] .coord_y = 5;
defparam \wav|clk124gen|cnt[8] .coord_z = 8;
defparam \wav|clk124gen|cnt[8] .mask = 16'hC30C;
defparam \wav|clk124gen|cnt[8] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[8] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[8] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|clk124gen|cnt[9] (
	.A(vcc),
	.B(\wav|clk124gen|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk124gen|cnt[8]~33 ),
	.Qin(\wav|clk124gen|cnt [9]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X2_Y4_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y4_SIG ),
	.SyncReset(\wav|clk124gen|LessThan0~4_combout__SyncReset_X2_Y4_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y4_GND),
	.LutOut(\wav|clk124gen|cnt[9]~34_combout ),
	.Cout(\wav|clk124gen|cnt[9]~35 ),
	.Q(\wav|clk124gen|cnt [9]));
defparam \wav|clk124gen|cnt[9] .coord_x = 5;
defparam \wav|clk124gen|cnt[9] .coord_y = 5;
defparam \wav|clk124gen|cnt[9] .coord_z = 9;
defparam \wav|clk124gen|cnt[9] .mask = 16'h3C3F;
defparam \wav|clk124gen|cnt[9] .modeMux = 1'b1;
defparam \wav|clk124gen|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|clk124gen|cnt[9] .ShiftMux = 1'b0;
defparam \wav|clk124gen|cnt[9] .BypassEn = 1'b1;
defparam \wav|clk124gen|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|LessThan0~3 (
	.A(\wav|clk166gen|cnt [10]),
	.B(\wav|clk166gen|cnt [11]),
	.C(\wav|clk166gen|cnt [12]),
	.D(\wav|clk166gen|cnt [13]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|clk166gen|LessThan0~3 .coord_x = 6;
defparam \wav|clk166gen|LessThan0~3 .coord_y = 4;
defparam \wav|clk166gen|LessThan0~3 .coord_z = 4;
defparam \wav|clk166gen|LessThan0~3 .mask = 16'h0001;
defparam \wav|clk166gen|LessThan0~3 .modeMux = 1'b0;
defparam \wav|clk166gen|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|clk166gen|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|clk166gen|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|LessThan0~4 (
	.A(\wav|clk166gen|cnt [6]),
	.B(\wav|clk166gen|LessThan0~4_RESYN28_BDD29 ),
	.C(\wav|clk166gen|LessThan0~3_combout ),
	.D(\wav|clk166gen|LessThan0~4_RESYN30_BDD31 ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|clk166gen|LessThan0~4 .coord_x = 6;
defparam \wav|clk166gen|LessThan0~4 .coord_y = 4;
defparam \wav|clk166gen|LessThan0~4 .coord_z = 9;
defparam \wav|clk166gen|LessThan0~4 .mask = 16'hFFEF;
defparam \wav|clk166gen|LessThan0~4 .modeMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|clk166gen|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|LessThan0~4_RESYN28 (
	.A(\wav|clk166gen|cnt [5]),
	.B(\wav|clk166gen|cnt [4]),
	.C(\wav|clk166gen|cnt [15]),
	.D(\wav|clk166gen|LessThan0~4_RESYN28_RESYN36_BDD37 ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|LessThan0~4_RESYN28_BDD29 ),
	.Cout(),
	.Q());
defparam \wav|clk166gen|LessThan0~4_RESYN28 .coord_x = 6;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .coord_y = 4;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .coord_z = 13;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .mask = 16'hFAF8;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .modeMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .ShiftMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .BypassEn = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28 .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 (
	.A(\wav|clk166gen|cnt [0]),
	.B(\wav|clk166gen|cnt [1]),
	.C(\wav|clk166gen|cnt [3]),
	.D(\wav|clk166gen|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|LessThan0~4_RESYN28_RESYN36_BDD37 ),
	.Cout(),
	.Q());
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .coord_x = 6;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .coord_y = 4;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .coord_z = 15;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .mask = 16'hFFF8;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .modeMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .ShiftMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .BypassEn = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN28_RESYN36 .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|LessThan0~4_RESYN30 (
	.A(\wav|clk166gen|cnt [14]),
	.B(\wav|clk166gen|cnt [7]),
	.C(\wav|clk166gen|cnt [9]),
	.D(\wav|clk166gen|cnt [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|LessThan0~4_RESYN30_BDD31 ),
	.Cout(),
	.Q());
defparam \wav|clk166gen|LessThan0~4_RESYN30 .coord_x = 6;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .coord_y = 4;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .coord_z = 3;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .mask = 16'hFFFE;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .modeMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .ShiftMux = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .BypassEn = 1'b0;
defparam \wav|clk166gen|LessThan0~4_RESYN30 .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|clk166gen|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|clk166gen|clkout~q ),
	.Clk(\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|clkout~0_combout ),
	.Cout(),
	.Q(\wav|clk166gen|clkout~q ));
defparam \wav|clk166gen|clkout .coord_x = 6;
defparam \wav|clk166gen|clkout .coord_y = 4;
defparam \wav|clk166gen|clkout .coord_z = 8;
defparam \wav|clk166gen|clkout .mask = 16'h0FF0;
defparam \wav|clk166gen|clkout .modeMux = 1'b0;
defparam \wav|clk166gen|clkout .FeedbackMux = 1'b1;
defparam \wav|clk166gen|clkout .ShiftMux = 1'b0;
defparam \wav|clk166gen|clkout .BypassEn = 1'b0;
defparam \wav|clk166gen|clkout .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|cnt[0] (
	.A(vcc),
	.B(vcc),
	.C(\wav|clk166gen|cnt[0]~16_combout ),
	.D(vcc),
	.Cin(),
	.Qin(\wav|clk166gen|cnt [0]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X9_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y2_VCC),
	.LutOut(\~VCC~combout ),
	.Cout(),
	.Q(\wav|clk166gen|cnt [0]));
defparam \wav|clk166gen|cnt[0] .coord_x = 6;
defparam \wav|clk166gen|cnt[0] .coord_y = 4;
defparam \wav|clk166gen|cnt[0] .coord_z = 14;
defparam \wav|clk166gen|cnt[0] .mask = 16'hFFFF;
defparam \wav|clk166gen|cnt[0] .modeMux = 1'b0;
defparam \wav|clk166gen|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[0] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[0] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[0] .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|cnt[0]~16 (
	.A(vcc),
	.B(\wav|clk166gen|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|cnt[0]~16_combout ),
	.Cout(\wav|clk166gen|cnt[0]~17 ),
	.Q());
defparam \wav|clk166gen|cnt[0]~16 .coord_x = 5;
defparam \wav|clk166gen|cnt[0]~16 .coord_y = 4;
defparam \wav|clk166gen|cnt[0]~16 .coord_z = 0;
defparam \wav|clk166gen|cnt[0]~16 .mask = 16'h33CC;
defparam \wav|clk166gen|cnt[0]~16 .modeMux = 1'b0;
defparam \wav|clk166gen|cnt[0]~16 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[0]~16 .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[0]~16 .BypassEn = 1'b0;
defparam \wav|clk166gen|cnt[0]~16 .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[10] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[9]~35 ),
	.Qin(\wav|clk166gen|cnt [10]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[10]~36_combout ),
	.Cout(\wav|clk166gen|cnt[10]~37 ),
	.Q(\wav|clk166gen|cnt [10]));
defparam \wav|clk166gen|cnt[10] .coord_x = 5;
defparam \wav|clk166gen|cnt[10] .coord_y = 4;
defparam \wav|clk166gen|cnt[10] .coord_z = 10;
defparam \wav|clk166gen|cnt[10] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[10] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[10] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[10] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[11] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[10]~37 ),
	.Qin(\wav|clk166gen|cnt [11]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[11]~38_combout ),
	.Cout(\wav|clk166gen|cnt[11]~39 ),
	.Q(\wav|clk166gen|cnt [11]));
defparam \wav|clk166gen|cnt[11] .coord_x = 5;
defparam \wav|clk166gen|cnt[11] .coord_y = 4;
defparam \wav|clk166gen|cnt[11] .coord_z = 11;
defparam \wav|clk166gen|cnt[11] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[11] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[11] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[11] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[12] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[11]~39 ),
	.Qin(\wav|clk166gen|cnt [12]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[12]~40_combout ),
	.Cout(\wav|clk166gen|cnt[12]~41 ),
	.Q(\wav|clk166gen|cnt [12]));
defparam \wav|clk166gen|cnt[12] .coord_x = 5;
defparam \wav|clk166gen|cnt[12] .coord_y = 4;
defparam \wav|clk166gen|cnt[12] .coord_z = 12;
defparam \wav|clk166gen|cnt[12] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[12] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[12] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[12] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[13] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[12]~41 ),
	.Qin(\wav|clk166gen|cnt [13]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[13]~42_combout ),
	.Cout(\wav|clk166gen|cnt[13]~43 ),
	.Q(\wav|clk166gen|cnt [13]));
defparam \wav|clk166gen|cnt[13] .coord_x = 5;
defparam \wav|clk166gen|cnt[13] .coord_y = 4;
defparam \wav|clk166gen|cnt[13] .coord_z = 13;
defparam \wav|clk166gen|cnt[13] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[13] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[13] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[13] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[14] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[13]~43 ),
	.Qin(\wav|clk166gen|cnt [14]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[14]~44_combout ),
	.Cout(\wav|clk166gen|cnt[14]~45 ),
	.Q(\wav|clk166gen|cnt [14]));
defparam \wav|clk166gen|cnt[14] .coord_x = 5;
defparam \wav|clk166gen|cnt[14] .coord_y = 4;
defparam \wav|clk166gen|cnt[14] .coord_z = 14;
defparam \wav|clk166gen|cnt[14] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[14] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[14] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[14] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[15] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[14]~45 ),
	.Qin(\wav|clk166gen|cnt [15]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|clk166gen|cnt [15]));
defparam \wav|clk166gen|cnt[15] .coord_x = 5;
defparam \wav|clk166gen|cnt[15] .coord_y = 4;
defparam \wav|clk166gen|cnt[15] .coord_z = 15;
defparam \wav|clk166gen|cnt[15] .mask = 16'h3C3C;
defparam \wav|clk166gen|cnt[15] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[15] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[15] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|cnt[1] (
	.A(),
	.B(),
	.C(\wav|clk166gen|cnt[1]~18_combout ),
	.D(),
	.Cin(),
	.Qin(\wav|clk166gen|cnt [1]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X9_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y2_VCC),
	.LutOut(),
	.Cout(),
	.Q(\wav|clk166gen|cnt [1]));
defparam \wav|clk166gen|cnt[1] .coord_x = 6;
defparam \wav|clk166gen|cnt[1] .coord_y = 4;
defparam \wav|clk166gen|cnt[1] .coord_z = 7;
defparam \wav|clk166gen|cnt[1] .mask = 16'hFFFF;
defparam \wav|clk166gen|cnt[1] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[1] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[1] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[1] .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|cnt[1]~18 (
	.A(vcc),
	.B(\wav|clk166gen|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[0]~17 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|cnt[1]~18_combout ),
	.Cout(\wav|clk166gen|cnt[1]~19 ),
	.Q());
defparam \wav|clk166gen|cnt[1]~18 .coord_x = 5;
defparam \wav|clk166gen|cnt[1]~18 .coord_y = 4;
defparam \wav|clk166gen|cnt[1]~18 .coord_z = 1;
defparam \wav|clk166gen|cnt[1]~18 .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[1]~18 .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[1]~18 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[1]~18 .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[1]~18 .BypassEn = 1'b0;
defparam \wav|clk166gen|cnt[1]~18 .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[2] (
	.A(),
	.B(),
	.C(\wav|clk166gen|cnt[2]~20_combout ),
	.D(),
	.Cin(),
	.Qin(\wav|clk166gen|cnt [2]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X9_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X9_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y2_VCC),
	.LutOut(),
	.Cout(),
	.Q(\wav|clk166gen|cnt [2]));
defparam \wav|clk166gen|cnt[2] .coord_x = 6;
defparam \wav|clk166gen|cnt[2] .coord_y = 4;
defparam \wav|clk166gen|cnt[2] .coord_z = 11;
defparam \wav|clk166gen|cnt[2] .mask = 16'hFFFF;
defparam \wav|clk166gen|cnt[2] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[2] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[2] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[2] .CarryEnb = 1'b1;

alta_slice \wav|clk166gen|cnt[2]~20 (
	.A(\wav|clk166gen|cnt [2]),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[1]~19 ),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|clk166gen|cnt[2]~20_combout ),
	.Cout(\wav|clk166gen|cnt[2]~21 ),
	.Q());
defparam \wav|clk166gen|cnt[2]~20 .coord_x = 5;
defparam \wav|clk166gen|cnt[2]~20 .coord_y = 4;
defparam \wav|clk166gen|cnt[2]~20 .coord_z = 2;
defparam \wav|clk166gen|cnt[2]~20 .mask = 16'hA50A;
defparam \wav|clk166gen|cnt[2]~20 .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[2]~20 .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[2]~20 .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[2]~20 .BypassEn = 1'b0;
defparam \wav|clk166gen|cnt[2]~20 .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[3] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[2]~21 ),
	.Qin(\wav|clk166gen|cnt [3]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[3]~22_combout ),
	.Cout(\wav|clk166gen|cnt[3]~23 ),
	.Q(\wav|clk166gen|cnt [3]));
defparam \wav|clk166gen|cnt[3] .coord_x = 5;
defparam \wav|clk166gen|cnt[3] .coord_y = 4;
defparam \wav|clk166gen|cnt[3] .coord_z = 3;
defparam \wav|clk166gen|cnt[3] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[3] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[3] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[3] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[4] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[3]~23 ),
	.Qin(\wav|clk166gen|cnt [4]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[4]~24_combout ),
	.Cout(\wav|clk166gen|cnt[4]~25 ),
	.Q(\wav|clk166gen|cnt [4]));
defparam \wav|clk166gen|cnt[4] .coord_x = 5;
defparam \wav|clk166gen|cnt[4] .coord_y = 4;
defparam \wav|clk166gen|cnt[4] .coord_z = 4;
defparam \wav|clk166gen|cnt[4] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[4] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[4] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[4] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[5] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[4]~25 ),
	.Qin(\wav|clk166gen|cnt [5]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[5]~26_combout ),
	.Cout(\wav|clk166gen|cnt[5]~27 ),
	.Q(\wav|clk166gen|cnt [5]));
defparam \wav|clk166gen|cnt[5] .coord_x = 5;
defparam \wav|clk166gen|cnt[5] .coord_y = 4;
defparam \wav|clk166gen|cnt[5] .coord_z = 5;
defparam \wav|clk166gen|cnt[5] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[5] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[5] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[5] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[6] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[5]~27 ),
	.Qin(\wav|clk166gen|cnt [6]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[6]~28_combout ),
	.Cout(\wav|clk166gen|cnt[6]~29 ),
	.Q(\wav|clk166gen|cnt [6]));
defparam \wav|clk166gen|cnt[6] .coord_x = 5;
defparam \wav|clk166gen|cnt[6] .coord_y = 4;
defparam \wav|clk166gen|cnt[6] .coord_z = 6;
defparam \wav|clk166gen|cnt[6] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[6] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[6] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[6] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[7] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[6]~29 ),
	.Qin(\wav|clk166gen|cnt [7]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[7]~30_combout ),
	.Cout(\wav|clk166gen|cnt[7]~31 ),
	.Q(\wav|clk166gen|cnt [7]));
defparam \wav|clk166gen|cnt[7] .coord_x = 5;
defparam \wav|clk166gen|cnt[7] .coord_y = 4;
defparam \wav|clk166gen|cnt[7] .coord_z = 7;
defparam \wav|clk166gen|cnt[7] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[7] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[7] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[7] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[8] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[7]~31 ),
	.Qin(\wav|clk166gen|cnt [8]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[8]~32_combout ),
	.Cout(\wav|clk166gen|cnt[8]~33 ),
	.Q(\wav|clk166gen|cnt [8]));
defparam \wav|clk166gen|cnt[8] .coord_x = 5;
defparam \wav|clk166gen|cnt[8] .coord_y = 4;
defparam \wav|clk166gen|cnt[8] .coord_z = 8;
defparam \wav|clk166gen|cnt[8] .mask = 16'hC30C;
defparam \wav|clk166gen|cnt[8] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[8] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[8] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|clk166gen|cnt[9] (
	.A(vcc),
	.B(\wav|clk166gen|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|clk166gen|cnt[8]~33 ),
	.Qin(\wav|clk166gen|cnt [9]),
	.Clk(\p0|PLL_D84CC99B.clkout1_X8_Y2_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y2_SIG ),
	.SyncReset(\wav|clk166gen|LessThan0~4_combout__SyncReset_X8_Y2_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X8_Y2_GND),
	.LutOut(\wav|clk166gen|cnt[9]~34_combout ),
	.Cout(\wav|clk166gen|cnt[9]~35 ),
	.Q(\wav|clk166gen|cnt [9]));
defparam \wav|clk166gen|cnt[9] .coord_x = 5;
defparam \wav|clk166gen|cnt[9] .coord_y = 4;
defparam \wav|clk166gen|cnt[9] .coord_z = 9;
defparam \wav|clk166gen|cnt[9] .mask = 16'h3C3F;
defparam \wav|clk166gen|cnt[9] .modeMux = 1'b1;
defparam \wav|clk166gen|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|clk166gen|cnt[9] .ShiftMux = 1'b0;
defparam \wav|clk166gen|cnt[9] .BypassEn = 1'b1;
defparam \wav|clk166gen|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|c|LessThan0~0 (
	.A(\wav|c|cnt [9]),
	.B(\wav|c|cnt [8]),
	.C(\wav|c|cnt [11]),
	.D(\wav|c|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|c|LessThan0~0 .coord_x = 0;
defparam \wav|c|LessThan0~0 .coord_y = 3;
defparam \wav|c|LessThan0~0 .coord_z = 4;
defparam \wav|c|LessThan0~0 .mask = 16'h0001;
defparam \wav|c|LessThan0~0 .modeMux = 1'b0;
defparam \wav|c|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|c|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|c|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|c|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|c|LessThan0~1 (
	.A(\wav|c|cnt [12]),
	.B(\wav|c|cnt [13]),
	.C(\wav|c|cnt [15]),
	.D(\wav|c|cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|c|LessThan0~1 .coord_x = 0;
defparam \wav|c|LessThan0~1 .coord_y = 3;
defparam \wav|c|LessThan0~1 .coord_z = 5;
defparam \wav|c|LessThan0~1 .mask = 16'h0001;
defparam \wav|c|LessThan0~1 .modeMux = 1'b0;
defparam \wav|c|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|c|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|c|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|c|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|c|LessThan0~2 (
	.A(\wav|c|cnt [1]),
	.B(\wav|c|cnt [4]),
	.C(\wav|c|cnt [3]),
	.D(\wav|c|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|c|LessThan0~2 .coord_x = 0;
defparam \wav|c|LessThan0~2 .coord_y = 3;
defparam \wav|c|LessThan0~2 .coord_z = 14;
defparam \wav|c|LessThan0~2 .mask = 16'h3337;
defparam \wav|c|LessThan0~2 .modeMux = 1'b0;
defparam \wav|c|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|c|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|c|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|c|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|c|LessThan0~3 (
	.A(\wav|c|cnt [5]),
	.B(vcc),
	.C(\wav|c|cnt [6]),
	.D(\wav|c|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|c|LessThan0~3 .coord_x = 0;
defparam \wav|c|LessThan0~3 .coord_y = 3;
defparam \wav|c|LessThan0~3 .coord_z = 9;
defparam \wav|c|LessThan0~3 .mask = 16'h5FFF;
defparam \wav|c|LessThan0~3 .modeMux = 1'b0;
defparam \wav|c|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|c|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|c|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|c|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|c|LessThan0~4 (
	.A(\wav|c|LessThan0~0_combout ),
	.B(\wav|c|LessThan0~3_combout ),
	.C(\wav|c|LessThan0~2_combout ),
	.D(\wav|c|LessThan0~1_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|c|LessThan0~4 .coord_x = 0;
defparam \wav|c|LessThan0~4 .coord_y = 3;
defparam \wav|c|LessThan0~4 .coord_z = 11;
defparam \wav|c|LessThan0~4 .mask = 16'h57FF;
defparam \wav|c|LessThan0~4 .modeMux = 1'b0;
defparam \wav|c|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|c|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|c|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|c|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|c|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|c|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|c|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X7_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y3_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|c|clkout~0_combout ),
	.Cout(),
	.Q(\wav|c|clkout~q ));
defparam \wav|c|clkout .coord_x = 0;
defparam \wav|c|clkout .coord_y = 3;
defparam \wav|c|clkout .coord_z = 15;
defparam \wav|c|clkout .mask = 16'h0FF0;
defparam \wav|c|clkout .modeMux = 1'b0;
defparam \wav|c|clkout .FeedbackMux = 1'b1;
defparam \wav|c|clkout .ShiftMux = 1'b0;
defparam \wav|c|clkout .BypassEn = 1'b0;
defparam \wav|c|clkout .CarryEnb = 1'b1;

alta_slice \wav|c|cnt[0] (
	.A(vcc),
	.B(\wav|c|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|c|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[0]~16_combout ),
	.Cout(\wav|c|cnt[0]~17 ),
	.Q(\wav|c|cnt [0]));
defparam \wav|c|cnt[0] .coord_x = 1;
defparam \wav|c|cnt[0] .coord_y = 3;
defparam \wav|c|cnt[0] .coord_z = 0;
defparam \wav|c|cnt[0] .mask = 16'h33CC;
defparam \wav|c|cnt[0] .modeMux = 1'b0;
defparam \wav|c|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[0] .ShiftMux = 1'b0;
defparam \wav|c|cnt[0] .BypassEn = 1'b1;
defparam \wav|c|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[10] (
	.A(vcc),
	.B(\wav|c|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[9]~35 ),
	.Qin(\wav|c|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[10]~36_combout ),
	.Cout(\wav|c|cnt[10]~37 ),
	.Q(\wav|c|cnt [10]));
defparam \wav|c|cnt[10] .coord_x = 1;
defparam \wav|c|cnt[10] .coord_y = 3;
defparam \wav|c|cnt[10] .coord_z = 10;
defparam \wav|c|cnt[10] .mask = 16'hC30C;
defparam \wav|c|cnt[10] .modeMux = 1'b1;
defparam \wav|c|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[10] .ShiftMux = 1'b0;
defparam \wav|c|cnt[10] .BypassEn = 1'b1;
defparam \wav|c|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[11] (
	.A(vcc),
	.B(\wav|c|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[10]~37 ),
	.Qin(\wav|c|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[11]~38_combout ),
	.Cout(\wav|c|cnt[11]~39 ),
	.Q(\wav|c|cnt [11]));
defparam \wav|c|cnt[11] .coord_x = 1;
defparam \wav|c|cnt[11] .coord_y = 3;
defparam \wav|c|cnt[11] .coord_z = 11;
defparam \wav|c|cnt[11] .mask = 16'h3C3F;
defparam \wav|c|cnt[11] .modeMux = 1'b1;
defparam \wav|c|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[11] .ShiftMux = 1'b0;
defparam \wav|c|cnt[11] .BypassEn = 1'b1;
defparam \wav|c|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[12] (
	.A(vcc),
	.B(\wav|c|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[11]~39 ),
	.Qin(\wav|c|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[12]~40_combout ),
	.Cout(\wav|c|cnt[12]~41 ),
	.Q(\wav|c|cnt [12]));
defparam \wav|c|cnt[12] .coord_x = 1;
defparam \wav|c|cnt[12] .coord_y = 3;
defparam \wav|c|cnt[12] .coord_z = 12;
defparam \wav|c|cnt[12] .mask = 16'hC30C;
defparam \wav|c|cnt[12] .modeMux = 1'b1;
defparam \wav|c|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[12] .ShiftMux = 1'b0;
defparam \wav|c|cnt[12] .BypassEn = 1'b1;
defparam \wav|c|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[13] (
	.A(vcc),
	.B(\wav|c|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[12]~41 ),
	.Qin(\wav|c|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[13]~42_combout ),
	.Cout(\wav|c|cnt[13]~43 ),
	.Q(\wav|c|cnt [13]));
defparam \wav|c|cnt[13] .coord_x = 1;
defparam \wav|c|cnt[13] .coord_y = 3;
defparam \wav|c|cnt[13] .coord_z = 13;
defparam \wav|c|cnt[13] .mask = 16'h3C3F;
defparam \wav|c|cnt[13] .modeMux = 1'b1;
defparam \wav|c|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[13] .ShiftMux = 1'b0;
defparam \wav|c|cnt[13] .BypassEn = 1'b1;
defparam \wav|c|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[14] (
	.A(vcc),
	.B(\wav|c|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[13]~43 ),
	.Qin(\wav|c|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[14]~44_combout ),
	.Cout(\wav|c|cnt[14]~45 ),
	.Q(\wav|c|cnt [14]));
defparam \wav|c|cnt[14] .coord_x = 1;
defparam \wav|c|cnt[14] .coord_y = 3;
defparam \wav|c|cnt[14] .coord_z = 14;
defparam \wav|c|cnt[14] .mask = 16'hC30C;
defparam \wav|c|cnt[14] .modeMux = 1'b1;
defparam \wav|c|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[14] .ShiftMux = 1'b0;
defparam \wav|c|cnt[14] .BypassEn = 1'b1;
defparam \wav|c|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[15] (
	.A(vcc),
	.B(\wav|c|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[14]~45 ),
	.Qin(\wav|c|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|c|cnt [15]));
defparam \wav|c|cnt[15] .coord_x = 1;
defparam \wav|c|cnt[15] .coord_y = 3;
defparam \wav|c|cnt[15] .coord_z = 15;
defparam \wav|c|cnt[15] .mask = 16'h3C3C;
defparam \wav|c|cnt[15] .modeMux = 1'b1;
defparam \wav|c|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[15] .ShiftMux = 1'b0;
defparam \wav|c|cnt[15] .BypassEn = 1'b1;
defparam \wav|c|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|c|cnt[1] (
	.A(vcc),
	.B(\wav|c|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[0]~17 ),
	.Qin(\wav|c|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[1]~18_combout ),
	.Cout(\wav|c|cnt[1]~19 ),
	.Q(\wav|c|cnt [1]));
defparam \wav|c|cnt[1] .coord_x = 1;
defparam \wav|c|cnt[1] .coord_y = 3;
defparam \wav|c|cnt[1] .coord_z = 1;
defparam \wav|c|cnt[1] .mask = 16'h3C3F;
defparam \wav|c|cnt[1] .modeMux = 1'b1;
defparam \wav|c|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[1] .ShiftMux = 1'b0;
defparam \wav|c|cnt[1] .BypassEn = 1'b1;
defparam \wav|c|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[2] (
	.A(vcc),
	.B(\wav|c|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[1]~19 ),
	.Qin(\wav|c|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[2]~20_combout ),
	.Cout(\wav|c|cnt[2]~21 ),
	.Q(\wav|c|cnt [2]));
defparam \wav|c|cnt[2] .coord_x = 1;
defparam \wav|c|cnt[2] .coord_y = 3;
defparam \wav|c|cnt[2] .coord_z = 2;
defparam \wav|c|cnt[2] .mask = 16'hC30C;
defparam \wav|c|cnt[2] .modeMux = 1'b1;
defparam \wav|c|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[2] .ShiftMux = 1'b0;
defparam \wav|c|cnt[2] .BypassEn = 1'b1;
defparam \wav|c|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[3] (
	.A(vcc),
	.B(\wav|c|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[2]~21 ),
	.Qin(\wav|c|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[3]~22_combout ),
	.Cout(\wav|c|cnt[3]~23 ),
	.Q(\wav|c|cnt [3]));
defparam \wav|c|cnt[3] .coord_x = 1;
defparam \wav|c|cnt[3] .coord_y = 3;
defparam \wav|c|cnt[3] .coord_z = 3;
defparam \wav|c|cnt[3] .mask = 16'h3C3F;
defparam \wav|c|cnt[3] .modeMux = 1'b1;
defparam \wav|c|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[3] .ShiftMux = 1'b0;
defparam \wav|c|cnt[3] .BypassEn = 1'b1;
defparam \wav|c|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[4] (
	.A(vcc),
	.B(\wav|c|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[3]~23 ),
	.Qin(\wav|c|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[4]~24_combout ),
	.Cout(\wav|c|cnt[4]~25 ),
	.Q(\wav|c|cnt [4]));
defparam \wav|c|cnt[4] .coord_x = 1;
defparam \wav|c|cnt[4] .coord_y = 3;
defparam \wav|c|cnt[4] .coord_z = 4;
defparam \wav|c|cnt[4] .mask = 16'hC30C;
defparam \wav|c|cnt[4] .modeMux = 1'b1;
defparam \wav|c|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[4] .ShiftMux = 1'b0;
defparam \wav|c|cnt[4] .BypassEn = 1'b1;
defparam \wav|c|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[5] (
	.A(vcc),
	.B(\wav|c|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[4]~25 ),
	.Qin(\wav|c|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[5]~26_combout ),
	.Cout(\wav|c|cnt[5]~27 ),
	.Q(\wav|c|cnt [5]));
defparam \wav|c|cnt[5] .coord_x = 1;
defparam \wav|c|cnt[5] .coord_y = 3;
defparam \wav|c|cnt[5] .coord_z = 5;
defparam \wav|c|cnt[5] .mask = 16'h3C3F;
defparam \wav|c|cnt[5] .modeMux = 1'b1;
defparam \wav|c|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[5] .ShiftMux = 1'b0;
defparam \wav|c|cnt[5] .BypassEn = 1'b1;
defparam \wav|c|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[6] (
	.A(vcc),
	.B(\wav|c|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[5]~27 ),
	.Qin(\wav|c|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[6]~28_combout ),
	.Cout(\wav|c|cnt[6]~29 ),
	.Q(\wav|c|cnt [6]));
defparam \wav|c|cnt[6] .coord_x = 1;
defparam \wav|c|cnt[6] .coord_y = 3;
defparam \wav|c|cnt[6] .coord_z = 6;
defparam \wav|c|cnt[6] .mask = 16'hC30C;
defparam \wav|c|cnt[6] .modeMux = 1'b1;
defparam \wav|c|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[6] .ShiftMux = 1'b0;
defparam \wav|c|cnt[6] .BypassEn = 1'b1;
defparam \wav|c|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[7] (
	.A(vcc),
	.B(\wav|c|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[6]~29 ),
	.Qin(\wav|c|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[7]~30_combout ),
	.Cout(\wav|c|cnt[7]~31 ),
	.Q(\wav|c|cnt [7]));
defparam \wav|c|cnt[7] .coord_x = 1;
defparam \wav|c|cnt[7] .coord_y = 3;
defparam \wav|c|cnt[7] .coord_z = 7;
defparam \wav|c|cnt[7] .mask = 16'h3C3F;
defparam \wav|c|cnt[7] .modeMux = 1'b1;
defparam \wav|c|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[7] .ShiftMux = 1'b0;
defparam \wav|c|cnt[7] .BypassEn = 1'b1;
defparam \wav|c|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[8] (
	.A(vcc),
	.B(\wav|c|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[7]~31 ),
	.Qin(\wav|c|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[8]~32_combout ),
	.Cout(\wav|c|cnt[8]~33 ),
	.Q(\wav|c|cnt [8]));
defparam \wav|c|cnt[8] .coord_x = 1;
defparam \wav|c|cnt[8] .coord_y = 3;
defparam \wav|c|cnt[8] .coord_z = 8;
defparam \wav|c|cnt[8] .mask = 16'hC30C;
defparam \wav|c|cnt[8] .modeMux = 1'b1;
defparam \wav|c|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[8] .ShiftMux = 1'b0;
defparam \wav|c|cnt[8] .BypassEn = 1'b1;
defparam \wav|c|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|c|cnt[9] (
	.A(vcc),
	.B(\wav|c|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|c|cnt[8]~33 ),
	.Qin(\wav|c|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y3_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y3_SIG ),
	.SyncReset(\wav|c|LessThan0~4_combout__SyncReset_X6_Y3_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y3_GND),
	.LutOut(\wav|c|cnt[9]~34_combout ),
	.Cout(\wav|c|cnt[9]~35 ),
	.Q(\wav|c|cnt [9]));
defparam \wav|c|cnt[9] .coord_x = 1;
defparam \wav|c|cnt[9] .coord_y = 3;
defparam \wav|c|cnt[9] .coord_z = 9;
defparam \wav|c|cnt[9] .mask = 16'h3C3F;
defparam \wav|c|cnt[9] .modeMux = 1'b1;
defparam \wav|c|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|c|cnt[9] .ShiftMux = 1'b0;
defparam \wav|c|cnt[9] .BypassEn = 1'b1;
defparam \wav|c|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|d|LessThan0~0 (
	.A(\wav|d|cnt [10]),
	.B(\wav|d|cnt [11]),
	.C(\wav|d|cnt [9]),
	.D(\wav|d|cnt [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|d|LessThan0~0 .coord_x = 1;
defparam \wav|d|LessThan0~0 .coord_y = 4;
defparam \wav|d|LessThan0~0 .coord_z = 9;
defparam \wav|d|LessThan0~0 .mask = 16'h0001;
defparam \wav|d|LessThan0~0 .modeMux = 1'b0;
defparam \wav|d|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|d|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|d|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|d|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|d|LessThan0~1 (
	.A(\wav|d|cnt [13]),
	.B(\wav|d|cnt [15]),
	.C(\wav|d|cnt [12]),
	.D(\wav|d|cnt [14]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|d|LessThan0~1 .coord_x = 1;
defparam \wav|d|LessThan0~1 .coord_y = 4;
defparam \wav|d|LessThan0~1 .coord_z = 14;
defparam \wav|d|LessThan0~1 .mask = 16'h0001;
defparam \wav|d|LessThan0~1 .modeMux = 1'b0;
defparam \wav|d|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|d|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|d|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|d|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|d|LessThan0~2 (
	.A(\wav|d|cnt [0]),
	.B(\wav|d|cnt [1]),
	.C(\wav|d|cnt [3]),
	.D(\wav|d|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|d|LessThan0~2 .coord_x = 1;
defparam \wav|d|LessThan0~2 .coord_y = 4;
defparam \wav|d|LessThan0~2 .coord_z = 5;
defparam \wav|d|LessThan0~2 .mask = 16'h070F;
defparam \wav|d|LessThan0~2 .modeMux = 1'b0;
defparam \wav|d|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|d|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|d|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|d|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|d|LessThan0~3 (
	.A(\wav|d|cnt [4]),
	.B(\wav|d|cnt [5]),
	.C(\wav|d|cnt [7]),
	.D(\wav|d|LessThan0~2_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|d|LessThan0~3 .coord_x = 1;
defparam \wav|d|LessThan0~3 .coord_y = 4;
defparam \wav|d|LessThan0~3 .coord_z = 1;
defparam \wav|d|LessThan0~3 .mask = 16'hC0E0;
defparam \wav|d|LessThan0~3 .modeMux = 1'b0;
defparam \wav|d|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|d|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|d|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|d|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|d|LessThan0~4 (
	.A(\wav|d|cnt [6]),
	.B(\wav|d|LessThan0~0_combout ),
	.C(\wav|d|LessThan0~1_combout ),
	.D(\wav|d|LessThan0~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|d|LessThan0~4 .coord_x = 1;
defparam \wav|d|LessThan0~4 .coord_y = 4;
defparam \wav|d|LessThan0~4 .coord_z = 11;
defparam \wav|d|LessThan0~4 .mask = 16'hBF3F;
defparam \wav|d|LessThan0~4 .modeMux = 1'b0;
defparam \wav|d|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|d|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|d|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|d|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|d|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|d|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|d|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y5_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|d|clkout~0_combout ),
	.Cout(),
	.Q(\wav|d|clkout~q ));
defparam \wav|d|clkout .coord_x = 1;
defparam \wav|d|clkout .coord_y = 4;
defparam \wav|d|clkout .coord_z = 12;
defparam \wav|d|clkout .mask = 16'h0FF0;
defparam \wav|d|clkout .modeMux = 1'b0;
defparam \wav|d|clkout .FeedbackMux = 1'b1;
defparam \wav|d|clkout .ShiftMux = 1'b0;
defparam \wav|d|clkout .BypassEn = 1'b0;
defparam \wav|d|clkout .CarryEnb = 1'b1;

alta_slice \wav|d|cnt[0] (
	.A(vcc),
	.B(\wav|d|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|d|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[0]~16_combout ),
	.Cout(\wav|d|cnt[0]~17 ),
	.Q(\wav|d|cnt [0]));
defparam \wav|d|cnt[0] .coord_x = 0;
defparam \wav|d|cnt[0] .coord_y = 4;
defparam \wav|d|cnt[0] .coord_z = 0;
defparam \wav|d|cnt[0] .mask = 16'h33CC;
defparam \wav|d|cnt[0] .modeMux = 1'b0;
defparam \wav|d|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[0] .ShiftMux = 1'b0;
defparam \wav|d|cnt[0] .BypassEn = 1'b1;
defparam \wav|d|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[10] (
	.A(vcc),
	.B(\wav|d|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[9]~35 ),
	.Qin(\wav|d|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[10]~36_combout ),
	.Cout(\wav|d|cnt[10]~37 ),
	.Q(\wav|d|cnt [10]));
defparam \wav|d|cnt[10] .coord_x = 0;
defparam \wav|d|cnt[10] .coord_y = 4;
defparam \wav|d|cnt[10] .coord_z = 10;
defparam \wav|d|cnt[10] .mask = 16'hC30C;
defparam \wav|d|cnt[10] .modeMux = 1'b1;
defparam \wav|d|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[10] .ShiftMux = 1'b0;
defparam \wav|d|cnt[10] .BypassEn = 1'b1;
defparam \wav|d|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[11] (
	.A(vcc),
	.B(\wav|d|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[10]~37 ),
	.Qin(\wav|d|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[11]~38_combout ),
	.Cout(\wav|d|cnt[11]~39 ),
	.Q(\wav|d|cnt [11]));
defparam \wav|d|cnt[11] .coord_x = 0;
defparam \wav|d|cnt[11] .coord_y = 4;
defparam \wav|d|cnt[11] .coord_z = 11;
defparam \wav|d|cnt[11] .mask = 16'h3C3F;
defparam \wav|d|cnt[11] .modeMux = 1'b1;
defparam \wav|d|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[11] .ShiftMux = 1'b0;
defparam \wav|d|cnt[11] .BypassEn = 1'b1;
defparam \wav|d|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[12] (
	.A(vcc),
	.B(\wav|d|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[11]~39 ),
	.Qin(\wav|d|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[12]~40_combout ),
	.Cout(\wav|d|cnt[12]~41 ),
	.Q(\wav|d|cnt [12]));
defparam \wav|d|cnt[12] .coord_x = 0;
defparam \wav|d|cnt[12] .coord_y = 4;
defparam \wav|d|cnt[12] .coord_z = 12;
defparam \wav|d|cnt[12] .mask = 16'hC30C;
defparam \wav|d|cnt[12] .modeMux = 1'b1;
defparam \wav|d|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[12] .ShiftMux = 1'b0;
defparam \wav|d|cnt[12] .BypassEn = 1'b1;
defparam \wav|d|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[13] (
	.A(vcc),
	.B(\wav|d|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[12]~41 ),
	.Qin(\wav|d|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[13]~42_combout ),
	.Cout(\wav|d|cnt[13]~43 ),
	.Q(\wav|d|cnt [13]));
defparam \wav|d|cnt[13] .coord_x = 0;
defparam \wav|d|cnt[13] .coord_y = 4;
defparam \wav|d|cnt[13] .coord_z = 13;
defparam \wav|d|cnt[13] .mask = 16'h3C3F;
defparam \wav|d|cnt[13] .modeMux = 1'b1;
defparam \wav|d|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[13] .ShiftMux = 1'b0;
defparam \wav|d|cnt[13] .BypassEn = 1'b1;
defparam \wav|d|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[14] (
	.A(vcc),
	.B(\wav|d|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[13]~43 ),
	.Qin(\wav|d|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[14]~44_combout ),
	.Cout(\wav|d|cnt[14]~45 ),
	.Q(\wav|d|cnt [14]));
defparam \wav|d|cnt[14] .coord_x = 0;
defparam \wav|d|cnt[14] .coord_y = 4;
defparam \wav|d|cnt[14] .coord_z = 14;
defparam \wav|d|cnt[14] .mask = 16'hC30C;
defparam \wav|d|cnt[14] .modeMux = 1'b1;
defparam \wav|d|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[14] .ShiftMux = 1'b0;
defparam \wav|d|cnt[14] .BypassEn = 1'b1;
defparam \wav|d|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[15] (
	.A(vcc),
	.B(\wav|d|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[14]~45 ),
	.Qin(\wav|d|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|d|cnt [15]));
defparam \wav|d|cnt[15] .coord_x = 0;
defparam \wav|d|cnt[15] .coord_y = 4;
defparam \wav|d|cnt[15] .coord_z = 15;
defparam \wav|d|cnt[15] .mask = 16'h3C3C;
defparam \wav|d|cnt[15] .modeMux = 1'b1;
defparam \wav|d|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[15] .ShiftMux = 1'b0;
defparam \wav|d|cnt[15] .BypassEn = 1'b1;
defparam \wav|d|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|d|cnt[1] (
	.A(vcc),
	.B(\wav|d|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[0]~17 ),
	.Qin(\wav|d|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[1]~18_combout ),
	.Cout(\wav|d|cnt[1]~19 ),
	.Q(\wav|d|cnt [1]));
defparam \wav|d|cnt[1] .coord_x = 0;
defparam \wav|d|cnt[1] .coord_y = 4;
defparam \wav|d|cnt[1] .coord_z = 1;
defparam \wav|d|cnt[1] .mask = 16'h3C3F;
defparam \wav|d|cnt[1] .modeMux = 1'b1;
defparam \wav|d|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[1] .ShiftMux = 1'b0;
defparam \wav|d|cnt[1] .BypassEn = 1'b1;
defparam \wav|d|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[2] (
	.A(vcc),
	.B(\wav|d|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[1]~19 ),
	.Qin(\wav|d|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[2]~20_combout ),
	.Cout(\wav|d|cnt[2]~21 ),
	.Q(\wav|d|cnt [2]));
defparam \wav|d|cnt[2] .coord_x = 0;
defparam \wav|d|cnt[2] .coord_y = 4;
defparam \wav|d|cnt[2] .coord_z = 2;
defparam \wav|d|cnt[2] .mask = 16'hC30C;
defparam \wav|d|cnt[2] .modeMux = 1'b1;
defparam \wav|d|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[2] .ShiftMux = 1'b0;
defparam \wav|d|cnt[2] .BypassEn = 1'b1;
defparam \wav|d|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[3] (
	.A(vcc),
	.B(\wav|d|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[2]~21 ),
	.Qin(\wav|d|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[3]~22_combout ),
	.Cout(\wav|d|cnt[3]~23 ),
	.Q(\wav|d|cnt [3]));
defparam \wav|d|cnt[3] .coord_x = 0;
defparam \wav|d|cnt[3] .coord_y = 4;
defparam \wav|d|cnt[3] .coord_z = 3;
defparam \wav|d|cnt[3] .mask = 16'h3C3F;
defparam \wav|d|cnt[3] .modeMux = 1'b1;
defparam \wav|d|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[3] .ShiftMux = 1'b0;
defparam \wav|d|cnt[3] .BypassEn = 1'b1;
defparam \wav|d|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[4] (
	.A(vcc),
	.B(\wav|d|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[3]~23 ),
	.Qin(\wav|d|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[4]~24_combout ),
	.Cout(\wav|d|cnt[4]~25 ),
	.Q(\wav|d|cnt [4]));
defparam \wav|d|cnt[4] .coord_x = 0;
defparam \wav|d|cnt[4] .coord_y = 4;
defparam \wav|d|cnt[4] .coord_z = 4;
defparam \wav|d|cnt[4] .mask = 16'hC30C;
defparam \wav|d|cnt[4] .modeMux = 1'b1;
defparam \wav|d|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[4] .ShiftMux = 1'b0;
defparam \wav|d|cnt[4] .BypassEn = 1'b1;
defparam \wav|d|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[5] (
	.A(vcc),
	.B(\wav|d|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[4]~25 ),
	.Qin(\wav|d|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[5]~26_combout ),
	.Cout(\wav|d|cnt[5]~27 ),
	.Q(\wav|d|cnt [5]));
defparam \wav|d|cnt[5] .coord_x = 0;
defparam \wav|d|cnt[5] .coord_y = 4;
defparam \wav|d|cnt[5] .coord_z = 5;
defparam \wav|d|cnt[5] .mask = 16'h3C3F;
defparam \wav|d|cnt[5] .modeMux = 1'b1;
defparam \wav|d|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[5] .ShiftMux = 1'b0;
defparam \wav|d|cnt[5] .BypassEn = 1'b1;
defparam \wav|d|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[6] (
	.A(vcc),
	.B(\wav|d|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[5]~27 ),
	.Qin(\wav|d|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[6]~28_combout ),
	.Cout(\wav|d|cnt[6]~29 ),
	.Q(\wav|d|cnt [6]));
defparam \wav|d|cnt[6] .coord_x = 0;
defparam \wav|d|cnt[6] .coord_y = 4;
defparam \wav|d|cnt[6] .coord_z = 6;
defparam \wav|d|cnt[6] .mask = 16'hC30C;
defparam \wav|d|cnt[6] .modeMux = 1'b1;
defparam \wav|d|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[6] .ShiftMux = 1'b0;
defparam \wav|d|cnt[6] .BypassEn = 1'b1;
defparam \wav|d|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[7] (
	.A(vcc),
	.B(\wav|d|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[6]~29 ),
	.Qin(\wav|d|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[7]~30_combout ),
	.Cout(\wav|d|cnt[7]~31 ),
	.Q(\wav|d|cnt [7]));
defparam \wav|d|cnt[7] .coord_x = 0;
defparam \wav|d|cnt[7] .coord_y = 4;
defparam \wav|d|cnt[7] .coord_z = 7;
defparam \wav|d|cnt[7] .mask = 16'h3C3F;
defparam \wav|d|cnt[7] .modeMux = 1'b1;
defparam \wav|d|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[7] .ShiftMux = 1'b0;
defparam \wav|d|cnt[7] .BypassEn = 1'b1;
defparam \wav|d|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[8] (
	.A(vcc),
	.B(\wav|d|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[7]~31 ),
	.Qin(\wav|d|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[8]~32_combout ),
	.Cout(\wav|d|cnt[8]~33 ),
	.Q(\wav|d|cnt [8]));
defparam \wav|d|cnt[8] .coord_x = 0;
defparam \wav|d|cnt[8] .coord_y = 4;
defparam \wav|d|cnt[8] .coord_z = 8;
defparam \wav|d|cnt[8] .mask = 16'hC30C;
defparam \wav|d|cnt[8] .modeMux = 1'b1;
defparam \wav|d|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[8] .ShiftMux = 1'b0;
defparam \wav|d|cnt[8] .BypassEn = 1'b1;
defparam \wav|d|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|d|cnt[9] (
	.A(vcc),
	.B(\wav|d|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|d|cnt[8]~33 ),
	.Qin(\wav|d|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X5_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X5_Y5_SIG ),
	.SyncReset(\wav|d|LessThan0~4_combout__SyncReset_X5_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X5_Y5_GND),
	.LutOut(\wav|d|cnt[9]~34_combout ),
	.Cout(\wav|d|cnt[9]~35 ),
	.Q(\wav|d|cnt [9]));
defparam \wav|d|cnt[9] .coord_x = 0;
defparam \wav|d|cnt[9] .coord_y = 4;
defparam \wav|d|cnt[9] .coord_z = 9;
defparam \wav|d|cnt[9] .mask = 16'h3C3F;
defparam \wav|d|cnt[9] .modeMux = 1'b1;
defparam \wav|d|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|d|cnt[9] .ShiftMux = 1'b0;
defparam \wav|d|cnt[9] .BypassEn = 1'b1;
defparam \wav|d|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|e|LessThan0~0 (
	.A(\wav|e|cnt [11]),
	.B(\wav|e|cnt [8]),
	.C(\wav|e|cnt [9]),
	.D(\wav|e|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|e|LessThan0~0 .coord_x = 6;
defparam \wav|e|LessThan0~0 .coord_y = 7;
defparam \wav|e|LessThan0~0 .coord_z = 3;
defparam \wav|e|LessThan0~0 .mask = 16'h0001;
defparam \wav|e|LessThan0~0 .modeMux = 1'b0;
defparam \wav|e|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|e|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|e|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|e|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|e|LessThan0~1 (
	.A(\wav|e|cnt [12]),
	.B(\wav|e|cnt [13]),
	.C(\wav|e|cnt [14]),
	.D(\wav|e|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|e|LessThan0~1 .coord_x = 6;
defparam \wav|e|LessThan0~1 .coord_y = 7;
defparam \wav|e|LessThan0~1 .coord_z = 6;
defparam \wav|e|LessThan0~1 .mask = 16'h0001;
defparam \wav|e|LessThan0~1 .modeMux = 1'b0;
defparam \wav|e|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|e|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|e|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|e|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|e|LessThan0~3 (
	.A(\wav|e|LessThan0~3_RESYN0_BDD1 ),
	.B(\wav|e|cnt [0]),
	.C(\wav|e|cnt [6]),
	.D(\wav|e|cnt [1]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|e|LessThan0~3 .coord_x = 6;
defparam \wav|e|LessThan0~3 .coord_y = 7;
defparam \wav|e|LessThan0~3 .coord_z = 5;
defparam \wav|e|LessThan0~3 .mask = 16'h0B0F;
defparam \wav|e|LessThan0~3 .modeMux = 1'b0;
defparam \wav|e|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|e|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|e|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|e|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|e|LessThan0~3_RESYN0 (
	.A(\wav|e|cnt [5]),
	.B(\wav|e|cnt [4]),
	.C(\wav|e|cnt [3]),
	.D(\wav|e|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|LessThan0~3_RESYN0_BDD1 ),
	.Cout(),
	.Q());
defparam \wav|e|LessThan0~3_RESYN0 .coord_x = 6;
defparam \wav|e|LessThan0~3_RESYN0 .coord_y = 7;
defparam \wav|e|LessThan0~3_RESYN0 .coord_z = 4;
defparam \wav|e|LessThan0~3_RESYN0 .mask = 16'h7FFF;
defparam \wav|e|LessThan0~3_RESYN0 .modeMux = 1'b0;
defparam \wav|e|LessThan0~3_RESYN0 .FeedbackMux = 1'b0;
defparam \wav|e|LessThan0~3_RESYN0 .ShiftMux = 1'b0;
defparam \wav|e|LessThan0~3_RESYN0 .BypassEn = 1'b0;
defparam \wav|e|LessThan0~3_RESYN0 .CarryEnb = 1'b1;

alta_slice \wav|e|LessThan0~4 (
	.A(\wav|e|LessThan0~1_combout ),
	.B(\wav|e|LessThan0~3_combout ),
	.C(\wav|e|LessThan0~0_combout ),
	.D(\wav|e|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|e|LessThan0~4 .coord_x = 6;
defparam \wav|e|LessThan0~4 .coord_y = 7;
defparam \wav|e|LessThan0~4 .coord_z = 7;
defparam \wav|e|LessThan0~4 .mask = 16'h7F5F;
defparam \wav|e|LessThan0~4 .modeMux = 1'b0;
defparam \wav|e|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|e|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|e|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|e|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|e|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|e|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|e|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X7_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y7_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|e|clkout~0_combout ),
	.Cout(),
	.Q(\wav|e|clkout~q ));
defparam \wav|e|clkout .coord_x = 6;
defparam \wav|e|clkout .coord_y = 7;
defparam \wav|e|clkout .coord_z = 13;
defparam \wav|e|clkout .mask = 16'h0FF0;
defparam \wav|e|clkout .modeMux = 1'b0;
defparam \wav|e|clkout .FeedbackMux = 1'b1;
defparam \wav|e|clkout .ShiftMux = 1'b0;
defparam \wav|e|clkout .BypassEn = 1'b0;
defparam \wav|e|clkout .CarryEnb = 1'b1;

alta_slice \wav|e|cnt[0] (
	.A(vcc),
	.B(\wav|e|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|e|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[0]~16_combout ),
	.Cout(\wav|e|cnt[0]~17 ),
	.Q(\wav|e|cnt [0]));
defparam \wav|e|cnt[0] .coord_x = 7;
defparam \wav|e|cnt[0] .coord_y = 7;
defparam \wav|e|cnt[0] .coord_z = 0;
defparam \wav|e|cnt[0] .mask = 16'h33CC;
defparam \wav|e|cnt[0] .modeMux = 1'b0;
defparam \wav|e|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[0] .ShiftMux = 1'b0;
defparam \wav|e|cnt[0] .BypassEn = 1'b1;
defparam \wav|e|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[10] (
	.A(vcc),
	.B(\wav|e|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[9]~35 ),
	.Qin(\wav|e|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[10]~36_combout ),
	.Cout(\wav|e|cnt[10]~37 ),
	.Q(\wav|e|cnt [10]));
defparam \wav|e|cnt[10] .coord_x = 7;
defparam \wav|e|cnt[10] .coord_y = 7;
defparam \wav|e|cnt[10] .coord_z = 10;
defparam \wav|e|cnt[10] .mask = 16'hC30C;
defparam \wav|e|cnt[10] .modeMux = 1'b1;
defparam \wav|e|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[10] .ShiftMux = 1'b0;
defparam \wav|e|cnt[10] .BypassEn = 1'b1;
defparam \wav|e|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[11] (
	.A(vcc),
	.B(\wav|e|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[10]~37 ),
	.Qin(\wav|e|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[11]~38_combout ),
	.Cout(\wav|e|cnt[11]~39 ),
	.Q(\wav|e|cnt [11]));
defparam \wav|e|cnt[11] .coord_x = 7;
defparam \wav|e|cnt[11] .coord_y = 7;
defparam \wav|e|cnt[11] .coord_z = 11;
defparam \wav|e|cnt[11] .mask = 16'h3C3F;
defparam \wav|e|cnt[11] .modeMux = 1'b1;
defparam \wav|e|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[11] .ShiftMux = 1'b0;
defparam \wav|e|cnt[11] .BypassEn = 1'b1;
defparam \wav|e|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[12] (
	.A(vcc),
	.B(\wav|e|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[11]~39 ),
	.Qin(\wav|e|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[12]~40_combout ),
	.Cout(\wav|e|cnt[12]~41 ),
	.Q(\wav|e|cnt [12]));
defparam \wav|e|cnt[12] .coord_x = 7;
defparam \wav|e|cnt[12] .coord_y = 7;
defparam \wav|e|cnt[12] .coord_z = 12;
defparam \wav|e|cnt[12] .mask = 16'hC30C;
defparam \wav|e|cnt[12] .modeMux = 1'b1;
defparam \wav|e|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[12] .ShiftMux = 1'b0;
defparam \wav|e|cnt[12] .BypassEn = 1'b1;
defparam \wav|e|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[13] (
	.A(vcc),
	.B(\wav|e|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[12]~41 ),
	.Qin(\wav|e|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[13]~42_combout ),
	.Cout(\wav|e|cnt[13]~43 ),
	.Q(\wav|e|cnt [13]));
defparam \wav|e|cnt[13] .coord_x = 7;
defparam \wav|e|cnt[13] .coord_y = 7;
defparam \wav|e|cnt[13] .coord_z = 13;
defparam \wav|e|cnt[13] .mask = 16'h3C3F;
defparam \wav|e|cnt[13] .modeMux = 1'b1;
defparam \wav|e|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[13] .ShiftMux = 1'b0;
defparam \wav|e|cnt[13] .BypassEn = 1'b1;
defparam \wav|e|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[14] (
	.A(vcc),
	.B(\wav|e|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[13]~43 ),
	.Qin(\wav|e|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[14]~44_combout ),
	.Cout(\wav|e|cnt[14]~45 ),
	.Q(\wav|e|cnt [14]));
defparam \wav|e|cnt[14] .coord_x = 7;
defparam \wav|e|cnt[14] .coord_y = 7;
defparam \wav|e|cnt[14] .coord_z = 14;
defparam \wav|e|cnt[14] .mask = 16'hC30C;
defparam \wav|e|cnt[14] .modeMux = 1'b1;
defparam \wav|e|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[14] .ShiftMux = 1'b0;
defparam \wav|e|cnt[14] .BypassEn = 1'b1;
defparam \wav|e|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[15] (
	.A(vcc),
	.B(\wav|e|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[14]~45 ),
	.Qin(\wav|e|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|e|cnt [15]));
defparam \wav|e|cnt[15] .coord_x = 7;
defparam \wav|e|cnt[15] .coord_y = 7;
defparam \wav|e|cnt[15] .coord_z = 15;
defparam \wav|e|cnt[15] .mask = 16'h3C3C;
defparam \wav|e|cnt[15] .modeMux = 1'b1;
defparam \wav|e|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[15] .ShiftMux = 1'b0;
defparam \wav|e|cnt[15] .BypassEn = 1'b1;
defparam \wav|e|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|e|cnt[1] (
	.A(vcc),
	.B(\wav|e|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[0]~17 ),
	.Qin(\wav|e|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[1]~18_combout ),
	.Cout(\wav|e|cnt[1]~19 ),
	.Q(\wav|e|cnt [1]));
defparam \wav|e|cnt[1] .coord_x = 7;
defparam \wav|e|cnt[1] .coord_y = 7;
defparam \wav|e|cnt[1] .coord_z = 1;
defparam \wav|e|cnt[1] .mask = 16'h3C3F;
defparam \wav|e|cnt[1] .modeMux = 1'b1;
defparam \wav|e|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[1] .ShiftMux = 1'b0;
defparam \wav|e|cnt[1] .BypassEn = 1'b1;
defparam \wav|e|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[2] (
	.A(vcc),
	.B(\wav|e|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[1]~19 ),
	.Qin(\wav|e|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[2]~20_combout ),
	.Cout(\wav|e|cnt[2]~21 ),
	.Q(\wav|e|cnt [2]));
defparam \wav|e|cnt[2] .coord_x = 7;
defparam \wav|e|cnt[2] .coord_y = 7;
defparam \wav|e|cnt[2] .coord_z = 2;
defparam \wav|e|cnt[2] .mask = 16'hC30C;
defparam \wav|e|cnt[2] .modeMux = 1'b1;
defparam \wav|e|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[2] .ShiftMux = 1'b0;
defparam \wav|e|cnt[2] .BypassEn = 1'b1;
defparam \wav|e|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[3] (
	.A(vcc),
	.B(\wav|e|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[2]~21 ),
	.Qin(\wav|e|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[3]~22_combout ),
	.Cout(\wav|e|cnt[3]~23 ),
	.Q(\wav|e|cnt [3]));
defparam \wav|e|cnt[3] .coord_x = 7;
defparam \wav|e|cnt[3] .coord_y = 7;
defparam \wav|e|cnt[3] .coord_z = 3;
defparam \wav|e|cnt[3] .mask = 16'h3C3F;
defparam \wav|e|cnt[3] .modeMux = 1'b1;
defparam \wav|e|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[3] .ShiftMux = 1'b0;
defparam \wav|e|cnt[3] .BypassEn = 1'b1;
defparam \wav|e|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[4] (
	.A(vcc),
	.B(\wav|e|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[3]~23 ),
	.Qin(\wav|e|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[4]~24_combout ),
	.Cout(\wav|e|cnt[4]~25 ),
	.Q(\wav|e|cnt [4]));
defparam \wav|e|cnt[4] .coord_x = 7;
defparam \wav|e|cnt[4] .coord_y = 7;
defparam \wav|e|cnt[4] .coord_z = 4;
defparam \wav|e|cnt[4] .mask = 16'hC30C;
defparam \wav|e|cnt[4] .modeMux = 1'b1;
defparam \wav|e|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[4] .ShiftMux = 1'b0;
defparam \wav|e|cnt[4] .BypassEn = 1'b1;
defparam \wav|e|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[5] (
	.A(vcc),
	.B(\wav|e|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[4]~25 ),
	.Qin(\wav|e|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[5]~26_combout ),
	.Cout(\wav|e|cnt[5]~27 ),
	.Q(\wav|e|cnt [5]));
defparam \wav|e|cnt[5] .coord_x = 7;
defparam \wav|e|cnt[5] .coord_y = 7;
defparam \wav|e|cnt[5] .coord_z = 5;
defparam \wav|e|cnt[5] .mask = 16'h3C3F;
defparam \wav|e|cnt[5] .modeMux = 1'b1;
defparam \wav|e|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[5] .ShiftMux = 1'b0;
defparam \wav|e|cnt[5] .BypassEn = 1'b1;
defparam \wav|e|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[6] (
	.A(vcc),
	.B(\wav|e|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[5]~27 ),
	.Qin(\wav|e|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[6]~28_combout ),
	.Cout(\wav|e|cnt[6]~29 ),
	.Q(\wav|e|cnt [6]));
defparam \wav|e|cnt[6] .coord_x = 7;
defparam \wav|e|cnt[6] .coord_y = 7;
defparam \wav|e|cnt[6] .coord_z = 6;
defparam \wav|e|cnt[6] .mask = 16'hC30C;
defparam \wav|e|cnt[6] .modeMux = 1'b1;
defparam \wav|e|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[6] .ShiftMux = 1'b0;
defparam \wav|e|cnt[6] .BypassEn = 1'b1;
defparam \wav|e|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[7] (
	.A(vcc),
	.B(\wav|e|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[6]~29 ),
	.Qin(\wav|e|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[7]~30_combout ),
	.Cout(\wav|e|cnt[7]~31 ),
	.Q(\wav|e|cnt [7]));
defparam \wav|e|cnt[7] .coord_x = 7;
defparam \wav|e|cnt[7] .coord_y = 7;
defparam \wav|e|cnt[7] .coord_z = 7;
defparam \wav|e|cnt[7] .mask = 16'h3C3F;
defparam \wav|e|cnt[7] .modeMux = 1'b1;
defparam \wav|e|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[7] .ShiftMux = 1'b0;
defparam \wav|e|cnt[7] .BypassEn = 1'b1;
defparam \wav|e|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[8] (
	.A(vcc),
	.B(\wav|e|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[7]~31 ),
	.Qin(\wav|e|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[8]~32_combout ),
	.Cout(\wav|e|cnt[8]~33 ),
	.Q(\wav|e|cnt [8]));
defparam \wav|e|cnt[8] .coord_x = 7;
defparam \wav|e|cnt[8] .coord_y = 7;
defparam \wav|e|cnt[8] .coord_z = 8;
defparam \wav|e|cnt[8] .mask = 16'hC30C;
defparam \wav|e|cnt[8] .modeMux = 1'b1;
defparam \wav|e|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[8] .ShiftMux = 1'b0;
defparam \wav|e|cnt[8] .BypassEn = 1'b1;
defparam \wav|e|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|e|cnt[9] (
	.A(vcc),
	.B(\wav|e|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|e|cnt[8]~33 ),
	.Qin(\wav|e|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y7_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y7_SIG ),
	.SyncReset(\wav|e|LessThan0~4_combout__SyncReset_X6_Y7_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y7_GND),
	.LutOut(\wav|e|cnt[9]~34_combout ),
	.Cout(\wav|e|cnt[9]~35 ),
	.Q(\wav|e|cnt [9]));
defparam \wav|e|cnt[9] .coord_x = 7;
defparam \wav|e|cnt[9] .coord_y = 7;
defparam \wav|e|cnt[9] .coord_z = 9;
defparam \wav|e|cnt[9] .mask = 16'h3C3F;
defparam \wav|e|cnt[9] .modeMux = 1'b1;
defparam \wav|e|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|e|cnt[9] .ShiftMux = 1'b0;
defparam \wav|e|cnt[9] .BypassEn = 1'b1;
defparam \wav|e|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|freqclk (
	.A(vcc),
	.B(\wav|mode~q ),
	.C(\wav|clk124gen|clkout~q ),
	.D(\wav|clk166gen|clkout~q ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|freqclk~combout ),
	.Cout(),
	.Q());
defparam \wav|freqclk .coord_x = 6;
defparam \wav|freqclk .coord_y = 8;
defparam \wav|freqclk .coord_z = 10;
defparam \wav|freqclk .mask = 16'hFC30;
defparam \wav|freqclk .modeMux = 1'b0;
defparam \wav|freqclk .FeedbackMux = 1'b0;
defparam \wav|freqclk .ShiftMux = 1'b0;
defparam \wav|freqclk .BypassEn = 1'b0;
defparam \wav|freqclk .CarryEnb = 1'b1;

alta_io_gclk \wav|freqclk~clkctrl (
	.inclk(\wav|freqclk~combout ),
	.outclk(\wav|freqclk~clkctrl_outclk ));
defparam \wav|freqclk~clkctrl .coord_x = 7;
defparam \wav|freqclk~clkctrl .coord_y = 9;
defparam \wav|freqclk~clkctrl .coord_z = 0;

alta_slice \wav|g|LessThan0~0 (
	.A(\wav|g|cnt [8]),
	.B(\wav|g|cnt [9]),
	.C(\wav|g|cnt [10]),
	.D(\wav|g|cnt [11]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|g|LessThan0~0 .coord_x = 1;
defparam \wav|g|LessThan0~0 .coord_y = 8;
defparam \wav|g|LessThan0~0 .coord_z = 2;
defparam \wav|g|LessThan0~0 .mask = 16'h0001;
defparam \wav|g|LessThan0~0 .modeMux = 1'b0;
defparam \wav|g|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|g|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|g|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|g|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|g|LessThan0~1 (
	.A(\wav|g|cnt [12]),
	.B(\wav|g|cnt [13]),
	.C(\wav|g|cnt [14]),
	.D(\wav|g|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|g|LessThan0~1 .coord_x = 1;
defparam \wav|g|LessThan0~1 .coord_y = 8;
defparam \wav|g|LessThan0~1 .coord_z = 4;
defparam \wav|g|LessThan0~1 .mask = 16'h0001;
defparam \wav|g|LessThan0~1 .modeMux = 1'b0;
defparam \wav|g|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|g|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|g|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|g|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|g|LessThan0~3 (
	.A(\wav|g|LessThan0~3_RESYN2_BDD3 ),
	.B(\wav|g|cnt [5]),
	.C(\wav|g|cnt [6]),
	.D(\wav|g|cnt [0]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|g|LessThan0~3 .coord_x = 1;
defparam \wav|g|LessThan0~3 .coord_y = 8;
defparam \wav|g|LessThan0~3 .coord_z = 7;
defparam \wav|g|LessThan0~3 .mask = 16'h030B;
defparam \wav|g|LessThan0~3 .modeMux = 1'b0;
defparam \wav|g|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|g|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|g|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|g|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|g|LessThan0~3_RESYN2 (
	.A(\wav|g|cnt [1]),
	.B(\wav|g|cnt [4]),
	.C(\wav|g|cnt [3]),
	.D(\wav|g|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|LessThan0~3_RESYN2_BDD3 ),
	.Cout(),
	.Q());
defparam \wav|g|LessThan0~3_RESYN2 .coord_x = 1;
defparam \wav|g|LessThan0~3_RESYN2 .coord_y = 8;
defparam \wav|g|LessThan0~3_RESYN2 .coord_z = 6;
defparam \wav|g|LessThan0~3_RESYN2 .mask = 16'h0001;
defparam \wav|g|LessThan0~3_RESYN2 .modeMux = 1'b0;
defparam \wav|g|LessThan0~3_RESYN2 .FeedbackMux = 1'b0;
defparam \wav|g|LessThan0~3_RESYN2 .ShiftMux = 1'b0;
defparam \wav|g|LessThan0~3_RESYN2 .BypassEn = 1'b0;
defparam \wav|g|LessThan0~3_RESYN2 .CarryEnb = 1'b1;

alta_slice \wav|g|LessThan0~4 (
	.A(\wav|g|LessThan0~0_combout ),
	.B(\wav|g|LessThan0~3_combout ),
	.C(\wav|g|LessThan0~1_combout ),
	.D(\wav|g|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|g|LessThan0~4 .coord_x = 1;
defparam \wav|g|LessThan0~4 .coord_y = 8;
defparam \wav|g|LessThan0~4 .coord_z = 3;
defparam \wav|g|LessThan0~4 .mask = 16'h7F5F;
defparam \wav|g|LessThan0~4 .modeMux = 1'b0;
defparam \wav|g|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|g|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|g|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|g|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|g|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|g|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|g|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X7_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y6_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|g|clkout~0_combout ),
	.Cout(),
	.Q(\wav|g|clkout~q ));
defparam \wav|g|clkout .coord_x = 1;
defparam \wav|g|clkout .coord_y = 8;
defparam \wav|g|clkout .coord_z = 1;
defparam \wav|g|clkout .mask = 16'h0FF0;
defparam \wav|g|clkout .modeMux = 1'b0;
defparam \wav|g|clkout .FeedbackMux = 1'b1;
defparam \wav|g|clkout .ShiftMux = 1'b0;
defparam \wav|g|clkout .BypassEn = 1'b0;
defparam \wav|g|clkout .CarryEnb = 1'b1;

alta_slice \wav|g|cnt[0] (
	.A(vcc),
	.B(\wav|g|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|g|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[0]~16_combout ),
	.Cout(\wav|g|cnt[0]~17 ),
	.Q(\wav|g|cnt [0]));
defparam \wav|g|cnt[0] .coord_x = 2;
defparam \wav|g|cnt[0] .coord_y = 8;
defparam \wav|g|cnt[0] .coord_z = 0;
defparam \wav|g|cnt[0] .mask = 16'h33CC;
defparam \wav|g|cnt[0] .modeMux = 1'b0;
defparam \wav|g|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[0] .ShiftMux = 1'b0;
defparam \wav|g|cnt[0] .BypassEn = 1'b1;
defparam \wav|g|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[10] (
	.A(vcc),
	.B(\wav|g|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[9]~35 ),
	.Qin(\wav|g|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[10]~36_combout ),
	.Cout(\wav|g|cnt[10]~37 ),
	.Q(\wav|g|cnt [10]));
defparam \wav|g|cnt[10] .coord_x = 2;
defparam \wav|g|cnt[10] .coord_y = 8;
defparam \wav|g|cnt[10] .coord_z = 10;
defparam \wav|g|cnt[10] .mask = 16'hC30C;
defparam \wav|g|cnt[10] .modeMux = 1'b1;
defparam \wav|g|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[10] .ShiftMux = 1'b0;
defparam \wav|g|cnt[10] .BypassEn = 1'b1;
defparam \wav|g|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[11] (
	.A(vcc),
	.B(\wav|g|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[10]~37 ),
	.Qin(\wav|g|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[11]~38_combout ),
	.Cout(\wav|g|cnt[11]~39 ),
	.Q(\wav|g|cnt [11]));
defparam \wav|g|cnt[11] .coord_x = 2;
defparam \wav|g|cnt[11] .coord_y = 8;
defparam \wav|g|cnt[11] .coord_z = 11;
defparam \wav|g|cnt[11] .mask = 16'h3C3F;
defparam \wav|g|cnt[11] .modeMux = 1'b1;
defparam \wav|g|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[11] .ShiftMux = 1'b0;
defparam \wav|g|cnt[11] .BypassEn = 1'b1;
defparam \wav|g|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[12] (
	.A(vcc),
	.B(\wav|g|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[11]~39 ),
	.Qin(\wav|g|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[12]~40_combout ),
	.Cout(\wav|g|cnt[12]~41 ),
	.Q(\wav|g|cnt [12]));
defparam \wav|g|cnt[12] .coord_x = 2;
defparam \wav|g|cnt[12] .coord_y = 8;
defparam \wav|g|cnt[12] .coord_z = 12;
defparam \wav|g|cnt[12] .mask = 16'hC30C;
defparam \wav|g|cnt[12] .modeMux = 1'b1;
defparam \wav|g|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[12] .ShiftMux = 1'b0;
defparam \wav|g|cnt[12] .BypassEn = 1'b1;
defparam \wav|g|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[13] (
	.A(vcc),
	.B(\wav|g|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[12]~41 ),
	.Qin(\wav|g|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[13]~42_combout ),
	.Cout(\wav|g|cnt[13]~43 ),
	.Q(\wav|g|cnt [13]));
defparam \wav|g|cnt[13] .coord_x = 2;
defparam \wav|g|cnt[13] .coord_y = 8;
defparam \wav|g|cnt[13] .coord_z = 13;
defparam \wav|g|cnt[13] .mask = 16'h3C3F;
defparam \wav|g|cnt[13] .modeMux = 1'b1;
defparam \wav|g|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[13] .ShiftMux = 1'b0;
defparam \wav|g|cnt[13] .BypassEn = 1'b1;
defparam \wav|g|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[14] (
	.A(vcc),
	.B(\wav|g|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[13]~43 ),
	.Qin(\wav|g|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[14]~44_combout ),
	.Cout(\wav|g|cnt[14]~45 ),
	.Q(\wav|g|cnt [14]));
defparam \wav|g|cnt[14] .coord_x = 2;
defparam \wav|g|cnt[14] .coord_y = 8;
defparam \wav|g|cnt[14] .coord_z = 14;
defparam \wav|g|cnt[14] .mask = 16'hC30C;
defparam \wav|g|cnt[14] .modeMux = 1'b1;
defparam \wav|g|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[14] .ShiftMux = 1'b0;
defparam \wav|g|cnt[14] .BypassEn = 1'b1;
defparam \wav|g|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[15] (
	.A(vcc),
	.B(\wav|g|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[14]~45 ),
	.Qin(\wav|g|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|g|cnt [15]));
defparam \wav|g|cnt[15] .coord_x = 2;
defparam \wav|g|cnt[15] .coord_y = 8;
defparam \wav|g|cnt[15] .coord_z = 15;
defparam \wav|g|cnt[15] .mask = 16'h3C3C;
defparam \wav|g|cnt[15] .modeMux = 1'b1;
defparam \wav|g|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[15] .ShiftMux = 1'b0;
defparam \wav|g|cnt[15] .BypassEn = 1'b1;
defparam \wav|g|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|g|cnt[1] (
	.A(vcc),
	.B(\wav|g|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[0]~17 ),
	.Qin(\wav|g|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[1]~18_combout ),
	.Cout(\wav|g|cnt[1]~19 ),
	.Q(\wav|g|cnt [1]));
defparam \wav|g|cnt[1] .coord_x = 2;
defparam \wav|g|cnt[1] .coord_y = 8;
defparam \wav|g|cnt[1] .coord_z = 1;
defparam \wav|g|cnt[1] .mask = 16'h3C3F;
defparam \wav|g|cnt[1] .modeMux = 1'b1;
defparam \wav|g|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[1] .ShiftMux = 1'b0;
defparam \wav|g|cnt[1] .BypassEn = 1'b1;
defparam \wav|g|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[2] (
	.A(vcc),
	.B(\wav|g|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[1]~19 ),
	.Qin(\wav|g|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[2]~20_combout ),
	.Cout(\wav|g|cnt[2]~21 ),
	.Q(\wav|g|cnt [2]));
defparam \wav|g|cnt[2] .coord_x = 2;
defparam \wav|g|cnt[2] .coord_y = 8;
defparam \wav|g|cnt[2] .coord_z = 2;
defparam \wav|g|cnt[2] .mask = 16'hC30C;
defparam \wav|g|cnt[2] .modeMux = 1'b1;
defparam \wav|g|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[2] .ShiftMux = 1'b0;
defparam \wav|g|cnt[2] .BypassEn = 1'b1;
defparam \wav|g|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[3] (
	.A(vcc),
	.B(\wav|g|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[2]~21 ),
	.Qin(\wav|g|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[3]~22_combout ),
	.Cout(\wav|g|cnt[3]~23 ),
	.Q(\wav|g|cnt [3]));
defparam \wav|g|cnt[3] .coord_x = 2;
defparam \wav|g|cnt[3] .coord_y = 8;
defparam \wav|g|cnt[3] .coord_z = 3;
defparam \wav|g|cnt[3] .mask = 16'h3C3F;
defparam \wav|g|cnt[3] .modeMux = 1'b1;
defparam \wav|g|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[3] .ShiftMux = 1'b0;
defparam \wav|g|cnt[3] .BypassEn = 1'b1;
defparam \wav|g|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[4] (
	.A(vcc),
	.B(\wav|g|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[3]~23 ),
	.Qin(\wav|g|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[4]~24_combout ),
	.Cout(\wav|g|cnt[4]~25 ),
	.Q(\wav|g|cnt [4]));
defparam \wav|g|cnt[4] .coord_x = 2;
defparam \wav|g|cnt[4] .coord_y = 8;
defparam \wav|g|cnt[4] .coord_z = 4;
defparam \wav|g|cnt[4] .mask = 16'hC30C;
defparam \wav|g|cnt[4] .modeMux = 1'b1;
defparam \wav|g|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[4] .ShiftMux = 1'b0;
defparam \wav|g|cnt[4] .BypassEn = 1'b1;
defparam \wav|g|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[5] (
	.A(vcc),
	.B(\wav|g|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[4]~25 ),
	.Qin(\wav|g|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[5]~26_combout ),
	.Cout(\wav|g|cnt[5]~27 ),
	.Q(\wav|g|cnt [5]));
defparam \wav|g|cnt[5] .coord_x = 2;
defparam \wav|g|cnt[5] .coord_y = 8;
defparam \wav|g|cnt[5] .coord_z = 5;
defparam \wav|g|cnt[5] .mask = 16'h3C3F;
defparam \wav|g|cnt[5] .modeMux = 1'b1;
defparam \wav|g|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[5] .ShiftMux = 1'b0;
defparam \wav|g|cnt[5] .BypassEn = 1'b1;
defparam \wav|g|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[6] (
	.A(vcc),
	.B(\wav|g|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[5]~27 ),
	.Qin(\wav|g|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[6]~28_combout ),
	.Cout(\wav|g|cnt[6]~29 ),
	.Q(\wav|g|cnt [6]));
defparam \wav|g|cnt[6] .coord_x = 2;
defparam \wav|g|cnt[6] .coord_y = 8;
defparam \wav|g|cnt[6] .coord_z = 6;
defparam \wav|g|cnt[6] .mask = 16'hC30C;
defparam \wav|g|cnt[6] .modeMux = 1'b1;
defparam \wav|g|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[6] .ShiftMux = 1'b0;
defparam \wav|g|cnt[6] .BypassEn = 1'b1;
defparam \wav|g|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[7] (
	.A(vcc),
	.B(\wav|g|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[6]~29 ),
	.Qin(\wav|g|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[7]~30_combout ),
	.Cout(\wav|g|cnt[7]~31 ),
	.Q(\wav|g|cnt [7]));
defparam \wav|g|cnt[7] .coord_x = 2;
defparam \wav|g|cnt[7] .coord_y = 8;
defparam \wav|g|cnt[7] .coord_z = 7;
defparam \wav|g|cnt[7] .mask = 16'h3C3F;
defparam \wav|g|cnt[7] .modeMux = 1'b1;
defparam \wav|g|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[7] .ShiftMux = 1'b0;
defparam \wav|g|cnt[7] .BypassEn = 1'b1;
defparam \wav|g|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[8] (
	.A(vcc),
	.B(\wav|g|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[7]~31 ),
	.Qin(\wav|g|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[8]~32_combout ),
	.Cout(\wav|g|cnt[8]~33 ),
	.Q(\wav|g|cnt [8]));
defparam \wav|g|cnt[8] .coord_x = 2;
defparam \wav|g|cnt[8] .coord_y = 8;
defparam \wav|g|cnt[8] .coord_z = 8;
defparam \wav|g|cnt[8] .mask = 16'hC30C;
defparam \wav|g|cnt[8] .modeMux = 1'b1;
defparam \wav|g|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[8] .ShiftMux = 1'b0;
defparam \wav|g|cnt[8] .BypassEn = 1'b1;
defparam \wav|g|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|g|cnt[9] (
	.A(vcc),
	.B(\wav|g|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|g|cnt[8]~33 ),
	.Qin(\wav|g|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y6_SIG ),
	.SyncReset(\wav|g|LessThan0~4_combout__SyncReset_X6_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y6_GND),
	.LutOut(\wav|g|cnt[9]~34_combout ),
	.Cout(\wav|g|cnt[9]~35 ),
	.Q(\wav|g|cnt [9]));
defparam \wav|g|cnt[9] .coord_x = 2;
defparam \wav|g|cnt[9] .coord_y = 8;
defparam \wav|g|cnt[9] .coord_z = 9;
defparam \wav|g|cnt[9] .mask = 16'h3C3F;
defparam \wav|g|cnt[9] .modeMux = 1'b1;
defparam \wav|g|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|g|cnt[9] .ShiftMux = 1'b0;
defparam \wav|g|cnt[9] .BypassEn = 1'b1;
defparam \wav|g|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|highc|LessThan0~0 (
	.A(\wav|highc|cnt [4]),
	.B(\wav|highc|cnt [6]),
	.C(\wav|highc|cnt [3]),
	.D(\wav|highc|cnt [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|highc|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|highc|LessThan0~0 .coord_x = 1;
defparam \wav|highc|LessThan0~0 .coord_y = 6;
defparam \wav|highc|LessThan0~0 .coord_z = 2;
defparam \wav|highc|LessThan0~0 .mask = 16'h7FFF;
defparam \wav|highc|LessThan0~0 .modeMux = 1'b0;
defparam \wav|highc|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|highc|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|highc|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|highc|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|highc|LessThan0~1 (
	.A(\wav|highc|cnt [9]),
	.B(\wav|highc|cnt [10]),
	.C(\wav|highc|cnt [8]),
	.D(\wav|highc|cnt [7]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|highc|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|highc|LessThan0~1 .coord_x = 1;
defparam \wav|highc|LessThan0~1 .coord_y = 6;
defparam \wav|highc|LessThan0~1 .coord_z = 1;
defparam \wav|highc|LessThan0~1 .mask = 16'h0001;
defparam \wav|highc|LessThan0~1 .modeMux = 1'b0;
defparam \wav|highc|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|highc|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|highc|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|highc|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|highc|LessThan0~2 (
	.A(\wav|highc|cnt [12]),
	.B(\wav|highc|cnt [13]),
	.C(\wav|highc|cnt [14]),
	.D(\wav|highc|cnt [11]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|highc|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|highc|LessThan0~2 .coord_x = 1;
defparam \wav|highc|LessThan0~2 .coord_y = 6;
defparam \wav|highc|LessThan0~2 .coord_z = 11;
defparam \wav|highc|LessThan0~2 .mask = 16'h0001;
defparam \wav|highc|LessThan0~2 .modeMux = 1'b0;
defparam \wav|highc|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|highc|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|highc|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|highc|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|highc|LessThan0~3 (
	.A(\wav|highc|LessThan0~0_combout ),
	.B(\wav|highc|LessThan0~1_combout ),
	.C(\wav|highc|LessThan0~2_combout ),
	.D(\wav|highc|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|highc|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|highc|LessThan0~3 .coord_x = 1;
defparam \wav|highc|LessThan0~3 .coord_y = 6;
defparam \wav|highc|LessThan0~3 .coord_z = 3;
defparam \wav|highc|LessThan0~3 .mask = 16'hFF7F;
defparam \wav|highc|LessThan0~3 .modeMux = 1'b0;
defparam \wav|highc|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|highc|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|highc|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|highc|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|highc|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|highc|LessThan0~3_combout ),
	.Cin(),
	.Qin(\wav|highc|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X12_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X12_Y5_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|highc|clkout~0_combout ),
	.Cout(),
	.Q(\wav|highc|clkout~q ));
defparam \wav|highc|clkout .coord_x = 1;
defparam \wav|highc|clkout .coord_y = 6;
defparam \wav|highc|clkout .coord_z = 4;
defparam \wav|highc|clkout .mask = 16'h0FF0;
defparam \wav|highc|clkout .modeMux = 1'b0;
defparam \wav|highc|clkout .FeedbackMux = 1'b1;
defparam \wav|highc|clkout .ShiftMux = 1'b0;
defparam \wav|highc|clkout .BypassEn = 1'b0;
defparam \wav|highc|clkout .CarryEnb = 1'b1;

alta_slice \wav|highc|cnt[0] (
	.A(vcc),
	.B(\wav|highc|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|highc|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[0]~16_combout ),
	.Cout(\wav|highc|cnt[0]~17 ),
	.Q(\wav|highc|cnt [0]));
defparam \wav|highc|cnt[0] .coord_x = 2;
defparam \wav|highc|cnt[0] .coord_y = 6;
defparam \wav|highc|cnt[0] .coord_z = 0;
defparam \wav|highc|cnt[0] .mask = 16'h33CC;
defparam \wav|highc|cnt[0] .modeMux = 1'b0;
defparam \wav|highc|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[0] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[0] .BypassEn = 1'b1;
defparam \wav|highc|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[10] (
	.A(vcc),
	.B(\wav|highc|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[9]~35 ),
	.Qin(\wav|highc|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[10]~36_combout ),
	.Cout(\wav|highc|cnt[10]~37 ),
	.Q(\wav|highc|cnt [10]));
defparam \wav|highc|cnt[10] .coord_x = 2;
defparam \wav|highc|cnt[10] .coord_y = 6;
defparam \wav|highc|cnt[10] .coord_z = 10;
defparam \wav|highc|cnt[10] .mask = 16'hC30C;
defparam \wav|highc|cnt[10] .modeMux = 1'b1;
defparam \wav|highc|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[10] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[10] .BypassEn = 1'b1;
defparam \wav|highc|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[11] (
	.A(vcc),
	.B(\wav|highc|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[10]~37 ),
	.Qin(\wav|highc|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[11]~38_combout ),
	.Cout(\wav|highc|cnt[11]~39 ),
	.Q(\wav|highc|cnt [11]));
defparam \wav|highc|cnt[11] .coord_x = 2;
defparam \wav|highc|cnt[11] .coord_y = 6;
defparam \wav|highc|cnt[11] .coord_z = 11;
defparam \wav|highc|cnt[11] .mask = 16'h3C3F;
defparam \wav|highc|cnt[11] .modeMux = 1'b1;
defparam \wav|highc|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[11] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[11] .BypassEn = 1'b1;
defparam \wav|highc|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[12] (
	.A(vcc),
	.B(\wav|highc|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[11]~39 ),
	.Qin(\wav|highc|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[12]~40_combout ),
	.Cout(\wav|highc|cnt[12]~41 ),
	.Q(\wav|highc|cnt [12]));
defparam \wav|highc|cnt[12] .coord_x = 2;
defparam \wav|highc|cnt[12] .coord_y = 6;
defparam \wav|highc|cnt[12] .coord_z = 12;
defparam \wav|highc|cnt[12] .mask = 16'hC30C;
defparam \wav|highc|cnt[12] .modeMux = 1'b1;
defparam \wav|highc|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[12] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[12] .BypassEn = 1'b1;
defparam \wav|highc|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[13] (
	.A(vcc),
	.B(\wav|highc|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[12]~41 ),
	.Qin(\wav|highc|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[13]~42_combout ),
	.Cout(\wav|highc|cnt[13]~43 ),
	.Q(\wav|highc|cnt [13]));
defparam \wav|highc|cnt[13] .coord_x = 2;
defparam \wav|highc|cnt[13] .coord_y = 6;
defparam \wav|highc|cnt[13] .coord_z = 13;
defparam \wav|highc|cnt[13] .mask = 16'h3C3F;
defparam \wav|highc|cnt[13] .modeMux = 1'b1;
defparam \wav|highc|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[13] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[13] .BypassEn = 1'b1;
defparam \wav|highc|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[14] (
	.A(vcc),
	.B(\wav|highc|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[13]~43 ),
	.Qin(\wav|highc|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[14]~44_combout ),
	.Cout(\wav|highc|cnt[14]~45 ),
	.Q(\wav|highc|cnt [14]));
defparam \wav|highc|cnt[14] .coord_x = 2;
defparam \wav|highc|cnt[14] .coord_y = 6;
defparam \wav|highc|cnt[14] .coord_z = 14;
defparam \wav|highc|cnt[14] .mask = 16'hC30C;
defparam \wav|highc|cnt[14] .modeMux = 1'b1;
defparam \wav|highc|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[14] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[14] .BypassEn = 1'b1;
defparam \wav|highc|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[15] (
	.A(vcc),
	.B(\wav|highc|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[14]~45 ),
	.Qin(\wav|highc|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|highc|cnt [15]));
defparam \wav|highc|cnt[15] .coord_x = 2;
defparam \wav|highc|cnt[15] .coord_y = 6;
defparam \wav|highc|cnt[15] .coord_z = 15;
defparam \wav|highc|cnt[15] .mask = 16'h3C3C;
defparam \wav|highc|cnt[15] .modeMux = 1'b1;
defparam \wav|highc|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[15] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[15] .BypassEn = 1'b1;
defparam \wav|highc|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|highc|cnt[1] (
	.A(vcc),
	.B(\wav|highc|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[0]~17 ),
	.Qin(\wav|highc|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[1]~18_combout ),
	.Cout(\wav|highc|cnt[1]~19 ),
	.Q(\wav|highc|cnt [1]));
defparam \wav|highc|cnt[1] .coord_x = 2;
defparam \wav|highc|cnt[1] .coord_y = 6;
defparam \wav|highc|cnt[1] .coord_z = 1;
defparam \wav|highc|cnt[1] .mask = 16'h3C3F;
defparam \wav|highc|cnt[1] .modeMux = 1'b1;
defparam \wav|highc|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[1] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[1] .BypassEn = 1'b1;
defparam \wav|highc|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[2] (
	.A(vcc),
	.B(\wav|highc|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[1]~19 ),
	.Qin(\wav|highc|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[2]~20_combout ),
	.Cout(\wav|highc|cnt[2]~21 ),
	.Q(\wav|highc|cnt [2]));
defparam \wav|highc|cnt[2] .coord_x = 2;
defparam \wav|highc|cnt[2] .coord_y = 6;
defparam \wav|highc|cnt[2] .coord_z = 2;
defparam \wav|highc|cnt[2] .mask = 16'hC30C;
defparam \wav|highc|cnt[2] .modeMux = 1'b1;
defparam \wav|highc|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[2] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[2] .BypassEn = 1'b1;
defparam \wav|highc|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[3] (
	.A(vcc),
	.B(\wav|highc|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[2]~21 ),
	.Qin(\wav|highc|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[3]~22_combout ),
	.Cout(\wav|highc|cnt[3]~23 ),
	.Q(\wav|highc|cnt [3]));
defparam \wav|highc|cnt[3] .coord_x = 2;
defparam \wav|highc|cnt[3] .coord_y = 6;
defparam \wav|highc|cnt[3] .coord_z = 3;
defparam \wav|highc|cnt[3] .mask = 16'h3C3F;
defparam \wav|highc|cnt[3] .modeMux = 1'b1;
defparam \wav|highc|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[3] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[3] .BypassEn = 1'b1;
defparam \wav|highc|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[4] (
	.A(vcc),
	.B(\wav|highc|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[3]~23 ),
	.Qin(\wav|highc|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[4]~24_combout ),
	.Cout(\wav|highc|cnt[4]~25 ),
	.Q(\wav|highc|cnt [4]));
defparam \wav|highc|cnt[4] .coord_x = 2;
defparam \wav|highc|cnt[4] .coord_y = 6;
defparam \wav|highc|cnt[4] .coord_z = 4;
defparam \wav|highc|cnt[4] .mask = 16'hC30C;
defparam \wav|highc|cnt[4] .modeMux = 1'b1;
defparam \wav|highc|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[4] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[4] .BypassEn = 1'b1;
defparam \wav|highc|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[5] (
	.A(vcc),
	.B(\wav|highc|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[4]~25 ),
	.Qin(\wav|highc|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[5]~26_combout ),
	.Cout(\wav|highc|cnt[5]~27 ),
	.Q(\wav|highc|cnt [5]));
defparam \wav|highc|cnt[5] .coord_x = 2;
defparam \wav|highc|cnt[5] .coord_y = 6;
defparam \wav|highc|cnt[5] .coord_z = 5;
defparam \wav|highc|cnt[5] .mask = 16'h3C3F;
defparam \wav|highc|cnt[5] .modeMux = 1'b1;
defparam \wav|highc|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[5] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[5] .BypassEn = 1'b1;
defparam \wav|highc|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[6] (
	.A(vcc),
	.B(\wav|highc|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[5]~27 ),
	.Qin(\wav|highc|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[6]~28_combout ),
	.Cout(\wav|highc|cnt[6]~29 ),
	.Q(\wav|highc|cnt [6]));
defparam \wav|highc|cnt[6] .coord_x = 2;
defparam \wav|highc|cnt[6] .coord_y = 6;
defparam \wav|highc|cnt[6] .coord_z = 6;
defparam \wav|highc|cnt[6] .mask = 16'hC30C;
defparam \wav|highc|cnt[6] .modeMux = 1'b1;
defparam \wav|highc|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[6] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[6] .BypassEn = 1'b1;
defparam \wav|highc|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[7] (
	.A(vcc),
	.B(\wav|highc|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[6]~29 ),
	.Qin(\wav|highc|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[7]~30_combout ),
	.Cout(\wav|highc|cnt[7]~31 ),
	.Q(\wav|highc|cnt [7]));
defparam \wav|highc|cnt[7] .coord_x = 2;
defparam \wav|highc|cnt[7] .coord_y = 6;
defparam \wav|highc|cnt[7] .coord_z = 7;
defparam \wav|highc|cnt[7] .mask = 16'h3C3F;
defparam \wav|highc|cnt[7] .modeMux = 1'b1;
defparam \wav|highc|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[7] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[7] .BypassEn = 1'b1;
defparam \wav|highc|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[8] (
	.A(vcc),
	.B(\wav|highc|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[7]~31 ),
	.Qin(\wav|highc|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[8]~32_combout ),
	.Cout(\wav|highc|cnt[8]~33 ),
	.Q(\wav|highc|cnt [8]));
defparam \wav|highc|cnt[8] .coord_x = 2;
defparam \wav|highc|cnt[8] .coord_y = 6;
defparam \wav|highc|cnt[8] .coord_z = 8;
defparam \wav|highc|cnt[8] .mask = 16'hC30C;
defparam \wav|highc|cnt[8] .modeMux = 1'b1;
defparam \wav|highc|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[8] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[8] .BypassEn = 1'b1;
defparam \wav|highc|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|highc|cnt[9] (
	.A(vcc),
	.B(\wav|highc|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|highc|cnt[8]~33 ),
	.Qin(\wav|highc|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X13_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X13_Y5_SIG ),
	.SyncReset(\wav|highc|LessThan0~3_combout__SyncReset_X13_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X13_Y5_GND),
	.LutOut(\wav|highc|cnt[9]~34_combout ),
	.Cout(\wav|highc|cnt[9]~35 ),
	.Q(\wav|highc|cnt [9]));
defparam \wav|highc|cnt[9] .coord_x = 2;
defparam \wav|highc|cnt[9] .coord_y = 6;
defparam \wav|highc|cnt[9] .coord_z = 9;
defparam \wav|highc|cnt[9] .mask = 16'h3C3F;
defparam \wav|highc|cnt[9] .modeMux = 1'b1;
defparam \wav|highc|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|highc|cnt[9] .ShiftMux = 1'b0;
defparam \wav|highc|cnt[9] .BypassEn = 1'b1;
defparam \wav|highc|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|lowa|LessThan0~0 (
	.A(vcc),
	.B(\wav|lowa|cnt [6]),
	.C(\wav|lowa|cnt [7]),
	.D(\wav|lowa|cnt [5]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~0 .coord_x = 1;
defparam \wav|lowa|LessThan0~0 .coord_y = 5;
defparam \wav|lowa|LessThan0~0 .coord_z = 11;
defparam \wav|lowa|LessThan0~0 .mask = 16'h0003;
defparam \wav|lowa|LessThan0~0 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|lowa|LessThan0~1 (
	.A(\wav|lowa|cnt [0]),
	.B(\wav|lowa|cnt [1]),
	.C(\wav|lowa|cnt [2]),
	.D(\wav|lowa|cnt [3]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~1 .coord_x = 1;
defparam \wav|lowa|LessThan0~1 .coord_y = 5;
defparam \wav|lowa|LessThan0~1 .coord_z = 4;
defparam \wav|lowa|LessThan0~1 .mask = 16'h7FFF;
defparam \wav|lowa|LessThan0~1 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|lowa|LessThan0~2 (
	.A(\wav|lowa|LessThan0~1_combout ),
	.B(\wav|lowa|LessThan0~0_combout ),
	.C(\wav|lowa|cnt [4]),
	.D(\wav|lowa|cnt [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~2 .coord_x = 1;
defparam \wav|lowa|LessThan0~2 .coord_y = 5;
defparam \wav|lowa|LessThan0~2 .coord_z = 9;
defparam \wav|lowa|LessThan0~2 .mask = 16'h8CFF;
defparam \wav|lowa|LessThan0~2 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|lowa|LessThan0~3 (
	.A(\wav|lowa|cnt [11]),
	.B(\wav|lowa|cnt [12]),
	.C(\wav|lowa|cnt [9]),
	.D(\wav|lowa|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~3 .coord_x = 1;
defparam \wav|lowa|LessThan0~3 .coord_y = 5;
defparam \wav|lowa|LessThan0~3 .coord_z = 10;
defparam \wav|lowa|LessThan0~3 .mask = 16'h0001;
defparam \wav|lowa|LessThan0~3 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|lowa|LessThan0~4 (
	.A(vcc),
	.B(\wav|lowa|cnt [14]),
	.C(\wav|lowa|cnt [13]),
	.D(\wav|lowa|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~4 .coord_x = 1;
defparam \wav|lowa|LessThan0~4 .coord_y = 5;
defparam \wav|lowa|LessThan0~4 .coord_z = 5;
defparam \wav|lowa|LessThan0~4 .mask = 16'h0003;
defparam \wav|lowa|LessThan0~4 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|lowa|LessThan0~5 (
	.A(vcc),
	.B(\wav|lowa|LessThan0~2_combout ),
	.C(\wav|lowa|LessThan0~3_combout ),
	.D(\wav|lowa|LessThan0~4_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|LessThan0~5_combout ),
	.Cout(),
	.Q());
defparam \wav|lowa|LessThan0~5 .coord_x = 1;
defparam \wav|lowa|LessThan0~5 .coord_y = 5;
defparam \wav|lowa|LessThan0~5 .coord_z = 3;
defparam \wav|lowa|LessThan0~5 .mask = 16'h3FFF;
defparam \wav|lowa|LessThan0~5 .modeMux = 1'b0;
defparam \wav|lowa|LessThan0~5 .FeedbackMux = 1'b0;
defparam \wav|lowa|LessThan0~5 .ShiftMux = 1'b0;
defparam \wav|lowa|LessThan0~5 .BypassEn = 1'b0;
defparam \wav|lowa|LessThan0~5 .CarryEnb = 1'b1;

alta_slice \wav|lowa|clkout (
	.A(\wav|lowa|LessThan0~3_combout ),
	.B(\wav|lowa|LessThan0~2_combout ),
	.C(vcc),
	.D(\wav|lowa|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|lowa|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X8_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X8_Y6_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowa|clkout~0_combout ),
	.Cout(),
	.Q(\wav|lowa|clkout~q ));
defparam \wav|lowa|clkout .coord_x = 1;
defparam \wav|lowa|clkout .coord_y = 5;
defparam \wav|lowa|clkout .coord_z = 8;
defparam \wav|lowa|clkout .mask = 16'h870F;
defparam \wav|lowa|clkout .modeMux = 1'b0;
defparam \wav|lowa|clkout .FeedbackMux = 1'b1;
defparam \wav|lowa|clkout .ShiftMux = 1'b0;
defparam \wav|lowa|clkout .BypassEn = 1'b0;
defparam \wav|lowa|clkout .CarryEnb = 1'b1;

alta_slice \wav|lowa|cnt[0] (
	.A(vcc),
	.B(\wav|lowa|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|lowa|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[0]~16_combout ),
	.Cout(\wav|lowa|cnt[0]~17 ),
	.Q(\wav|lowa|cnt [0]));
defparam \wav|lowa|cnt[0] .coord_x = 0;
defparam \wav|lowa|cnt[0] .coord_y = 5;
defparam \wav|lowa|cnt[0] .coord_z = 0;
defparam \wav|lowa|cnt[0] .mask = 16'h33CC;
defparam \wav|lowa|cnt[0] .modeMux = 1'b0;
defparam \wav|lowa|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[0] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[0] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[10] (
	.A(vcc),
	.B(\wav|lowa|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[9]~35 ),
	.Qin(\wav|lowa|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[10]~36_combout ),
	.Cout(\wav|lowa|cnt[10]~37 ),
	.Q(\wav|lowa|cnt [10]));
defparam \wav|lowa|cnt[10] .coord_x = 0;
defparam \wav|lowa|cnt[10] .coord_y = 5;
defparam \wav|lowa|cnt[10] .coord_z = 10;
defparam \wav|lowa|cnt[10] .mask = 16'hC30C;
defparam \wav|lowa|cnt[10] .modeMux = 1'b1;
defparam \wav|lowa|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[10] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[10] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[11] (
	.A(vcc),
	.B(\wav|lowa|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[10]~37 ),
	.Qin(\wav|lowa|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[11]~38_combout ),
	.Cout(\wav|lowa|cnt[11]~39 ),
	.Q(\wav|lowa|cnt [11]));
defparam \wav|lowa|cnt[11] .coord_x = 0;
defparam \wav|lowa|cnt[11] .coord_y = 5;
defparam \wav|lowa|cnt[11] .coord_z = 11;
defparam \wav|lowa|cnt[11] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[11] .modeMux = 1'b1;
defparam \wav|lowa|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[11] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[11] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[12] (
	.A(vcc),
	.B(\wav|lowa|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[11]~39 ),
	.Qin(\wav|lowa|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[12]~40_combout ),
	.Cout(\wav|lowa|cnt[12]~41 ),
	.Q(\wav|lowa|cnt [12]));
defparam \wav|lowa|cnt[12] .coord_x = 0;
defparam \wav|lowa|cnt[12] .coord_y = 5;
defparam \wav|lowa|cnt[12] .coord_z = 12;
defparam \wav|lowa|cnt[12] .mask = 16'hC30C;
defparam \wav|lowa|cnt[12] .modeMux = 1'b1;
defparam \wav|lowa|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[12] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[12] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[13] (
	.A(vcc),
	.B(\wav|lowa|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[12]~41 ),
	.Qin(\wav|lowa|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[13]~42_combout ),
	.Cout(\wav|lowa|cnt[13]~43 ),
	.Q(\wav|lowa|cnt [13]));
defparam \wav|lowa|cnt[13] .coord_x = 0;
defparam \wav|lowa|cnt[13] .coord_y = 5;
defparam \wav|lowa|cnt[13] .coord_z = 13;
defparam \wav|lowa|cnt[13] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[13] .modeMux = 1'b1;
defparam \wav|lowa|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[13] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[13] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[14] (
	.A(vcc),
	.B(\wav|lowa|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[13]~43 ),
	.Qin(\wav|lowa|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[14]~44_combout ),
	.Cout(\wav|lowa|cnt[14]~45 ),
	.Q(\wav|lowa|cnt [14]));
defparam \wav|lowa|cnt[14] .coord_x = 0;
defparam \wav|lowa|cnt[14] .coord_y = 5;
defparam \wav|lowa|cnt[14] .coord_z = 14;
defparam \wav|lowa|cnt[14] .mask = 16'hC30C;
defparam \wav|lowa|cnt[14] .modeMux = 1'b1;
defparam \wav|lowa|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[14] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[14] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[15] (
	.A(vcc),
	.B(\wav|lowa|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[14]~45 ),
	.Qin(\wav|lowa|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|lowa|cnt [15]));
defparam \wav|lowa|cnt[15] .coord_x = 0;
defparam \wav|lowa|cnt[15] .coord_y = 5;
defparam \wav|lowa|cnt[15] .coord_z = 15;
defparam \wav|lowa|cnt[15] .mask = 16'h3C3C;
defparam \wav|lowa|cnt[15] .modeMux = 1'b1;
defparam \wav|lowa|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[15] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[15] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|lowa|cnt[1] (
	.A(vcc),
	.B(\wav|lowa|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[0]~17 ),
	.Qin(\wav|lowa|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[1]~18_combout ),
	.Cout(\wav|lowa|cnt[1]~19 ),
	.Q(\wav|lowa|cnt [1]));
defparam \wav|lowa|cnt[1] .coord_x = 0;
defparam \wav|lowa|cnt[1] .coord_y = 5;
defparam \wav|lowa|cnt[1] .coord_z = 1;
defparam \wav|lowa|cnt[1] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[1] .modeMux = 1'b1;
defparam \wav|lowa|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[1] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[1] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[2] (
	.A(vcc),
	.B(\wav|lowa|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[1]~19 ),
	.Qin(\wav|lowa|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[2]~20_combout ),
	.Cout(\wav|lowa|cnt[2]~21 ),
	.Q(\wav|lowa|cnt [2]));
defparam \wav|lowa|cnt[2] .coord_x = 0;
defparam \wav|lowa|cnt[2] .coord_y = 5;
defparam \wav|lowa|cnt[2] .coord_z = 2;
defparam \wav|lowa|cnt[2] .mask = 16'hC30C;
defparam \wav|lowa|cnt[2] .modeMux = 1'b1;
defparam \wav|lowa|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[2] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[2] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[3] (
	.A(vcc),
	.B(\wav|lowa|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[2]~21 ),
	.Qin(\wav|lowa|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[3]~22_combout ),
	.Cout(\wav|lowa|cnt[3]~23 ),
	.Q(\wav|lowa|cnt [3]));
defparam \wav|lowa|cnt[3] .coord_x = 0;
defparam \wav|lowa|cnt[3] .coord_y = 5;
defparam \wav|lowa|cnt[3] .coord_z = 3;
defparam \wav|lowa|cnt[3] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[3] .modeMux = 1'b1;
defparam \wav|lowa|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[3] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[3] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[4] (
	.A(vcc),
	.B(\wav|lowa|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[3]~23 ),
	.Qin(\wav|lowa|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[4]~24_combout ),
	.Cout(\wav|lowa|cnt[4]~25 ),
	.Q(\wav|lowa|cnt [4]));
defparam \wav|lowa|cnt[4] .coord_x = 0;
defparam \wav|lowa|cnt[4] .coord_y = 5;
defparam \wav|lowa|cnt[4] .coord_z = 4;
defparam \wav|lowa|cnt[4] .mask = 16'hC30C;
defparam \wav|lowa|cnt[4] .modeMux = 1'b1;
defparam \wav|lowa|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[4] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[4] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[5] (
	.A(vcc),
	.B(\wav|lowa|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[4]~25 ),
	.Qin(\wav|lowa|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[5]~26_combout ),
	.Cout(\wav|lowa|cnt[5]~27 ),
	.Q(\wav|lowa|cnt [5]));
defparam \wav|lowa|cnt[5] .coord_x = 0;
defparam \wav|lowa|cnt[5] .coord_y = 5;
defparam \wav|lowa|cnt[5] .coord_z = 5;
defparam \wav|lowa|cnt[5] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[5] .modeMux = 1'b1;
defparam \wav|lowa|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[5] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[5] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[6] (
	.A(vcc),
	.B(\wav|lowa|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[5]~27 ),
	.Qin(\wav|lowa|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[6]~28_combout ),
	.Cout(\wav|lowa|cnt[6]~29 ),
	.Q(\wav|lowa|cnt [6]));
defparam \wav|lowa|cnt[6] .coord_x = 0;
defparam \wav|lowa|cnt[6] .coord_y = 5;
defparam \wav|lowa|cnt[6] .coord_z = 6;
defparam \wav|lowa|cnt[6] .mask = 16'hC30C;
defparam \wav|lowa|cnt[6] .modeMux = 1'b1;
defparam \wav|lowa|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[6] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[6] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[7] (
	.A(vcc),
	.B(\wav|lowa|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[6]~29 ),
	.Qin(\wav|lowa|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[7]~30_combout ),
	.Cout(\wav|lowa|cnt[7]~31 ),
	.Q(\wav|lowa|cnt [7]));
defparam \wav|lowa|cnt[7] .coord_x = 0;
defparam \wav|lowa|cnt[7] .coord_y = 5;
defparam \wav|lowa|cnt[7] .coord_z = 7;
defparam \wav|lowa|cnt[7] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[7] .modeMux = 1'b1;
defparam \wav|lowa|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[7] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[7] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[8] (
	.A(vcc),
	.B(\wav|lowa|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[7]~31 ),
	.Qin(\wav|lowa|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[8]~32_combout ),
	.Cout(\wav|lowa|cnt[8]~33 ),
	.Q(\wav|lowa|cnt [8]));
defparam \wav|lowa|cnt[8] .coord_x = 0;
defparam \wav|lowa|cnt[8] .coord_y = 5;
defparam \wav|lowa|cnt[8] .coord_z = 8;
defparam \wav|lowa|cnt[8] .mask = 16'hC30C;
defparam \wav|lowa|cnt[8] .modeMux = 1'b1;
defparam \wav|lowa|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[8] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[8] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|lowa|cnt[9] (
	.A(vcc),
	.B(\wav|lowa|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowa|cnt[8]~33 ),
	.Qin(\wav|lowa|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X9_Y6_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X9_Y6_SIG ),
	.SyncReset(\wav|lowa|LessThan0~5_combout__SyncReset_X9_Y6_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X9_Y6_GND),
	.LutOut(\wav|lowa|cnt[9]~34_combout ),
	.Cout(\wav|lowa|cnt[9]~35 ),
	.Q(\wav|lowa|cnt [9]));
defparam \wav|lowa|cnt[9] .coord_x = 0;
defparam \wav|lowa|cnt[9] .coord_y = 5;
defparam \wav|lowa|cnt[9] .coord_z = 9;
defparam \wav|lowa|cnt[9] .mask = 16'h3C3F;
defparam \wav|lowa|cnt[9] .modeMux = 1'b1;
defparam \wav|lowa|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|lowa|cnt[9] .ShiftMux = 1'b0;
defparam \wav|lowa|cnt[9] .BypassEn = 1'b1;
defparam \wav|lowa|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|lowb|LessThan0~0 (
	.A(\wav|lowb|cnt [9]),
	.B(\wav|lowb|cnt [8]),
	.C(\wav|lowb|cnt [11]),
	.D(\wav|lowb|cnt [10]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|LessThan0~0_combout ),
	.Cout(),
	.Q());
defparam \wav|lowb|LessThan0~0 .coord_x = 4;
defparam \wav|lowb|LessThan0~0 .coord_y = 6;
defparam \wav|lowb|LessThan0~0 .coord_z = 4;
defparam \wav|lowb|LessThan0~0 .mask = 16'h0001;
defparam \wav|lowb|LessThan0~0 .modeMux = 1'b0;
defparam \wav|lowb|LessThan0~0 .FeedbackMux = 1'b0;
defparam \wav|lowb|LessThan0~0 .ShiftMux = 1'b0;
defparam \wav|lowb|LessThan0~0 .BypassEn = 1'b0;
defparam \wav|lowb|LessThan0~0 .CarryEnb = 1'b1;

alta_slice \wav|lowb|LessThan0~1 (
	.A(\wav|lowb|cnt [13]),
	.B(\wav|lowb|cnt [12]),
	.C(\wav|lowb|cnt [14]),
	.D(\wav|lowb|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|lowb|LessThan0~1 .coord_x = 4;
defparam \wav|lowb|LessThan0~1 .coord_y = 6;
defparam \wav|lowb|LessThan0~1 .coord_z = 5;
defparam \wav|lowb|LessThan0~1 .mask = 16'h0001;
defparam \wav|lowb|LessThan0~1 .modeMux = 1'b0;
defparam \wav|lowb|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|lowb|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|lowb|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|lowb|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|lowb|LessThan0~2 (
	.A(\wav|lowb|cnt [1]),
	.B(\wav|lowb|cnt [0]),
	.C(\wav|lowb|cnt [3]),
	.D(\wav|lowb|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|lowb|LessThan0~2 .coord_x = 4;
defparam \wav|lowb|LessThan0~2 .coord_y = 6;
defparam \wav|lowb|LessThan0~2 .coord_z = 14;
defparam \wav|lowb|LessThan0~2 .mask = 16'h7FFF;
defparam \wav|lowb|LessThan0~2 .modeMux = 1'b0;
defparam \wav|lowb|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|lowb|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|lowb|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|lowb|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|lowb|LessThan0~3 (
	.A(\wav|lowb|cnt [4]),
	.B(\wav|lowb|cnt [5]),
	.C(\wav|lowb|cnt [7]),
	.D(\wav|lowb|cnt [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|lowb|LessThan0~3 .coord_x = 4;
defparam \wav|lowb|LessThan0~3 .coord_y = 6;
defparam \wav|lowb|LessThan0~3 .coord_z = 2;
defparam \wav|lowb|LessThan0~3 .mask = 16'h7FFF;
defparam \wav|lowb|LessThan0~3 .modeMux = 1'b0;
defparam \wav|lowb|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|lowb|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|lowb|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|lowb|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|lowb|LessThan0~4 (
	.A(\wav|lowb|LessThan0~2_combout ),
	.B(\wav|lowb|LessThan0~1_combout ),
	.C(\wav|lowb|LessThan0~0_combout ),
	.D(\wav|lowb|LessThan0~3_combout ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|lowb|LessThan0~4 .coord_x = 4;
defparam \wav|lowb|LessThan0~4 .coord_y = 6;
defparam \wav|lowb|LessThan0~4 .coord_z = 3;
defparam \wav|lowb|LessThan0~4 .mask = 16'h3F7F;
defparam \wav|lowb|LessThan0~4 .modeMux = 1'b0;
defparam \wav|lowb|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|lowb|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|lowb|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|lowb|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|lowb|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|lowb|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|lowb|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X3_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X3_Y5_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowb|clkout~0_combout ),
	.Cout(),
	.Q(\wav|lowb|clkout~q ));
defparam \wav|lowb|clkout .coord_x = 4;
defparam \wav|lowb|clkout .coord_y = 6;
defparam \wav|lowb|clkout .coord_z = 6;
defparam \wav|lowb|clkout .mask = 16'h0FF0;
defparam \wav|lowb|clkout .modeMux = 1'b0;
defparam \wav|lowb|clkout .FeedbackMux = 1'b1;
defparam \wav|lowb|clkout .ShiftMux = 1'b0;
defparam \wav|lowb|clkout .BypassEn = 1'b0;
defparam \wav|lowb|clkout .CarryEnb = 1'b1;

alta_slice \wav|lowb|cnt[0] (
	.A(vcc),
	.B(\wav|lowb|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|lowb|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[0]~16_combout ),
	.Cout(\wav|lowb|cnt[0]~17 ),
	.Q(\wav|lowb|cnt [0]));
defparam \wav|lowb|cnt[0] .coord_x = 5;
defparam \wav|lowb|cnt[0] .coord_y = 6;
defparam \wav|lowb|cnt[0] .coord_z = 0;
defparam \wav|lowb|cnt[0] .mask = 16'h33CC;
defparam \wav|lowb|cnt[0] .modeMux = 1'b0;
defparam \wav|lowb|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[0] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[0] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[10] (
	.A(vcc),
	.B(\wav|lowb|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[9]~35 ),
	.Qin(\wav|lowb|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[10]~36_combout ),
	.Cout(\wav|lowb|cnt[10]~37 ),
	.Q(\wav|lowb|cnt [10]));
defparam \wav|lowb|cnt[10] .coord_x = 5;
defparam \wav|lowb|cnt[10] .coord_y = 6;
defparam \wav|lowb|cnt[10] .coord_z = 10;
defparam \wav|lowb|cnt[10] .mask = 16'hC30C;
defparam \wav|lowb|cnt[10] .modeMux = 1'b1;
defparam \wav|lowb|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[10] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[10] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[11] (
	.A(vcc),
	.B(\wav|lowb|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[10]~37 ),
	.Qin(\wav|lowb|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[11]~38_combout ),
	.Cout(\wav|lowb|cnt[11]~39 ),
	.Q(\wav|lowb|cnt [11]));
defparam \wav|lowb|cnt[11] .coord_x = 5;
defparam \wav|lowb|cnt[11] .coord_y = 6;
defparam \wav|lowb|cnt[11] .coord_z = 11;
defparam \wav|lowb|cnt[11] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[11] .modeMux = 1'b1;
defparam \wav|lowb|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[11] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[11] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[12] (
	.A(vcc),
	.B(\wav|lowb|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[11]~39 ),
	.Qin(\wav|lowb|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[12]~40_combout ),
	.Cout(\wav|lowb|cnt[12]~41 ),
	.Q(\wav|lowb|cnt [12]));
defparam \wav|lowb|cnt[12] .coord_x = 5;
defparam \wav|lowb|cnt[12] .coord_y = 6;
defparam \wav|lowb|cnt[12] .coord_z = 12;
defparam \wav|lowb|cnt[12] .mask = 16'hC30C;
defparam \wav|lowb|cnt[12] .modeMux = 1'b1;
defparam \wav|lowb|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[12] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[12] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[13] (
	.A(vcc),
	.B(\wav|lowb|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[12]~41 ),
	.Qin(\wav|lowb|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[13]~42_combout ),
	.Cout(\wav|lowb|cnt[13]~43 ),
	.Q(\wav|lowb|cnt [13]));
defparam \wav|lowb|cnt[13] .coord_x = 5;
defparam \wav|lowb|cnt[13] .coord_y = 6;
defparam \wav|lowb|cnt[13] .coord_z = 13;
defparam \wav|lowb|cnt[13] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[13] .modeMux = 1'b1;
defparam \wav|lowb|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[13] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[13] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[14] (
	.A(vcc),
	.B(\wav|lowb|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[13]~43 ),
	.Qin(\wav|lowb|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[14]~44_combout ),
	.Cout(\wav|lowb|cnt[14]~45 ),
	.Q(\wav|lowb|cnt [14]));
defparam \wav|lowb|cnt[14] .coord_x = 5;
defparam \wav|lowb|cnt[14] .coord_y = 6;
defparam \wav|lowb|cnt[14] .coord_z = 14;
defparam \wav|lowb|cnt[14] .mask = 16'hC30C;
defparam \wav|lowb|cnt[14] .modeMux = 1'b1;
defparam \wav|lowb|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[14] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[14] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[15] (
	.A(vcc),
	.B(\wav|lowb|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[14]~45 ),
	.Qin(\wav|lowb|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|lowb|cnt [15]));
defparam \wav|lowb|cnt[15] .coord_x = 5;
defparam \wav|lowb|cnt[15] .coord_y = 6;
defparam \wav|lowb|cnt[15] .coord_z = 15;
defparam \wav|lowb|cnt[15] .mask = 16'h3C3C;
defparam \wav|lowb|cnt[15] .modeMux = 1'b1;
defparam \wav|lowb|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[15] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[15] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|lowb|cnt[1] (
	.A(vcc),
	.B(\wav|lowb|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[0]~17 ),
	.Qin(\wav|lowb|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[1]~18_combout ),
	.Cout(\wav|lowb|cnt[1]~19 ),
	.Q(\wav|lowb|cnt [1]));
defparam \wav|lowb|cnt[1] .coord_x = 5;
defparam \wav|lowb|cnt[1] .coord_y = 6;
defparam \wav|lowb|cnt[1] .coord_z = 1;
defparam \wav|lowb|cnt[1] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[1] .modeMux = 1'b1;
defparam \wav|lowb|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[1] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[1] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[2] (
	.A(vcc),
	.B(\wav|lowb|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[1]~19 ),
	.Qin(\wav|lowb|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[2]~20_combout ),
	.Cout(\wav|lowb|cnt[2]~21 ),
	.Q(\wav|lowb|cnt [2]));
defparam \wav|lowb|cnt[2] .coord_x = 5;
defparam \wav|lowb|cnt[2] .coord_y = 6;
defparam \wav|lowb|cnt[2] .coord_z = 2;
defparam \wav|lowb|cnt[2] .mask = 16'hC30C;
defparam \wav|lowb|cnt[2] .modeMux = 1'b1;
defparam \wav|lowb|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[2] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[2] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[3] (
	.A(vcc),
	.B(\wav|lowb|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[2]~21 ),
	.Qin(\wav|lowb|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[3]~22_combout ),
	.Cout(\wav|lowb|cnt[3]~23 ),
	.Q(\wav|lowb|cnt [3]));
defparam \wav|lowb|cnt[3] .coord_x = 5;
defparam \wav|lowb|cnt[3] .coord_y = 6;
defparam \wav|lowb|cnt[3] .coord_z = 3;
defparam \wav|lowb|cnt[3] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[3] .modeMux = 1'b1;
defparam \wav|lowb|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[3] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[3] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[4] (
	.A(vcc),
	.B(\wav|lowb|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[3]~23 ),
	.Qin(\wav|lowb|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[4]~24_combout ),
	.Cout(\wav|lowb|cnt[4]~25 ),
	.Q(\wav|lowb|cnt [4]));
defparam \wav|lowb|cnt[4] .coord_x = 5;
defparam \wav|lowb|cnt[4] .coord_y = 6;
defparam \wav|lowb|cnt[4] .coord_z = 4;
defparam \wav|lowb|cnt[4] .mask = 16'hC30C;
defparam \wav|lowb|cnt[4] .modeMux = 1'b1;
defparam \wav|lowb|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[4] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[4] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[5] (
	.A(vcc),
	.B(\wav|lowb|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[4]~25 ),
	.Qin(\wav|lowb|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[5]~26_combout ),
	.Cout(\wav|lowb|cnt[5]~27 ),
	.Q(\wav|lowb|cnt [5]));
defparam \wav|lowb|cnt[5] .coord_x = 5;
defparam \wav|lowb|cnt[5] .coord_y = 6;
defparam \wav|lowb|cnt[5] .coord_z = 5;
defparam \wav|lowb|cnt[5] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[5] .modeMux = 1'b1;
defparam \wav|lowb|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[5] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[5] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[6] (
	.A(vcc),
	.B(\wav|lowb|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[5]~27 ),
	.Qin(\wav|lowb|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[6]~28_combout ),
	.Cout(\wav|lowb|cnt[6]~29 ),
	.Q(\wav|lowb|cnt [6]));
defparam \wav|lowb|cnt[6] .coord_x = 5;
defparam \wav|lowb|cnt[6] .coord_y = 6;
defparam \wav|lowb|cnt[6] .coord_z = 6;
defparam \wav|lowb|cnt[6] .mask = 16'hC30C;
defparam \wav|lowb|cnt[6] .modeMux = 1'b1;
defparam \wav|lowb|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[6] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[6] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[7] (
	.A(vcc),
	.B(\wav|lowb|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[6]~29 ),
	.Qin(\wav|lowb|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[7]~30_combout ),
	.Cout(\wav|lowb|cnt[7]~31 ),
	.Q(\wav|lowb|cnt [7]));
defparam \wav|lowb|cnt[7] .coord_x = 5;
defparam \wav|lowb|cnt[7] .coord_y = 6;
defparam \wav|lowb|cnt[7] .coord_z = 7;
defparam \wav|lowb|cnt[7] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[7] .modeMux = 1'b1;
defparam \wav|lowb|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[7] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[7] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[8] (
	.A(vcc),
	.B(\wav|lowb|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[7]~31 ),
	.Qin(\wav|lowb|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[8]~32_combout ),
	.Cout(\wav|lowb|cnt[8]~33 ),
	.Q(\wav|lowb|cnt [8]));
defparam \wav|lowb|cnt[8] .coord_x = 5;
defparam \wav|lowb|cnt[8] .coord_y = 6;
defparam \wav|lowb|cnt[8] .coord_z = 8;
defparam \wav|lowb|cnt[8] .mask = 16'hC30C;
defparam \wav|lowb|cnt[8] .modeMux = 1'b1;
defparam \wav|lowb|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[8] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[8] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|lowb|cnt[9] (
	.A(vcc),
	.B(\wav|lowb|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowb|cnt[8]~33 ),
	.Qin(\wav|lowb|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X2_Y5_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X2_Y5_SIG ),
	.SyncReset(\wav|lowb|LessThan0~4_combout__SyncReset_X2_Y5_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X2_Y5_GND),
	.LutOut(\wav|lowb|cnt[9]~34_combout ),
	.Cout(\wav|lowb|cnt[9]~35 ),
	.Q(\wav|lowb|cnt [9]));
defparam \wav|lowb|cnt[9] .coord_x = 5;
defparam \wav|lowb|cnt[9] .coord_y = 6;
defparam \wav|lowb|cnt[9] .coord_z = 9;
defparam \wav|lowb|cnt[9] .mask = 16'h3C3F;
defparam \wav|lowb|cnt[9] .modeMux = 1'b1;
defparam \wav|lowb|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|lowb|cnt[9] .ShiftMux = 1'b0;
defparam \wav|lowb|cnt[9] .BypassEn = 1'b1;
defparam \wav|lowb|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|lowg|LessThan0~1 (
	.A(\wav|lowg|cnt [10]),
	.B(\wav|lowg|cnt [9]),
	.C(\wav|lowg|cnt [13]),
	.D(\wav|lowg|LessThan0~1_RESYN22_BDD23 ),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|LessThan0~1_combout ),
	.Cout(),
	.Q());
defparam \wav|lowg|LessThan0~1 .coord_x = 5;
defparam \wav|lowg|LessThan0~1 .coord_y = 7;
defparam \wav|lowg|LessThan0~1 .coord_z = 14;
defparam \wav|lowg|LessThan0~1 .mask = 16'h0100;
defparam \wav|lowg|LessThan0~1 .modeMux = 1'b0;
defparam \wav|lowg|LessThan0~1 .FeedbackMux = 1'b0;
defparam \wav|lowg|LessThan0~1 .ShiftMux = 1'b0;
defparam \wav|lowg|LessThan0~1 .BypassEn = 1'b0;
defparam \wav|lowg|LessThan0~1 .CarryEnb = 1'b1;

alta_slice \wav|lowg|LessThan0~1_RESYN22 (
	.A(\wav|lowg|cnt [11]),
	.B(\wav|lowg|cnt [12]),
	.C(\wav|lowg|cnt [14]),
	.D(\wav|lowg|cnt [15]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|LessThan0~1_RESYN22_BDD23 ),
	.Cout(),
	.Q());
defparam \wav|lowg|LessThan0~1_RESYN22 .coord_x = 5;
defparam \wav|lowg|LessThan0~1_RESYN22 .coord_y = 7;
defparam \wav|lowg|LessThan0~1_RESYN22 .coord_z = 5;
defparam \wav|lowg|LessThan0~1_RESYN22 .mask = 16'h0001;
defparam \wav|lowg|LessThan0~1_RESYN22 .modeMux = 1'b0;
defparam \wav|lowg|LessThan0~1_RESYN22 .FeedbackMux = 1'b0;
defparam \wav|lowg|LessThan0~1_RESYN22 .ShiftMux = 1'b0;
defparam \wav|lowg|LessThan0~1_RESYN22 .BypassEn = 1'b0;
defparam \wav|lowg|LessThan0~1_RESYN22 .CarryEnb = 1'b1;

alta_slice \wav|lowg|LessThan0~2 (
	.A(\wav|lowg|cnt [0]),
	.B(\wav|lowg|cnt [1]),
	.C(\wav|lowg|cnt [3]),
	.D(\wav|lowg|cnt [2]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|LessThan0~2_combout ),
	.Cout(),
	.Q());
defparam \wav|lowg|LessThan0~2 .coord_x = 5;
defparam \wav|lowg|LessThan0~2 .coord_y = 7;
defparam \wav|lowg|LessThan0~2 .coord_z = 10;
defparam \wav|lowg|LessThan0~2 .mask = 16'h0007;
defparam \wav|lowg|LessThan0~2 .modeMux = 1'b0;
defparam \wav|lowg|LessThan0~2 .FeedbackMux = 1'b0;
defparam \wav|lowg|LessThan0~2 .ShiftMux = 1'b0;
defparam \wav|lowg|LessThan0~2 .BypassEn = 1'b0;
defparam \wav|lowg|LessThan0~2 .CarryEnb = 1'b1;

alta_slice \wav|lowg|LessThan0~3 (
	.A(\wav|lowg|LessThan0~2_combout ),
	.B(\wav|lowg|cnt [4]),
	.C(\wav|lowg|cnt [5]),
	.D(\wav|lowg|cnt [6]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|LessThan0~3_combout ),
	.Cout(),
	.Q());
defparam \wav|lowg|LessThan0~3 .coord_x = 5;
defparam \wav|lowg|LessThan0~3 .coord_y = 7;
defparam \wav|lowg|LessThan0~3 .coord_z = 11;
defparam \wav|lowg|LessThan0~3 .mask = 16'h02FF;
defparam \wav|lowg|LessThan0~3 .modeMux = 1'b0;
defparam \wav|lowg|LessThan0~3 .FeedbackMux = 1'b0;
defparam \wav|lowg|LessThan0~3 .ShiftMux = 1'b0;
defparam \wav|lowg|LessThan0~3 .BypassEn = 1'b0;
defparam \wav|lowg|LessThan0~3 .CarryEnb = 1'b1;

alta_slice \wav|lowg|LessThan0~4 (
	.A(\wav|lowg|LessThan0~1_combout ),
	.B(\wav|lowg|LessThan0~3_combout ),
	.C(\wav|lowg|cnt [7]),
	.D(\wav|lowg|cnt [8]),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|LessThan0~4_combout ),
	.Cout(),
	.Q());
defparam \wav|lowg|LessThan0~4 .coord_x = 5;
defparam \wav|lowg|LessThan0~4 .coord_y = 7;
defparam \wav|lowg|LessThan0~4 .coord_z = 12;
defparam \wav|lowg|LessThan0~4 .mask = 16'hF755;
defparam \wav|lowg|LessThan0~4 .modeMux = 1'b0;
defparam \wav|lowg|LessThan0~4 .FeedbackMux = 1'b0;
defparam \wav|lowg|LessThan0~4 .ShiftMux = 1'b0;
defparam \wav|lowg|LessThan0~4 .BypassEn = 1'b0;
defparam \wav|lowg|LessThan0~4 .CarryEnb = 1'b1;

alta_slice \wav|lowg|clkout (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(\wav|lowg|LessThan0~4_combout ),
	.Cin(),
	.Qin(\wav|lowg|clkout~q ),
	.Clk(\wav|freqclk~clkctrl_outclk_X7_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X7_Y8_SIG ),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|lowg|clkout~0_combout ),
	.Cout(),
	.Q(\wav|lowg|clkout~q ));
defparam \wav|lowg|clkout .coord_x = 5;
defparam \wav|lowg|clkout .coord_y = 7;
defparam \wav|lowg|clkout .coord_z = 13;
defparam \wav|lowg|clkout .mask = 16'h0FF0;
defparam \wav|lowg|clkout .modeMux = 1'b0;
defparam \wav|lowg|clkout .FeedbackMux = 1'b1;
defparam \wav|lowg|clkout .ShiftMux = 1'b0;
defparam \wav|lowg|clkout .BypassEn = 1'b0;
defparam \wav|lowg|clkout .CarryEnb = 1'b1;

alta_slice \wav|lowg|cnt[0] (
	.A(vcc),
	.B(\wav|lowg|cnt [0]),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|lowg|cnt [0]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[0]~16_combout ),
	.Cout(\wav|lowg|cnt[0]~17 ),
	.Q(\wav|lowg|cnt [0]));
defparam \wav|lowg|cnt[0] .coord_x = 4;
defparam \wav|lowg|cnt[0] .coord_y = 7;
defparam \wav|lowg|cnt[0] .coord_z = 0;
defparam \wav|lowg|cnt[0] .mask = 16'h33CC;
defparam \wav|lowg|cnt[0] .modeMux = 1'b0;
defparam \wav|lowg|cnt[0] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[0] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[0] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[0] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[10] (
	.A(vcc),
	.B(\wav|lowg|cnt [10]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[9]~35 ),
	.Qin(\wav|lowg|cnt [10]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[10]~36_combout ),
	.Cout(\wav|lowg|cnt[10]~37 ),
	.Q(\wav|lowg|cnt [10]));
defparam \wav|lowg|cnt[10] .coord_x = 4;
defparam \wav|lowg|cnt[10] .coord_y = 7;
defparam \wav|lowg|cnt[10] .coord_z = 10;
defparam \wav|lowg|cnt[10] .mask = 16'hC30C;
defparam \wav|lowg|cnt[10] .modeMux = 1'b1;
defparam \wav|lowg|cnt[10] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[10] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[10] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[10] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[11] (
	.A(vcc),
	.B(\wav|lowg|cnt [11]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[10]~37 ),
	.Qin(\wav|lowg|cnt [11]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[11]~38_combout ),
	.Cout(\wav|lowg|cnt[11]~39 ),
	.Q(\wav|lowg|cnt [11]));
defparam \wav|lowg|cnt[11] .coord_x = 4;
defparam \wav|lowg|cnt[11] .coord_y = 7;
defparam \wav|lowg|cnt[11] .coord_z = 11;
defparam \wav|lowg|cnt[11] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[11] .modeMux = 1'b1;
defparam \wav|lowg|cnt[11] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[11] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[11] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[11] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[12] (
	.A(vcc),
	.B(\wav|lowg|cnt [12]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[11]~39 ),
	.Qin(\wav|lowg|cnt [12]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[12]~40_combout ),
	.Cout(\wav|lowg|cnt[12]~41 ),
	.Q(\wav|lowg|cnt [12]));
defparam \wav|lowg|cnt[12] .coord_x = 4;
defparam \wav|lowg|cnt[12] .coord_y = 7;
defparam \wav|lowg|cnt[12] .coord_z = 12;
defparam \wav|lowg|cnt[12] .mask = 16'hC30C;
defparam \wav|lowg|cnt[12] .modeMux = 1'b1;
defparam \wav|lowg|cnt[12] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[12] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[12] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[12] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[13] (
	.A(vcc),
	.B(\wav|lowg|cnt [13]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[12]~41 ),
	.Qin(\wav|lowg|cnt [13]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[13]~42_combout ),
	.Cout(\wav|lowg|cnt[13]~43 ),
	.Q(\wav|lowg|cnt [13]));
defparam \wav|lowg|cnt[13] .coord_x = 4;
defparam \wav|lowg|cnt[13] .coord_y = 7;
defparam \wav|lowg|cnt[13] .coord_z = 13;
defparam \wav|lowg|cnt[13] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[13] .modeMux = 1'b1;
defparam \wav|lowg|cnt[13] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[13] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[13] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[13] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[14] (
	.A(vcc),
	.B(\wav|lowg|cnt [14]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[13]~43 ),
	.Qin(\wav|lowg|cnt [14]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[14]~44_combout ),
	.Cout(\wav|lowg|cnt[14]~45 ),
	.Q(\wav|lowg|cnt [14]));
defparam \wav|lowg|cnt[14] .coord_x = 4;
defparam \wav|lowg|cnt[14] .coord_y = 7;
defparam \wav|lowg|cnt[14] .coord_z = 14;
defparam \wav|lowg|cnt[14] .mask = 16'hC30C;
defparam \wav|lowg|cnt[14] .modeMux = 1'b1;
defparam \wav|lowg|cnt[14] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[14] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[14] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[14] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[15] (
	.A(vcc),
	.B(\wav|lowg|cnt [15]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[14]~45 ),
	.Qin(\wav|lowg|cnt [15]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[15]~46_combout ),
	.Cout(),
	.Q(\wav|lowg|cnt [15]));
defparam \wav|lowg|cnt[15] .coord_x = 4;
defparam \wav|lowg|cnt[15] .coord_y = 7;
defparam \wav|lowg|cnt[15] .coord_z = 15;
defparam \wav|lowg|cnt[15] .mask = 16'h3C3C;
defparam \wav|lowg|cnt[15] .modeMux = 1'b1;
defparam \wav|lowg|cnt[15] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[15] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[15] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[15] .CarryEnb = 1'b1;

alta_slice \wav|lowg|cnt[1] (
	.A(vcc),
	.B(\wav|lowg|cnt [1]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[0]~17 ),
	.Qin(\wav|lowg|cnt [1]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[1]~18_combout ),
	.Cout(\wav|lowg|cnt[1]~19 ),
	.Q(\wav|lowg|cnt [1]));
defparam \wav|lowg|cnt[1] .coord_x = 4;
defparam \wav|lowg|cnt[1] .coord_y = 7;
defparam \wav|lowg|cnt[1] .coord_z = 1;
defparam \wav|lowg|cnt[1] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[1] .modeMux = 1'b1;
defparam \wav|lowg|cnt[1] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[1] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[1] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[1] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[2] (
	.A(vcc),
	.B(\wav|lowg|cnt [2]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[1]~19 ),
	.Qin(\wav|lowg|cnt [2]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[2]~20_combout ),
	.Cout(\wav|lowg|cnt[2]~21 ),
	.Q(\wav|lowg|cnt [2]));
defparam \wav|lowg|cnt[2] .coord_x = 4;
defparam \wav|lowg|cnt[2] .coord_y = 7;
defparam \wav|lowg|cnt[2] .coord_z = 2;
defparam \wav|lowg|cnt[2] .mask = 16'hC30C;
defparam \wav|lowg|cnt[2] .modeMux = 1'b1;
defparam \wav|lowg|cnt[2] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[2] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[2] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[2] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[3] (
	.A(vcc),
	.B(\wav|lowg|cnt [3]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[2]~21 ),
	.Qin(\wav|lowg|cnt [3]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[3]~22_combout ),
	.Cout(\wav|lowg|cnt[3]~23 ),
	.Q(\wav|lowg|cnt [3]));
defparam \wav|lowg|cnt[3] .coord_x = 4;
defparam \wav|lowg|cnt[3] .coord_y = 7;
defparam \wav|lowg|cnt[3] .coord_z = 3;
defparam \wav|lowg|cnt[3] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[3] .modeMux = 1'b1;
defparam \wav|lowg|cnt[3] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[3] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[3] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[3] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[4] (
	.A(vcc),
	.B(\wav|lowg|cnt [4]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[3]~23 ),
	.Qin(\wav|lowg|cnt [4]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[4]~24_combout ),
	.Cout(\wav|lowg|cnt[4]~25 ),
	.Q(\wav|lowg|cnt [4]));
defparam \wav|lowg|cnt[4] .coord_x = 4;
defparam \wav|lowg|cnt[4] .coord_y = 7;
defparam \wav|lowg|cnt[4] .coord_z = 4;
defparam \wav|lowg|cnt[4] .mask = 16'hC30C;
defparam \wav|lowg|cnt[4] .modeMux = 1'b1;
defparam \wav|lowg|cnt[4] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[4] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[4] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[4] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[5] (
	.A(vcc),
	.B(\wav|lowg|cnt [5]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[4]~25 ),
	.Qin(\wav|lowg|cnt [5]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[5]~26_combout ),
	.Cout(\wav|lowg|cnt[5]~27 ),
	.Q(\wav|lowg|cnt [5]));
defparam \wav|lowg|cnt[5] .coord_x = 4;
defparam \wav|lowg|cnt[5] .coord_y = 7;
defparam \wav|lowg|cnt[5] .coord_z = 5;
defparam \wav|lowg|cnt[5] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[5] .modeMux = 1'b1;
defparam \wav|lowg|cnt[5] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[5] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[5] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[5] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[6] (
	.A(vcc),
	.B(\wav|lowg|cnt [6]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[5]~27 ),
	.Qin(\wav|lowg|cnt [6]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[6]~28_combout ),
	.Cout(\wav|lowg|cnt[6]~29 ),
	.Q(\wav|lowg|cnt [6]));
defparam \wav|lowg|cnt[6] .coord_x = 4;
defparam \wav|lowg|cnt[6] .coord_y = 7;
defparam \wav|lowg|cnt[6] .coord_z = 6;
defparam \wav|lowg|cnt[6] .mask = 16'hC30C;
defparam \wav|lowg|cnt[6] .modeMux = 1'b1;
defparam \wav|lowg|cnt[6] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[6] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[6] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[6] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[7] (
	.A(vcc),
	.B(\wav|lowg|cnt [7]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[6]~29 ),
	.Qin(\wav|lowg|cnt [7]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[7]~30_combout ),
	.Cout(\wav|lowg|cnt[7]~31 ),
	.Q(\wav|lowg|cnt [7]));
defparam \wav|lowg|cnt[7] .coord_x = 4;
defparam \wav|lowg|cnt[7] .coord_y = 7;
defparam \wav|lowg|cnt[7] .coord_z = 7;
defparam \wav|lowg|cnt[7] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[7] .modeMux = 1'b1;
defparam \wav|lowg|cnt[7] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[7] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[7] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[7] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[8] (
	.A(vcc),
	.B(\wav|lowg|cnt [8]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[7]~31 ),
	.Qin(\wav|lowg|cnt [8]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[8]~32_combout ),
	.Cout(\wav|lowg|cnt[8]~33 ),
	.Q(\wav|lowg|cnt [8]));
defparam \wav|lowg|cnt[8] .coord_x = 4;
defparam \wav|lowg|cnt[8] .coord_y = 7;
defparam \wav|lowg|cnt[8] .coord_z = 8;
defparam \wav|lowg|cnt[8] .mask = 16'hC30C;
defparam \wav|lowg|cnt[8] .modeMux = 1'b1;
defparam \wav|lowg|cnt[8] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[8] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[8] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[8] .CarryEnb = 1'b0;

alta_slice \wav|lowg|cnt[9] (
	.A(vcc),
	.B(\wav|lowg|cnt [9]),
	.C(vcc),
	.D(vcc),
	.Cin(\wav|lowg|cnt[8]~33 ),
	.Qin(\wav|lowg|cnt [9]),
	.Clk(\wav|freqclk~clkctrl_outclk_X6_Y8_SIG_VCC ),
	.AsyncReset(\dfh_jiezou|tick~clkctrl_outclk__AsyncReset_X6_Y8_SIG ),
	.SyncReset(\wav|lowg|LessThan0~4_combout__SyncReset_X6_Y8_SIG ),
	.ShiftData(),
	.SyncLoad(SyncLoad_X6_Y8_GND),
	.LutOut(\wav|lowg|cnt[9]~34_combout ),
	.Cout(\wav|lowg|cnt[9]~35 ),
	.Q(\wav|lowg|cnt [9]));
defparam \wav|lowg|cnt[9] .coord_x = 4;
defparam \wav|lowg|cnt[9] .coord_y = 7;
defparam \wav|lowg|cnt[9] .coord_z = 9;
defparam \wav|lowg|cnt[9] .mask = 16'h3C3F;
defparam \wav|lowg|cnt[9] .modeMux = 1'b1;
defparam \wav|lowg|cnt[9] .FeedbackMux = 1'b0;
defparam \wav|lowg|cnt[9] .ShiftMux = 1'b0;
defparam \wav|lowg|cnt[9] .BypassEn = 1'b1;
defparam \wav|lowg|cnt[9] .CarryEnb = 1'b0;

alta_slice \wav|mode (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(\wav|mode~q ),
	.Clk(\KEY[1]~input_o_X1_Y8_INV_VCC ),
	.AsyncReset(AsyncReset_X1_Y8_GND),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\wav|mode~0_combout ),
	.Cout(),
	.Q(\wav|mode~q ));
defparam \wav|mode .coord_x = 6;
defparam \wav|mode .coord_y = 8;
defparam \wav|mode .coord_z = 11;
defparam \wav|mode .mask = 16'h0F0F;
defparam \wav|mode .modeMux = 1'b0;
defparam \wav|mode .FeedbackMux = 1'b1;
defparam \wav|mode .ShiftMux = 1'b0;
defparam \wav|mode .BypassEn = 1'b0;
defparam \wav|mode .CarryEnb = 1'b1;

alta_slice \~GND (
	.A(vcc),
	.B(vcc),
	.C(vcc),
	.D(vcc),
	.Cin(),
	.Qin(),
	.Clk(),
	.AsyncReset(),
	.SyncReset(),
	.ShiftData(),
	.SyncLoad(),
	.LutOut(\~GND~combout ),
	.Cout(),
	.Q());
defparam \~GND .coord_x = 0;
defparam \~GND .coord_y = 8;
defparam \~GND .coord_z = 13;
defparam \~GND .mask = 16'h0000;
defparam \~GND .modeMux = 1'b0;
defparam \~GND .FeedbackMux = 1'b0;
defparam \~GND .ShiftMux = 1'b0;
defparam \~GND .BypassEn = 1'b0;
defparam \~GND .CarryEnb = 1'b1;

endmodule
