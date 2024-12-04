-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/04/2024 20:33:10"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FPGA_Edge_Detection IS
    PORT (
	enable : IN std_logic;
	reset : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FPGA_Edge_Detection;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGA_Edge_Detection IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \i3[25]~21clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \edge_matrix[5][2][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][0][0]~combout\ : std_logic;
SIGNAL \i1~4_combout\ : std_logic;
SIGNAL \edge_matrix[6][5][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][6][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][5][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][4][0]~combout\ : std_logic;
SIGNAL \i3[2]~5_combout\ : std_logic;
SIGNAL \edge_matrix[7][3][0]~combout\ : std_logic;
SIGNAL \edge_matrix[7][2][0]~combout\ : std_logic;
SIGNAL \i1~2_combout\ : std_logic;
SIGNAL \i3[25]~6_combout\ : std_logic;
SIGNAL \edge_matrix[6][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[6][6][0]~combout\ : std_logic;
SIGNAL \edge_matrix[6][0][0]~combout\ : std_logic;
SIGNAL \edge_matrix[6][1][0]~combout\ : std_logic;
SIGNAL \i3[2]~15_combout\ : std_logic;
SIGNAL \i2[1]~4_combout\ : std_logic;
SIGNAL \edge_matrix[5][5][0]~combout\ : std_logic;
SIGNAL \edge_matrix[5][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[5][4][0]~combout\ : std_logic;
SIGNAL \edge_matrix[5][0][0]~combout\ : std_logic;
SIGNAL \i2[1]~2_combout\ : std_logic;
SIGNAL \edge_matrix[5][6][0]~combout\ : std_logic;
SIGNAL \edge_matrix[5][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[5][3][0]~combout\ : std_logic;
SIGNAL \i3[25]~16_combout\ : std_logic;
SIGNAL \i2[1]~9_combout\ : std_logic;
SIGNAL \edge_matrix[4][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[4][0][0]~combout\ : std_logic;
SIGNAL \i3[2]~10_combout\ : std_logic;
SIGNAL \edge_matrix[4][4][0]~combout\ : std_logic;
SIGNAL \edge_matrix[4][5][0]~combout\ : std_logic;
SIGNAL \i3[1]~91_combout\ : std_logic;
SIGNAL \edge_matrix[4][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[4][6][0]~combout\ : std_logic;
SIGNAL \i1~3_combout\ : std_logic;
SIGNAL \edge_matrix[4][3][0]~combout\ : std_logic;
SIGNAL \edge_matrix[4][2][0]~combout\ : std_logic;
SIGNAL \i3[2]~17_combout\ : std_logic;
SIGNAL \i2[1]~8_combout\ : std_logic;
SIGNAL \edge_matrix[2][4][0]~combout\ : std_logic;
SIGNAL \edge_matrix[2][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[2][0][0]~combout\ : std_logic;
SIGNAL \edge_matrix[2][5][0]~combout\ : std_logic;
SIGNAL \i3[1]~13_combout\ : std_logic;
SIGNAL \edge_matrix[2][3][0]~combout\ : std_logic;
SIGNAL \edge_matrix[2][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[2][6][0]~combout\ : std_logic;
SIGNAL \i2[0]~10_combout\ : std_logic;
SIGNAL \edge_matrix[3][4][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][2][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][0][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][6][0]~combout\ : std_logic;
SIGNAL \i3[0]~67_combout\ : std_logic;
SIGNAL \edge_matrix[3][7][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][3][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[3][5][0]~combout\ : std_logic;
SIGNAL \i2[1]~11_combout\ : std_logic;
SIGNAL \i2[1]~12_combout\ : std_logic;
SIGNAL \edge_matrix[1][0][0]~combout\ : std_logic;
SIGNAL \edge_matrix[1][1][0]~combout\ : std_logic;
SIGNAL \edge_matrix[1][6][0]~combout\ : std_logic;
SIGNAL \edge_matrix[1][7][0]~combout\ : std_logic;
SIGNAL \i0~3_combout\ : std_logic;
SIGNAL \edge_matrix[1][5][0]~combout\ : std_logic;
SIGNAL \i3[25]~94_combout\ : std_logic;
SIGNAL \edge_matrix[0][6][0]~combout\ : std_logic;
SIGNAL \edge_matrix[0][7][0]~combout\ : std_logic;
SIGNAL \i3[1]~7_combout\ : std_logic;
SIGNAL \edge_matrix[0][2][0]~combout\ : std_logic;
SIGNAL \edge_matrix[0][5][0]~combout\ : std_logic;
SIGNAL \edge_matrix[0][4][0]~combout\ : std_logic;
SIGNAL \i3[1]~8_combout\ : std_logic;
SIGNAL \edge_matrix[0][3][0]~combout\ : std_logic;
SIGNAL \i0~4_combout\ : std_logic;
SIGNAL \edge_matrix[0][0][0]~combout\ : std_logic;
SIGNAL \edge_matrix[0][1][0]~combout\ : std_logic;
SIGNAL \i0~19_combout\ : std_logic;
SIGNAL \i0~16_combout\ : std_logic;
SIGNAL \i0~17_combout\ : std_logic;
SIGNAL \i0~18_combout\ : std_logic;
SIGNAL \i3[2]~23_combout\ : std_logic;
SIGNAL \i3[2]~31_combout\ : std_logic;
SIGNAL \i2[1]~18_combout\ : std_logic;
SIGNAL \i0~13_combout\ : std_logic;
SIGNAL \i0~5_combout\ : std_logic;
SIGNAL \i0~8_combout\ : std_logic;
SIGNAL \i2[2]~3_combout\ : std_logic;
SIGNAL \i3[1]~11_combout\ : std_logic;
SIGNAL \i3[2]~12_combout\ : std_logic;
SIGNAL \i3[25]~14_combout\ : std_logic;
SIGNAL \i3[25]~19_combout\ : std_logic;
SIGNAL \i3[25]~18_combout\ : std_logic;
SIGNAL \i2[0]~5_combout\ : std_logic;
SIGNAL \i3[25]~20_combout\ : std_logic;
SIGNAL \i0~9_combout\ : std_logic;
SIGNAL \i0~14_combout\ : std_logic;
SIGNAL \i0~12_combout\ : std_logic;
SIGNAL \i0~2_combout\ : std_logic;
SIGNAL \i0~7_combout\ : std_logic;
SIGNAL \i0~15_combout\ : std_logic;
SIGNAL \i0~10_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \i3[1]~38_combout\ : std_logic;
SIGNAL \i3[1]~39_combout\ : std_logic;
SIGNAL \i3[2]~50_combout\ : std_logic;
SIGNAL \i3[1]~51_combout\ : std_logic;
SIGNAL \i3[1]~56_combout\ : std_logic;
SIGNAL \i3[1]~55_combout\ : std_logic;
SIGNAL \i3[1]~57_combout\ : std_logic;
SIGNAL \i3[1]~58_combout\ : std_logic;
SIGNAL \i3[0]~52_combout\ : std_logic;
SIGNAL \i3[1]~53_combout\ : std_logic;
SIGNAL \i3[1]~54_combout\ : std_logic;
SIGNAL \i3[1]~41_combout\ : std_logic;
SIGNAL \i3[1]~40_combout\ : std_logic;
SIGNAL \i3[1]~42_combout\ : std_logic;
SIGNAL \i3[2]~43_combout\ : std_logic;
SIGNAL \i3[1]~44_combout\ : std_logic;
SIGNAL \i3[1]~45_combout\ : std_logic;
SIGNAL \i3[1]~46_combout\ : std_logic;
SIGNAL \i3[1]~47_combout\ : std_logic;
SIGNAL \i3[1]~37_combout\ : std_logic;
SIGNAL \i3[1]~48_combout\ : std_logic;
SIGNAL \i3[1]~49_combout\ : std_logic;
SIGNAL \i3[1]~59_combout\ : std_logic;
SIGNAL \i3[25]~4_combout\ : std_logic;
SIGNAL \i3[25]~9_combout\ : std_logic;
SIGNAL \i3[25]~21_combout\ : std_logic;
SIGNAL \i3[25]~21clkctrl_outclk\ : std_logic;
SIGNAL \i3[2]~33_combout\ : std_logic;
SIGNAL \i3[2]~34_combout\ : std_logic;
SIGNAL \i3[2]~22_combout\ : std_logic;
SIGNAL \i3[2]~25_combout\ : std_logic;
SIGNAL \i3[2]~29_combout\ : std_logic;
SIGNAL \i3[2]~27_combout\ : std_logic;
SIGNAL \i3[2]~26_combout\ : std_logic;
SIGNAL \i3[2]~28_combout\ : std_logic;
SIGNAL \i3[2]~24_combout\ : std_logic;
SIGNAL \i3[2]~30_combout\ : std_logic;
SIGNAL \i3[2]~32_combout\ : std_logic;
SIGNAL \i3[2]~35_combout\ : std_logic;
SIGNAL \i3[2]~36_combout\ : std_logic;
SIGNAL \i3[0]~88_combout\ : std_logic;
SIGNAL \i3[0]~70_combout\ : std_logic;
SIGNAL \i3[0]~72_combout\ : std_logic;
SIGNAL \i3[0]~73_combout\ : std_logic;
SIGNAL \i3[0]~74_combout\ : std_logic;
SIGNAL \i3[0]~69_combout\ : std_logic;
SIGNAL \i3[0]~71_combout\ : std_logic;
SIGNAL \i3[0]~75_combout\ : std_logic;
SIGNAL \i3[0]~68_combout\ : std_logic;
SIGNAL \i3[0]~76_combout\ : std_logic;
SIGNAL \i3[0]~79_combout\ : std_logic;
SIGNAL \i3[0]~80_combout\ : std_logic;
SIGNAL \i3[0]~81_combout\ : std_logic;
SIGNAL \i3[0]~77_combout\ : std_logic;
SIGNAL \i3[0]~78_combout\ : std_logic;
SIGNAL \i3[0]~82_combout\ : std_logic;
SIGNAL \i3[0]~65_combout\ : std_logic;
SIGNAL \i3[0]~63_combout\ : std_logic;
SIGNAL \i3[0]~62_combout\ : std_logic;
SIGNAL \i3[0]~64_combout\ : std_logic;
SIGNAL \i3[0]~66_combout\ : std_logic;
SIGNAL \i3[0]~83_combout\ : std_logic;
SIGNAL \i3[0]~61_combout\ : std_logic;
SIGNAL \i3[0]~84_combout\ : std_logic;
SIGNAL \i3[0]~60_combout\ : std_logic;
SIGNAL \i3[0]~85_combout\ : std_logic;
SIGNAL \i3[0]~86_combout\ : std_logic;
SIGNAL \i3[0]~87_combout\ : std_logic;
SIGNAL \i3[0]~89_combout\ : std_logic;
SIGNAL \i3[0]~90_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr6~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr5~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr4~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr3~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr2~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr1~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr0~0_combout\ : std_logic;
SIGNAL \i3[25]~92_combout\ : std_logic;
SIGNAL \i2[0]~15_combout\ : std_logic;
SIGNAL \i2[0]~16_combout\ : std_logic;
SIGNAL \i2[0]~17_combout\ : std_logic;
SIGNAL \i2[1]~19_combout\ : std_logic;
SIGNAL \i2[1]~13_combout\ : std_logic;
SIGNAL \i2[1]~14_combout\ : std_logic;
SIGNAL \i2[2]~6_combout\ : std_logic;
SIGNAL \i2[2]~7_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr13~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr12~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr11~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr10~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr9~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr8~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr7~0_combout\ : std_logic;
SIGNAL \i1~7_combout\ : std_logic;
SIGNAL \i1~8_combout\ : std_logic;
SIGNAL \i1~9_combout\ : std_logic;
SIGNAL \i1~10_combout\ : std_logic;
SIGNAL \i1~11_combout\ : std_logic;
SIGNAL \i1~12_combout\ : std_logic;
SIGNAL \i1~15_combout\ : std_logic;
SIGNAL \i1~16_combout\ : std_logic;
SIGNAL \i1~17_combout\ : std_logic;
SIGNAL \i1~13_combout\ : std_logic;
SIGNAL \i1~14_combout\ : std_logic;
SIGNAL \i1~18_combout\ : std_logic;
SIGNAL \i0~11_combout\ : std_logic;
SIGNAL \i0~6_combout\ : std_logic;
SIGNAL \i1~19_combout\ : std_logic;
SIGNAL \i1~20_combout\ : std_logic;
SIGNAL \i1~21_combout\ : std_logic;
SIGNAL \i1~22_combout\ : std_logic;
SIGNAL \i1~29_combout\ : std_logic;
SIGNAL \i1~32_combout\ : std_logic;
SIGNAL \i1~33_combout\ : std_logic;
SIGNAL \i1~34_combout\ : std_logic;
SIGNAL \i1~35_combout\ : std_logic;
SIGNAL \i1~30_combout\ : std_logic;
SIGNAL \i1~31_combout\ : std_logic;
SIGNAL \i1~36_combout\ : std_logic;
SIGNAL \i1~24_combout\ : std_logic;
SIGNAL \i1~27_combout\ : std_logic;
SIGNAL \i1~25_combout\ : std_logic;
SIGNAL \i1~26_combout\ : std_logic;
SIGNAL \i1~28_combout\ : std_logic;
SIGNAL \i1~37_combout\ : std_logic;
SIGNAL \i1~44_combout\ : std_logic;
SIGNAL \i1~48_combout\ : std_logic;
SIGNAL \i1~45_combout\ : std_logic;
SIGNAL \i1~43_combout\ : std_logic;
SIGNAL \i3[0]~93_combout\ : std_logic;
SIGNAL \i1~40_combout\ : std_logic;
SIGNAL \i1~41_combout\ : std_logic;
SIGNAL \i1~39_combout\ : std_logic;
SIGNAL \i1~42_combout\ : std_logic;
SIGNAL \i1~38_combout\ : std_logic;
SIGNAL \i1~46_combout\ : std_logic;
SIGNAL \i1~23_combout\ : std_logic;
SIGNAL \i1~47_combout\ : std_logic;
SIGNAL \i1~5_combout\ : std_logic;
SIGNAL \i1~6_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr20~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr19~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr18~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr17~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr16~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr15~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr14~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr27~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr26~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr25~combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr24~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr23~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr22~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|WideOr21~0_combout\ : std_logic;
SIGNAL i3 : std_logic_vector(31 DOWNTO 0);
SIGNAL i2 : std_logic_vector(31 DOWNTO 0);
SIGNAL i1 : std_logic_vector(31 DOWNTO 0);
SIGNAL i0 : std_logic_vector(31 DOWNTO 0);
SIGNAL \SevenSegmentDisplay|ALT_INV_WideOr23~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|ALT_INV_WideOr9~0_combout\ : std_logic;
SIGNAL \SevenSegmentDisplay|ALT_INV_WideOr2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_enable <= enable;
ww_reset <= reset;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\i3[25]~21clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i3[25]~21_combout\);
\SevenSegmentDisplay|ALT_INV_WideOr23~0_combout\ <= NOT \SevenSegmentDisplay|WideOr23~0_combout\;
\SevenSegmentDisplay|ALT_INV_WideOr16~0_combout\ <= NOT \SevenSegmentDisplay|WideOr16~0_combout\;
\SevenSegmentDisplay|ALT_INV_WideOr9~0_combout\ <= NOT \SevenSegmentDisplay|WideOr9~0_combout\;
\SevenSegmentDisplay|ALT_INV_WideOr2~0_combout\ <= NOT \SevenSegmentDisplay|WideOr2~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr6~combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr13~combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr12~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr11~combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|ALT_INV_WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr20~combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr19~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr18~combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr17~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|ALT_INV_WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr15~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr14~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr27~combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr26~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr25~combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr24~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|ALT_INV_WideOr23~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr22~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentDisplay|WideOr21~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X55_Y53_N6
\edge_matrix[5][2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][2][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][2][0]~combout\,
	combout => \edge_matrix[5][2][0]~combout\);

-- Location: LCCOMB_X50_Y52_N6
\edge_matrix[7][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][1][0]~combout\,
	combout => \edge_matrix[7][1][0]~combout\);

-- Location: LCCOMB_X50_Y52_N28
\edge_matrix[7][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][0][0]~combout\,
	combout => \edge_matrix[7][0][0]~combout\);

-- Location: LCCOMB_X50_Y52_N16
\i1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~4_combout\ = (!\edge_matrix[7][1][0]~combout\ & !\edge_matrix[7][0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][1][0]~combout\,
	datad => \edge_matrix[7][0][0]~combout\,
	combout => \i1~4_combout\);

-- Location: LCCOMB_X54_Y52_N2
\edge_matrix[6][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[6][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[6][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[6][5][0]~combout\,
	combout => \edge_matrix[6][5][0]~combout\);

-- Location: LCCOMB_X52_Y52_N10
\edge_matrix[7][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][7][0]~combout\,
	combout => \edge_matrix[7][7][0]~combout\);

-- Location: LCCOMB_X49_Y52_N2
\edge_matrix[7][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][6][0]~combout\,
	combout => \edge_matrix[7][6][0]~combout\);

-- Location: LCCOMB_X50_Y51_N12
\edge_matrix[7][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][5][0]~combout\,
	combout => \edge_matrix[7][5][0]~combout\);

-- Location: LCCOMB_X49_Y52_N0
\edge_matrix[7][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \edge_matrix[7][4][0]~combout\);

-- Location: LCCOMB_X49_Y52_N24
\i3[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~5_combout\ = (!\edge_matrix[7][7][0]~combout\ & (!\edge_matrix[7][6][0]~combout\ & (!\edge_matrix[7][5][0]~combout\ & !\edge_matrix[7][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][7][0]~combout\,
	datab => \edge_matrix[7][6][0]~combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i3[2]~5_combout\);

-- Location: LCCOMB_X49_Y52_N10
\edge_matrix[7][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][3][0]~combout\,
	combout => \edge_matrix[7][3][0]~combout\);

-- Location: LCCOMB_X50_Y52_N10
\edge_matrix[7][2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[7][2][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[7][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[7][2][0]~combout\,
	combout => \edge_matrix[7][2][0]~combout\);

-- Location: LCCOMB_X50_Y52_N4
\i1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~2_combout\ = (!\edge_matrix[7][3][0]~combout\ & !\edge_matrix[7][2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][3][0]~combout\,
	datad => \edge_matrix[7][2][0]~combout\,
	combout => \i1~2_combout\);

-- Location: LCCOMB_X50_Y52_N30
\i3[25]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~6_combout\ = (\i3[2]~5_combout\ & (!\edge_matrix[7][0][0]~combout\ & (\i1~2_combout\ & !\edge_matrix[7][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~5_combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \i1~2_combout\,
	datad => \edge_matrix[7][1][0]~combout\,
	combout => \i3[25]~6_combout\);

-- Location: LCCOMB_X49_Y52_N12
\edge_matrix[6][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[6][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[6][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[6][7][0]~combout\,
	combout => \edge_matrix[6][7][0]~combout\);

-- Location: LCCOMB_X54_Y52_N16
\edge_matrix[6][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[6][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[6][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[6][6][0]~combout\,
	combout => \edge_matrix[6][6][0]~combout\);

-- Location: LCCOMB_X54_Y52_N24
\edge_matrix[6][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[6][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[6][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[6][0][0]~combout\,
	combout => \edge_matrix[6][0][0]~combout\);

-- Location: LCCOMB_X54_Y52_N18
\edge_matrix[6][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[6][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[6][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[6][1][0]~combout\,
	combout => \edge_matrix[6][1][0]~combout\);

-- Location: LCCOMB_X54_Y52_N28
\i3[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~15_combout\ = (!\edge_matrix[6][0][0]~combout\ & !\edge_matrix[6][1][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[6][0][0]~combout\,
	datad => \edge_matrix[6][1][0]~combout\,
	combout => \i3[2]~15_combout\);

-- Location: LCCOMB_X54_Y52_N26
\i2[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~4_combout\ = (!\edge_matrix[6][7][0]~combout\ & (!\edge_matrix[6][5][0]~combout\ & (!\edge_matrix[6][6][0]~combout\ & \i3[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][7][0]~combout\,
	datab => \edge_matrix[6][5][0]~combout\,
	datac => \edge_matrix[6][6][0]~combout\,
	datad => \i3[2]~15_combout\,
	combout => \i2[1]~4_combout\);

-- Location: LCCOMB_X50_Y51_N24
\edge_matrix[5][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][5][0]~combout\,
	combout => \edge_matrix[5][5][0]~combout\);

-- Location: LCCOMB_X52_Y53_N12
\edge_matrix[5][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][1][0]~combout\,
	combout => \edge_matrix[5][1][0]~combout\);

-- Location: LCCOMB_X50_Y51_N6
\edge_matrix[5][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][4][0]~combout\,
	combout => \edge_matrix[5][4][0]~combout\);

-- Location: LCCOMB_X55_Y53_N16
\edge_matrix[5][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][0][0]~combout\,
	combout => \edge_matrix[5][0][0]~combout\);

-- Location: LCCOMB_X54_Y53_N24
\i2[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~2_combout\ = (!\edge_matrix[5][5][0]~combout\ & (!\edge_matrix[5][1][0]~combout\ & (!\edge_matrix[5][4][0]~combout\ & !\edge_matrix[5][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][5][0]~combout\,
	datab => \edge_matrix[5][1][0]~combout\,
	datac => \edge_matrix[5][4][0]~combout\,
	datad => \edge_matrix[5][0][0]~combout\,
	combout => \i2[1]~2_combout\);

-- Location: LCCOMB_X54_Y53_N16
\edge_matrix[5][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[5][6][0]~combout\,
	combout => \edge_matrix[5][6][0]~combout\);

-- Location: LCCOMB_X54_Y50_N28
\edge_matrix[5][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[5][7][0]~combout\,
	combout => \edge_matrix[5][7][0]~combout\);

-- Location: LCCOMB_X54_Y53_N6
\edge_matrix[5][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[5][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[5][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[5][3][0]~combout\,
	combout => \edge_matrix[5][3][0]~combout\);

-- Location: LCCOMB_X54_Y53_N18
\i3[25]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~16_combout\ = (!\edge_matrix[5][2][0]~combout\ & (!\edge_matrix[5][6][0]~combout\ & (!\edge_matrix[5][7][0]~combout\ & !\edge_matrix[5][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \edge_matrix[5][6][0]~combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \edge_matrix[5][3][0]~combout\,
	combout => \i3[25]~16_combout\);

-- Location: LCCOMB_X55_Y52_N18
\i2[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~9_combout\ = (\i2[1]~2_combout\ & \i3[25]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~2_combout\,
	datac => \i3[25]~16_combout\,
	combout => \i2[1]~9_combout\);

-- Location: LCCOMB_X54_Y51_N20
\edge_matrix[4][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][1][0]~combout\,
	combout => \edge_matrix[4][1][0]~combout\);

-- Location: LCCOMB_X54_Y51_N10
\edge_matrix[4][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][0][0]~combout\,
	combout => \edge_matrix[4][0][0]~combout\);

-- Location: LCCOMB_X54_Y51_N0
\i3[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~10_combout\ = (!\edge_matrix[4][1][0]~combout\ & !\edge_matrix[4][0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[4][1][0]~combout\,
	datad => \edge_matrix[4][0][0]~combout\,
	combout => \i3[2]~10_combout\);

-- Location: LCCOMB_X55_Y53_N10
\edge_matrix[4][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][4][0]~combout\,
	combout => \edge_matrix[4][4][0]~combout\);

-- Location: LCCOMB_X55_Y53_N20
\edge_matrix[4][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][5][0]~combout\,
	combout => \edge_matrix[4][5][0]~combout\);

-- Location: LCCOMB_X55_Y53_N12
\i3[1]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~91_combout\ = (!\edge_matrix[4][4][0]~combout\ & !\edge_matrix[4][5][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][4][0]~combout\,
	datad => \edge_matrix[4][5][0]~combout\,
	combout => \i3[1]~91_combout\);

-- Location: LCCOMB_X55_Y53_N2
\edge_matrix[4][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][7][0]~combout\,
	combout => \edge_matrix[4][7][0]~combout\);

-- Location: LCCOMB_X55_Y53_N0
\edge_matrix[4][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][6][0]~combout\,
	combout => \edge_matrix[4][6][0]~combout\);

-- Location: LCCOMB_X55_Y53_N30
\i1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~3_combout\ = (!\edge_matrix[4][7][0]~combout\ & !\edge_matrix[4][6][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[4][7][0]~combout\,
	datad => \edge_matrix[4][6][0]~combout\,
	combout => \i1~3_combout\);

-- Location: LCCOMB_X54_Y50_N10
\edge_matrix[4][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][3][0]~combout\,
	combout => \edge_matrix[4][3][0]~combout\);

-- Location: LCCOMB_X54_Y51_N2
\edge_matrix[4][2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[4][2][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[4][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[4][2][0]~combout\,
	combout => \edge_matrix[4][2][0]~combout\);

-- Location: LCCOMB_X54_Y51_N14
\i3[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~17_combout\ = (!\edge_matrix[4][3][0]~combout\ & !\edge_matrix[4][2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[4][3][0]~combout\,
	datad => \edge_matrix[4][2][0]~combout\,
	combout => \i3[2]~17_combout\);

-- Location: LCCOMB_X55_Y52_N8
\i2[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~8_combout\ = (\i3[2]~10_combout\ & (\i3[1]~91_combout\ & (\i1~3_combout\ & \i3[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~10_combout\,
	datab => \i3[1]~91_combout\,
	datac => \i1~3_combout\,
	datad => \i3[2]~17_combout\,
	combout => \i2[1]~8_combout\);

-- Location: LCCOMB_X56_Y52_N10
\edge_matrix[2][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][4][0]~combout\,
	combout => \edge_matrix[2][4][0]~combout\);

-- Location: LCCOMB_X56_Y52_N16
\edge_matrix[2][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][1][0]~combout\,
	combout => \edge_matrix[2][1][0]~combout\);

-- Location: LCCOMB_X56_Y52_N6
\edge_matrix[2][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][0][0]~combout\,
	combout => \edge_matrix[2][0][0]~combout\);

-- Location: LCCOMB_X56_Y52_N24
\edge_matrix[2][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][5][0]~combout\,
	combout => \edge_matrix[2][5][0]~combout\);

-- Location: LCCOMB_X56_Y52_N4
\i3[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~13_combout\ = (!\edge_matrix[2][4][0]~combout\ & (!\edge_matrix[2][1][0]~combout\ & (!\edge_matrix[2][0][0]~combout\ & !\edge_matrix[2][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][4][0]~combout\,
	datab => \edge_matrix[2][1][0]~combout\,
	datac => \edge_matrix[2][0][0]~combout\,
	datad => \edge_matrix[2][5][0]~combout\,
	combout => \i3[1]~13_combout\);

-- Location: LCCOMB_X56_Y52_N2
\edge_matrix[2][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][3][0]~combout\,
	combout => \edge_matrix[2][3][0]~combout\);

-- Location: LCCOMB_X50_Y51_N10
\edge_matrix[2][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][7][0]~combout\,
	combout => \edge_matrix[2][7][0]~combout\);

-- Location: LCCOMB_X56_Y52_N0
\edge_matrix[2][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[2][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[2][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[2][6][0]~combout\,
	combout => \edge_matrix[2][6][0]~combout\);

-- Location: LCCOMB_X56_Y52_N22
\i2[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[0]~10_combout\ = (\i3[1]~13_combout\ & (!\edge_matrix[2][3][0]~combout\ & (!\edge_matrix[2][7][0]~combout\ & !\edge_matrix[2][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~13_combout\,
	datab => \edge_matrix[2][3][0]~combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	datad => \edge_matrix[2][6][0]~combout\,
	combout => \i2[0]~10_combout\);

-- Location: LCCOMB_X56_Y51_N20
\edge_matrix[3][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][4][0]~combout\,
	combout => \edge_matrix[3][4][0]~combout\);

-- Location: LCCOMB_X56_Y51_N2
\edge_matrix[3][2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][2][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][2][0]~combout\,
	combout => \edge_matrix[3][2][0]~combout\);

-- Location: LCCOMB_X50_Y51_N2
\edge_matrix[3][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][0][0]~combout\,
	combout => \edge_matrix[3][0][0]~combout\);

-- Location: LCCOMB_X56_Y51_N28
\edge_matrix[3][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][6][0]~combout\,
	combout => \edge_matrix[3][6][0]~combout\);

-- Location: LCCOMB_X56_Y51_N24
\i3[0]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~67_combout\ = (!\edge_matrix[3][4][0]~combout\ & (!\edge_matrix[3][2][0]~combout\ & (!\edge_matrix[3][0][0]~combout\ & !\edge_matrix[3][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][4][0]~combout\,
	datab => \edge_matrix[3][2][0]~combout\,
	datac => \edge_matrix[3][0][0]~combout\,
	datad => \edge_matrix[3][6][0]~combout\,
	combout => \i3[0]~67_combout\);

-- Location: LCCOMB_X56_Y51_N6
\edge_matrix[3][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][7][0]~combout\,
	combout => \edge_matrix[3][7][0]~combout\);

-- Location: LCCOMB_X56_Y51_N16
\edge_matrix[3][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][3][0]~combout\,
	combout => \edge_matrix[3][3][0]~combout\);

-- Location: LCCOMB_X50_Y51_N16
\edge_matrix[3][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][1][0]~combout\,
	combout => \edge_matrix[3][1][0]~combout\);

-- Location: LCCOMB_X56_Y51_N10
\edge_matrix[3][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[3][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[3][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[3][5][0]~combout\,
	combout => \edge_matrix[3][5][0]~combout\);

-- Location: LCCOMB_X56_Y51_N26
\i2[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~11_combout\ = (!\edge_matrix[3][7][0]~combout\ & (!\edge_matrix[3][3][0]~combout\ & (!\edge_matrix[3][1][0]~combout\ & !\edge_matrix[3][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][7][0]~combout\,
	datab => \edge_matrix[3][3][0]~combout\,
	datac => \edge_matrix[3][1][0]~combout\,
	datad => \edge_matrix[3][5][0]~combout\,
	combout => \i2[1]~11_combout\);

-- Location: LCCOMB_X59_Y52_N26
\i2[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~12_combout\ = (\i3[0]~67_combout\ & \i2[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i3[0]~67_combout\,
	datad => \i2[1]~11_combout\,
	combout => \i2[1]~12_combout\);

-- Location: LCCOMB_X52_Y51_N10
\edge_matrix[1][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[1][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[1][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[1][0][0]~combout\,
	combout => \edge_matrix[1][0][0]~combout\);

-- Location: LCCOMB_X52_Y51_N2
\edge_matrix[1][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[1][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[1][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[1][1][0]~combout\,
	combout => \edge_matrix[1][1][0]~combout\);

-- Location: LCCOMB_X52_Y52_N2
\edge_matrix[1][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[1][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[1][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[1][6][0]~combout\,
	combout => \edge_matrix[1][6][0]~combout\);

-- Location: LCCOMB_X56_Y52_N20
\edge_matrix[1][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[1][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[1][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \edge_matrix[1][7][0]~combout\,
	combout => \edge_matrix[1][7][0]~combout\);

-- Location: LCCOMB_X52_Y52_N30
\i0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~3_combout\ = (!\edge_matrix[1][6][0]~combout\ & !\edge_matrix[1][7][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[1][6][0]~combout\,
	datad => \edge_matrix[1][7][0]~combout\,
	combout => \i0~3_combout\);

-- Location: LCCOMB_X52_Y51_N12
\edge_matrix[1][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[1][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[1][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[1][5][0]~combout\,
	combout => \edge_matrix[1][5][0]~combout\);

-- Location: LCCOMB_X52_Y51_N22
\i3[25]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~94_combout\ = (!\edge_matrix[1][0][0]~combout\ & (!\edge_matrix[1][1][0]~combout\ & (\i0~3_combout\ & !\edge_matrix[1][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[1][0][0]~combout\,
	datab => \edge_matrix[1][1][0]~combout\,
	datac => \i0~3_combout\,
	datad => \edge_matrix[1][5][0]~combout\,
	combout => \i3[25]~94_combout\);

-- Location: LCCOMB_X51_Y51_N16
\edge_matrix[0][6][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][6][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][6][0]~combout\,
	combout => \edge_matrix[0][6][0]~combout\);

-- Location: LCCOMB_X52_Y51_N24
\edge_matrix[0][7][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][7][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][7][0]~combout\,
	combout => \edge_matrix[0][7][0]~combout\);

-- Location: LCCOMB_X52_Y51_N30
\i3[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~7_combout\ = (!\edge_matrix[0][6][0]~combout\ & !\edge_matrix[0][7][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[0][6][0]~combout\,
	datad => \edge_matrix[0][7][0]~combout\,
	combout => \i3[1]~7_combout\);

-- Location: LCCOMB_X51_Y51_N18
\edge_matrix[0][2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][2][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][2][0]~combout\,
	combout => \edge_matrix[0][2][0]~combout\);

-- Location: LCCOMB_X51_Y51_N6
\edge_matrix[0][5][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][5][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][5][0]~combout\,
	combout => \edge_matrix[0][5][0]~combout\);

-- Location: LCCOMB_X52_Y51_N6
\edge_matrix[0][4][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][4][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][4][0]~combout\,
	combout => \edge_matrix[0][4][0]~combout\);

-- Location: LCCOMB_X51_Y51_N22
\i3[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~8_combout\ = (!\edge_matrix[0][5][0]~combout\ & !\edge_matrix[0][4][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][5][0]~combout\,
	datad => \edge_matrix[0][4][0]~combout\,
	combout => \i3[1]~8_combout\);

-- Location: LCCOMB_X51_Y51_N20
\edge_matrix[0][3][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][3][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][3][0]~combout\,
	combout => \edge_matrix[0][3][0]~combout\);

-- Location: LCCOMB_X51_Y51_N0
\i0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~4_combout\ = (\i3[1]~7_combout\ & (!\edge_matrix[0][2][0]~combout\ & (\i3[1]~8_combout\ & !\edge_matrix[0][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~7_combout\,
	datab => \edge_matrix[0][2][0]~combout\,
	datac => \i3[1]~8_combout\,
	datad => \edge_matrix[0][3][0]~combout\,
	combout => \i0~4_combout\);

-- Location: LCCOMB_X51_Y51_N2
\edge_matrix[0][0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][0][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][0][0]~combout\,
	combout => \edge_matrix[0][0][0]~combout\);

-- Location: LCCOMB_X51_Y51_N12
\edge_matrix[0][1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \edge_matrix[0][1][0]~combout\ = (\reset~input_o\ & ((\enable~input_o\) # (\edge_matrix[0][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \reset~input_o\,
	datad => \edge_matrix[0][1][0]~combout\,
	combout => \edge_matrix[0][1][0]~combout\);

-- Location: LCCOMB_X51_Y52_N24
\i0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~19_combout\ = (\i0~4_combout\ & (((!\edge_matrix[0][0][0]~combout\ & !\edge_matrix[0][1][0]~combout\)) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~4_combout\,
	datab => \edge_matrix[0][0][0]~combout\,
	datac => \edge_matrix[0][1][0]~combout\,
	datad => \Equal4~0_combout\,
	combout => \i0~19_combout\);

-- Location: LCCOMB_X51_Y52_N0
\i0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~16_combout\ = ((\i2[0]~10_combout\ & ((\i0~19_combout\) # (!\i3[25]~94_combout\)))) # (!\i2[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[0]~10_combout\,
	datab => \i2[1]~12_combout\,
	datac => \i3[25]~94_combout\,
	datad => \i0~19_combout\,
	combout => \i0~16_combout\);

-- Location: LCCOMB_X51_Y52_N18
\i0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~17_combout\ = (\i2[1]~4_combout\ & (((\i2[1]~8_combout\ & \i0~16_combout\)) # (!\i2[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~4_combout\,
	datab => \i2[1]~9_combout\,
	datac => \i2[1]~8_combout\,
	datad => \i0~16_combout\,
	combout => \i0~17_combout\);

-- Location: LCCOMB_X51_Y52_N20
\i0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~18_combout\ = ((\i0~17_combout\) # (!\Equal4~0_combout\)) # (!\i3[25]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~6_combout\,
	datab => \Equal4~0_combout\,
	datad => \i0~17_combout\,
	combout => \i0~18_combout\);

-- Location: LCCOMB_X51_Y52_N26
\i0[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i0(0) = ((\enable~input_o\ & ((\i0~18_combout\))) # (!\enable~input_o\ & (i0(0)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(0),
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => \i0~18_combout\,
	combout => i0(0));

-- Location: LCCOMB_X54_Y51_N12
\i3[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~23_combout\ = (!\edge_matrix[4][0][0]~combout\ & (!\edge_matrix[4][1][0]~combout\ & (!\edge_matrix[4][3][0]~combout\ & !\edge_matrix[4][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \edge_matrix[4][1][0]~combout\,
	datac => \edge_matrix[4][3][0]~combout\,
	datad => \edge_matrix[4][2][0]~combout\,
	combout => \i3[2]~23_combout\);

-- Location: LCCOMB_X55_Y53_N4
\i3[2]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~31_combout\ = (!\edge_matrix[4][4][0]~combout\ & (!\edge_matrix[4][5][0]~combout\ & (!\edge_matrix[4][6][0]~combout\ & !\edge_matrix[4][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][4][0]~combout\,
	datab => \edge_matrix[4][5][0]~combout\,
	datac => \edge_matrix[4][6][0]~combout\,
	datad => \edge_matrix[4][7][0]~combout\,
	combout => \i3[2]~31_combout\);

-- Location: LCCOMB_X55_Y52_N24
\i2[1]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~18_combout\ = (\i3[25]~16_combout\ & (\i3[2]~23_combout\ & (\i2[1]~2_combout\ & \i3[2]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~16_combout\,
	datab => \i3[2]~23_combout\,
	datac => \i2[1]~2_combout\,
	datad => \i3[2]~31_combout\,
	combout => \i2[1]~18_combout\);

-- Location: LCCOMB_X51_Y52_N30
\i0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~13_combout\ = (\Equal4~0_combout\ & (((!\i2[1]~18_combout\) # (!\i3[25]~6_combout\)) # (!\i2[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~4_combout\,
	datab => \i3[25]~6_combout\,
	datac => \i2[1]~18_combout\,
	datad => \Equal4~0_combout\,
	combout => \i0~13_combout\);

-- Location: LCCOMB_X51_Y52_N28
\i0[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i0(2) = (\reset~input_o\ & ((\enable~input_o\ & (\i0~13_combout\)) # (!\enable~input_o\ & ((i0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~13_combout\,
	datab => \reset~input_o\,
	datac => \enable~input_o\,
	datad => i0(2),
	combout => i0(2));

-- Location: LCCOMB_X50_Y52_N24
\i0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~5_combout\ = (!\edge_matrix[7][3][0]~combout\ & (!\edge_matrix[7][0][0]~combout\ & (!\edge_matrix[7][1][0]~combout\ & !\edge_matrix[7][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][3][0]~combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \edge_matrix[7][1][0]~combout\,
	datad => \edge_matrix[7][2][0]~combout\,
	combout => \i0~5_combout\);

-- Location: LCCOMB_X49_Y52_N8
\i0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~8_combout\ = (!\edge_matrix[7][4][0]~combout\ & (!\edge_matrix[7][5][0]~combout\ & !\edge_matrix[7][6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[7][4][0]~combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][6][0]~combout\,
	combout => \i0~8_combout\);

-- Location: LCCOMB_X55_Y53_N8
\i2[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[2]~3_combout\ = (!\edge_matrix[4][4][0]~combout\ & (!\edge_matrix[4][5][0]~combout\ & (\i3[2]~10_combout\ & \i2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][4][0]~combout\,
	datab => \edge_matrix[4][5][0]~combout\,
	datac => \i3[2]~10_combout\,
	datad => \i2[1]~2_combout\,
	combout => \i2[2]~3_combout\);

-- Location: LCCOMB_X55_Y51_N20
\i3[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~11_combout\ = (!\edge_matrix[3][5][0]~combout\ & !\edge_matrix[3][4][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[3][5][0]~combout\,
	datac => \edge_matrix[3][4][0]~combout\,
	combout => \i3[1]~11_combout\);

-- Location: LCCOMB_X50_Y51_N0
\i3[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~12_combout\ = (!\edge_matrix[3][0][0]~combout\ & !\edge_matrix[3][1][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[3][0][0]~combout\,
	datad => \edge_matrix[3][1][0]~combout\,
	combout => \i3[2]~12_combout\);

-- Location: LCCOMB_X55_Y51_N2
\i3[25]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~14_combout\ = (\i2[2]~3_combout\ & (\i3[1]~11_combout\ & (\i3[2]~12_combout\ & \i3[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[2]~3_combout\,
	datab => \i3[1]~11_combout\,
	datac => \i3[2]~12_combout\,
	datad => \i3[1]~13_combout\,
	combout => \i3[25]~14_combout\);

-- Location: LCCOMB_X56_Y51_N12
\i3[25]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~19_combout\ = (!\edge_matrix[3][7][0]~combout\ & (!\edge_matrix[3][2][0]~combout\ & (!\edge_matrix[3][3][0]~combout\ & !\edge_matrix[3][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][7][0]~combout\,
	datab => \edge_matrix[3][2][0]~combout\,
	datac => \edge_matrix[3][3][0]~combout\,
	datad => \edge_matrix[3][6][0]~combout\,
	combout => \i3[25]~19_combout\);

-- Location: LCCOMB_X55_Y52_N4
\i3[25]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~18_combout\ = (\i3[25]~16_combout\ & (\i2[1]~4_combout\ & (\i1~3_combout\ & \i3[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~16_combout\,
	datab => \i2[1]~4_combout\,
	datac => \i1~3_combout\,
	datad => \i3[2]~17_combout\,
	combout => \i3[25]~18_combout\);

-- Location: LCCOMB_X56_Y52_N26
\i2[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[0]~5_combout\ = (!\edge_matrix[2][3][0]~combout\ & (!\edge_matrix[2][7][0]~combout\ & !\edge_matrix[2][6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[2][3][0]~combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	datad => \edge_matrix[2][6][0]~combout\,
	combout => \i2[0]~5_combout\);

-- Location: LCCOMB_X55_Y52_N10
\i3[25]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~20_combout\ = (\i3[25]~14_combout\ & (\i3[25]~19_combout\ & (\i3[25]~18_combout\ & \i2[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~14_combout\,
	datab => \i3[25]~19_combout\,
	datac => \i3[25]~18_combout\,
	datad => \i2[0]~5_combout\,
	combout => \i3[25]~20_combout\);

-- Location: LCCOMB_X52_Y52_N26
\i0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~9_combout\ = (((!\i3[25]~20_combout\) # (!\Equal4~0_combout\)) # (!\i0~8_combout\)) # (!\i0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~5_combout\,
	datab => \i0~8_combout\,
	datac => \Equal4~0_combout\,
	datad => \i3[25]~20_combout\,
	combout => \i0~9_combout\);

-- Location: LCCOMB_X52_Y52_N8
\i0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~14_combout\ = (((\i2[1]~18_combout\) # (!\i2[1]~4_combout\)) # (!\i0~8_combout\)) # (!\i0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~5_combout\,
	datab => \i0~8_combout\,
	datac => \i2[1]~18_combout\,
	datad => \i2[1]~4_combout\,
	combout => \i0~14_combout\);

-- Location: LCCOMB_X51_Y52_N8
\i0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~12_combout\ = (!\edge_matrix[7][7][0]~combout\ & \Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][7][0]~combout\,
	datad => \Equal4~0_combout\,
	combout => \i0~12_combout\);

-- Location: LCCOMB_X52_Y51_N20
\i0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~2_combout\ = (!\edge_matrix[1][0][0]~combout\ & (!\edge_matrix[1][1][0]~combout\ & !\edge_matrix[1][5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[1][0][0]~combout\,
	datab => \edge_matrix[1][1][0]~combout\,
	datad => \edge_matrix[1][5][0]~combout\,
	combout => \i0~2_combout\);

-- Location: LCCOMB_X52_Y52_N12
\i0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~7_combout\ = (\i0~3_combout\ & (((\i0~2_combout\ & \i0~19_combout\)) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \i0~3_combout\,
	datac => \i0~2_combout\,
	datad => \i0~19_combout\,
	combout => \i0~7_combout\);

-- Location: LCCOMB_X52_Y52_N6
\i0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~15_combout\ = ((\i0~9_combout\ & (\i0~14_combout\)) # (!\i0~9_combout\ & ((\i0~7_combout\)))) # (!\i0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~9_combout\,
	datab => \i0~14_combout\,
	datac => \i0~12_combout\,
	datad => \i0~7_combout\,
	combout => \i0~15_combout\);

-- Location: LCCOMB_X51_Y52_N14
\i0[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i0(1) = ((\enable~input_o\ & ((\i0~15_combout\))) # (!\enable~input_o\ & (i0(1)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i0(1),
	datac => \enable~input_o\,
	datad => \i0~15_combout\,
	combout => i0(1));

-- Location: LCCOMB_X52_Y52_N0
\i0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~10_combout\ = ((!\edge_matrix[7][7][0]~combout\ & (!\i0~9_combout\ & \i0~7_combout\))) # (!\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \edge_matrix[7][7][0]~combout\,
	datac => \i0~9_combout\,
	datad => \i0~7_combout\,
	combout => \i0~10_combout\);

-- Location: LCCOMB_X52_Y52_N24
\i1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i1(3) = ((\enable~input_o\ & ((\i0~10_combout\))) # (!\enable~input_o\ & (i1(3)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i1(3),
	datac => \enable~input_o\,
	datad => \i0~10_combout\,
	combout => i1(3));

-- Location: LCCOMB_X51_Y52_N16
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (i0(0) & (!i0(2) & (i0(1) & i1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(0),
	datab => i0(2),
	datac => i0(1),
	datad => i1(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X50_Y52_N2
\i3[1]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~38_combout\ = (!\Equal4~0_combout\ & (!\edge_matrix[7][5][0]~combout\ & !\edge_matrix[7][4][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i3[1]~38_combout\);

-- Location: LCCOMB_X54_Y52_N0
\i3[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~39_combout\ = (\i1~4_combout\ & (!\edge_matrix[6][5][0]~combout\ & (\i3[1]~38_combout\ & \i3[2]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~4_combout\,
	datab => \edge_matrix[6][5][0]~combout\,
	datac => \i3[1]~38_combout\,
	datad => \i3[2]~15_combout\,
	combout => \i3[1]~39_combout\);

-- Location: LCCOMB_X54_Y49_N16
\i3[2]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~50_combout\ = (!\edge_matrix[5][4][0]~combout\ & !\edge_matrix[5][5][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[5][4][0]~combout\,
	datad => \edge_matrix[5][5][0]~combout\,
	combout => \i3[2]~50_combout\);

-- Location: LCCOMB_X54_Y53_N20
\i3[1]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~51_combout\ = (\i3[1]~39_combout\ & (\i3[2]~50_combout\ & ((\edge_matrix[5][2][0]~combout\) # (\edge_matrix[5][3][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \i3[1]~39_combout\,
	datac => \i3[2]~50_combout\,
	datad => \edge_matrix[5][3][0]~combout\,
	combout => \i3[1]~51_combout\);

-- Location: LCCOMB_X49_Y52_N18
\i3[1]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~56_combout\ = (!\edge_matrix[7][5][0]~combout\ & (!\edge_matrix[7][4][0]~combout\ & ((\edge_matrix[7][3][0]~combout\) # (\edge_matrix[7][2][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][3][0]~combout\,
	datab => \edge_matrix[7][5][0]~combout\,
	datac => \edge_matrix[7][2][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i3[1]~56_combout\);

-- Location: LCCOMB_X50_Y52_N18
\i3[1]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~55_combout\ = (\i1~4_combout\ & (\i3[1]~38_combout\ & ((\edge_matrix[6][7][0]~combout\) # (\edge_matrix[6][6][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~4_combout\,
	datab => \edge_matrix[6][7][0]~combout\,
	datac => \i3[1]~38_combout\,
	datad => \edge_matrix[6][6][0]~combout\,
	combout => \i3[1]~55_combout\);

-- Location: LCCOMB_X50_Y52_N0
\i3[1]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~57_combout\ = (\edge_matrix[7][7][0]~combout\) # ((\i3[1]~56_combout\) # ((\i3[1]~55_combout\) # (\edge_matrix[7][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][7][0]~combout\,
	datab => \i3[1]~56_combout\,
	datac => \i3[1]~55_combout\,
	datad => \edge_matrix[7][6][0]~combout\,
	combout => \i3[1]~57_combout\);

-- Location: LCCOMB_X54_Y53_N2
\i3[1]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~58_combout\ = (\i3[1]~57_combout\) # ((\edge_matrix[4][6][0]~combout\ & (\i3[1]~39_combout\ & \i2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][6][0]~combout\,
	datab => \i3[1]~57_combout\,
	datac => \i3[1]~39_combout\,
	datad => \i2[1]~2_combout\,
	combout => \i3[1]~58_combout\);

-- Location: LCCOMB_X55_Y53_N22
\i3[0]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~52_combout\ = (\edge_matrix[4][7][0]~combout\ & (!\edge_matrix[5][4][0]~combout\ & !\edge_matrix[5][0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[4][7][0]~combout\,
	datac => \edge_matrix[5][4][0]~combout\,
	datad => \edge_matrix[5][0][0]~combout\,
	combout => \i3[0]~52_combout\);

-- Location: LCCOMB_X54_Y53_N26
\i3[1]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~53_combout\ = (!\edge_matrix[5][1][0]~combout\ & (!\edge_matrix[5][5][0]~combout\ & \i3[0]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[5][1][0]~combout\,
	datac => \edge_matrix[5][5][0]~combout\,
	datad => \i3[0]~52_combout\,
	combout => \i3[1]~53_combout\);

-- Location: LCCOMB_X54_Y53_N12
\i3[1]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~54_combout\ = (\i3[1]~39_combout\ & ((\i3[1]~53_combout\) # ((\edge_matrix[5][7][0]~combout\) # (\edge_matrix[5][6][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~53_combout\,
	datab => \i3[1]~39_combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \edge_matrix[5][6][0]~combout\,
	combout => \i3[1]~54_combout\);

-- Location: LCCOMB_X51_Y51_N10
\i3[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~41_combout\ = ((\i3[1]~8_combout\ & ((\edge_matrix[0][2][0]~combout\) # (\edge_matrix[0][3][0]~combout\)))) # (!\i3[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~7_combout\,
	datab => \edge_matrix[0][2][0]~combout\,
	datac => \i3[1]~8_combout\,
	datad => \edge_matrix[0][3][0]~combout\,
	combout => \i3[1]~41_combout\);

-- Location: LCCOMB_X55_Y51_N12
\i3[1]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~40_combout\ = (!\edge_matrix[3][1][0]~combout\ & (!\edge_matrix[3][0][0]~combout\ & \i3[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][1][0]~combout\,
	datac => \edge_matrix[3][0][0]~combout\,
	datad => \i3[1]~13_combout\,
	combout => \i3[1]~40_combout\);

-- Location: LCCOMB_X50_Y51_N18
\i3[1]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~42_combout\ = (\i3[1]~40_combout\ & (((\i0~2_combout\ & \i3[1]~41_combout\)) # (!\i0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~2_combout\,
	datab => \i0~3_combout\,
	datac => \i3[1]~41_combout\,
	datad => \i3[1]~40_combout\,
	combout => \i3[1]~42_combout\);

-- Location: LCCOMB_X56_Y51_N30
\i3[2]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~43_combout\ = (!\edge_matrix[3][3][0]~combout\ & !\edge_matrix[3][2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[3][3][0]~combout\,
	datad => \edge_matrix[3][2][0]~combout\,
	combout => \i3[2]~43_combout\);

-- Location: LCCOMB_X55_Y51_N14
\i3[1]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~44_combout\ = ((\i3[2]~12_combout\ & ((\edge_matrix[2][7][0]~combout\) # (\edge_matrix[2][6][0]~combout\)))) # (!\i3[2]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~43_combout\,
	datab => \i3[2]~12_combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	datad => \edge_matrix[2][6][0]~combout\,
	combout => \i3[1]~44_combout\);

-- Location: LCCOMB_X56_Y52_N8
\i3[1]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~45_combout\ = (!\edge_matrix[2][4][0]~combout\ & (!\edge_matrix[2][5][0]~combout\ & \edge_matrix[2][3][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][4][0]~combout\,
	datab => \edge_matrix[2][5][0]~combout\,
	datad => \edge_matrix[2][3][0]~combout\,
	combout => \i3[1]~45_combout\);

-- Location: LCCOMB_X55_Y51_N16
\i3[1]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~46_combout\ = (\i3[1]~42_combout\) # ((\i3[1]~44_combout\) # ((\i3[2]~12_combout\ & \i3[1]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~42_combout\,
	datab => \i3[1]~44_combout\,
	datac => \i3[2]~12_combout\,
	datad => \i3[1]~45_combout\,
	combout => \i3[1]~46_combout\);

-- Location: LCCOMB_X55_Y51_N26
\i3[1]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~47_combout\ = (\i3[2]~10_combout\ & (!\edge_matrix[3][5][0]~combout\ & (!\edge_matrix[3][4][0]~combout\ & \i3[1]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~10_combout\,
	datab => \edge_matrix[3][5][0]~combout\,
	datac => \edge_matrix[3][4][0]~combout\,
	datad => \i3[1]~46_combout\,
	combout => \i3[1]~47_combout\);

-- Location: LCCOMB_X55_Y53_N26
\i3[1]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~37_combout\ = (!\edge_matrix[4][4][0]~combout\ & (!\edge_matrix[4][5][0]~combout\ & \i2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][4][0]~combout\,
	datab => \edge_matrix[4][5][0]~combout\,
	datad => \i2[1]~2_combout\,
	combout => \i3[1]~37_combout\);

-- Location: LCCOMB_X54_Y51_N18
\i3[1]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~48_combout\ = ((\i3[2]~10_combout\ & ((\edge_matrix[3][6][0]~combout\) # (\edge_matrix[3][7][0]~combout\)))) # (!\i3[2]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][6][0]~combout\,
	datab => \i3[2]~10_combout\,
	datac => \i3[2]~17_combout\,
	datad => \edge_matrix[3][7][0]~combout\,
	combout => \i3[1]~48_combout\);

-- Location: LCCOMB_X55_Y53_N24
\i3[1]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~49_combout\ = (\i3[1]~39_combout\ & (\i3[1]~37_combout\ & ((\i3[1]~47_combout\) # (\i3[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~47_combout\,
	datab => \i3[1]~39_combout\,
	datac => \i3[1]~37_combout\,
	datad => \i3[1]~48_combout\,
	combout => \i3[1]~49_combout\);

-- Location: LCCOMB_X54_Y53_N4
\i3[1]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[1]~59_combout\ = (\i3[1]~51_combout\) # ((\i3[1]~58_combout\) # ((\i3[1]~54_combout\) # (\i3[1]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~51_combout\,
	datab => \i3[1]~58_combout\,
	datac => \i3[1]~54_combout\,
	datad => \i3[1]~49_combout\,
	combout => \i3[1]~59_combout\);

-- Location: LCCOMB_X51_Y51_N4
\i3[25]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~4_combout\ = (\edge_matrix[0][0][0]~combout\) # (\edge_matrix[0][1][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[0][0][0]~combout\,
	datad => \edge_matrix[0][1][0]~combout\,
	combout => \i3[25]~4_combout\);

-- Location: LCCOMB_X51_Y51_N26
\i3[25]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~9_combout\ = (((\i3[25]~4_combout\) # (!\i3[25]~94_combout\)) # (!\i3[25]~6_combout\)) # (!\i0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~4_combout\,
	datab => \i3[25]~6_combout\,
	datac => \i3[25]~4_combout\,
	datad => \i3[25]~94_combout\,
	combout => \i3[25]~9_combout\);

-- Location: LCCOMB_X52_Y52_N22
\i3[25]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~21_combout\ = (!\Equal4~0_combout\ & (\enable~input_o\ & ((\i3[25]~9_combout\) # (!\i3[25]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~9_combout\,
	datab => \i3[25]~20_combout\,
	datac => \Equal4~0_combout\,
	datad => \enable~input_o\,
	combout => \i3[25]~21_combout\);

-- Location: CLKCTRL_G12
\i3[25]~21clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i3[25]~21clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i3[25]~21clkctrl_outclk\);

-- Location: LCCOMB_X54_Y53_N10
\i3[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i3(1) = ((GLOBAL(\i3[25]~21clkctrl_outclk\) & ((\i3[1]~59_combout\))) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & (i3(1)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => \reset~input_o\,
	datac => \i3[1]~59_combout\,
	datad => \i3[25]~21clkctrl_outclk\,
	combout => i3(1));

-- Location: LCCOMB_X59_Y53_N18
\i3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i3(3) = ((!\i3[25]~21_combout\ & i3(3))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \i3[25]~21_combout\,
	datad => i3(3),
	combout => i3(3));

-- Location: LCCOMB_X54_Y53_N30
\i3[2]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~33_combout\ = (\edge_matrix[5][4][0]~combout\) # ((\edge_matrix[5][5][0]~combout\) # ((\edge_matrix[5][7][0]~combout\) # (\edge_matrix[5][6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][4][0]~combout\,
	datab => \edge_matrix[5][5][0]~combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \edge_matrix[5][6][0]~combout\,
	combout => \i3[2]~33_combout\);

-- Location: LCCOMB_X54_Y52_N4
\i3[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~34_combout\ = (!\edge_matrix[6][7][0]~combout\ & (!\edge_matrix[6][6][0]~combout\ & !\edge_matrix[6][5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][7][0]~combout\,
	datab => \edge_matrix[6][6][0]~combout\,
	datad => \edge_matrix[6][5][0]~combout\,
	combout => \i3[2]~34_combout\);

-- Location: LCCOMB_X54_Y53_N0
\i3[2]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~22_combout\ = (!\edge_matrix[5][3][0]~combout\ & (!\edge_matrix[5][0][0]~combout\ & (!\edge_matrix[5][1][0]~combout\ & !\edge_matrix[5][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][3][0]~combout\,
	datab => \edge_matrix[5][0][0]~combout\,
	datac => \edge_matrix[5][1][0]~combout\,
	datad => \edge_matrix[5][2][0]~combout\,
	combout => \i3[2]~22_combout\);

-- Location: LCCOMB_X56_Y51_N0
\i3[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~25_combout\ = (!\edge_matrix[3][0][0]~combout\ & (!\edge_matrix[3][3][0]~combout\ & (!\edge_matrix[3][1][0]~combout\ & !\edge_matrix[3][2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][0][0]~combout\,
	datab => \edge_matrix[3][3][0]~combout\,
	datac => \edge_matrix[3][1][0]~combout\,
	datad => \edge_matrix[3][2][0]~combout\,
	combout => \i3[2]~25_combout\);

-- Location: LCCOMB_X56_Y52_N18
\i3[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~29_combout\ = (\edge_matrix[2][4][0]~combout\) # ((\edge_matrix[2][6][0]~combout\) # ((\edge_matrix[2][7][0]~combout\) # (\edge_matrix[2][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][4][0]~combout\,
	datab => \edge_matrix[2][6][0]~combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	datad => \edge_matrix[2][5][0]~combout\,
	combout => \i3[2]~29_combout\);

-- Location: LCCOMB_X51_Y51_N24
\i3[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~27_combout\ = (!\edge_matrix[1][0][0]~combout\ & (!\edge_matrix[1][1][0]~combout\ & ((!\i3[1]~8_combout\) # (!\i3[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[1]~7_combout\,
	datab => \edge_matrix[1][0][0]~combout\,
	datac => \i3[1]~8_combout\,
	datad => \edge_matrix[1][1][0]~combout\,
	combout => \i3[2]~27_combout\);

-- Location: LCCOMB_X56_Y52_N28
\i3[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~26_combout\ = (!\edge_matrix[2][1][0]~combout\ & (!\edge_matrix[2][3][0]~combout\ & !\edge_matrix[2][0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[2][1][0]~combout\,
	datac => \edge_matrix[2][3][0]~combout\,
	datad => \edge_matrix[2][0][0]~combout\,
	combout => \i3[2]~26_combout\);

-- Location: LCCOMB_X52_Y51_N4
\i3[2]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~28_combout\ = (\i3[2]~26_combout\ & (((\i3[2]~27_combout\) # (\edge_matrix[1][5][0]~combout\)) # (!\i0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~3_combout\,
	datab => \i3[2]~27_combout\,
	datac => \i3[2]~26_combout\,
	datad => \edge_matrix[1][5][0]~combout\,
	combout => \i3[2]~28_combout\);

-- Location: LCCOMB_X56_Y51_N22
\i3[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~24_combout\ = (\edge_matrix[3][7][0]~combout\) # ((\edge_matrix[3][6][0]~combout\) # ((\edge_matrix[3][4][0]~combout\) # (\edge_matrix[3][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][7][0]~combout\,
	datab => \edge_matrix[3][6][0]~combout\,
	datac => \edge_matrix[3][4][0]~combout\,
	datad => \edge_matrix[3][5][0]~combout\,
	combout => \i3[2]~24_combout\);

-- Location: LCCOMB_X55_Y52_N0
\i3[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~30_combout\ = (\i3[2]~24_combout\) # ((\i3[2]~25_combout\ & ((\i3[2]~29_combout\) # (\i3[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~25_combout\,
	datab => \i3[2]~29_combout\,
	datac => \i3[2]~28_combout\,
	datad => \i3[2]~24_combout\,
	combout => \i3[2]~30_combout\);

-- Location: LCCOMB_X55_Y52_N26
\i3[2]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~32_combout\ = (\i3[2]~22_combout\ & (((\i3[2]~30_combout\ & \i3[2]~23_combout\)) # (!\i3[2]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~22_combout\,
	datab => \i3[2]~30_combout\,
	datac => \i3[2]~23_combout\,
	datad => \i3[2]~31_combout\,
	combout => \i3[2]~32_combout\);

-- Location: LCCOMB_X54_Y52_N14
\i3[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~35_combout\ = ((\i3[2]~15_combout\ & ((\i3[2]~33_combout\) # (\i3[2]~32_combout\)))) # (!\i3[2]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~33_combout\,
	datab => \i3[2]~15_combout\,
	datac => \i3[2]~34_combout\,
	datad => \i3[2]~32_combout\,
	combout => \i3[2]~35_combout\);

-- Location: LCCOMB_X52_Y52_N4
\i3[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[2]~36_combout\ = ((\i0~5_combout\ & (!\Equal4~0_combout\ & \i3[2]~35_combout\))) # (!\i3[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~5_combout\,
	datab => \Equal4~0_combout\,
	datac => \i3[2]~5_combout\,
	datad => \i3[2]~35_combout\,
	combout => \i3[2]~36_combout\);

-- Location: LCCOMB_X59_Y53_N8
\i3[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i3(2) = (\reset~input_o\ & ((GLOBAL(\i3[25]~21clkctrl_outclk\) & (\i3[2]~36_combout\)) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & ((i3(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i3[2]~36_combout\,
	datac => i3(2),
	datad => \i3[25]~21clkctrl_outclk\,
	combout => i3(2));

-- Location: LCCOMB_X49_Y52_N22
\i3[0]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~88_combout\ = (\edge_matrix[7][1][0]~combout\ & (!\edge_matrix[7][6][0]~combout\ & (!\edge_matrix[7][2][0]~combout\ & !\edge_matrix[7][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][1][0]~combout\,
	datab => \edge_matrix[7][6][0]~combout\,
	datac => \edge_matrix[7][2][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i3[0]~88_combout\);

-- Location: LCCOMB_X52_Y51_N26
\i3[0]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~70_combout\ = (!\edge_matrix[1][0][0]~combout\ & ((\edge_matrix[0][7][0]~combout\) # ((!\edge_matrix[0][6][0]~combout\ & \edge_matrix[0][5][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][6][0]~combout\,
	datab => \edge_matrix[0][7][0]~combout\,
	datac => \edge_matrix[0][5][0]~combout\,
	datad => \edge_matrix[1][0][0]~combout\,
	combout => \i3[0]~70_combout\);

-- Location: LCCOMB_X51_Y51_N28
\i3[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~72_combout\ = (!\edge_matrix[0][4][0]~combout\ & ((\edge_matrix[0][3][0]~combout\) # ((\edge_matrix[0][1][0]~combout\ & !\edge_matrix[0][2][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][1][0]~combout\,
	datab => \edge_matrix[0][2][0]~combout\,
	datac => \edge_matrix[0][3][0]~combout\,
	datad => \edge_matrix[0][4][0]~combout\,
	combout => \i3[0]~72_combout\);

-- Location: LCCOMB_X52_Y51_N16
\i3[0]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~73_combout\ = (!\edge_matrix[0][6][0]~combout\ & !\edge_matrix[1][0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[0][6][0]~combout\,
	datad => \edge_matrix[1][0][0]~combout\,
	combout => \i3[0]~73_combout\);

-- Location: LCCOMB_X52_Y51_N14
\i3[0]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~74_combout\ = (\edge_matrix[1][5][0]~combout\) # ((\edge_matrix[1][1][0]~combout\) # ((\i3[0]~72_combout\ & \i3[0]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[1][5][0]~combout\,
	datab => \i3[0]~72_combout\,
	datac => \edge_matrix[1][1][0]~combout\,
	datad => \i3[0]~73_combout\,
	combout => \i3[0]~74_combout\);

-- Location: LCCOMB_X52_Y52_N28
\i3[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~69_combout\ = (!\edge_matrix[1][6][0]~combout\ & !\edge_matrix[2][0][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[1][6][0]~combout\,
	datad => \edge_matrix[2][0][0]~combout\,
	combout => \i3[0]~69_combout\);

-- Location: LCCOMB_X56_Y52_N12
\i3[0]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~71_combout\ = (!\edge_matrix[2][1][0]~combout\ & (!\edge_matrix[2][3][0]~combout\ & ((\edge_matrix[2][0][0]~combout\) # (!\edge_matrix[1][7][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][0][0]~combout\,
	datab => \edge_matrix[2][1][0]~combout\,
	datac => \edge_matrix[2][3][0]~combout\,
	datad => \edge_matrix[1][7][0]~combout\,
	combout => \i3[0]~71_combout\);

-- Location: LCCOMB_X52_Y51_N0
\i3[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~75_combout\ = (\i3[0]~71_combout\ & (((!\i3[0]~70_combout\ & !\i3[0]~74_combout\)) # (!\i3[0]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~70_combout\,
	datab => \i3[0]~74_combout\,
	datac => \i3[0]~69_combout\,
	datad => \i3[0]~71_combout\,
	combout => \i3[0]~75_combout\);

-- Location: LCCOMB_X56_Y52_N30
\i3[0]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~68_combout\ = (!\edge_matrix[2][6][0]~combout\ & !\edge_matrix[2][4][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[2][6][0]~combout\,
	datad => \edge_matrix[2][4][0]~combout\,
	combout => \i3[0]~68_combout\);

-- Location: LCCOMB_X54_Y51_N6
\i3[0]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~76_combout\ = (!\edge_matrix[4][0][0]~combout\ & (!\i3[0]~75_combout\ & (\i3[0]~67_combout\ & \i3[0]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \i3[0]~75_combout\,
	datac => \i3[0]~67_combout\,
	datad => \i3[0]~68_combout\,
	combout => \i3[0]~76_combout\);

-- Location: LCCOMB_X56_Y51_N14
\i3[0]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~79_combout\ = (\edge_matrix[3][1][0]~combout\ & !\edge_matrix[3][2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[3][1][0]~combout\,
	datad => \edge_matrix[3][2][0]~combout\,
	combout => \i3[0]~79_combout\);

-- Location: LCCOMB_X56_Y51_N4
\i3[0]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~80_combout\ = (\edge_matrix[3][5][0]~combout\) # ((!\edge_matrix[3][4][0]~combout\ & ((\i3[0]~79_combout\) # (\edge_matrix[3][3][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][5][0]~combout\,
	datab => \edge_matrix[3][4][0]~combout\,
	datac => \i3[0]~79_combout\,
	datad => \edge_matrix[3][3][0]~combout\,
	combout => \i3[0]~80_combout\);

-- Location: LCCOMB_X54_Y51_N28
\i3[0]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~81_combout\ = (!\edge_matrix[4][0][0]~combout\ & ((\edge_matrix[3][7][0]~combout\) # ((!\edge_matrix[3][6][0]~combout\ & \i3[0]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \edge_matrix[3][7][0]~combout\,
	datac => \edge_matrix[3][6][0]~combout\,
	datad => \i3[0]~80_combout\,
	combout => \i3[0]~81_combout\);

-- Location: LCCOMB_X55_Y51_N28
\i3[0]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~77_combout\ = (!\edge_matrix[4][0][0]~combout\ & \i3[0]~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[4][0][0]~combout\,
	datad => \i3[0]~67_combout\,
	combout => \i3[0]~77_combout\);

-- Location: LCCOMB_X55_Y51_N10
\i3[0]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~78_combout\ = (\i3[0]~77_combout\ & ((\edge_matrix[2][7][0]~combout\) # ((\edge_matrix[2][5][0]~combout\ & !\edge_matrix[2][6][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][5][0]~combout\,
	datab => \edge_matrix[2][6][0]~combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	datad => \i3[0]~77_combout\,
	combout => \i3[0]~78_combout\);

-- Location: LCCOMB_X54_Y51_N22
\i3[0]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~82_combout\ = (\i3[0]~76_combout\) # ((\i3[0]~81_combout\) # ((\i3[0]~78_combout\) # (\edge_matrix[4][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~76_combout\,
	datab => \i3[0]~81_combout\,
	datac => \i3[0]~78_combout\,
	datad => \edge_matrix[4][1][0]~combout\,
	combout => \i3[0]~82_combout\);

-- Location: LCCOMB_X54_Y53_N22
\i3[0]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~65_combout\ = (!\edge_matrix[5][2][0]~combout\ & ((\i3[0]~52_combout\) # ((\edge_matrix[5][1][0]~combout\ & !\edge_matrix[5][4][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \edge_matrix[5][1][0]~combout\,
	datac => \edge_matrix[5][4][0]~combout\,
	datad => \i3[0]~52_combout\,
	combout => \i3[0]~65_combout\);

-- Location: LCCOMB_X55_Y53_N18
\i3[0]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~63_combout\ = (!\edge_matrix[5][2][0]~combout\ & (!\edge_matrix[5][0][0]~combout\ & (!\edge_matrix[4][6][0]~combout\ & \edge_matrix[4][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \edge_matrix[5][0][0]~combout\,
	datac => \edge_matrix[4][6][0]~combout\,
	datad => \edge_matrix[4][5][0]~combout\,
	combout => \i3[0]~63_combout\);

-- Location: LCCOMB_X55_Y53_N28
\i3[0]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~62_combout\ = (!\edge_matrix[5][2][0]~combout\ & (!\edge_matrix[5][0][0]~combout\ & (!\edge_matrix[4][6][0]~combout\ & !\edge_matrix[4][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \edge_matrix[5][0][0]~combout\,
	datac => \edge_matrix[4][6][0]~combout\,
	datad => \edge_matrix[4][4][0]~combout\,
	combout => \i3[0]~62_combout\);

-- Location: LCCOMB_X54_Y51_N4
\i3[0]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~64_combout\ = (\edge_matrix[5][3][0]~combout\) # ((\i3[0]~63_combout\) # ((\edge_matrix[4][3][0]~combout\ & \i3[0]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][3][0]~combout\,
	datab => \edge_matrix[4][3][0]~combout\,
	datac => \i3[0]~63_combout\,
	datad => \i3[0]~62_combout\,
	combout => \i3[0]~64_combout\);

-- Location: LCCOMB_X50_Y51_N28
\i3[0]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~66_combout\ = (\edge_matrix[5][5][0]~combout\) # ((\i3[0]~65_combout\) # ((!\edge_matrix[5][4][0]~combout\ & \i3[0]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][4][0]~combout\,
	datab => \edge_matrix[5][5][0]~combout\,
	datac => \i3[0]~65_combout\,
	datad => \i3[0]~64_combout\,
	combout => \i3[0]~66_combout\);

-- Location: LCCOMB_X50_Y51_N26
\i3[0]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~83_combout\ = (!\edge_matrix[5][4][0]~combout\ & (!\edge_matrix[4][2][0]~combout\ & \i3[0]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][4][0]~combout\,
	datac => \edge_matrix[4][2][0]~combout\,
	datad => \i3[0]~62_combout\,
	combout => \i3[0]~83_combout\);

-- Location: LCCOMB_X54_Y52_N30
\i3[0]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~61_combout\ = (!\edge_matrix[6][0][0]~combout\ & (!\edge_matrix[6][6][0]~combout\ & !\edge_matrix[5][6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[6][0][0]~combout\,
	datac => \edge_matrix[6][6][0]~combout\,
	datad => \edge_matrix[5][6][0]~combout\,
	combout => \i3[0]~61_combout\);

-- Location: LCCOMB_X50_Y51_N20
\i3[0]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~84_combout\ = (\i3[0]~61_combout\ & ((\i3[0]~66_combout\) # ((\i3[0]~82_combout\ & \i3[0]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~82_combout\,
	datab => \i3[0]~66_combout\,
	datac => \i3[0]~83_combout\,
	datad => \i3[0]~61_combout\,
	combout => \i3[0]~84_combout\);

-- Location: LCCOMB_X49_Y52_N20
\i3[0]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~60_combout\ = (!\edge_matrix[7][6][0]~combout\ & (!\edge_matrix[7][4][0]~combout\ & (!\edge_matrix[7][2][0]~combout\ & !\edge_matrix[7][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][6][0]~combout\,
	datab => \edge_matrix[7][4][0]~combout\,
	datac => \edge_matrix[7][2][0]~combout\,
	datad => \edge_matrix[7][0][0]~combout\,
	combout => \i3[0]~60_combout\);

-- Location: LCCOMB_X54_Y52_N8
\i3[0]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~85_combout\ = (!\edge_matrix[6][6][0]~combout\ & ((\edge_matrix[6][5][0]~combout\) # ((\edge_matrix[5][7][0]~combout\ & !\edge_matrix[6][0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][6][0]~combout\,
	datab => \edge_matrix[6][5][0]~combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \edge_matrix[6][0][0]~combout\,
	combout => \i3[0]~85_combout\);

-- Location: LCCOMB_X54_Y52_N10
\i3[0]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~86_combout\ = (\edge_matrix[6][7][0]~combout\) # ((\i3[0]~85_combout\) # ((!\edge_matrix[6][6][0]~combout\ & \edge_matrix[6][1][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][7][0]~combout\,
	datab => \edge_matrix[6][6][0]~combout\,
	datac => \i3[0]~85_combout\,
	datad => \edge_matrix[6][1][0]~combout\,
	combout => \i3[0]~86_combout\);

-- Location: LCCOMB_X50_Y52_N26
\i3[0]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~87_combout\ = (\i3[0]~60_combout\ & (!\Equal4~0_combout\ & ((\i3[0]~84_combout\) # (\i3[0]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~84_combout\,
	datab => \i3[0]~60_combout\,
	datac => \i3[0]~86_combout\,
	datad => \Equal4~0_combout\,
	combout => \i3[0]~87_combout\);

-- Location: LCCOMB_X49_Y52_N4
\i3[0]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~89_combout\ = (!\edge_matrix[7][6][0]~combout\ & ((\edge_matrix[7][5][0]~combout\) # ((\edge_matrix[7][3][0]~combout\ & !\edge_matrix[7][4][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][3][0]~combout\,
	datab => \edge_matrix[7][6][0]~combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i3[0]~89_combout\);

-- Location: LCCOMB_X49_Y52_N26
\i3[0]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~90_combout\ = (\i3[0]~88_combout\) # ((\i3[0]~87_combout\) # ((\edge_matrix[7][7][0]~combout\) # (\i3[0]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~88_combout\,
	datab => \i3[0]~87_combout\,
	datac => \edge_matrix[7][7][0]~combout\,
	datad => \i3[0]~89_combout\,
	combout => \i3[0]~90_combout\);

-- Location: LCCOMB_X59_Y52_N12
\i3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i3(0) = ((GLOBAL(\i3[25]~21clkctrl_outclk\) & ((\i3[0]~90_combout\))) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & (i3(0)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(0),
	datab => \i3[0]~90_combout\,
	datac => \reset~input_o\,
	datad => \i3[25]~21clkctrl_outclk\,
	combout => i3(0));

-- Location: LCCOMB_X59_Y53_N24
\SevenSegmentDisplay|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr6~combout\ = (i3(1) & ((i3(3)) # ((i3(2) & !i3(0))))) # (!i3(1) & (i3(2) $ (((!i3(3) & i3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr6~combout\);

-- Location: LCCOMB_X59_Y53_N22
\SevenSegmentDisplay|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr5~0_combout\ = (i3(1) & ((i3(3)) # ((i3(2) & !i3(0))))) # (!i3(1) & ((i3(3) & (i3(2))) # (!i3(3) & ((i3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr5~0_combout\);

-- Location: LCCOMB_X59_Y53_N4
\SevenSegmentDisplay|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr4~combout\ = (i3(2) & (((i3(3))))) # (!i3(2) & (i3(1) $ (((!i3(3) & i3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr4~combout\);

-- Location: LCCOMB_X59_Y53_N26
\SevenSegmentDisplay|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr3~0_combout\ = (i3(1) & ((i3(3)) # ((i3(2) & i3(0))))) # (!i3(1) & (i3(2) $ (((!i3(3) & i3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr3~0_combout\);

-- Location: LCCOMB_X59_Y53_N20
\SevenSegmentDisplay|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr2~0_combout\ = (i3(1) & (!i3(3) & ((!i3(0))))) # (!i3(1) & (!i3(2) & ((!i3(0)) # (!i3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr2~0_combout\);

-- Location: LCCOMB_X59_Y53_N10
\SevenSegmentDisplay|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr1~0_combout\ = (i3(2) & ((i3(3)) # ((i3(1) & i3(0))))) # (!i3(2) & (i3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr1~0_combout\);

-- Location: LCCOMB_X59_Y53_N28
\SevenSegmentDisplay|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr0~0_combout\ = (i3(1) & ((i3(3)) # ((i3(2) & i3(0))))) # (!i3(1) & (i3(3) $ ((!i3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i3(1),
	datab => i3(3),
	datac => i3(2),
	datad => i3(0),
	combout => \SevenSegmentDisplay|WideOr0~0_combout\);

-- Location: LCCOMB_X59_Y52_N18
\i2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i2(3) = ((!\i3[25]~21_combout\ & i2(3))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \i3[25]~21_combout\,
	datad => i2(3),
	combout => i2(3));

-- Location: LCCOMB_X50_Y52_N20
\i3[25]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[25]~92_combout\ = (!\edge_matrix[7][1][0]~combout\ & (!\edge_matrix[7][2][0]~combout\ & (\i3[2]~5_combout\ & !\edge_matrix[7][3][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][1][0]~combout\,
	datab => \edge_matrix[7][2][0]~combout\,
	datac => \i3[2]~5_combout\,
	datad => \edge_matrix[7][3][0]~combout\,
	combout => \i3[25]~92_combout\);

-- Location: LCCOMB_X55_Y52_N20
\i2[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[0]~15_combout\ = (\i2[1]~8_combout\ & (((!\i3[25]~94_combout\ & \i2[0]~10_combout\)) # (!\i2[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~8_combout\,
	datab => \i3[25]~94_combout\,
	datac => \i2[1]~12_combout\,
	datad => \i2[0]~10_combout\,
	combout => \i2[0]~15_combout\);

-- Location: LCCOMB_X55_Y52_N2
\i2[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[0]~16_combout\ = (\edge_matrix[7][0][0]~combout\) # ((\i2[1]~4_combout\ & ((\i2[0]~15_combout\) # (!\i2[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~9_combout\,
	datab => \i2[0]~15_combout\,
	datac => \edge_matrix[7][0][0]~combout\,
	datad => \i2[1]~4_combout\,
	combout => \i2[0]~16_combout\);

-- Location: LCCOMB_X55_Y52_N12
\i2[0]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[0]~17_combout\ = ((!\Equal4~0_combout\ & \i2[0]~16_combout\)) # (!\i3[25]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~92_combout\,
	datab => \Equal4~0_combout\,
	datad => \i2[0]~16_combout\,
	combout => \i2[0]~17_combout\);

-- Location: LCCOMB_X59_Y52_N8
\i2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i2(0) = ((GLOBAL(\i3[25]~21clkctrl_outclk\) & (\i2[0]~17_combout\)) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & ((i2(0))))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i2[0]~17_combout\,
	datac => i2(0),
	datad => \i3[25]~21clkctrl_outclk\,
	combout => i2(0));

-- Location: LCCOMB_X54_Y52_N6
\i2[1]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~19_combout\ = (\edge_matrix[7][0][0]~combout\) # ((\edge_matrix[6][0][0]~combout\) # ((\edge_matrix[6][1][0]~combout\) # (!\i3[2]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][0][0]~combout\,
	datab => \edge_matrix[6][0][0]~combout\,
	datac => \i3[2]~34_combout\,
	datad => \edge_matrix[6][1][0]~combout\,
	combout => \i2[1]~19_combout\);

-- Location: LCCOMB_X55_Y52_N16
\i2[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~13_combout\ = (\i2[1]~8_combout\ & (\i2[1]~9_combout\ & ((!\i2[0]~10_combout\) # (!\i2[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~8_combout\,
	datab => \i2[1]~9_combout\,
	datac => \i2[1]~12_combout\,
	datad => \i2[0]~10_combout\,
	combout => \i2[1]~13_combout\);

-- Location: LCCOMB_X55_Y52_N14
\i2[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[1]~14_combout\ = ((!\Equal4~0_combout\ & ((\i2[1]~19_combout\) # (\i2[1]~13_combout\)))) # (!\i3[25]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~92_combout\,
	datab => \i2[1]~19_combout\,
	datac => \Equal4~0_combout\,
	datad => \i2[1]~13_combout\,
	combout => \i2[1]~14_combout\);

-- Location: LCCOMB_X59_Y52_N22
\i2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i2(1) = ((GLOBAL(\i3[25]~21clkctrl_outclk\) & (\i2[1]~14_combout\)) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & ((i2(1))))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i2[1]~14_combout\,
	datac => i2(1),
	datad => \i3[25]~21clkctrl_outclk\,
	combout => i2(1));

-- Location: LCCOMB_X55_Y52_N28
\i2[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[2]~6_combout\ = (\edge_matrix[7][0][0]~combout\) # (((!\i3[2]~10_combout\) # (!\i2[1]~2_combout\)) # (!\i3[1]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][0][0]~combout\,
	datab => \i3[1]~91_combout\,
	datac => \i2[1]~2_combout\,
	datad => \i3[2]~10_combout\,
	combout => \i2[2]~6_combout\);

-- Location: LCCOMB_X55_Y52_N22
\i2[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i2[2]~7_combout\ = ((!\Equal4~0_combout\ & ((\i2[2]~6_combout\) # (!\i3[25]~18_combout\)))) # (!\i3[25]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[25]~92_combout\,
	datab => \i3[25]~18_combout\,
	datac => \Equal4~0_combout\,
	datad => \i2[2]~6_combout\,
	combout => \i2[2]~7_combout\);

-- Location: LCCOMB_X59_Y52_N28
\i2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i2(2) = (\reset~input_o\ & ((GLOBAL(\i3[25]~21clkctrl_outclk\) & (\i2[2]~7_combout\)) # (!GLOBAL(\i3[25]~21clkctrl_outclk\) & ((i2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i2[2]~7_combout\,
	datac => \i3[25]~21clkctrl_outclk\,
	datad => i2(2),
	combout => i2(2));

-- Location: LCCOMB_X59_Y52_N20
\SevenSegmentDisplay|WideOr13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr13~combout\ = (i2(3) & (((i2(1)) # (i2(2))))) # (!i2(3) & ((i2(0) & (!i2(1) & !i2(2))) # (!i2(0) & ((i2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr13~combout\);

-- Location: LCCOMB_X59_Y52_N30
\SevenSegmentDisplay|WideOr12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr12~0_combout\ = (i2(3) & (((i2(1)) # (i2(2))))) # (!i2(3) & ((i2(0) & (!i2(1))) # (!i2(0) & (i2(1) & i2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr12~0_combout\);

-- Location: LCCOMB_X59_Y52_N16
\SevenSegmentDisplay|WideOr11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr11~combout\ = (i2(2) & (i2(3))) # (!i2(2) & (i2(1) $ (((!i2(3) & i2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr11~combout\);

-- Location: LCCOMB_X59_Y52_N10
\SevenSegmentDisplay|WideOr10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr10~0_combout\ = (i2(1) & ((i2(3)) # ((i2(0) & i2(2))))) # (!i2(1) & (i2(2) $ (((!i2(3) & i2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr10~0_combout\);

-- Location: LCCOMB_X59_Y52_N4
\SevenSegmentDisplay|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr9~0_combout\ = (i2(1) & (!i2(3) & (!i2(0)))) # (!i2(1) & (!i2(2) & ((!i2(0)) # (!i2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr9~0_combout\);

-- Location: LCCOMB_X59_Y52_N6
\SevenSegmentDisplay|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr8~0_combout\ = (i2(2) & ((i2(3)) # ((i2(0) & i2(1))))) # (!i2(2) & (((i2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr8~0_combout\);

-- Location: LCCOMB_X59_Y52_N24
\SevenSegmentDisplay|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr7~0_combout\ = (i2(1) & ((i2(3)) # ((i2(0) & i2(2))))) # (!i2(1) & (i2(3) $ (((!i2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i2(3),
	datab => i2(0),
	datac => i2(1),
	datad => i2(2),
	combout => \SevenSegmentDisplay|WideOr7~0_combout\);

-- Location: LCCOMB_X50_Y52_N14
\i1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~7_combout\ = (!\edge_matrix[7][5][0]~combout\ & !\edge_matrix[7][4][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i1~7_combout\);

-- Location: LCCOMB_X50_Y52_N8
\i1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~8_combout\ = (!\edge_matrix[7][1][0]~combout\ & (!\edge_matrix[7][0][0]~combout\ & ((\edge_matrix[6][7][0]~combout\) # (\edge_matrix[6][6][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][1][0]~combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \edge_matrix[6][7][0]~combout\,
	datad => \edge_matrix[6][6][0]~combout\,
	combout => \i1~8_combout\);

-- Location: LCCOMB_X54_Y52_N20
\i1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~9_combout\ = (!\edge_matrix[6][1][0]~combout\ & (!\edge_matrix[6][0][0]~combout\ & (\i1~4_combout\ & !\edge_matrix[6][5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][1][0]~combout\,
	datab => \edge_matrix[6][0][0]~combout\,
	datac => \i1~4_combout\,
	datad => \edge_matrix[6][5][0]~combout\,
	combout => \i1~9_combout\);

-- Location: LCCOMB_X55_Y51_N4
\i1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~10_combout\ = (\i2[1]~2_combout\ & (\i3[1]~11_combout\ & (\i3[2]~10_combout\ & \i3[1]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~2_combout\,
	datab => \i3[1]~11_combout\,
	datac => \i3[2]~10_combout\,
	datad => \i3[1]~91_combout\,
	combout => \i1~10_combout\);

-- Location: LCCOMB_X55_Y51_N22
\i1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~11_combout\ = (\i1~10_combout\ & (((!\i0~3_combout\ & \i3[1]~40_combout\)) # (!\i3[2]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~3_combout\,
	datab => \i1~10_combout\,
	datac => \i3[2]~43_combout\,
	datad => \i3[1]~40_combout\,
	combout => \i1~11_combout\);

-- Location: LCCOMB_X55_Y51_N0
\i1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~12_combout\ = (\i1~11_combout\) # ((\i0~2_combout\ & (!\i3[1]~7_combout\ & \i3[25]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~11_combout\,
	datab => \i0~2_combout\,
	datac => \i3[1]~7_combout\,
	datad => \i3[25]~14_combout\,
	combout => \i1~12_combout\);

-- Location: LCCOMB_X55_Y52_N30
\i1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~15_combout\ = (\i2[1]~2_combout\ & (((\i3[1]~91_combout\ & !\i3[2]~17_combout\)) # (!\i1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2[1]~2_combout\,
	datab => \i3[1]~91_combout\,
	datac => \i1~3_combout\,
	datad => \i3[2]~17_combout\,
	combout => \i1~15_combout\);

-- Location: LCCOMB_X55_Y51_N6
\i1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~16_combout\ = (\i1~15_combout\) # ((\i2[2]~3_combout\ & ((\edge_matrix[3][6][0]~combout\) # (\edge_matrix[3][7][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][6][0]~combout\,
	datab => \edge_matrix[3][7][0]~combout\,
	datac => \i2[2]~3_combout\,
	datad => \i1~15_combout\,
	combout => \i1~16_combout\);

-- Location: LCCOMB_X55_Y51_N8
\i1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~17_combout\ = (\i3[2]~12_combout\ & ((\edge_matrix[2][7][0]~combout\) # ((\edge_matrix[2][6][0]~combout\) # (\i3[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][7][0]~combout\,
	datab => \edge_matrix[2][6][0]~combout\,
	datac => \i3[2]~12_combout\,
	datad => \i3[1]~45_combout\,
	combout => \i1~17_combout\);

-- Location: LCCOMB_X54_Y53_N28
\i1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~13_combout\ = (!\edge_matrix[5][5][0]~combout\ & (!\edge_matrix[5][4][0]~combout\ & ((\edge_matrix[5][3][0]~combout\) # (\edge_matrix[5][2][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][3][0]~combout\,
	datab => \edge_matrix[5][5][0]~combout\,
	datac => \edge_matrix[5][4][0]~combout\,
	datad => \edge_matrix[5][2][0]~combout\,
	combout => \i1~13_combout\);

-- Location: LCCOMB_X54_Y53_N14
\i1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~14_combout\ = (\edge_matrix[5][6][0]~combout\) # ((\edge_matrix[5][7][0]~combout\) # (\i1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[5][6][0]~combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \i1~13_combout\,
	combout => \i1~14_combout\);

-- Location: LCCOMB_X55_Y51_N18
\i1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~18_combout\ = (\i1~16_combout\) # ((\i1~14_combout\) # ((\i1~17_combout\ & \i1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~16_combout\,
	datab => \i1~17_combout\,
	datac => \i1~10_combout\,
	datad => \i1~14_combout\,
	combout => \i1~18_combout\);

-- Location: LCCOMB_X51_Y49_N16
\i0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~11_combout\ = (!\edge_matrix[0][3][0]~combout\ & !\edge_matrix[0][2][0]~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \edge_matrix[0][3][0]~combout\,
	datad => \edge_matrix[0][2][0]~combout\,
	combout => \i0~11_combout\);

-- Location: LCCOMB_X51_Y52_N6
\i0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i0~6_combout\ = (!\edge_matrix[0][1][0]~combout\ & ((!\Equal4~0_combout\) # (!\edge_matrix[0][0][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][1][0]~combout\,
	datac => \edge_matrix[0][0][0]~combout\,
	datad => \Equal4~0_combout\,
	combout => \i0~6_combout\);

-- Location: LCCOMB_X51_Y52_N10
\i1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~19_combout\ = (\i0~2_combout\ & (\i3[25]~14_combout\ & ((\i0~6_combout\) # (!\i0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0~11_combout\,
	datab => \i0~2_combout\,
	datac => \i3[25]~14_combout\,
	datad => \i0~6_combout\,
	combout => \i1~19_combout\);

-- Location: LCCOMB_X51_Y52_N2
\i1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~20_combout\ = (\i1~12_combout\) # ((\i1~18_combout\) # ((\i3[1]~8_combout\ & \i1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~12_combout\,
	datab => \i3[1]~8_combout\,
	datac => \i1~18_combout\,
	datad => \i1~19_combout\,
	combout => \i1~20_combout\);

-- Location: LCCOMB_X51_Y52_N12
\i1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~21_combout\ = (\i1~8_combout\) # (((\i1~9_combout\ & \i1~20_combout\)) # (!\i1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~8_combout\,
	datab => \i1~9_combout\,
	datac => \i1~2_combout\,
	datad => \i1~20_combout\,
	combout => \i1~21_combout\);

-- Location: LCCOMB_X51_Y52_N4
\i1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~22_combout\ = ((\edge_matrix[7][6][0]~combout\) # ((\i1~7_combout\ & \i1~21_combout\))) # (!\i0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~7_combout\,
	datab => \i0~12_combout\,
	datac => \edge_matrix[7][6][0]~combout\,
	datad => \i1~21_combout\,
	combout => \i1~22_combout\);

-- Location: LCCOMB_X51_Y52_N22
\i1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i1(1) = ((\enable~input_o\ & ((\i1~22_combout\))) # (!\enable~input_o\ & (i1(1)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i1(1),
	datac => \i1~22_combout\,
	datad => \enable~input_o\,
	combout => i1(1));

-- Location: LCCOMB_X54_Y51_N30
\i1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~29_combout\ = (\i3[0]~62_combout\ & ((\edge_matrix[4][3][0]~combout\) # ((\edge_matrix[4][1][0]~combout\ & !\edge_matrix[4][2][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~62_combout\,
	datab => \edge_matrix[4][1][0]~combout\,
	datac => \edge_matrix[4][3][0]~combout\,
	datad => \edge_matrix[4][2][0]~combout\,
	combout => \i1~29_combout\);

-- Location: LCCOMB_X54_Y51_N24
\i1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~32_combout\ = (!\edge_matrix[4][0][0]~combout\ & (!\edge_matrix[4][2][0]~combout\ & (\i3[0]~73_combout\ & \i3[0]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \edge_matrix[4][2][0]~combout\,
	datac => \i3[0]~73_combout\,
	datad => \i3[0]~68_combout\,
	combout => \i1~32_combout\);

-- Location: LCCOMB_X54_Y51_N26
\i1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~33_combout\ = (\i3[0]~62_combout\ & (\i1~32_combout\ & (\i3[0]~67_combout\ & \i3[0]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~62_combout\,
	datab => \i1~32_combout\,
	datac => \i3[0]~67_combout\,
	datad => \i3[0]~69_combout\,
	combout => \i1~33_combout\);

-- Location: LCCOMB_X51_Y51_N14
\i1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~34_combout\ = (!\edge_matrix[0][4][0]~combout\ & (!\edge_matrix[0][2][0]~combout\ & ((\edge_matrix[0][1][0]~combout\) # (!\edge_matrix[0][0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][4][0]~combout\,
	datab => \edge_matrix[0][0][0]~combout\,
	datac => \edge_matrix[0][2][0]~combout\,
	datad => \edge_matrix[0][1][0]~combout\,
	combout => \i1~34_combout\);

-- Location: LCCOMB_X51_Y51_N8
\i1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~35_combout\ = (\edge_matrix[0][5][0]~combout\) # ((\i1~34_combout\) # ((\edge_matrix[0][3][0]~combout\ & !\edge_matrix[0][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[0][5][0]~combout\,
	datab => \edge_matrix[0][3][0]~combout\,
	datac => \i1~34_combout\,
	datad => \edge_matrix[0][4][0]~combout\,
	combout => \i1~35_combout\);

-- Location: LCCOMB_X55_Y53_N14
\i1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~30_combout\ = (\edge_matrix[5][0][0]~combout\) # ((!\edge_matrix[4][7][0]~combout\ & ((\edge_matrix[4][6][0]~combout\) # (!\edge_matrix[4][5][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][0][0]~combout\,
	datab => \edge_matrix[4][5][0]~combout\,
	datac => \edge_matrix[4][6][0]~combout\,
	datad => \edge_matrix[4][7][0]~combout\,
	combout => \i1~30_combout\);

-- Location: LCCOMB_X54_Y53_N8
\i1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~31_combout\ = (\edge_matrix[5][3][0]~combout\) # ((!\edge_matrix[5][2][0]~combout\ & ((\edge_matrix[5][1][0]~combout\) # (!\i1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[5][2][0]~combout\,
	datab => \edge_matrix[5][1][0]~combout\,
	datac => \i1~30_combout\,
	datad => \edge_matrix[5][3][0]~combout\,
	combout => \i1~31_combout\);

-- Location: LCCOMB_X51_Y51_N30
\i1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~36_combout\ = (\i1~29_combout\) # ((\i1~31_combout\) # ((\i1~33_combout\ & \i1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~29_combout\,
	datab => \i1~33_combout\,
	datac => \i1~35_combout\,
	datad => \i1~31_combout\,
	combout => \i1~36_combout\);

-- Location: LCCOMB_X49_Y52_N30
\i1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~24_combout\ = (\i3[0]~61_combout\ & (!\edge_matrix[7][0][0]~combout\ & (!\edge_matrix[7][2][0]~combout\ & !\edge_matrix[5][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~61_combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \edge_matrix[7][2][0]~combout\,
	datad => \edge_matrix[5][4][0]~combout\,
	combout => \i1~24_combout\);

-- Location: LCCOMB_X54_Y51_N16
\i1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~27_combout\ = (!\edge_matrix[4][0][0]~combout\ & (!\edge_matrix[4][2][0]~combout\ & \i3[0]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \edge_matrix[4][2][0]~combout\,
	datad => \i3[0]~62_combout\,
	combout => \i1~27_combout\);

-- Location: LCCOMB_X55_Y51_N24
\i1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~25_combout\ = (\edge_matrix[2][7][0]~combout\) # ((\edge_matrix[2][5][0]~combout\ & !\edge_matrix[2][6][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][5][0]~combout\,
	datab => \edge_matrix[2][6][0]~combout\,
	datac => \edge_matrix[2][7][0]~combout\,
	combout => \i1~25_combout\);

-- Location: LCCOMB_X56_Y51_N8
\i1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~26_combout\ = (!\edge_matrix[3][4][0]~combout\ & (!\edge_matrix[3][6][0]~combout\ & ((\edge_matrix[3][3][0]~combout\) # (\i3[0]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][4][0]~combout\,
	datab => \edge_matrix[3][3][0]~combout\,
	datac => \i3[0]~79_combout\,
	datad => \edge_matrix[3][6][0]~combout\,
	combout => \i1~26_combout\);

-- Location: LCCOMB_X55_Y51_N30
\i1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~28_combout\ = (\i1~27_combout\ & ((\i1~26_combout\) # ((\i1~25_combout\ & \i3[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~27_combout\,
	datab => \i1~25_combout\,
	datac => \i1~26_combout\,
	datad => \i3[0]~67_combout\,
	combout => \i1~28_combout\);

-- Location: LCCOMB_X51_Y48_N16
\i1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~37_combout\ = (\edge_matrix[7][5][0]~combout\) # ((\i1~24_combout\ & ((\i1~36_combout\) # (\i1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~36_combout\,
	datab => \i1~24_combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \i1~28_combout\,
	combout => \i1~37_combout\);

-- Location: LCCOMB_X52_Y51_N18
\i1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~44_combout\ = (\edge_matrix[1][1][0]~combout\) # ((\edge_matrix[1][5][0]~combout\) # ((!\edge_matrix[1][0][0]~combout\ & \edge_matrix[0][7][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[1][0][0]~combout\,
	datab => \edge_matrix[0][7][0]~combout\,
	datac => \edge_matrix[1][1][0]~combout\,
	datad => \edge_matrix[1][5][0]~combout\,
	combout => \i1~44_combout\);

-- Location: LCCOMB_X52_Y51_N28
\i1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~48_combout\ = (!\edge_matrix[2][4][0]~combout\ & (!\edge_matrix[2][6][0]~combout\ & ((\i1~44_combout\) # (!\i3[0]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[2][4][0]~combout\,
	datab => \i1~44_combout\,
	datac => \edge_matrix[2][6][0]~combout\,
	datad => \i3[0]~71_combout\,
	combout => \i1~48_combout\);

-- Location: LCCOMB_X52_Y51_N8
\i1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~45_combout\ = (\i3[0]~67_combout\ & (\i1~48_combout\ & ((\i3[0]~69_combout\) # (!\i3[0]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~67_combout\,
	datab => \i1~48_combout\,
	datac => \i3[0]~69_combout\,
	datad => \i3[0]~71_combout\,
	combout => \i1~45_combout\);

-- Location: LCCOMB_X54_Y51_N8
\i1~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~43_combout\ = (!\edge_matrix[4][0][0]~combout\ & (!\edge_matrix[4][2][0]~combout\ & (\i1~24_combout\ & \i3[0]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[4][0][0]~combout\,
	datab => \edge_matrix[4][2][0]~combout\,
	datac => \i1~24_combout\,
	datad => \i3[0]~62_combout\,
	combout => \i1~43_combout\);

-- Location: LCCOMB_X54_Y52_N22
\i3[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i3[0]~93_combout\ = (!\edge_matrix[6][6][0]~combout\ & (\edge_matrix[5][7][0]~combout\ & !\edge_matrix[6][0][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[6][6][0]~combout\,
	datac => \edge_matrix[5][7][0]~combout\,
	datad => \edge_matrix[6][0][0]~combout\,
	combout => \i3[0]~93_combout\);

-- Location: LCCOMB_X54_Y52_N12
\i1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~40_combout\ = (\i3[0]~93_combout\) # ((!\edge_matrix[6][6][0]~combout\ & ((\edge_matrix[6][5][0]~combout\) # (\edge_matrix[6][1][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][6][0]~combout\,
	datab => \edge_matrix[6][5][0]~combout\,
	datac => \i3[0]~93_combout\,
	datad => \edge_matrix[6][1][0]~combout\,
	combout => \i1~40_combout\);

-- Location: LCCOMB_X50_Y52_N22
\i1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~41_combout\ = (!\edge_matrix[7][2][0]~combout\ & ((\i1~40_combout\) # ((\i3[0]~61_combout\ & \edge_matrix[5][5][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[0]~61_combout\,
	datab => \edge_matrix[5][5][0]~combout\,
	datac => \i1~40_combout\,
	datad => \edge_matrix[7][2][0]~combout\,
	combout => \i1~41_combout\);

-- Location: LCCOMB_X49_Y52_N28
\i1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~39_combout\ = (!\edge_matrix[7][2][0]~combout\ & ((\edge_matrix[7][1][0]~combout\) # ((\edge_matrix[6][7][0]~combout\ & !\edge_matrix[7][0][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[6][7][0]~combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \edge_matrix[7][2][0]~combout\,
	datad => \edge_matrix[7][1][0]~combout\,
	combout => \i1~39_combout\);

-- Location: LCCOMB_X50_Y52_N12
\i1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~42_combout\ = (\edge_matrix[7][3][0]~combout\) # ((\i1~39_combout\) # ((!\edge_matrix[7][0][0]~combout\ & \i1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][3][0]~combout\,
	datab => \edge_matrix[7][0][0]~combout\,
	datac => \i1~41_combout\,
	datad => \i1~39_combout\,
	combout => \i1~42_combout\);

-- Location: LCCOMB_X56_Y51_N18
\i1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~38_combout\ = (\edge_matrix[3][7][0]~combout\) # ((!\edge_matrix[3][6][0]~combout\ & \edge_matrix[3][5][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[3][7][0]~combout\,
	datab => \edge_matrix[3][6][0]~combout\,
	datad => \edge_matrix[3][5][0]~combout\,
	combout => \i1~38_combout\);

-- Location: LCCOMB_X50_Y51_N22
\i1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~46_combout\ = (\i1~42_combout\) # ((\i1~43_combout\ & ((\i1~45_combout\) # (\i1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~45_combout\,
	datab => \i1~43_combout\,
	datac => \i1~42_combout\,
	datad => \i1~38_combout\,
	combout => \i1~46_combout\);

-- Location: LCCOMB_X49_Y52_N16
\i1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~23_combout\ = (!\edge_matrix[7][6][0]~combout\ & ((\edge_matrix[7][5][0]~combout\) # (!\edge_matrix[7][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \edge_matrix[7][4][0]~combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][6][0]~combout\,
	combout => \i1~23_combout\);

-- Location: LCCOMB_X52_Y52_N20
\i1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~47_combout\ = ((\i1~23_combout\ & ((\i1~37_combout\) # (\i1~46_combout\)))) # (!\i0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1~37_combout\,
	datab => \i1~46_combout\,
	datac => \i0~12_combout\,
	datad => \i1~23_combout\,
	combout => \i1~47_combout\);

-- Location: LCCOMB_X52_Y52_N16
\i1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i1(0) = ((\enable~input_o\ & (\i1~47_combout\)) # (!\enable~input_o\ & ((i1(0))))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i1~47_combout\,
	datac => \enable~input_o\,
	datad => i1(0),
	combout => i1(0));

-- Location: LCCOMB_X49_Y52_N14
\i1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~5_combout\ = (\edge_matrix[7][7][0]~combout\) # ((\edge_matrix[7][6][0]~combout\) # ((\edge_matrix[7][5][0]~combout\) # (\edge_matrix[7][4][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \edge_matrix[7][7][0]~combout\,
	datab => \edge_matrix[7][6][0]~combout\,
	datac => \edge_matrix[7][5][0]~combout\,
	datad => \edge_matrix[7][4][0]~combout\,
	combout => \i1~5_combout\);

-- Location: LCCOMB_X52_Y52_N18
\i1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i1~6_combout\ = (\Equal4~0_combout\ & ((\i1~5_combout\) # ((\i3[2]~35_combout\ & \i0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3[2]~35_combout\,
	datab => \i1~5_combout\,
	datac => \i0~5_combout\,
	datad => \Equal4~0_combout\,
	combout => \i1~6_combout\);

-- Location: LCCOMB_X52_Y52_N14
\i1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- i1(2) = (\reset~input_o\ & ((\enable~input_o\ & (\i1~6_combout\)) # (!\enable~input_o\ & ((i1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \i1~6_combout\,
	datac => i1(2),
	datad => \enable~input_o\,
	combout => i1(2));

-- Location: LCCOMB_X77_Y40_N16
\SevenSegmentDisplay|WideOr20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr20~combout\ = (i1(1) & ((i1(3)) # ((!i1(0) & i1(2))))) # (!i1(1) & (i1(2) $ (((i1(0) & !i1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr20~combout\);

-- Location: LCCOMB_X77_Y40_N14
\SevenSegmentDisplay|WideOr19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr19~0_combout\ = (i1(1) & ((i1(3)) # ((!i1(0) & i1(2))))) # (!i1(1) & ((i1(3) & ((i1(2)))) # (!i1(3) & (i1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr19~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\SevenSegmentDisplay|WideOr18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr18~combout\ = (i1(2) & (((i1(3))))) # (!i1(2) & (i1(1) $ (((i1(0) & !i1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr18~combout\);

-- Location: LCCOMB_X77_Y40_N2
\SevenSegmentDisplay|WideOr17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr17~0_combout\ = (i1(1) & ((i1(3)) # ((i1(0) & i1(2))))) # (!i1(1) & (i1(2) $ (((i1(0) & !i1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr17~0_combout\);

-- Location: LCCOMB_X77_Y40_N28
\SevenSegmentDisplay|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr16~0_combout\ = (i1(1) & (!i1(0) & ((!i1(3))))) # (!i1(1) & (!i1(2) & ((!i1(3)) # (!i1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr16~0_combout\);

-- Location: LCCOMB_X77_Y40_N18
\SevenSegmentDisplay|WideOr15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr15~0_combout\ = (i1(2) & ((i1(3)) # ((i1(1) & i1(0))))) # (!i1(2) & (i1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr15~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\SevenSegmentDisplay|WideOr14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr14~0_combout\ = (i1(1) & ((i1(3)) # ((i1(0) & i1(2))))) # (!i1(1) & ((i1(2) $ (!i1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i1(1),
	datab => i1(0),
	datac => i1(2),
	datad => i1(3),
	combout => \SevenSegmentDisplay|WideOr14~0_combout\);

-- Location: LCCOMB_X77_Y40_N10
\SevenSegmentDisplay|WideOr27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr27~combout\ = (i0(2) & ((i1(3)) # ((!i0(0))))) # (!i0(2) & ((i1(3) & (i0(1))) # (!i1(3) & (!i0(1) & i0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr27~combout\);

-- Location: LCCOMB_X77_Y40_N24
\SevenSegmentDisplay|WideOr26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr26~0_combout\ = (i1(3) & ((i0(2)) # ((i0(1))))) # (!i1(3) & ((i0(1) & (i0(2) & !i0(0))) # (!i0(1) & ((i0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr26~0_combout\);

-- Location: LCCOMB_X77_Y40_N30
\SevenSegmentDisplay|WideOr25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr25~combout\ = (i0(2) & (i1(3))) # (!i0(2) & (i0(1) $ (((!i1(3) & i0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr25~combout\);

-- Location: LCCOMB_X77_Y40_N12
\SevenSegmentDisplay|WideOr24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr24~0_combout\ = (i0(1) & ((i1(3)) # ((i0(2) & i0(0))))) # (!i0(1) & (i0(2) $ (((!i1(3) & i0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr24~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\SevenSegmentDisplay|WideOr23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr23~0_combout\ = (i0(1) & (((!i1(3) & !i0(0))))) # (!i0(1) & (!i0(2) & ((!i0(0)) # (!i1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr23~0_combout\);

-- Location: LCCOMB_X77_Y40_N8
\SevenSegmentDisplay|WideOr22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr22~0_combout\ = (i0(2) & ((i1(3)) # ((i0(1) & i0(0))))) # (!i0(2) & (((i0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr22~0_combout\);

-- Location: LCCOMB_X77_Y40_N26
\SevenSegmentDisplay|WideOr21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegmentDisplay|WideOr21~0_combout\ = (i0(2) & ((i1(3)) # ((i0(1) & i0(0))))) # (!i0(2) & (i1(3) $ ((!i0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i0(2),
	datab => i1(3),
	datac => i0(1),
	datad => i0(0),
	combout => \SevenSegmentDisplay|WideOr21~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


