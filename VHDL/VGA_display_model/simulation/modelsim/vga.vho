-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "06/20/2018 12:29:32"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	Vid : OUT std_logic_vector(23 DOWNTO 0)
	);
END vga;

-- Design Ports Information
-- h_sync	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_sync	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[13]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[14]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[15]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[16]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[17]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[18]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[19]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[20]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[21]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[22]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Vid[23]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_Vid : std_logic_vector(23 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Hcnt[0]~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Hcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Hcnt[1]~6_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Hcnt[2]~5_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Hcnt[3]~4_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Hcnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Hcnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Hcnt[23]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Hcnt[26]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Hcnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Hcnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Hcnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Hcnt~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Hcnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Hcnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Hcnt[7]~1_combout\ : std_logic;
SIGNAL \Hcnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Hcnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \h_sync~reg0_q\ : std_logic;
SIGNAL \Vcnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Vcnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Vcnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Vcnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Vcnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Vcnt[29]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Vcnt~0_combout\ : std_logic;
SIGNAL \Ven~0_combout\ : std_logic;
SIGNAL \Ven~q\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Vcnt~1_combout\ : std_logic;
SIGNAL \Vcnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Vcnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Vcnt[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Vcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Vcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Vcnt~4_combout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Vcnt~3_combout\ : std_logic;
SIGNAL \Vcnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Vcnt~2_combout\ : std_logic;
SIGNAL \Vcnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Vcnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Vcnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Vcnt~5_combout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Vcnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Vcnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Vcnt~6_combout\ : std_logic;
SIGNAL \Vcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \v_sync~reg0_q\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \R~1_combout\ : std_logic;
SIGNAL \G~0_combout\ : std_logic;
SIGNAL \B[0]~3_combout\ : std_logic;
SIGNAL \B[0]~1_combout\ : std_logic;
SIGNAL \B[0]~2_combout\ : std_logic;
SIGNAL \B[0]~4_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \Vid~0_combout\ : std_logic;
SIGNAL \Vid[0]~reg0_q\ : std_logic;
SIGNAL \G~1_combout\ : std_logic;
SIGNAL \B~5_combout\ : std_logic;
SIGNAL \B~6_combout\ : std_logic;
SIGNAL \Vid~1_combout\ : std_logic;
SIGNAL \Vid[1]~reg0_q\ : std_logic;
SIGNAL \B~7_combout\ : std_logic;
SIGNAL \B~8_combout\ : std_logic;
SIGNAL \Vid~2_combout\ : std_logic;
SIGNAL \Vid[2]~reg0_q\ : std_logic;
SIGNAL \B~9_combout\ : std_logic;
SIGNAL \Vid~3_combout\ : std_logic;
SIGNAL \Vid[3]~reg0_q\ : std_logic;
SIGNAL \Vid[4]~reg0_q\ : std_logic;
SIGNAL \Vid[5]~reg0_q\ : std_logic;
SIGNAL \Vid[6]~reg0_q\ : std_logic;
SIGNAL \Vid[7]~reg0_q\ : std_logic;
SIGNAL \G~2_combout\ : std_logic;
SIGNAL \G~3_combout\ : std_logic;
SIGNAL \Vid~4_combout\ : std_logic;
SIGNAL \Vid[8]~reg0_q\ : std_logic;
SIGNAL \B~10_combout\ : std_logic;
SIGNAL \G~4_combout\ : std_logic;
SIGNAL \Vid~5_combout\ : std_logic;
SIGNAL \Vid[9]~reg0_q\ : std_logic;
SIGNAL \G~5_combout\ : std_logic;
SIGNAL \Vid~6_combout\ : std_logic;
SIGNAL \Vid[10]~reg0_q\ : std_logic;
SIGNAL \G~6_combout\ : std_logic;
SIGNAL \G~7_combout\ : std_logic;
SIGNAL \Vid~7_combout\ : std_logic;
SIGNAL \Vid[11]~reg0_q\ : std_logic;
SIGNAL \Vid[12]~reg0_q\ : std_logic;
SIGNAL \Vid[13]~reg0_q\ : std_logic;
SIGNAL \Vid[14]~reg0_q\ : std_logic;
SIGNAL \Vid[15]~reg0_q\ : std_logic;
SIGNAL \B[1]~11_combout\ : std_logic;
SIGNAL \R~2_combout\ : std_logic;
SIGNAL \Vid~8_combout\ : std_logic;
SIGNAL \Vid[16]~reg0_q\ : std_logic;
SIGNAL \R~3_combout\ : std_logic;
SIGNAL \Vid~9_combout\ : std_logic;
SIGNAL \Vid[17]~reg0_q\ : std_logic;
SIGNAL \R~4_combout\ : std_logic;
SIGNAL \Vid~10_combout\ : std_logic;
SIGNAL \Vid[18]~reg0_q\ : std_logic;
SIGNAL \R~5_combout\ : std_logic;
SIGNAL \Vid~11_combout\ : std_logic;
SIGNAL \Vid[19]~reg0_q\ : std_logic;
SIGNAL \Vid[20]~reg0_q\ : std_logic;
SIGNAL \Vid[21]~reg0_q\ : std_logic;
SIGNAL \Vid[22]~reg0_q\ : std_logic;
SIGNAL \Vid[23]~reg0_q\ : std_logic;
SIGNAL Hcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL Vcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL B : std_logic_vector(7 DOWNTO 0);
SIGNAL G : std_logic_vector(7 DOWNTO 0);
SIGNAL R : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_Vcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_Hcnt : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Vcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[18]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[29]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Vcnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[30]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[23]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[26]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Hcnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Ven~q\ : std_logic;
SIGNAL \ALT_INV_B[1]~11_combout\ : std_logic;
SIGNAL \ALT_INV_G~6_combout\ : std_logic;
SIGNAL \ALT_INV_B~10_combout\ : std_logic;
SIGNAL \ALT_INV_G~2_combout\ : std_logic;
SIGNAL \ALT_INV_B~7_combout\ : std_logic;
SIGNAL \ALT_INV_G~1_combout\ : std_logic;
SIGNAL \ALT_INV_B~5_combout\ : std_logic;
SIGNAL \ALT_INV_G~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_B[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_R~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_R~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL ALT_INV_R : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan15~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_v_sync~reg0_q\ : std_logic;
SIGNAL \ALT_INV_h_sync~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
Vid <= ww_Vid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_G(3) <= NOT G(3);
ALT_INV_G(2) <= NOT G(2);
ALT_INV_G(1) <= NOT G(1);
ALT_INV_G(0) <= NOT G(0);
ALT_INV_B(3) <= NOT B(3);
ALT_INV_B(2) <= NOT B(2);
ALT_INV_B(1) <= NOT B(1);
ALT_INV_B(0) <= NOT B(0);
ALT_INV_Vcnt(2) <= NOT Vcnt(2);
ALT_INV_Vcnt(9) <= NOT Vcnt(9);
ALT_INV_Vcnt(4) <= NOT Vcnt(4);
ALT_INV_Vcnt(26) <= NOT Vcnt(26);
ALT_INV_Vcnt(22) <= NOT Vcnt(22);
ALT_INV_Vcnt(25) <= NOT Vcnt(25);
ALT_INV_Vcnt(21) <= NOT Vcnt(21);
ALT_INV_Vcnt(19) <= NOT Vcnt(19);
ALT_INV_Vcnt(18) <= NOT Vcnt(18);
ALT_INV_Vcnt(16) <= NOT Vcnt(16);
ALT_INV_Vcnt(15) <= NOT Vcnt(15);
ALT_INV_Vcnt(14) <= NOT Vcnt(14);
ALT_INV_Vcnt(13) <= NOT Vcnt(13);
ALT_INV_Vcnt(12) <= NOT Vcnt(12);
ALT_INV_Vcnt(17) <= NOT Vcnt(17);
ALT_INV_Vcnt(29) <= NOT Vcnt(29);
ALT_INV_Vcnt(28) <= NOT Vcnt(28);
ALT_INV_Vcnt(27) <= NOT Vcnt(27);
ALT_INV_Vcnt(24) <= NOT Vcnt(24);
ALT_INV_Vcnt(23) <= NOT Vcnt(23);
ALT_INV_Vcnt(20) <= NOT Vcnt(20);
ALT_INV_Vcnt(10) <= NOT Vcnt(10);
ALT_INV_Vcnt(11) <= NOT Vcnt(11);
ALT_INV_Vcnt(30) <= NOT Vcnt(30);
ALT_INV_Vcnt(1) <= NOT Vcnt(1);
ALT_INV_Hcnt(4) <= NOT Hcnt(4);
ALT_INV_Hcnt(8) <= NOT Hcnt(8);
ALT_INV_Hcnt(29) <= NOT Hcnt(29);
ALT_INV_Hcnt(30) <= NOT Hcnt(30);
ALT_INV_Hcnt(17) <= NOT Hcnt(17);
ALT_INV_Hcnt(20) <= NOT Hcnt(20);
ALT_INV_Hcnt(19) <= NOT Hcnt(19);
ALT_INV_Hcnt(22) <= NOT Hcnt(22);
ALT_INV_Hcnt(23) <= NOT Hcnt(23);
ALT_INV_Hcnt(24) <= NOT Hcnt(24);
ALT_INV_Hcnt(25) <= NOT Hcnt(25);
ALT_INV_Hcnt(18) <= NOT Hcnt(18);
ALT_INV_Hcnt(26) <= NOT Hcnt(26);
ALT_INV_Hcnt(27) <= NOT Hcnt(27);
ALT_INV_Hcnt(28) <= NOT Hcnt(28);
ALT_INV_Hcnt(21) <= NOT Hcnt(21);
ALT_INV_Hcnt(11) <= NOT Hcnt(11);
ALT_INV_Hcnt(12) <= NOT Hcnt(12);
ALT_INV_Hcnt(13) <= NOT Hcnt(13);
ALT_INV_Hcnt(14) <= NOT Hcnt(14);
ALT_INV_Hcnt(15) <= NOT Hcnt(15);
ALT_INV_Hcnt(16) <= NOT Hcnt(16);
ALT_INV_Hcnt(10) <= NOT Hcnt(10);
ALT_INV_Hcnt(5) <= NOT Hcnt(5);
ALT_INV_Hcnt(6) <= NOT Hcnt(6);
\ALT_INV_Vcnt[0]~DUPLICATE_q\ <= NOT \Vcnt[0]~DUPLICATE_q\;
\ALT_INV_Vcnt[8]~DUPLICATE_q\ <= NOT \Vcnt[8]~DUPLICATE_q\;
\ALT_INV_Vcnt[5]~DUPLICATE_q\ <= NOT \Vcnt[5]~DUPLICATE_q\;
\ALT_INV_Vcnt[6]~DUPLICATE_q\ <= NOT \Vcnt[6]~DUPLICATE_q\;
\ALT_INV_Vcnt[7]~DUPLICATE_q\ <= NOT \Vcnt[7]~DUPLICATE_q\;
\ALT_INV_Vcnt[3]~DUPLICATE_q\ <= NOT \Vcnt[3]~DUPLICATE_q\;
\ALT_INV_Hcnt[31]~DUPLICATE_q\ <= NOT \Hcnt[31]~DUPLICATE_q\;
\ALT_INV_Hcnt[0]~DUPLICATE_q\ <= NOT \Hcnt[0]~DUPLICATE_q\;
\ALT_INV_Hcnt[7]~DUPLICATE_q\ <= NOT \Hcnt[7]~DUPLICATE_q\;
\ALT_INV_Vcnt[2]~DUPLICATE_q\ <= NOT \Vcnt[2]~DUPLICATE_q\;
\ALT_INV_Vcnt[9]~DUPLICATE_q\ <= NOT \Vcnt[9]~DUPLICATE_q\;
\ALT_INV_Vcnt[4]~DUPLICATE_q\ <= NOT \Vcnt[4]~DUPLICATE_q\;
\ALT_INV_Vcnt[18]~DUPLICATE_q\ <= NOT \Vcnt[18]~DUPLICATE_q\;
\ALT_INV_Vcnt[16]~DUPLICATE_q\ <= NOT \Vcnt[16]~DUPLICATE_q\;
\ALT_INV_Vcnt[15]~DUPLICATE_q\ <= NOT \Vcnt[15]~DUPLICATE_q\;
\ALT_INV_Vcnt[13]~DUPLICATE_q\ <= NOT \Vcnt[13]~DUPLICATE_q\;
\ALT_INV_Vcnt[12]~DUPLICATE_q\ <= NOT \Vcnt[12]~DUPLICATE_q\;
\ALT_INV_Vcnt[17]~DUPLICATE_q\ <= NOT \Vcnt[17]~DUPLICATE_q\;
\ALT_INV_Vcnt[29]~DUPLICATE_q\ <= NOT \Vcnt[29]~DUPLICATE_q\;
\ALT_INV_Vcnt[10]~DUPLICATE_q\ <= NOT \Vcnt[10]~DUPLICATE_q\;
\ALT_INV_Vcnt[1]~DUPLICATE_q\ <= NOT \Vcnt[1]~DUPLICATE_q\;
\ALT_INV_Hcnt[4]~DUPLICATE_q\ <= NOT \Hcnt[4]~DUPLICATE_q\;
\ALT_INV_Hcnt[8]~DUPLICATE_q\ <= NOT \Hcnt[8]~DUPLICATE_q\;
\ALT_INV_Hcnt[30]~DUPLICATE_q\ <= NOT \Hcnt[30]~DUPLICATE_q\;
\ALT_INV_Hcnt[23]~DUPLICATE_q\ <= NOT \Hcnt[23]~DUPLICATE_q\;
\ALT_INV_Hcnt[26]~DUPLICATE_q\ <= NOT \Hcnt[26]~DUPLICATE_q\;
\ALT_INV_Hcnt[11]~DUPLICATE_q\ <= NOT \Hcnt[11]~DUPLICATE_q\;
\ALT_INV_Hcnt[15]~DUPLICATE_q\ <= NOT \Hcnt[15]~DUPLICATE_q\;
\ALT_INV_Hcnt[16]~DUPLICATE_q\ <= NOT \Hcnt[16]~DUPLICATE_q\;
\ALT_INV_Hcnt[6]~DUPLICATE_q\ <= NOT \Hcnt[6]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_Ven~q\ <= NOT \Ven~q\;
\ALT_INV_B[1]~11_combout\ <= NOT \B[1]~11_combout\;
\ALT_INV_G~6_combout\ <= NOT \G~6_combout\;
\ALT_INV_B~10_combout\ <= NOT \B~10_combout\;
\ALT_INV_G~2_combout\ <= NOT \G~2_combout\;
\ALT_INV_B~7_combout\ <= NOT \B~7_combout\;
\ALT_INV_G~1_combout\ <= NOT \G~1_combout\;
\ALT_INV_B~5_combout\ <= NOT \B~5_combout\;
\ALT_INV_G~0_combout\ <= NOT \G~0_combout\;
\ALT_INV_B[0]~3_combout\ <= NOT \B[0]~3_combout\;
\ALT_INV_B[0]~2_combout\ <= NOT \B[0]~2_combout\;
\ALT_INV_B[0]~1_combout\ <= NOT \B[0]~1_combout\;
\ALT_INV_R~1_combout\ <= NOT \R~1_combout\;
\ALT_INV_process_0~9_combout\ <= NOT \process_0~9_combout\;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_R~0_combout\ <= NOT \R~0_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_Equal5~2_combout\ <= NOT \Equal5~2_combout\;
\ALT_INV_Equal5~1_combout\ <= NOT \Equal5~1_combout\;
\ALT_INV_Equal5~0_combout\ <= NOT \Equal5~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
ALT_INV_R(3) <= NOT R(3);
ALT_INV_R(2) <= NOT R(2);
ALT_INV_R(1) <= NOT R(1);
ALT_INV_R(0) <= NOT R(0);
\ALT_INV_LessThan15~2_combout\ <= NOT \LessThan15~2_combout\;
\ALT_INV_LessThan15~1_combout\ <= NOT \LessThan15~1_combout\;
\ALT_INV_Equal4~6_combout\ <= NOT \Equal4~6_combout\;
ALT_INV_Vcnt(0) <= NOT Vcnt(0);
ALT_INV_Vcnt(8) <= NOT Vcnt(8);
\ALT_INV_LessThan15~0_combout\ <= NOT \LessThan15~0_combout\;
ALT_INV_Vcnt(5) <= NOT Vcnt(5);
ALT_INV_Vcnt(6) <= NOT Vcnt(6);
ALT_INV_Vcnt(7) <= NOT Vcnt(7);
\ALT_INV_Equal4~5_combout\ <= NOT \Equal4~5_combout\;
\ALT_INV_Equal4~4_combout\ <= NOT \Equal4~4_combout\;
ALT_INV_Vcnt(3) <= NOT Vcnt(3);
ALT_INV_Vcnt(31) <= NOT Vcnt(31);
\ALT_INV_Equal4~3_combout\ <= NOT \Equal4~3_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
ALT_INV_Hcnt(1) <= NOT Hcnt(1);
ALT_INV_Hcnt(2) <= NOT Hcnt(2);
ALT_INV_Hcnt(3) <= NOT Hcnt(3);
ALT_INV_Hcnt(9) <= NOT Hcnt(9);
ALT_INV_Hcnt(31) <= NOT Hcnt(31);
ALT_INV_Hcnt(0) <= NOT Hcnt(0);
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_Hcnt(7) <= NOT Hcnt(7);
\ALT_INV_v_sync~reg0_q\ <= NOT \v_sync~reg0_q\;
\ALT_INV_h_sync~reg0_q\ <= NOT \h_sync~reg0_q\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;

-- Location: IOOBUF_X80_Y81_N36
\h_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h_sync~reg0_q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X89_Y6_N39
\v_sync~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \v_sync~reg0_q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X89_Y37_N56
\Vid[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(0));

-- Location: IOOBUF_X80_Y81_N19
\Vid[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(1));

-- Location: IOOBUF_X89_Y37_N22
\Vid[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(2));

-- Location: IOOBUF_X89_Y36_N56
\Vid[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(3));

-- Location: IOOBUF_X89_Y9_N22
\Vid[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(4));

-- Location: IOOBUF_X89_Y8_N22
\Vid[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(5));

-- Location: IOOBUF_X89_Y38_N22
\Vid[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(6));

-- Location: IOOBUF_X89_Y36_N22
\Vid[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(7));

-- Location: IOOBUF_X89_Y8_N56
\Vid[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(8));

-- Location: IOOBUF_X89_Y8_N39
\Vid[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(9));

-- Location: IOOBUF_X89_Y9_N5
\Vid[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(10));

-- Location: IOOBUF_X89_Y8_N5
\Vid[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(11));

-- Location: IOOBUF_X89_Y38_N5
\Vid[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(12));

-- Location: IOOBUF_X89_Y36_N39
\Vid[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(13));

-- Location: IOOBUF_X89_Y35_N45
\Vid[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(14));

-- Location: IOOBUF_X89_Y37_N5
\Vid[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(15));

-- Location: IOOBUF_X89_Y35_N79
\Vid[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(16));

-- Location: IOOBUF_X89_Y38_N39
\Vid[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(17));

-- Location: IOOBUF_X78_Y81_N2
\Vid[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(18));

-- Location: IOOBUF_X89_Y9_N56
\Vid[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(19));

-- Location: IOOBUF_X89_Y37_N39
\Vid[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(20));

-- Location: IOOBUF_X89_Y9_N39
\Vid[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(21));

-- Location: IOOBUF_X89_Y38_N56
\Vid[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(22));

-- Location: IOOBUF_X89_Y36_N5
\Vid[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Vid[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Vid(23));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X81_Y27_N0
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !\Hcnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~90\ = CARRY(( !\Hcnt[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X82_Y27_N51
\Hcnt[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt[0]~2_combout\ = !\Add0~89_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~89_sumout\,
	combout => \Hcnt[0]~2_combout\);

-- Location: IOIBUF_X89_Y35_N95
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X82_Y27_N53
\Hcnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y27_N3
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( !Hcnt(1) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~118\ = CARRY(( !Hcnt(1) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(1),
	cin => \Add0~90\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: MLABCELL_X82_Y27_N12
\Hcnt[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt[1]~6_combout\ = ( !\Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~117_sumout\,
	combout => \Hcnt[1]~6_combout\);

-- Location: FF_X82_Y27_N14
\Hcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[1]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(1));

-- Location: LABCELL_X81_Y27_N6
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !Hcnt(2) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( !Hcnt(2) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(2),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: MLABCELL_X82_Y27_N36
\Hcnt[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt[2]~5_combout\ = !\Add0~113_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~113_sumout\,
	combout => \Hcnt[2]~5_combout\);

-- Location: FF_X82_Y27_N38
\Hcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[2]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(2));

-- Location: LABCELL_X81_Y27_N9
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !Hcnt(3) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( !Hcnt(3) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(3),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: MLABCELL_X82_Y27_N24
\Hcnt[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt[3]~4_combout\ = ( !\Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~109_sumout\,
	combout => \Hcnt[3]~4_combout\);

-- Location: FF_X81_Y27_N14
\Hcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Hcnt[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(3));

-- Location: LABCELL_X81_Y27_N12
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \Hcnt[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~126\ = CARRY(( \Hcnt[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	cin => \Add0~110\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: LABCELL_X81_Y27_N24
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \Hcnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~122\ = CARRY(( \Hcnt[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X81_Y27_N27
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( !Hcnt(9) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~106\ = CARRY(( !Hcnt(9) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(9),
	cin => \Add0~122\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X81_Y27_N30
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( Hcnt(10) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~14\ = CARRY(( Hcnt(10) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(10),
	cin => \Add0~106\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X81_Y27_N31
\Hcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(10));

-- Location: LABCELL_X81_Y27_N33
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \Hcnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~38\ = CARRY(( \Hcnt[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Hcnt[11]~DUPLICATE_q\,
	cin => \Add0~14\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X81_Y27_N35
\Hcnt[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[11]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y27_N36
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Hcnt(12) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( Hcnt(12) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(12),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X81_Y27_N38
\Hcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(12));

-- Location: LABCELL_X81_Y27_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Hcnt(13) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( Hcnt(13) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(13),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X81_Y27_N41
\Hcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(13));

-- Location: LABCELL_X81_Y27_N42
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Hcnt(14) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( Hcnt(14) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(14),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X81_Y27_N43
\Hcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(14));

-- Location: LABCELL_X81_Y27_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Hcnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( \Hcnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Hcnt[15]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X81_Y27_N47
\Hcnt[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[15]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y27_N48
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Hcnt(16) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( Hcnt(16) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(16),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X81_Y27_N50
\Hcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(16));

-- Location: LABCELL_X81_Y27_N51
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( Hcnt(17) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~86\ = CARRY(( Hcnt(17) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(17),
	cin => \Add0~18\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X81_Y27_N53
\Hcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(17));

-- Location: LABCELL_X81_Y27_N54
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( Hcnt(18) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~58\ = CARRY(( Hcnt(18) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(18),
	cin => \Add0~86\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X81_Y27_N56
\Hcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(18));

-- Location: LABCELL_X81_Y27_N57
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( Hcnt(19) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~78\ = CARRY(( Hcnt(19) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(19),
	cin => \Add0~58\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X81_Y27_N59
\Hcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(19));

-- Location: LABCELL_X81_Y26_N0
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( Hcnt(20) ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( Hcnt(20) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(20),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X81_Y26_N2
\Hcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(20));

-- Location: LABCELL_X81_Y26_N3
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( Hcnt(21) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~42\ = CARRY(( Hcnt(21) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(21),
	cin => \Add0~82\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X81_Y26_N5
\Hcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(21));

-- Location: LABCELL_X81_Y26_N6
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( Hcnt(22) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~74\ = CARRY(( Hcnt(22) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(22),
	cin => \Add0~42\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X81_Y26_N8
\Hcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(22));

-- Location: LABCELL_X81_Y26_N9
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \Hcnt[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~70\ = CARRY(( \Hcnt[23]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[23]~DUPLICATE_q\,
	cin => \Add0~74\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X81_Y26_N11
\Hcnt[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[23]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y26_N12
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( Hcnt(24) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( Hcnt(24) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(24),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X81_Y26_N14
\Hcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(24));

-- Location: LABCELL_X81_Y26_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Hcnt(25) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( Hcnt(25) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(25),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X81_Y26_N17
\Hcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(25));

-- Location: FF_X81_Y26_N19
\Hcnt[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[26]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y26_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \Hcnt[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~54\ = CARRY(( \Hcnt[26]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[26]~DUPLICATE_q\,
	cin => \Add0~62\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X81_Y26_N20
\Hcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(26));

-- Location: LABCELL_X81_Y26_N21
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Hcnt(27) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( Hcnt(27) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(27),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X81_Y26_N22
\Hcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(27));

-- Location: LABCELL_X81_Y26_N24
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Hcnt(28) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( Hcnt(28) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(28),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X81_Y26_N26
\Hcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(28));

-- Location: LABCELL_X81_Y26_N48
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !Hcnt(18) & ( !Hcnt(28) & ( (!Hcnt(21) & (!Hcnt(25) & (!Hcnt(26) & !Hcnt(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(21),
	datab => ALT_INV_Hcnt(25),
	datac => ALT_INV_Hcnt(26),
	datad => ALT_INV_Hcnt(27),
	datae => ALT_INV_Hcnt(18),
	dataf => ALT_INV_Hcnt(28),
	combout => \Equal0~2_combout\);

-- Location: FF_X81_Y27_N46
\Hcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(15));

-- Location: FF_X81_Y27_N49
\Hcnt[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[16]~DUPLICATE_q\);

-- Location: FF_X81_Y27_N34
\Hcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(11));

-- Location: MLABCELL_X82_Y26_N0
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !Hcnt(12) & ( !Hcnt(14) & ( (!Hcnt(15) & (!Hcnt(13) & (!\Hcnt[16]~DUPLICATE_q\ & !Hcnt(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(15),
	datab => ALT_INV_Hcnt(13),
	datac => \ALT_INV_Hcnt[16]~DUPLICATE_q\,
	datad => ALT_INV_Hcnt(11),
	datae => ALT_INV_Hcnt(12),
	dataf => ALT_INV_Hcnt(14),
	combout => \Equal0~1_combout\);

-- Location: FF_X81_Y26_N10
\Hcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(23));

-- Location: LABCELL_X81_Y26_N54
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !Hcnt(19) & ( !Hcnt(17) & ( (!Hcnt(20) & (!Hcnt(24) & (!Hcnt(23) & !Hcnt(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(20),
	datab => ALT_INV_Hcnt(24),
	datac => ALT_INV_Hcnt(23),
	datad => ALT_INV_Hcnt(22),
	datae => ALT_INV_Hcnt(19),
	dataf => ALT_INV_Hcnt(17),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X82_Y26_N15
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \Equal0~3_combout\ & ( (!Hcnt(10) & (\Equal0~2_combout\ & \Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(10),
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: FF_X81_Y27_N19
\Hcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(6));

-- Location: MLABCELL_X82_Y27_N57
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \Hcnt[8]~DUPLICATE_q\ & ( \Hcnt[7]~DUPLICATE_q\ & ( (\Hcnt[4]~DUPLICATE_q\ & (!Hcnt(6) & !Hcnt(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	datac => ALT_INV_Hcnt(6),
	datad => ALT_INV_Hcnt(5),
	datae => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	dataf => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X81_Y26_N27
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( Hcnt(29) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~102\ = CARRY(( Hcnt(29) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(29),
	cin => \Add0~46\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X81_Y26_N29
\Hcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(29));

-- Location: LABCELL_X81_Y26_N30
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \Hcnt[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( \Hcnt[30]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X81_Y26_N32
\Hcnt[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[30]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y26_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \Hcnt[31]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Hcnt[31]~DUPLICATE_q\,
	cin => \Add0~98\,
	sumout => \Add0~93_sumout\);

-- Location: FF_X81_Y26_N35
\Hcnt[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[31]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y27_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\Hcnt[0]~DUPLICATE_q\ & ( (\Equal0~5_combout\ & (!Hcnt(29) & (!\Hcnt[30]~DUPLICATE_q\ & !\Hcnt[31]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => ALT_INV_Hcnt(29),
	datac => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datad => \ALT_INV_Hcnt[31]~DUPLICATE_q\,
	dataf => \ALT_INV_Hcnt[0]~DUPLICATE_q\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X82_Y27_N27
\Hcnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt~0_combout\ = ( \Equal0~6_combout\ & ( (!\Add0~105_sumout\) # ((\Equal0~4_combout\ & \Equal1~0_combout\)) ) ) # ( !\Equal0~6_combout\ & ( !\Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Hcnt~0_combout\);

-- Location: FF_X82_Y27_N29
\Hcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(9));

-- Location: MLABCELL_X82_Y27_N33
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !Hcnt(3) & ( (!Hcnt(9) & (!Hcnt(1) & !Hcnt(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(9),
	datac => ALT_INV_Hcnt(1),
	datad => ALT_INV_Hcnt(2),
	dataf => ALT_INV_Hcnt(3),
	combout => \Equal0~5_combout\);

-- Location: FF_X82_Y27_N52
\Hcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[0]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(0));

-- Location: LABCELL_X81_Y26_N39
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\Hcnt[31]~DUPLICATE_q\ & ( (!\Hcnt[30]~DUPLICATE_q\ & !Hcnt(29)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datad => ALT_INV_Hcnt(29),
	dataf => \ALT_INV_Hcnt[31]~DUPLICATE_q\,
	combout => \process_0~0_combout\);

-- Location: MLABCELL_X82_Y27_N39
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Equal0~4_combout\ & ( (\Equal0~5_combout\ & (!Hcnt(0) & (\Equal1~0_combout\ & \process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => ALT_INV_Hcnt(0),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal1~1_combout\);

-- Location: FF_X82_Y27_N23
\Hcnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~125_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y27_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( Hcnt(5) ) + ( GND ) + ( \Add0~126\ ))
-- \Add0~10\ = CARRY(( Hcnt(5) ) + ( GND ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Hcnt(5),
	cin => \Add0~126\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X82_Y27_N50
\Hcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(5));

-- Location: LABCELL_X81_Y27_N18
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Hcnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( \Hcnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Hcnt[6]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X81_Y27_N20
\Hcnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y27_N21
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\Hcnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( !\Hcnt[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X82_Y27_N15
\Hcnt[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Hcnt[7]~1_combout\ = !\Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add0~1_sumout\,
	combout => \Hcnt[7]~1_combout\);

-- Location: FF_X82_Y27_N17
\Hcnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[7]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[7]~DUPLICATE_q\);

-- Location: FF_X81_Y27_N26
\Hcnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hcnt[8]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y28_N33
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( !\Hcnt[8]~DUPLICATE_q\ & ( !\Hcnt[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	dataf => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	combout => \Equal0~7_combout\);

-- Location: FF_X82_Y27_N16
\Hcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Hcnt[7]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(7));

-- Location: LABCELL_X81_Y28_N45
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!Hcnt(6) & (!Hcnt(7) & !Hcnt(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(6),
	datab => ALT_INV_Hcnt(7),
	datad => ALT_INV_Hcnt(5),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X81_Y28_N42
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Hcnt(6) & (!Hcnt(7) & Hcnt(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(6),
	datab => ALT_INV_Hcnt(7),
	datac => ALT_INV_Hcnt(5),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X81_Y28_N15
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \h_sync~reg0_q\ & ( \Equal0~4_combout\ & ( (!\Equal0~7_combout\) # ((!\Equal3~0_combout\) # ((!\Equal0~6_combout\) # (\Equal0~0_combout\))) ) ) ) # ( !\h_sync~reg0_q\ & ( \Equal0~4_combout\ & ( (\Equal0~7_combout\ & 
-- (\Equal0~0_combout\ & \Equal0~6_combout\)) ) ) ) # ( \h_sync~reg0_q\ & ( !\Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~7_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_h_sync~reg0_q\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X81_Y28_N16
\h_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \h_sync~reg0_q\);

-- Location: FF_X80_Y28_N47
\Vcnt[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[15]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N33
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( Vcnt(11) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( Vcnt(11) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(11),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X80_Y28_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \Vcnt[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~46\ = CARRY(( \Vcnt[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[12]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X80_Y28_N38
\Vcnt[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[12]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N39
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \Vcnt[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \Vcnt[13]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Vcnt[13]~DUPLICATE_q\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X80_Y28_N41
\Vcnt[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[13]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N42
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( Vcnt(14) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( Vcnt(14) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(14),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X80_Y28_N43
\Vcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(14));

-- Location: LABCELL_X80_Y28_N45
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \Vcnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \Vcnt[15]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[15]~DUPLICATE_q\,
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X80_Y28_N46
\Vcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(15));

-- Location: FF_X80_Y28_N40
\Vcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(13));

-- Location: FF_X80_Y28_N50
\Vcnt[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[16]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N48
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \Vcnt[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~62\ = CARRY(( \Vcnt[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Vcnt[16]~DUPLICATE_q\,
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X80_Y28_N49
\Vcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(16));

-- Location: FF_X80_Y28_N37
\Vcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(12));

-- Location: FF_X80_Y28_N53
\Vcnt[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[17]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N51
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \Vcnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~42\ = CARRY(( \Vcnt[17]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Vcnt[17]~DUPLICATE_q\,
	cin => \Add1~62\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X80_Y28_N52
\Vcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(17));

-- Location: LABCELL_X81_Y28_N54
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( !Vcnt(12) & ( !Vcnt(17) & ( (!Vcnt(15) & (!Vcnt(14) & (!Vcnt(13) & !Vcnt(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(15),
	datab => ALT_INV_Vcnt(14),
	datac => ALT_INV_Vcnt(13),
	datad => ALT_INV_Vcnt(16),
	datae => ALT_INV_Vcnt(12),
	dataf => ALT_INV_Vcnt(17),
	combout => \Equal4~2_combout\);

-- Location: LABCELL_X80_Y28_N54
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( Vcnt(18) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~66\ = CARRY(( Vcnt(18) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(18),
	cin => \Add1~42\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X80_Y28_N56
\Vcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(18));

-- Location: LABCELL_X80_Y28_N57
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( Vcnt(19) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~70\ = CARRY(( Vcnt(19) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(19),
	cin => \Add1~66\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X80_Y28_N59
\Vcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(19));

-- Location: LABCELL_X80_Y27_N0
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( Vcnt(20) ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~18\ = CARRY(( Vcnt(20) ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(20),
	cin => \Add1~70\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X80_Y27_N2
\Vcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(20));

-- Location: LABCELL_X80_Y27_N3
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( Vcnt(21) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~74\ = CARRY(( Vcnt(21) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(21),
	cin => \Add1~18\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X80_Y27_N5
\Vcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(21));

-- Location: LABCELL_X80_Y27_N6
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( Vcnt(22) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~82\ = CARRY(( Vcnt(22) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Vcnt(22),
	cin => \Add1~74\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X80_Y27_N8
\Vcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(22));

-- Location: LABCELL_X80_Y27_N9
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( Vcnt(23) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~22\ = CARRY(( Vcnt(23) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(23),
	cin => \Add1~82\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X80_Y27_N11
\Vcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(23));

-- Location: LABCELL_X80_Y27_N12
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( Vcnt(24) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( Vcnt(24) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Vcnt(24),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X80_Y27_N14
\Vcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(24));

-- Location: LABCELL_X80_Y27_N15
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( Vcnt(25) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~78\ = CARRY(( Vcnt(25) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(25),
	cin => \Add1~26\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X80_Y27_N17
\Vcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(25));

-- Location: LABCELL_X80_Y27_N18
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( Vcnt(26) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~86\ = CARRY(( Vcnt(26) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(26),
	cin => \Add1~78\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X80_Y27_N20
\Vcnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(26));

-- Location: LABCELL_X80_Y27_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( Vcnt(27) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~30\ = CARRY(( Vcnt(27) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(27),
	cin => \Add1~86\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X80_Y27_N23
\Vcnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(27));

-- Location: LABCELL_X80_Y27_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( Vcnt(28) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( Vcnt(28) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(28),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X80_Y27_N26
\Vcnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(28));

-- Location: LABCELL_X80_Y27_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \Vcnt[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \Vcnt[29]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[29]~DUPLICATE_q\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X80_Y27_N29
\Vcnt[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[29]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y27_N30
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( Vcnt(30) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~6\ = CARRY(( Vcnt(30) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(30),
	cin => \Add1~38\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X80_Y27_N31
\Vcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(30));

-- Location: LABCELL_X80_Y27_N33
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( Vcnt(31) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(31),
	cin => \Add1~6\,
	sumout => \Add1~89_sumout\);

-- Location: LABCELL_X80_Y27_N36
\Vcnt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~0_combout\ = ( \Add1~89_sumout\ & ( !\Equal5~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Equal5~2_combout\,
	dataf => \ALT_INV_Add1~89_sumout\,
	combout => \Vcnt~0_combout\);

-- Location: FF_X80_Y27_N37
\Vcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(31));

-- Location: FF_X80_Y28_N14
\Vcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(4));

-- Location: FF_X81_Y28_N2
\Vcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(0));

-- Location: LABCELL_X81_Y28_N36
\Ven~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ven~0_combout\ = ( !\Ven~q\ & ( \Equal0~4_combout\ & ( (\Equal0~6_combout\ & (\Equal3~0_combout\ & \Equal0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => \ALT_INV_Equal3~0_combout\,
	datac => \ALT_INV_Equal0~7_combout\,
	datae => \ALT_INV_Ven~q\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Ven~0_combout\);

-- Location: FF_X81_Y28_N38
Ven : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Ven~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ven~q\);

-- Location: LABCELL_X80_Y28_N0
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( \Ven~q\ ) + ( Vcnt(0) ) + ( !VCC ))
-- \Add1~118\ = CARRY(( \Ven~q\ ) + ( Vcnt(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(0),
	datad => \ALT_INV_Ven~q\,
	cin => GND,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: LABCELL_X80_Y28_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( Vcnt(1) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~2\ = CARRY(( Vcnt(1) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(1),
	cin => \Add1~118\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X80_Y28_N6
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( Vcnt(2) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~126\ = CARRY(( Vcnt(2) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(2),
	cin => \Add1~2\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X80_Y28_N7
\Vcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(2));

-- Location: LABCELL_X80_Y28_N9
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( !\Vcnt[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~94\ = CARRY(( !\Vcnt[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[3]~DUPLICATE_q\,
	cin => \Add1~126\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: LABCELL_X79_Y28_N42
\Vcnt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~1_combout\ = ( \Equal4~5_combout\ & ( (!\Add1~93_sumout\) # (\Equal5~1_combout\) ) ) # ( !\Equal4~5_combout\ & ( !\Add1~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal5~1_combout\,
	datac => \ALT_INV_Add1~93_sumout\,
	dataf => \ALT_INV_Equal4~5_combout\,
	combout => \Vcnt~1_combout\);

-- Location: FF_X79_Y28_N43
\Vcnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N12
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( Vcnt(4) ) + ( GND ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( Vcnt(4) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Vcnt(4),
	cin => \Add1~94\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X80_Y28_N13
\Vcnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[4]~DUPLICATE_q\);

-- Location: FF_X79_Y28_N44
\Vcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(3));

-- Location: LABCELL_X79_Y28_N48
\Equal4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = ( !Vcnt(3) & ( (!Vcnt(31) & !\Vcnt[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(31),
	datad => \ALT_INV_Vcnt[4]~DUPLICATE_q\,
	dataf => ALT_INV_Vcnt(3),
	combout => \Equal4~4_combout\);

-- Location: FF_X80_Y27_N28
\Vcnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(29));

-- Location: LABCELL_X80_Y27_N48
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( !Vcnt(20) & ( !Vcnt(29) & ( (!Vcnt(28) & (!Vcnt(23) & (!Vcnt(27) & !Vcnt(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(28),
	datab => ALT_INV_Vcnt(23),
	datac => ALT_INV_Vcnt(27),
	datad => ALT_INV_Vcnt(24),
	datae => ALT_INV_Vcnt(20),
	dataf => ALT_INV_Vcnt(29),
	combout => \Equal4~1_combout\);

-- Location: FF_X80_Y28_N55
\Vcnt[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[18]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y27_N57
\Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = ( !\Vcnt[18]~DUPLICATE_q\ & ( !Vcnt(19) & ( (!Vcnt(21) & (!Vcnt(22) & (!Vcnt(25) & !Vcnt(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(21),
	datab => ALT_INV_Vcnt(22),
	datac => ALT_INV_Vcnt(25),
	datad => ALT_INV_Vcnt(26),
	datae => \ALT_INV_Vcnt[18]~DUPLICATE_q\,
	dataf => ALT_INV_Vcnt(19),
	combout => \Equal4~3_combout\);

-- Location: LABCELL_X79_Y28_N30
\Equal5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = ( \Equal4~3_combout\ & ( \Equal5~1_combout\ & ( (\Equal4~2_combout\ & (\Equal4~4_combout\ & (\Equal4~0_combout\ & \Equal4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~2_combout\,
	datab => \ALT_INV_Equal4~4_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal4~1_combout\,
	datae => \ALT_INV_Equal4~3_combout\,
	dataf => \ALT_INV_Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: FF_X80_Y28_N5
\Vcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(1));

-- Location: FF_X80_Y28_N4
\Vcnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[1]~DUPLICATE_q\);

-- Location: FF_X80_Y28_N8
\Vcnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[2]~DUPLICATE_q\);

-- Location: FF_X79_Y28_N28
\Vcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(7));

-- Location: LABCELL_X80_Y28_N15
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( !Vcnt(5) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~110\ = CARRY(( !Vcnt(5) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(5),
	cin => \Add1~98\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: LABCELL_X79_Y28_N21
\Vcnt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~4_combout\ = ( \Equal4~5_combout\ & ( (!\Add1~109_sumout\) # (\Equal5~1_combout\) ) ) # ( !\Equal4~5_combout\ & ( !\Add1~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \ALT_INV_Add1~109_sumout\,
	dataf => \ALT_INV_Equal4~5_combout\,
	combout => \Vcnt~4_combout\);

-- Location: FF_X79_Y28_N22
\Vcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(5));

-- Location: LABCELL_X80_Y28_N18
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( !\Vcnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( !\Vcnt[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[6]~DUPLICATE_q\,
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: LABCELL_X81_Y28_N48
\Vcnt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~3_combout\ = ( \Equal5~1_combout\ & ( \Add1~105_sumout\ & ( \Equal4~5_combout\ ) ) ) # ( \Equal5~1_combout\ & ( !\Add1~105_sumout\ ) ) # ( !\Equal5~1_combout\ & ( !\Add1~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal4~5_combout\,
	datae => \ALT_INV_Equal5~1_combout\,
	dataf => \ALT_INV_Add1~105_sumout\,
	combout => \Vcnt~3_combout\);

-- Location: FF_X81_Y28_N50
\Vcnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N21
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( !Vcnt(7) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( !Vcnt(7) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Vcnt(7),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: LABCELL_X79_Y28_N27
\Vcnt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~2_combout\ = ( \Equal4~5_combout\ & ( (!\Add1~101_sumout\) # (\Equal5~1_combout\) ) ) # ( !\Equal4~5_combout\ & ( !\Add1~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~101_sumout\,
	datac => \ALT_INV_Equal5~1_combout\,
	dataf => \ALT_INV_Equal4~5_combout\,
	combout => \Vcnt~2_combout\);

-- Location: FF_X79_Y28_N29
\Vcnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[7]~DUPLICATE_q\);

-- Location: FF_X79_Y28_N47
\Vcnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[8]~DUPLICATE_q\);

-- Location: FF_X79_Y28_N23
\Vcnt[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[5]~DUPLICATE_q\);

-- Location: FF_X81_Y28_N49
\Vcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(6));

-- Location: LABCELL_X79_Y28_N0
\Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = ( Vcnt(6) & ( (\Vcnt[7]~DUPLICATE_q\ & (\Vcnt[8]~DUPLICATE_q\ & (\Vcnt[5]~DUPLICATE_q\ & !\Vcnt[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Vcnt[7]~DUPLICATE_q\,
	datab => \ALT_INV_Vcnt[8]~DUPLICATE_q\,
	datac => \ALT_INV_Vcnt[5]~DUPLICATE_q\,
	datad => \ALT_INV_Vcnt[0]~DUPLICATE_q\,
	dataf => ALT_INV_Vcnt(6),
	combout => \Equal5~0_combout\);

-- Location: FF_X80_Y28_N28
\Vcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(9));

-- Location: LABCELL_X79_Y28_N15
\Equal5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = ( Vcnt(9) & ( (!\Vcnt[1]~DUPLICATE_q\ & (\Vcnt[2]~DUPLICATE_q\ & \Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Vcnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_Vcnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_Equal5~0_combout\,
	dataf => ALT_INV_Vcnt(9),
	combout => \Equal5~1_combout\);

-- Location: LABCELL_X80_Y28_N24
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( !Vcnt(8) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~114\ = CARRY(( !Vcnt(8) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Vcnt(8),
	cin => \Add1~102\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: LABCELL_X79_Y28_N45
\Vcnt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~5_combout\ = ( \Equal4~5_combout\ & ( (!\Add1~113_sumout\) # (\Equal5~1_combout\) ) ) # ( !\Equal4~5_combout\ & ( !\Add1~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal5~1_combout\,
	datad => \ALT_INV_Add1~113_sumout\,
	dataf => \ALT_INV_Equal4~5_combout\,
	combout => \Vcnt~5_combout\);

-- Location: FF_X79_Y28_N46
\Vcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(8));

-- Location: LABCELL_X80_Y28_N27
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( \Vcnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~122\ = CARRY(( \Vcnt[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Vcnt[9]~DUPLICATE_q\,
	cin => \Add1~114\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X80_Y28_N29
\Vcnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[9]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y28_N30
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \Vcnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~14\ = CARRY(( \Vcnt[10]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Vcnt[10]~DUPLICATE_q\,
	cin => \Add1~122\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X80_Y28_N31
\Vcnt[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[10]~DUPLICATE_q\);

-- Location: FF_X80_Y28_N35
\Vcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(11));

-- Location: FF_X80_Y28_N32
\Vcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Vcnt(10));

-- Location: LABCELL_X79_Y28_N54
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !Vcnt(30) & ( (!Vcnt(11) & !Vcnt(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(11),
	datac => ALT_INV_Vcnt(10),
	dataf => ALT_INV_Vcnt(30),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X79_Y28_N51
\Equal4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = ( \Equal4~2_combout\ & ( (\Equal4~0_combout\ & (\Equal4~4_combout\ & (\Equal4~1_combout\ & \Equal4~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~0_combout\,
	datab => \ALT_INV_Equal4~4_combout\,
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~3_combout\,
	dataf => \ALT_INV_Equal4~2_combout\,
	combout => \Equal4~5_combout\);

-- Location: LABCELL_X81_Y28_N0
\Vcnt~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vcnt~6_combout\ = ( \Equal5~1_combout\ & ( \Add1~117_sumout\ & ( !\Equal4~5_combout\ ) ) ) # ( !\Equal5~1_combout\ & ( \Add1~117_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal4~5_combout\,
	datae => \ALT_INV_Equal5~1_combout\,
	dataf => \ALT_INV_Add1~117_sumout\,
	combout => \Vcnt~6_combout\);

-- Location: FF_X81_Y28_N1
\Vcnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vcnt~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vcnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y28_N18
\Equal4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = ( !\Vcnt[2]~DUPLICATE_q\ & ( (\Vcnt[0]~DUPLICATE_q\ & (!\Vcnt[8]~DUPLICATE_q\ & !Vcnt(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Vcnt[0]~DUPLICATE_q\,
	datab => \ALT_INV_Vcnt[8]~DUPLICATE_q\,
	datac => ALT_INV_Vcnt(9),
	dataf => \ALT_INV_Vcnt[2]~DUPLICATE_q\,
	combout => \Equal4~6_combout\);

-- Location: LABCELL_X79_Y28_N24
\LessThan15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = ( !Vcnt(6) & ( (!\Vcnt[7]~DUPLICATE_q\ & !\Vcnt[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Vcnt[7]~DUPLICATE_q\,
	datad => \ALT_INV_Vcnt[5]~DUPLICATE_q\,
	dataf => ALT_INV_Vcnt(6),
	combout => \LessThan15~0_combout\);

-- Location: LABCELL_X79_Y28_N12
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \Equal4~5_combout\ & ( (!\Equal4~6_combout\ & (((\v_sync~reg0_q\)))) # (\Equal4~6_combout\ & ((!\LessThan15~0_combout\ & ((\v_sync~reg0_q\))) # (\LessThan15~0_combout\ & (\Vcnt[1]~DUPLICATE_q\)))) ) ) # ( !\Equal4~5_combout\ & ( 
-- \v_sync~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~6_combout\,
	datab => \ALT_INV_Vcnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_LessThan15~0_combout\,
	datad => \ALT_INV_v_sync~reg0_q\,
	dataf => \ALT_INV_Equal4~5_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X79_Y28_N13
\v_sync~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v_sync~reg0_q\);

-- Location: MLABCELL_X82_Y26_N57
\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~1_combout\ & (Hcnt(9) & (!Hcnt(10) & \Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => ALT_INV_Hcnt(9),
	datac => ALT_INV_Hcnt(10),
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \process_0~7_combout\);

-- Location: FF_X82_Y27_N22
\Hcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~125_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(4));

-- Location: FF_X81_Y27_N25
\Hcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(8));

-- Location: MLABCELL_X82_Y26_N18
\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ( Hcnt(8) & ( (!Hcnt(6) & Hcnt(7)) ) ) # ( !Hcnt(8) & ( (Hcnt(6) & (Hcnt(5) & (Hcnt(4) & !Hcnt(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(6),
	datab => ALT_INV_Hcnt(5),
	datac => ALT_INV_Hcnt(4),
	datad => ALT_INV_Hcnt(7),
	dataf => ALT_INV_Hcnt(8),
	combout => \process_0~8_combout\);

-- Location: LABCELL_X83_Y26_N51
\process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ( \process_0~8_combout\ & ( (\process_0~7_combout\ & \process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~7_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_process_0~8_combout\,
	combout => \process_0~9_combout\);

-- Location: MLABCELL_X82_Y26_N51
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !Hcnt(7) & ( (Hcnt(6)) # (Hcnt(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Hcnt(5),
	datad => ALT_INV_Hcnt(6),
	dataf => ALT_INV_Hcnt(7),
	combout => \LessThan2~0_combout\);

-- Location: FF_X81_Y26_N34
\Hcnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(31));

-- Location: MLABCELL_X82_Y27_N30
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \Hcnt[7]~DUPLICATE_q\ & ( (!Hcnt(6)) # ((!Hcnt(5) & !\Hcnt[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(6),
	datac => ALT_INV_Hcnt(5),
	datad => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	dataf => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y26_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \Equal0~1_combout\ & ( \Equal0~2_combout\ & ( (!Hcnt(8) & (Hcnt(9) & (\Equal0~3_combout\ & !Hcnt(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(8),
	datab => ALT_INV_Hcnt(9),
	datac => \ALT_INV_Equal0~3_combout\,
	datad => ALT_INV_Hcnt(10),
	datae => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X83_Y26_N12
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( !\Hcnt[30]~DUPLICATE_q\ & ( \LessThan0~0_combout\ & ( (!\LessThan2~0_combout\ & (!Hcnt(31) & (!\LessThan0~1_combout\ & !Hcnt(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~0_combout\,
	datab => ALT_INV_Hcnt(31),
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => ALT_INV_Hcnt(29),
	datae => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: MLABCELL_X82_Y26_N42
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( Hcnt(4) & ( (!Hcnt(7) & (!Hcnt(5) $ (!Hcnt(6)))) ) ) # ( !Hcnt(4) & ( (!Hcnt(7) & ((Hcnt(6)) # (Hcnt(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(5),
	datac => ALT_INV_Hcnt(6),
	datad => ALT_INV_Hcnt(7),
	dataf => ALT_INV_Hcnt(4),
	combout => \process_0~2_combout\);

-- Location: LABCELL_X83_Y26_N9
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( \LessThan0~0_combout\ & ( (\process_0~2_combout\ & \process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~2_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \process_0~3_combout\);

-- Location: MLABCELL_X82_Y27_N0
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( Hcnt(9) & ( Hcnt(8) & ( (Hcnt(5) & (Hcnt(6) & !\Hcnt[7]~DUPLICATE_q\)) ) ) ) # ( !Hcnt(9) & ( !Hcnt(8) & ( (!Hcnt(6) & (\Hcnt[7]~DUPLICATE_q\ & ((!Hcnt(5)) # (!\Hcnt[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000000000000000000000000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(5),
	datab => ALT_INV_Hcnt(6),
	datac => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	datad => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	datae => ALT_INV_Hcnt(9),
	dataf => ALT_INV_Hcnt(8),
	combout => \process_0~6_combout\);

-- Location: MLABCELL_X82_Y27_N42
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( \Hcnt[8]~DUPLICATE_q\ & ( \Hcnt[7]~DUPLICATE_q\ & ( Hcnt(6) ) ) ) # ( \Hcnt[8]~DUPLICATE_q\ & ( !\Hcnt[7]~DUPLICATE_q\ & ( (!Hcnt(5) & (!Hcnt(6) & !\Hcnt[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(5),
	datab => ALT_INV_Hcnt(6),
	datac => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	datae => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	dataf => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	combout => \process_0~4_combout\);

-- Location: LABCELL_X81_Y26_N36
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( !Hcnt(7) & ( (\Hcnt[8]~DUPLICATE_q\ & ((!Hcnt(6) & ((Hcnt(4)) # (Hcnt(5)))) # (Hcnt(6) & (!Hcnt(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101110000000000110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(6),
	datab => ALT_INV_Hcnt(5),
	datac => ALT_INV_Hcnt(4),
	datad => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	dataf => ALT_INV_Hcnt(7),
	combout => \process_0~5_combout\);

-- Location: LABCELL_X80_Y26_N39
\R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~0_combout\ = ( \process_0~5_combout\ & ( \Equal0~4_combout\ & ( (\process_0~0_combout\ & ((!Hcnt(9) & (\process_0~6_combout\)) # (Hcnt(9) & ((\process_0~4_combout\))))) ) ) ) # ( !\process_0~5_combout\ & ( \Equal0~4_combout\ & ( (\process_0~0_combout\ 
-- & (((\process_0~4_combout\ & Hcnt(9))) # (\process_0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datab => \ALT_INV_process_0~4_combout\,
	datac => ALT_INV_Hcnt(9),
	datad => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_process_0~5_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \R~0_combout\);

-- Location: LABCELL_X83_Y26_N48
\B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~0_combout\ = ( \R~0_combout\ & ( (!\process_0~1_combout\ & ((!\process_0~9_combout\) # (\process_0~3_combout\))) ) ) # ( !\R~0_combout\ & ( (!\process_0~1_combout\ & \process_0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~9_combout\,
	datab => \ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_process_0~3_combout\,
	dataf => \ALT_INV_R~0_combout\,
	combout => \B~0_combout\);

-- Location: LABCELL_X83_Y26_N39
\R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~1_combout\ = ( \LessThan0~0_combout\ & ( ((\LessThan0~1_combout\ & (!Hcnt(29) & !\Hcnt[30]~DUPLICATE_q\))) # (Hcnt(31)) ) ) # ( !\LessThan0~0_combout\ & ( Hcnt(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101110011001100110111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => ALT_INV_Hcnt(31),
	datac => ALT_INV_Hcnt(29),
	datad => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \R~1_combout\);

-- Location: FF_X81_Y26_N31
\Hcnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Hcnt(30));

-- Location: MLABCELL_X82_Y26_N24
\G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~0_combout\ = ( \process_0~4_combout\ & ( \process_0~7_combout\ & ( \process_0~0_combout\ ) ) ) # ( !\process_0~4_combout\ & ( \process_0~7_combout\ & ( (\process_0~0_combout\ & (((\process_0~2_combout\ & !Hcnt(8))) # (\process_0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_process_0~8_combout\,
	datad => ALT_INV_Hcnt(8),
	datae => \ALT_INV_process_0~4_combout\,
	dataf => \ALT_INV_process_0~7_combout\,
	combout => \G~0_combout\);

-- Location: MLABCELL_X82_Y26_N45
\B[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~3_combout\ = ( \LessThan0~0_combout\ & ( (!Hcnt(29) & ((!\LessThan2~0_combout\) # (\LessThan0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~0_combout\,
	datac => ALT_INV_Hcnt(29),
	datad => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \B[0]~3_combout\);

-- Location: MLABCELL_X82_Y27_N9
\B[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~1_combout\ = ( !Hcnt(9) & ( !Hcnt(8) & ( (\Hcnt[7]~DUPLICATE_q\ & (((Hcnt(5) & \Hcnt[4]~DUPLICATE_q\)) # (Hcnt(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(5),
	datab => ALT_INV_Hcnt(6),
	datac => \ALT_INV_Hcnt[7]~DUPLICATE_q\,
	datad => \ALT_INV_Hcnt[4]~DUPLICATE_q\,
	datae => ALT_INV_Hcnt(9),
	dataf => ALT_INV_Hcnt(8),
	combout => \B[0]~1_combout\);

-- Location: MLABCELL_X82_Y26_N6
\B[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~2_combout\ = ( \process_0~6_combout\ & ( \Equal0~4_combout\ & ( !Hcnt(29) ) ) ) # ( !\process_0~6_combout\ & ( \Equal0~4_combout\ & ( (!Hcnt(29) & (((Hcnt(9) & \process_0~5_combout\)) # (\B[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~1_combout\,
	datab => ALT_INV_Hcnt(9),
	datac => \ALT_INV_process_0~5_combout\,
	datad => ALT_INV_Hcnt(29),
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \B[0]~2_combout\);

-- Location: MLABCELL_X82_Y26_N36
\B[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~4_combout\ = ( \B[0]~3_combout\ & ( \B[0]~2_combout\ & ( (!\rst~input_o\ & ((!Hcnt(30)) # ((\G~0_combout\) # (Hcnt(31))))) ) ) ) # ( !\B[0]~3_combout\ & ( \B[0]~2_combout\ & ( (!\rst~input_o\ & ((!Hcnt(30)) # ((\G~0_combout\) # (Hcnt(31))))) ) ) ) # 
-- ( \B[0]~3_combout\ & ( !\B[0]~2_combout\ & ( (!\rst~input_o\ & ((!Hcnt(30)) # ((\G~0_combout\) # (Hcnt(31))))) ) ) ) # ( !\B[0]~3_combout\ & ( !\B[0]~2_combout\ & ( (!\rst~input_o\ & ((\G~0_combout\) # (Hcnt(31)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000101111110000000010111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(30),
	datab => ALT_INV_Hcnt(31),
	datac => \ALT_INV_G~0_combout\,
	datad => \ALT_INV_rst~input_o\,
	datae => \ALT_INV_B[0]~3_combout\,
	dataf => \ALT_INV_B[0]~2_combout\,
	combout => \B[0]~4_combout\);

-- Location: FF_X83_Y26_N50
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B~0_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LABCELL_X79_Y28_N36
\LessThan15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = ( \Vcnt[7]~DUPLICATE_q\ & ( Vcnt(6) & ( (!Vcnt(9) & \Vcnt[8]~DUPLICATE_q\) ) ) ) # ( !\Vcnt[7]~DUPLICATE_q\ & ( Vcnt(6) & ( (!Vcnt(9) & \Vcnt[8]~DUPLICATE_q\) ) ) ) # ( \Vcnt[7]~DUPLICATE_q\ & ( !Vcnt(6) & ( (!Vcnt(9) & 
-- \Vcnt[8]~DUPLICATE_q\) ) ) ) # ( !\Vcnt[7]~DUPLICATE_q\ & ( !Vcnt(6) & ( (!Vcnt(9) & (\Vcnt[8]~DUPLICATE_q\ & ((!Vcnt(4)) # (\Vcnt[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Vcnt(9),
	datab => ALT_INV_Vcnt(4),
	datac => \ALT_INV_Vcnt[5]~DUPLICATE_q\,
	datad => \ALT_INV_Vcnt[8]~DUPLICATE_q\,
	datae => \ALT_INV_Vcnt[7]~DUPLICATE_q\,
	dataf => ALT_INV_Vcnt(6),
	combout => \LessThan15~1_combout\);

-- Location: LABCELL_X79_Y28_N6
\LessThan15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = ( \LessThan15~1_combout\ & ( \Equal4~3_combout\ & ( (!Vcnt(31) & ((!\Equal4~2_combout\) # ((!\Equal4~0_combout\) # (!\Equal4~1_combout\)))) ) ) ) # ( !\LessThan15~1_combout\ & ( \Equal4~3_combout\ & ( !Vcnt(31) ) ) ) # ( 
-- \LessThan15~1_combout\ & ( !\Equal4~3_combout\ & ( !Vcnt(31) ) ) ) # ( !\LessThan15~1_combout\ & ( !\Equal4~3_combout\ & ( !Vcnt(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal4~2_combout\,
	datab => ALT_INV_Vcnt(31),
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal4~1_combout\,
	datae => \ALT_INV_LessThan15~1_combout\,
	dataf => \ALT_INV_Equal4~3_combout\,
	combout => \LessThan15~2_combout\);

-- Location: LABCELL_X83_Y28_N0
\Vid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~0_combout\ = ( !B(0) & ( \LessThan15~2_combout\ ) ) # ( B(0) & ( !\LessThan15~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_B(0),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~0_combout\);

-- Location: FF_X83_Y28_N4
\Vid[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~0_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[0]~reg0_q\);

-- Location: LABCELL_X83_Y26_N3
\G~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~1_combout\ = ( \LessThan0~0_combout\ & ( (!\process_0~2_combout\ & \process_0~0_combout\) ) ) # ( !\LessThan0~0_combout\ & ( \process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~2_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \G~1_combout\);

-- Location: LABCELL_X83_Y26_N42
\B~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~5_combout\ = ( \process_0~5_combout\ & ( \process_0~7_combout\ ) ) # ( !\process_0~5_combout\ & ( (\process_0~7_combout\ & \process_0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~7_combout\,
	datad => \ALT_INV_process_0~4_combout\,
	dataf => \ALT_INV_process_0~5_combout\,
	combout => \B~5_combout\);

-- Location: LABCELL_X83_Y26_N45
\B~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~6_combout\ = ( \B~5_combout\ & ( (!\process_0~1_combout\ & !\G~1_combout\) ) ) # ( !\B~5_combout\ & ( (!\process_0~1_combout\ & ((!\process_0~7_combout\) # ((!\process_0~8_combout\) # (!\G~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~1_combout\,
	datab => \ALT_INV_process_0~7_combout\,
	datac => \ALT_INV_process_0~8_combout\,
	datad => \ALT_INV_G~1_combout\,
	dataf => \ALT_INV_B~5_combout\,
	combout => \B~6_combout\);

-- Location: FF_X83_Y26_N46
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B~6_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LABCELL_X79_Y28_N3
\Vid~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~1_combout\ = ( \LessThan15~2_combout\ & ( !B(1) ) ) # ( !\LessThan15~2_combout\ & ( B(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(1),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~1_combout\);

-- Location: FF_X79_Y28_N34
\Vid[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~1_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[1]~reg0_q\);

-- Location: LABCELL_X81_Y26_N42
\B~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~7_combout\ = ( \process_0~5_combout\ & ( \Equal0~4_combout\ & ( (\process_0~0_combout\ & ((!Hcnt(9) & (\process_0~6_combout\)) # (Hcnt(9) & ((!\process_0~4_combout\))))) ) ) ) # ( !\process_0~5_combout\ & ( \Equal0~4_combout\ & ( (\process_0~6_combout\ 
-- & (\process_0~0_combout\ & ((!\process_0~4_combout\) # (!Hcnt(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100000001000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_process_0~4_combout\,
	datad => ALT_INV_Hcnt(9),
	datae => \ALT_INV_process_0~5_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \B~7_combout\);

-- Location: LABCELL_X83_Y26_N0
\B~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~8_combout\ = ( \B~7_combout\ & ( (!\process_0~1_combout\ & ((!\process_0~9_combout\) # (\process_0~3_combout\))) ) ) # ( !\B~7_combout\ & ( (!\process_0~1_combout\ & \process_0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_process_0~3_combout\,
	dataf => \ALT_INV_B~7_combout\,
	combout => \B~8_combout\);

-- Location: FF_X83_Y26_N1
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B~8_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LABCELL_X83_Y28_N6
\Vid~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~2_combout\ = ( \LessThan15~2_combout\ & ( !B(2) ) ) # ( !\LessThan15~2_combout\ & ( B(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_B(2),
	datae => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~2_combout\);

-- Location: FF_X83_Y28_N10
\Vid[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~2_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[2]~reg0_q\);

-- Location: MLABCELL_X82_Y26_N12
\B~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~9_combout\ = ( \process_0~7_combout\ & ( (!\process_0~1_combout\ & ((!\process_0~8_combout\) # (!\G~1_combout\))) ) ) # ( !\process_0~7_combout\ & ( !\process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datac => \ALT_INV_G~1_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	dataf => \ALT_INV_process_0~7_combout\,
	combout => \B~9_combout\);

-- Location: FF_X82_Y26_N13
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \B~9_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: LABCELL_X83_Y28_N12
\Vid~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~3_combout\ = ( \LessThan15~2_combout\ & ( !B(3) ) ) # ( !\LessThan15~2_combout\ & ( B(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(3),
	datae => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~3_combout\);

-- Location: FF_X83_Y28_N16
\Vid[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~3_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[3]~reg0_q\);

-- Location: FF_X83_Y28_N1
\Vid[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[4]~reg0_q\);

-- Location: FF_X79_Y28_N4
\Vid[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[5]~reg0_q\);

-- Location: FF_X83_Y28_N7
\Vid[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[6]~reg0_q\);

-- Location: FF_X83_Y28_N13
\Vid[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[7]~reg0_q\);

-- Location: MLABCELL_X82_Y26_N48
\G~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~2_combout\ = ( \process_0~0_combout\ & ( (\process_0~7_combout\ & (((\process_0~2_combout\ & !Hcnt(8))) # (\process_0~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000001010000011100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_process_0~7_combout\,
	datad => ALT_INV_Hcnt(8),
	dataf => \ALT_INV_process_0~0_combout\,
	combout => \G~2_combout\);

-- Location: MLABCELL_X82_Y26_N54
\G~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~3_combout\ = ( \G~2_combout\ & ( \process_0~1_combout\ ) ) # ( !\G~2_combout\ & ( (\B~7_combout\) # (\process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_B~7_combout\,
	dataf => \ALT_INV_G~2_combout\,
	combout => \G~3_combout\);

-- Location: FF_X82_Y26_N55
\G[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G~3_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(0));

-- Location: LABCELL_X83_Y28_N45
\Vid~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~4_combout\ = ( !G(0) & ( \LessThan15~2_combout\ ) ) # ( G(0) & ( !\LessThan15~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_G(0),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~4_combout\);

-- Location: FF_X83_Y28_N43
\Vid[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~4_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[8]~reg0_q\);

-- Location: LABCELL_X80_Y26_N45
\B~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \B~10_combout\ = ( \process_0~6_combout\ & ( \Equal0~4_combout\ & ( (\process_0~0_combout\ & ((!\process_0~5_combout\) # (!Hcnt(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_process_0~5_combout\,
	datac => ALT_INV_Hcnt(9),
	datae => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \B~10_combout\);

-- Location: MLABCELL_X82_Y26_N21
\G~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~4_combout\ = ( \G~0_combout\ & ( \process_0~1_combout\ ) ) # ( !\G~0_combout\ & ( (!\B~10_combout\) # (\process_0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~1_combout\,
	datad => \ALT_INV_B~10_combout\,
	dataf => \ALT_INV_G~0_combout\,
	combout => \G~4_combout\);

-- Location: FF_X82_Y26_N22
\G[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G~4_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(1));

-- Location: LABCELL_X83_Y28_N24
\Vid~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~5_combout\ = ( \LessThan15~2_combout\ & ( !G(1) ) ) # ( !\LessThan15~2_combout\ & ( G(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_G(1),
	datae => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~5_combout\);

-- Location: FF_X83_Y28_N28
\Vid[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~5_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[9]~reg0_q\);

-- Location: LABCELL_X83_Y26_N6
\G~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~5_combout\ = ( \B~5_combout\ & ( ((!\process_0~9_combout\ & \G~1_combout\)) # (\process_0~1_combout\) ) ) # ( !\B~5_combout\ & ( \process_0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~1_combout\,
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_G~1_combout\,
	dataf => \ALT_INV_B~5_combout\,
	combout => \G~5_combout\);

-- Location: FF_X83_Y26_N7
\G[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G~5_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(2));

-- Location: LABCELL_X83_Y28_N54
\Vid~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~6_combout\ = ( \LessThan15~2_combout\ & ( !G(2) ) ) # ( !\LessThan15~2_combout\ & ( G(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G(2),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~6_combout\);

-- Location: FF_X83_Y28_N58
\Vid[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~6_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[10]~reg0_q\);

-- Location: LABCELL_X83_Y26_N30
\G~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~6_combout\ = ( \process_0~7_combout\ & ( \process_0~8_combout\ & ( (!Hcnt(29) & !\Hcnt[30]~DUPLICATE_q\) ) ) ) # ( \process_0~7_combout\ & ( !\process_0~8_combout\ & ( (!Hcnt(29) & (\process_0~2_combout\ & (!\Hcnt[8]~DUPLICATE_q\ & 
-- !\Hcnt[30]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Hcnt(29),
	datab => \ALT_INV_process_0~2_combout\,
	datac => \ALT_INV_Hcnt[8]~DUPLICATE_q\,
	datad => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datae => \ALT_INV_process_0~7_combout\,
	dataf => \ALT_INV_process_0~8_combout\,
	combout => \G~6_combout\);

-- Location: LABCELL_X83_Y26_N36
\G~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \G~7_combout\ = ( \process_0~1_combout\ ) # ( !\process_0~1_combout\ & ( (!\G~6_combout\) # (Hcnt(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Hcnt(31),
	datac => \ALT_INV_G~6_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \G~7_combout\);

-- Location: FF_X83_Y26_N37
\G[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \G~7_combout\,
	sclr => \R~1_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => G(3));

-- Location: LABCELL_X83_Y28_N36
\Vid~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~7_combout\ = ( \LessThan15~2_combout\ & ( !G(3) ) ) # ( !\LessThan15~2_combout\ & ( G(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_G(3),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~7_combout\);

-- Location: FF_X83_Y28_N40
\Vid[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~7_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[11]~reg0_q\);

-- Location: FF_X83_Y28_N47
\Vid[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[12]~reg0_q\);

-- Location: FF_X83_Y28_N25
\Vid[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~5_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[13]~reg0_q\);

-- Location: FF_X83_Y28_N55
\Vid[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~6_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[14]~reg0_q\);

-- Location: FF_X83_Y28_N37
\Vid[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~7_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[15]~reg0_q\);

-- Location: LABCELL_X83_Y26_N21
\B[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[1]~11_combout\ = ( \LessThan0~0_combout\ & ( (!\LessThan0~1_combout\ & (!Hcnt(29) & !\LessThan2~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_Hcnt(29),
	datad => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \B[1]~11_combout\);

-- Location: LABCELL_X83_Y26_N54
\R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~2_combout\ = ( \B[1]~11_combout\ & ( \R~1_combout\ ) ) # ( !\B[1]~11_combout\ & ( \R~1_combout\ ) ) # ( !\B[1]~11_combout\ & ( !\R~1_combout\ & ( (\G~1_combout\ & (\B~5_combout\ & (!\process_0~9_combout\ & !\Hcnt[30]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_G~1_combout\,
	datab => \ALT_INV_B~5_combout\,
	datac => \ALT_INV_process_0~9_combout\,
	datad => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datae => \ALT_INV_B[1]~11_combout\,
	dataf => \ALT_INV_R~1_combout\,
	combout => \R~2_combout\);

-- Location: FF_X83_Y26_N55
\R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R~2_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(0));

-- Location: LABCELL_X83_Y28_N21
\Vid~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~8_combout\ = ( \LessThan15~2_combout\ & ( !R(0) ) ) # ( !\LessThan15~2_combout\ & ( R(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_R(0),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~8_combout\);

-- Location: FF_X83_Y28_N20
\Vid[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~8_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[16]~reg0_q\);

-- Location: LABCELL_X83_Y26_N24
\R~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~3_combout\ = ( \B~7_combout\ & ( \R~1_combout\ ) ) # ( !\B~7_combout\ & ( ((!\G~2_combout\ & ((!\B[1]~11_combout\) # (\Hcnt[30]~DUPLICATE_q\)))) # (\R~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100110011111101110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datab => \ALT_INV_R~1_combout\,
	datac => \ALT_INV_B[1]~11_combout\,
	datad => \ALT_INV_G~2_combout\,
	dataf => \ALT_INV_B~7_combout\,
	combout => \R~3_combout\);

-- Location: FF_X83_Y26_N26
\R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R~3_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(1));

-- Location: LABCELL_X83_Y28_N51
\Vid~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~9_combout\ = ( \LessThan15~2_combout\ & ( !R(1) ) ) # ( !\LessThan15~2_combout\ & ( R(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_R(1),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~9_combout\);

-- Location: FF_X83_Y28_N49
\Vid[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~9_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[17]~reg0_q\);

-- Location: LABCELL_X83_Y26_N27
\R~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~4_combout\ = ( \R~0_combout\ & ( ((!\G~2_combout\ & ((!\B[1]~11_combout\) # (\Hcnt[30]~DUPLICATE_q\)))) # (\R~1_combout\) ) ) # ( !\R~0_combout\ & ( \R~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111110011011100111111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	datab => \ALT_INV_R~1_combout\,
	datac => \ALT_INV_G~2_combout\,
	datad => \ALT_INV_B[1]~11_combout\,
	dataf => \ALT_INV_R~0_combout\,
	combout => \R~4_combout\);

-- Location: FF_X83_Y26_N28
\R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R~4_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(2));

-- Location: LABCELL_X79_Y28_N57
\Vid~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~10_combout\ = ( \LessThan15~2_combout\ & ( !R(2) ) ) # ( !\LessThan15~2_combout\ & ( R(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_R(2),
	dataf => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~10_combout\);

-- Location: FF_X79_Y28_N55
\Vid[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~10_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[18]~reg0_q\);

-- Location: LABCELL_X83_Y26_N18
\R~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R~5_combout\ = ( \R~1_combout\ ) # ( !\R~1_combout\ & ( (!\G~6_combout\ & ((!\B[1]~11_combout\) # (\Hcnt[30]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_G~6_combout\,
	datac => \ALT_INV_B[1]~11_combout\,
	datad => \ALT_INV_Hcnt[30]~DUPLICATE_q\,
	dataf => \ALT_INV_R~1_combout\,
	combout => \R~5_combout\);

-- Location: FF_X83_Y26_N19
\R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R~5_combout\,
	ena => \B[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R(3));

-- Location: LABCELL_X83_Y28_N30
\Vid~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Vid~11_combout\ = ( \LessThan15~2_combout\ & ( !R(3) ) ) # ( !\LessThan15~2_combout\ & ( R(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_R(3),
	datae => \ALT_INV_LessThan15~2_combout\,
	combout => \Vid~11_combout\);

-- Location: FF_X83_Y28_N34
\Vid[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Vid~11_combout\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[19]~reg0_q\);

-- Location: FF_X83_Y28_N22
\Vid[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~8_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[20]~reg0_q\);

-- Location: FF_X83_Y28_N53
\Vid[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~9_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[21]~reg0_q\);

-- Location: FF_X79_Y28_N58
\Vid[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~10_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[22]~reg0_q\);

-- Location: FF_X83_Y28_N31
\Vid[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Vid~11_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Vid[23]~reg0_q\);

-- Location: LABCELL_X64_Y32_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


