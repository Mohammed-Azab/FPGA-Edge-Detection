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

-- DATE "12/02/2024 18:07:40"

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
	clk : IN std_logic;
	reset : IN std_logic;
	input_signal : IN std_logic_vector(7 DOWNTO 0);
	segmentsL_i0 : OUT std_logic_vector(6 DOWNTO 0);
	segmentsL_i1 : OUT std_logic_vector(6 DOWNTO 0);
	segmentsL_i2 : OUT std_logic_vector(6 DOWNTO 0);
	segmentsL_i3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END FPGA_Edge_Detection;

-- Design Ports Information
-- clk	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_signal[7]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i0[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i1[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[2]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[3]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[4]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i2[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[4]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[5]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentsL_i3[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_input_signal : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_segmentsL_i0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsL_i1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsL_i2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentsL_i3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \input_signal[0]~input_o\ : std_logic;
SIGNAL \input_signal[1]~input_o\ : std_logic;
SIGNAL \input_signal[2]~input_o\ : std_logic;
SIGNAL \input_signal[3]~input_o\ : std_logic;
SIGNAL \input_signal[4]~input_o\ : std_logic;
SIGNAL \input_signal[5]~input_o\ : std_logic;
SIGNAL \input_signal[6]~input_o\ : std_logic;
SIGNAL \input_signal[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \segmentsL_i0[0]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[1]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[2]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[3]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[4]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[5]~output_o\ : std_logic;
SIGNAL \segmentsL_i0[6]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[0]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[1]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[2]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[3]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[4]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[5]~output_o\ : std_logic;
SIGNAL \segmentsL_i1[6]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[0]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[1]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[2]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[3]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[4]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[5]~output_o\ : std_logic;
SIGNAL \segmentsL_i2[6]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[0]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[1]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[2]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[3]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[4]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[5]~output_o\ : std_logic;
SIGNAL \segmentsL_i3[6]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_input_signal <= input_signal;
segmentsL_i0 <= ww_segmentsL_i0;
segmentsL_i1 <= ww_segmentsL_i1;
segmentsL_i2 <= ww_segmentsL_i2;
segmentsL_i3 <= ww_segmentsL_i3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X26_Y39_N16
\segmentsL_i0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i0[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\segmentsL_i0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i0[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\segmentsL_i0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i0[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\segmentsL_i0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i0[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\segmentsL_i0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i0[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\segmentsL_i0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i0[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\segmentsL_i0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i0[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\segmentsL_i1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i1[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\segmentsL_i1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i1[1]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\segmentsL_i1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i1[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\segmentsL_i1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i1[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\segmentsL_i1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i1[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\segmentsL_i1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i1[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\segmentsL_i1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i1[6]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\segmentsL_i2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\segmentsL_i2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i2[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\segmentsL_i2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i2[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\segmentsL_i2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i2[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\segmentsL_i2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i2[4]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\segmentsL_i2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i2[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\segmentsL_i2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i2[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\segmentsL_i3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\segmentsL_i3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\segmentsL_i3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \segmentsL_i3[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\segmentsL_i3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\segmentsL_i3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\segmentsL_i3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[5]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\segmentsL_i3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \segmentsL_i3[6]~output_o\);

-- Location: IOIBUF_X46_Y0_N8
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X24_Y0_N15
\input_signal[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(0),
	o => \input_signal[0]~input_o\);

-- Location: IOIBUF_X60_Y54_N22
\input_signal[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(1),
	o => \input_signal[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\input_signal[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(2),
	o => \input_signal[2]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\input_signal[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(3),
	o => \input_signal[3]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\input_signal[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(4),
	o => \input_signal[4]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\input_signal[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(5),
	o => \input_signal[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\input_signal[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(6),
	o => \input_signal[6]~input_o\);

-- Location: IOIBUF_X78_Y25_N1
\input_signal[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_signal(7),
	o => \input_signal[7]~input_o\);

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

ww_segmentsL_i0(0) <= \segmentsL_i0[0]~output_o\;

ww_segmentsL_i0(1) <= \segmentsL_i0[1]~output_o\;

ww_segmentsL_i0(2) <= \segmentsL_i0[2]~output_o\;

ww_segmentsL_i0(3) <= \segmentsL_i0[3]~output_o\;

ww_segmentsL_i0(4) <= \segmentsL_i0[4]~output_o\;

ww_segmentsL_i0(5) <= \segmentsL_i0[5]~output_o\;

ww_segmentsL_i0(6) <= \segmentsL_i0[6]~output_o\;

ww_segmentsL_i1(0) <= \segmentsL_i1[0]~output_o\;

ww_segmentsL_i1(1) <= \segmentsL_i1[1]~output_o\;

ww_segmentsL_i1(2) <= \segmentsL_i1[2]~output_o\;

ww_segmentsL_i1(3) <= \segmentsL_i1[3]~output_o\;

ww_segmentsL_i1(4) <= \segmentsL_i1[4]~output_o\;

ww_segmentsL_i1(5) <= \segmentsL_i1[5]~output_o\;

ww_segmentsL_i1(6) <= \segmentsL_i1[6]~output_o\;

ww_segmentsL_i2(0) <= \segmentsL_i2[0]~output_o\;

ww_segmentsL_i2(1) <= \segmentsL_i2[1]~output_o\;

ww_segmentsL_i2(2) <= \segmentsL_i2[2]~output_o\;

ww_segmentsL_i2(3) <= \segmentsL_i2[3]~output_o\;

ww_segmentsL_i2(4) <= \segmentsL_i2[4]~output_o\;

ww_segmentsL_i2(5) <= \segmentsL_i2[5]~output_o\;

ww_segmentsL_i2(6) <= \segmentsL_i2[6]~output_o\;

ww_segmentsL_i3(0) <= \segmentsL_i3[0]~output_o\;

ww_segmentsL_i3(1) <= \segmentsL_i3[1]~output_o\;

ww_segmentsL_i3(2) <= \segmentsL_i3[2]~output_o\;

ww_segmentsL_i3(3) <= \segmentsL_i3[3]~output_o\;

ww_segmentsL_i3(4) <= \segmentsL_i3[4]~output_o\;

ww_segmentsL_i3(5) <= \segmentsL_i3[5]~output_o\;

ww_segmentsL_i3(6) <= \segmentsL_i3[6]~output_o\;
END structure;


