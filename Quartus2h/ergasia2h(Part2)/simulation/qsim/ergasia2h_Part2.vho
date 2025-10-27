-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/29/2021 17:27:18"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	ergasia2h_Part2 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	result : BUFFER std_logic_vector(15 DOWNTO 0);
	carryout : BUFFER std_logic
	);
END ergasia2h_Part2;

-- Design Ports Information


ARCHITECTURE structure OF ergasia2h_Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_carryout : std_logic;
SIGNAL \GEN_ALU:0:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:0:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \CONTROL_CIRCUIT|Mux3~0_combout\ : std_logic;
SIGNAL \CONTROL_CIRCUIT|Mux1~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|AND1|s~combout\ : std_logic;
SIGNAL \CONTROL_CIRCUIT|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:0:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:1:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:2:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:3:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:4:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:5:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:6:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\ : std_logic;
SIGNAL \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:7:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:7:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:8:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\ : std_logic;
SIGNAL \GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:9:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:9:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:10:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\ : std_logic;
SIGNAL \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:11:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:11:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:12:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\ : std_logic;
SIGNAL \GEN_ALU:13:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:13:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|ADD1|s~0_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|AND1|s~combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|MUX_4|Mux0~1_combout\ : std_logic;
SIGNAL \GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ : std_logic;
SIGNAL \GEN_ALU:14:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\ : std_logic;
SIGNAL \GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\ : std_logic;
SIGNAL \GEN_ALU:15:ALU|MUX_4|Mux0~5_combout\ : std_logic;
SIGNAL \GEN_ALU:15:ALU|ADD1|cout~0_combout\ : std_logic;
SIGNAL \carryout~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \opcode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
result <= ww_result;
carryout <= ww_carryout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LC_X6_Y4_N4
\GEN_ALU:0:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:0:ALU|MUX_4|Mux0~4_combout\ = (\opcode~combout\(1) & (\b~combout\(0) $ (((\a~combout\(0)))))) # (!\opcode~combout\(1) & ((\b~combout\(0) & (!\opcode~combout\(2) & \a~combout\(0))) # (!\b~combout\(0) & (\opcode~combout\(2) & !\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:0:ALU|MUX_4|Mux0~4_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: LC_X6_Y4_N0
\GEN_ALU:0:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:0:ALU|MUX_4|Mux0~5_combout\ = (\GEN_ALU:0:ALU|MUX_4|Mux0~4_combout\) # ((\opcode~combout\(0) & (\b~combout\(0) $ (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \GEN_ALU:0:ALU|MUX_4|Mux0~4_combout\,
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:0:ALU|MUX_4|Mux0~5_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X6_Y4_N8
\GEN_ALU:1:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\ = \a~combout\(1) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X5_Y2_N2
\CONTROL_CIRCUIT|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \CONTROL_CIRCUIT|Mux3~0_combout\ = ((!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONTROL_CIRCUIT|Mux3~0_combout\);

-- Location: LC_X5_Y2_N5
\CONTROL_CIRCUIT|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \CONTROL_CIRCUIT|Mux1~0_combout\ = ((\opcode~combout\(2) & (!\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONTROL_CIRCUIT|Mux1~0_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X6_Y4_N9
\GEN_ALU:1:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (((!\a~combout\(1) & !\b~combout\(1))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(1) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "102c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|AND1|s~combout\);

-- Location: LC_X4_Y3_N3
\CONTROL_CIRCUIT|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \CONTROL_CIRCUIT|Mux0~0_combout\ = ((\opcode~combout\(1) & (\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \CONTROL_CIRCUIT|Mux0~0_combout\);

-- Location: LC_X6_Y4_N5
\GEN_ALU:1:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(1) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "969c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \b~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X6_Y4_N6
\GEN_ALU:0:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:0:ALU|ADD1|cout~0_combout\ = (\b~combout\(0) & ((\CONTROL_CIRCUIT|Mux1~0_combout\ & (\CONTROL_CIRCUIT|Mux3~0_combout\ & !\a~combout\(0))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & ((\a~combout\(0)))))) # (!\b~combout\(0) & 
-- ((\CONTROL_CIRCUIT|Mux3~0_combout\) # ((\CONTROL_CIRCUIT|Mux1~0_combout\ & !\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "72d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:0:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y4_N3
\GEN_ALU:1:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|ADD1|s~0_combout\ = \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(1) $ (((\GEN_ALU:0:ALU|ADD1|cout~0_combout\ & !\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:0:ALU|ADD1|cout~0_combout\,
	datac => \a~combout\(1),
	datad => \CONTROL_CIRCUIT|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|ADD1|s~0_combout\);

-- Location: LC_X6_Y4_N2
\GEN_ALU:1:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & (((\CONTROL_CIRCUIT|Mux0~0_combout\) # (\GEN_ALU:1:ALU|ADD1|s~0_combout\)))) # (!\opcode~combout\(1) & (\GEN_ALU:1:ALU|AND1|s~combout\ & (!\CONTROL_CIRCUIT|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \GEN_ALU:1:ALU|AND1|s~combout\,
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:1:ALU|ADD1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X6_Y4_N1
\GEN_ALU:1:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\) # (!\GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\ & 
-- ((\GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:1:ALU|MUX_2A|rslta~0_combout\,
	datab => \GEN_ALU:1:ALU|MUX_4|Mux0~0_combout\,
	datac => \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X4_Y1_N1
\GEN_ALU:2:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(2) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c63c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \b~combout\(2),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X6_Y4_N7
\GEN_ALU:1:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:1:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:0:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(1))))) # (!\GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:0:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:1:ALU|MUX_2B|rsltb~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \a~combout\(1),
	datad => \GEN_ALU:0:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:1:ALU|ADD1|cout~0_combout\);

-- Location: LC_X4_Y1_N3
\GEN_ALU:2:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|ADD1|s~0_combout\ = \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(2) $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:1:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "693c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\,
	datac => \a~combout\(2),
	datad => \GEN_ALU:1:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|ADD1|s~0_combout\);

-- Location: LC_X4_Y1_N2
\GEN_ALU:2:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (!\a~combout\(2) & ((!\b~combout\(2))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(2) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0462",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(2),
	datac => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datad => \b~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|AND1|s~combout\);

-- Location: LC_X4_Y1_N6
\GEN_ALU:2:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & ((\GEN_ALU:2:ALU|ADD1|s~0_combout\) # ((\CONTROL_CIRCUIT|Mux0~0_combout\)))) # (!\opcode~combout\(1) & (((\GEN_ALU:2:ALU|AND1|s~combout\ & !\CONTROL_CIRCUIT|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:2:ALU|ADD1|s~0_combout\,
	datab => \GEN_ALU:2:ALU|AND1|s~combout\,
	datac => \opcode~combout\(1),
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X4_Y1_N4
\GEN_ALU:2:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(2) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f05a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datac => \a~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X4_Y1_N5
\GEN_ALU:2:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ & ((!\GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\) # (!\GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ & 
-- ((\GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (\GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:2:ALU|MUX_4|Mux0~0_combout\,
	datab => \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\,
	datac => \GEN_ALU:2:ALU|MUX_2A|rslta~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X4_Y3_N8
\GEN_ALU:3:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(3) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X4_Y3_N0
\GEN_ALU:3:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|AND1|s~combout\ = (\a~combout\(3) & (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(3))))) # (!\a~combout\(3) & (((!\b~combout\(3) & \CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0360",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \CONTROL_CIRCUIT|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|AND1|s~combout\);

-- Location: LC_X4_Y1_N8
\GEN_ALU:2:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:2:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:1:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(2))))) # (!\GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:1:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:2:ALU|MUX_2B|rsltb~0_combout\,
	datac => \a~combout\(2),
	datad => \GEN_ALU:1:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:2:ALU|ADD1|cout~0_combout\);

-- Location: LC_X4_Y3_N6
\GEN_ALU:3:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|ADD1|s~0_combout\ = \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(3) $ (((\GEN_ALU:2:ALU|ADD1|cout~0_combout\ & !\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:2:ALU|ADD1|cout~0_combout\,
	datac => \a~combout\(3),
	datad => \CONTROL_CIRCUIT|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|ADD1|s~0_combout\);

-- Location: LC_X4_Y3_N7
\GEN_ALU:3:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\opcode~combout\(1))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\opcode~combout\(1) & ((\GEN_ALU:3:ALU|ADD1|s~0_combout\))) # (!\opcode~combout\(1) & 
-- (\GEN_ALU:3:ALU|AND1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datab => \GEN_ALU:3:ALU|AND1|s~combout\,
	datac => \opcode~combout\(1),
	datad => \GEN_ALU:3:ALU|ADD1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X4_Y3_N4
\GEN_ALU:3:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\ = \a~combout\(3) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X4_Y3_N2
\GEN_ALU:3:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ & ((!\GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\) # (!\GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ & 
-- ((\GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:3:ALU|MUX_4|Mux0~0_combout\,
	datac => \GEN_ALU:3:ALU|MUX_2A|rslta~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X6_Y3_N5
\GEN_ALU:4:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(4) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \a~combout\(4),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X6_Y3_N8
\GEN_ALU:4:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(4) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X4_Y3_N9
\GEN_ALU:3:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:3:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:2:ALU|ADD1|cout~0_combout\) # (\a~combout\(3) $ (\CONTROL_CIRCUIT|Mux1~0_combout\)))) # (!\GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:2:ALU|ADD1|cout~0_combout\ & (\a~combout\(3) $ (\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:3:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:2:ALU|ADD1|cout~0_combout\,
	datac => \a~combout\(3),
	datad => \CONTROL_CIRCUIT|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:3:ALU|ADD1|cout~0_combout\);

-- Location: LC_X7_Y3_N7
\GEN_ALU:4:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|ADD1|s~0_combout\ = \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(4) $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:3:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\,
	datac => \GEN_ALU:3:ALU|ADD1|cout~0_combout\,
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|ADD1|s~0_combout\);

-- Location: LC_X6_Y3_N4
\GEN_ALU:4:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (!\a~combout\(4) & ((!\b~combout\(4))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(4) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0462",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(4),
	datac => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datad => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|AND1|s~combout\);

-- Location: LC_X6_Y3_N0
\GEN_ALU:4:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & ((\GEN_ALU:4:ALU|ADD1|s~0_combout\) # ((\CONTROL_CIRCUIT|Mux0~0_combout\)))) # (!\opcode~combout\(1) & (((\GEN_ALU:4:ALU|AND1|s~combout\ & !\CONTROL_CIRCUIT|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:4:ALU|ADD1|s~0_combout\,
	datab => \opcode~combout\(1),
	datac => \GEN_ALU:4:ALU|AND1|s~combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X6_Y3_N1
\GEN_ALU:4:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\) # (!\GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\))) # (!\GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\ & 
-- (\GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\)))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:4:ALU|MUX_2A|rslta~0_combout\,
	datab => \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\,
	datac => \GEN_ALU:4:ALU|MUX_4|Mux0~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X7_Y3_N3
\GEN_ALU:5:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(5) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X7_Y3_N5
\GEN_ALU:5:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (((!\b~combout\(5) & !\a~combout\(5))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(5) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "140a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|AND1|s~combout\);

-- Location: LC_X7_Y3_N6
\GEN_ALU:4:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:4:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:3:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(4))))) # (!\GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:3:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:4:ALU|MUX_2B|rsltb~0_combout\,
	datac => \GEN_ALU:3:ALU|ADD1|cout~0_combout\,
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:4:ALU|ADD1|cout~0_combout\);

-- Location: LC_X7_Y3_N2
\GEN_ALU:5:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(5) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d23c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(2),
	datac => \b~combout\(5),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X7_Y3_N8
\GEN_ALU:5:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|ADD1|s~0_combout\ = \a~combout\(5) $ (\GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\ $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:4:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "639c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(5),
	datac => \GEN_ALU:4:ALU|ADD1|cout~0_combout\,
	datad => \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|ADD1|s~0_combout\);

-- Location: LC_X7_Y3_N1
\GEN_ALU:5:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & ((\CONTROL_CIRCUIT|Mux0~0_combout\) # ((\GEN_ALU:5:ALU|ADD1|s~0_combout\)))) # (!\opcode~combout\(1) & (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (\GEN_ALU:5:ALU|AND1|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datac => \GEN_ALU:5:ALU|AND1|s~combout\,
	datad => \GEN_ALU:5:ALU|ADD1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X7_Y3_N4
\GEN_ALU:5:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\) # (!\GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\ & 
-- ((\GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:5:ALU|MUX_2A|rslta~0_combout\,
	datab => \GEN_ALU:5:ALU|MUX_4|Mux0~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X5_Y2_N9
\GEN_ALU:6:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(6) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c36c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \b~combout\(6),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X7_Y3_N9
\GEN_ALU:5:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:5:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:4:ALU|ADD1|cout~0_combout\ & ((\GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(5))))) # (!\GEN_ALU:4:ALU|ADD1|cout~0_combout\ & 
-- (\GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(5),
	datac => \GEN_ALU:4:ALU|ADD1|cout~0_combout\,
	datad => \GEN_ALU:5:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:5:ALU|ADD1|cout~0_combout\);

-- Location: LC_X5_Y2_N4
\GEN_ALU:6:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|ADD1|s~0_combout\ = \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(6) $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:5:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "693c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\,
	datac => \a~combout\(6),
	datad => \GEN_ALU:5:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|ADD1|s~0_combout\);

-- Location: LC_X5_Y2_N8
\GEN_ALU:6:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (!\b~combout\(6) & (!\a~combout\(6)))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(6) & (\b~combout\(6) $ (\CONTROL_CIRCUIT|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1242",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \CONTROL_CIRCUIT|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|AND1|s~combout\);

-- Location: LC_X5_Y2_N6
\GEN_ALU:6:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & ((\GEN_ALU:6:ALU|ADD1|s~0_combout\) # ((\CONTROL_CIRCUIT|Mux0~0_combout\)))) # (!\opcode~combout\(1) & (((!\CONTROL_CIRCUIT|Mux0~0_combout\ & \GEN_ALU:6:ALU|AND1|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \GEN_ALU:6:ALU|ADD1|s~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:6:ALU|AND1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X5_Y2_N3
\GEN_ALU:6:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\ = \a~combout\(6) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \a~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X5_Y2_N7
\GEN_ALU:6:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ & ((!\GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\) # (!\GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ & 
-- ((\GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (\GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7aca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:6:ALU|MUX_4|Mux0~0_combout\,
	datab => \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:6:ALU|MUX_2A|rslta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LC_X6_Y1_N3
\GEN_ALU:7:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\ = \a~combout\(7) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\);

-- Location: LC_X5_Y2_N1
\GEN_ALU:6:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:6:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:5:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(6))))) # (!\GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:5:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:6:ALU|MUX_2B|rsltb~0_combout\,
	datac => \a~combout\(6),
	datad => \GEN_ALU:5:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:6:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y1_N9
\GEN_ALU:7:ALU|MUX_4|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\ = (\opcode~combout\(1) & (\GEN_ALU:6:ALU|ADD1|cout~0_combout\ & (!\opcode~combout\(2)))) # (!\opcode~combout\(1) & (((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:6:ALU|ADD1|cout~0_combout\,
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X6_Y1_N1
\GEN_ALU:7:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(7) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X6_Y1_N7
\GEN_ALU:7:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:7:ALU|MUX_4|Mux0~5_combout\ = (\opcode~combout\(1) & (\GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\ $ (\GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\ $ (\GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\)))) # (!\opcode~combout\(1) & ((\GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\ & 
-- ((\GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\) # (\GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\))) # (!\GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\ & (\GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\ & \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:7:ALU|MUX_4|Mux0~4_combout\,
	datab => \GEN_ALU:7:ALU|MUX_4|Mux0~6_combout\,
	datac => \opcode~combout\(1),
	datad => \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:7:ALU|MUX_4|Mux0~5_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X5_Y1_N5
\GEN_ALU:8:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(8) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \b~combout\(8),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X5_Y1_N2
\GEN_ALU:8:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|AND1|s~combout\ = (\a~combout\(8) & (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\b~combout\(8) $ (\CONTROL_CIRCUIT|Mux3~0_combout\)))) # (!\a~combout\(8) & (!\b~combout\(8) & (\CONTROL_CIRCUIT|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1418",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datab => \a~combout\(8),
	datac => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|AND1|s~combout\);

-- Location: LC_X6_Y1_N0
\GEN_ALU:7:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:7:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:6:ALU|ADD1|cout~0_combout\ & ((\GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\) # (\a~combout\(7) $ (\CONTROL_CIRCUIT|Mux1~0_combout\)))) # (!\GEN_ALU:6:ALU|ADD1|cout~0_combout\ & 
-- (\GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\ & (\a~combout\(7) $ (\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:6:ALU|ADD1|cout~0_combout\,
	datab => \GEN_ALU:7:ALU|MUX_2B|rsltb~0_combout\,
	datac => \a~combout\(7),
	datad => \CONTROL_CIRCUIT|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:7:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y2_N8
\GEN_ALU:8:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|ADD1|s~0_combout\ = \a~combout\(8) $ (\GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:7:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "693c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(8),
	datac => \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\,
	datad => \GEN_ALU:7:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|ADD1|s~0_combout\);

-- Location: LC_X6_Y2_N2
\GEN_ALU:8:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & (((\CONTROL_CIRCUIT|Mux0~0_combout\) # (\GEN_ALU:8:ALU|ADD1|s~0_combout\)))) # (!\opcode~combout\(1) & (\GEN_ALU:8:ALU|AND1|s~combout\ & (!\CONTROL_CIRCUIT|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:8:ALU|AND1|s~combout\,
	datab => \opcode~combout\(1),
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:8:ALU|ADD1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X6_Y2_N9
\GEN_ALU:8:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(8) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X6_Y2_N1
\GEN_ALU:8:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ & ((!\GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\) # (!\GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ & 
-- ((\GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7cac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:8:ALU|MUX_4|Mux0~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:8:ALU|MUX_2A|rslta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|MUX_4|Mux0~1_combout\);

-- Location: LC_X6_Y2_N0
\GEN_ALU:8:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:8:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:7:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(8))))) # (!\GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:7:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(8),
	datac => \GEN_ALU:8:ALU|MUX_2B|rsltb~0_combout\,
	datad => \GEN_ALU:7:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:8:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y2_N3
\GEN_ALU:9:ALU|MUX_4|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(2) & \GEN_ALU:8:ALU|ADD1|cout~0_combout\)))) # (!\opcode~combout\(1) & (\opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \GEN_ALU:8:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X6_Y2_N7
\GEN_ALU:9:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(9) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c63c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \b~combout\(9),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X6_Y2_N6
\GEN_ALU:9:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\ = (\a~combout\(9) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\);

-- Location: LC_X6_Y2_N5
\GEN_ALU:9:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:9:ALU|MUX_4|Mux0~5_combout\ = (\opcode~combout\(1) & (\GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\ $ (\GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\ $ (\GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\)))) # (!\opcode~combout\(1) & ((\GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\ & 
-- ((\GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\) # (\GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\))) # (!\GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\ & (\GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\ & \GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b668",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:9:ALU|MUX_4|Mux0~6_combout\,
	datab => \opcode~combout\(1),
	datac => \GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\,
	datad => \GEN_ALU:9:ALU|MUX_4|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:9:ALU|MUX_4|Mux0~5_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X5_Y4_N6
\GEN_ALU:10:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(10) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X5_Y4_N8
\GEN_ALU:10:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (!\b~combout\(10) & ((!\a~combout\(10))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(10) & (\b~combout\(10) $ (\CONTROL_CIRCUIT|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1244",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|AND1|s~combout\);

-- Location: LC_X6_Y2_N4
\GEN_ALU:9:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:9:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:8:ALU|ADD1|cout~0_combout\ & ((\GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(9))))) # (!\GEN_ALU:8:ALU|ADD1|cout~0_combout\ & 
-- (\GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:8:ALU|ADD1|cout~0_combout\,
	datac => \GEN_ALU:9:ALU|MUX_2B|rsltb~0_combout\,
	datad => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:9:ALU|ADD1|cout~0_combout\);

-- Location: LC_X5_Y4_N4
\GEN_ALU:10:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(10) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "969a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X5_Y4_N2
\GEN_ALU:10:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|ADD1|s~0_combout\ = \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(10) $ (((\GEN_ALU:9:ALU|ADD1|cout~0_combout\ & !\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2dd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:9:ALU|ADD1|cout~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\,
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|ADD1|s~0_combout\);

-- Location: LC_X5_Y4_N9
\GEN_ALU:10:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & (((\CONTROL_CIRCUIT|Mux0~0_combout\) # (\GEN_ALU:10:ALU|ADD1|s~0_combout\)))) # (!\opcode~combout\(1) & (\GEN_ALU:10:ALU|AND1|s~combout\ & (!\CONTROL_CIRCUIT|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:10:ALU|AND1|s~combout\,
	datab => \opcode~combout\(1),
	datac => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datad => \GEN_ALU:10:ALU|ADD1|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X5_Y4_N3
\GEN_ALU:10:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\) # (!\GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\ & 
-- ((\GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:10:ALU|MUX_2A|rslta~0_combout\,
	datab => \GEN_ALU:10:ALU|MUX_4|Mux0~0_combout\,
	datac => \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X6_Y3_N6
\GEN_ALU:11:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\ = (\a~combout\(11) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\);

-- Location: LC_X5_Y4_N5
\GEN_ALU:10:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:10:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:9:ALU|ADD1|cout~0_combout\ & ((\GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(10))))) # (!\GEN_ALU:9:ALU|ADD1|cout~0_combout\ & 
-- (\GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:9:ALU|ADD1|cout~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \GEN_ALU:10:ALU|MUX_2B|rsltb~0_combout\,
	datad => \a~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:10:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y3_N2
\GEN_ALU:11:ALU|MUX_4|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\ = (\opcode~combout\(1) & (\GEN_ALU:10:ALU|ADD1|cout~0_combout\ & (!\opcode~combout\(2)))) # (!\opcode~combout\(1) & (((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:10:ALU|ADD1|cout~0_combout\,
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X6_Y3_N7
\GEN_ALU:11:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(11) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(11),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X6_Y3_N3
\GEN_ALU:11:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:11:ALU|MUX_4|Mux0~5_combout\ = (\opcode~combout\(1) & (\GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\ $ (\GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\ $ (\GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\)))) # (!\opcode~combout\(1) & ((\GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\ 
-- & ((\GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\) # (\GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\))) # (!\GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\ & (\GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\ & \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:11:ALU|MUX_4|Mux0~4_combout\,
	datab => \GEN_ALU:11:ALU|MUX_4|Mux0~6_combout\,
	datac => \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\,
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:11:ALU|MUX_4|Mux0~5_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X5_Y1_N9
\GEN_ALU:12:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(12) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(12),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X6_Y3_N9
\GEN_ALU:11:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:11:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:10:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(11))))) # (!\GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:10:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:11:ALU|MUX_2B|rsltb~0_combout\,
	datac => \GEN_ALU:10:ALU|ADD1|cout~0_combout\,
	datad => \a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:11:ALU|ADD1|cout~0_combout\);

-- Location: LC_X5_Y1_N8
\GEN_ALU:12:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|ADD1|s~0_combout\ = \a~combout\(12) $ (\GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\ $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:11:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datad => \GEN_ALU:11:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|ADD1|s~0_combout\);

-- Location: LC_X5_Y1_N1
\GEN_ALU:12:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (((!\b~combout\(12) & !\a~combout\(12))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(12) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "140a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datac => \b~combout\(12),
	datad => \a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|AND1|s~combout\);

-- Location: LC_X5_Y1_N6
\GEN_ALU:12:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\opcode~combout\(1))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\opcode~combout\(1) & (\GEN_ALU:12:ALU|ADD1|s~0_combout\)) # (!\opcode~combout\(1) & 
-- ((\GEN_ALU:12:ALU|AND1|s~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:12:ALU|ADD1|s~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datac => \opcode~combout\(1),
	datad => \GEN_ALU:12:ALU|AND1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X5_Y1_N7
\GEN_ALU:12:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\ = (\a~combout\(12) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\);

-- Location: LC_X5_Y1_N0
\GEN_ALU:12:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\) # (!\GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\ & 
-- ((\GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (\GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:12:ALU|MUX_4|Mux0~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux0~0_combout\,
	datac => \GEN_ALU:12:ALU|MUX_2A|rslta~0_combout\,
	datad => \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X6_Y1_N8
\GEN_ALU:13:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(13) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9b64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \b~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X6_Y1_N2
\GEN_ALU:13:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\ = \a~combout\(13) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(13),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\);

-- Location: LC_X5_Y1_N4
\GEN_ALU:12:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:12:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:11:ALU|ADD1|cout~0_combout\) # (\a~combout\(12) $ (\CONTROL_CIRCUIT|Mux1~0_combout\)))) # (!\GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:11:ALU|ADD1|cout~0_combout\ & (\a~combout\(12) $ (\CONTROL_CIRCUIT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \GEN_ALU:12:ALU|MUX_2B|rsltb~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datad => \GEN_ALU:11:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:12:ALU|ADD1|cout~0_combout\);

-- Location: LC_X6_Y1_N4
\GEN_ALU:13:ALU|MUX_4|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(2) & ((\GEN_ALU:12:ALU|ADD1|cout~0_combout\)))) # (!\opcode~combout\(1) & (((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7250",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \GEN_ALU:12:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\);

-- Location: LC_X6_Y1_N5
\GEN_ALU:13:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:13:ALU|MUX_4|Mux0~5_combout\ = (\opcode~combout\(1) & (\GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ $ (\GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\ $ (\GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\)))) # (!\opcode~combout\(1) & 
-- ((\GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\) # (\GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\))) # (!\GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ & (\GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\ & 
-- \GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:13:ALU|MUX_4|Mux0~4_combout\,
	datac => \opcode~combout\(1),
	datad => \GEN_ALU:13:ALU|MUX_4|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:13:ALU|MUX_4|Mux0~5_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X3_Y1_N0
\GEN_ALU:14:ALU|MUX_2A|rslta~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\ = \a~combout\(14) $ ((((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(14),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X3_Y1_N4
\GEN_ALU:14:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(14) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c63c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \b~combout\(14),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X6_Y1_N6
\GEN_ALU:13:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:13:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:12:ALU|ADD1|cout~0_combout\ & ((\GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(13))))) # (!\GEN_ALU:12:ALU|ADD1|cout~0_combout\ & 
-- (\GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \GEN_ALU:12:ALU|ADD1|cout~0_combout\,
	datac => \a~combout\(13),
	datad => \GEN_ALU:13:ALU|MUX_2B|rsltb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:13:ALU|ADD1|cout~0_combout\);

-- Location: LC_X3_Y1_N2
\GEN_ALU:14:ALU|ADD1|s~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|ADD1|s~0_combout\ = \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\ $ (\a~combout\(14) $ (((!\CONTROL_CIRCUIT|Mux1~0_combout\ & \GEN_ALU:13:ALU|ADD1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "695a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \a~combout\(14),
	datad => \GEN_ALU:13:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|ADD1|s~0_combout\);

-- Location: LC_X4_Y1_N7
\GEN_ALU:14:ALU|AND1|s\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|AND1|s~combout\ = (\CONTROL_CIRCUIT|Mux1~0_combout\ & (!\a~combout\(14) & ((!\b~combout\(14))))) # (!\CONTROL_CIRCUIT|Mux1~0_combout\ & (\a~combout\(14) & (\CONTROL_CIRCUIT|Mux3~0_combout\ $ (\b~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0462",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datab => \a~combout\(14),
	datac => \CONTROL_CIRCUIT|Mux3~0_combout\,
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|AND1|s~combout\);

-- Location: LC_X4_Y1_N0
\GEN_ALU:14:ALU|MUX_4|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\ = (\opcode~combout\(1) & ((\GEN_ALU:14:ALU|ADD1|s~0_combout\) # ((\CONTROL_CIRCUIT|Mux0~0_combout\)))) # (!\opcode~combout\(1) & (((\GEN_ALU:14:ALU|AND1|s~combout\ & !\CONTROL_CIRCUIT|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \GEN_ALU:14:ALU|ADD1|s~0_combout\,
	datac => \GEN_ALU:14:ALU|AND1|s~combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\);

-- Location: LC_X4_Y1_N9
\GEN_ALU:14:ALU|MUX_4|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|MUX_4|Mux0~1_combout\ = (\CONTROL_CIRCUIT|Mux0~0_combout\ & ((\GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\ & ((!\GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\) # (!\GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\))) # (!\GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\ & 
-- ((\GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\))))) # (!\CONTROL_CIRCUIT|Mux0~0_combout\ & (((\GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7acc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:14:ALU|MUX_2A|rslta~0_combout\,
	datab => \GEN_ALU:14:ALU|MUX_4|Mux0~0_combout\,
	datac => \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\,
	datad => \CONTROL_CIRCUIT|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|MUX_4|Mux0~1_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X3_Y1_N5
\GEN_ALU:15:ALU|MUX_2B|rsltb~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ = \b~combout\(15) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(1),
	datac => \b~combout\(15),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\);

-- Location: LC_X3_Y1_N9
\GEN_ALU:14:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:14:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:13:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(14))))) # (!\GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:13:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:14:ALU|MUX_2B|rsltb~0_combout\,
	datab => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datac => \a~combout\(14),
	datad => \GEN_ALU:13:ALU|ADD1|cout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:14:ALU|ADD1|cout~0_combout\);

-- Location: LC_X3_Y1_N1
\GEN_ALU:15:ALU|MUX_4|Mux0~6\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\ = (\opcode~combout\(1) & (((\GEN_ALU:14:ALU|ADD1|cout~0_combout\ & !\opcode~combout\(2))))) # (!\opcode~combout\(1) & (\opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \GEN_ALU:14:ALU|ADD1|cout~0_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LC_X3_Y1_N7
\GEN_ALU:15:ALU|MUX_4|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\ = (\a~combout\(15) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(15),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\);

-- Location: LC_X3_Y1_N8
\GEN_ALU:15:ALU|MUX_4|Mux0~5\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:15:ALU|MUX_4|Mux0~5_combout\ = (\opcode~combout\(1) & (\GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ $ (\GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\ $ (\GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\)))) # (!\opcode~combout\(1) & 
-- ((\GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\) # (\GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\))) # (!\GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ & (\GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\ & 
-- \GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:15:ALU|MUX_4|Mux0~6_combout\,
	datac => \GEN_ALU:15:ALU|MUX_4|Mux0~4_combout\,
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:15:ALU|MUX_4|Mux0~5_combout\);

-- Location: LC_X3_Y1_N6
\GEN_ALU:15:ALU|ADD1|cout~0\ : maxv_lcell
-- Equation(s):
-- \GEN_ALU:15:ALU|ADD1|cout~0_combout\ = (\GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ & ((\GEN_ALU:14:ALU|ADD1|cout~0_combout\) # (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(15))))) # (!\GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\ & 
-- (\GEN_ALU:14:ALU|ADD1|cout~0_combout\ & (\CONTROL_CIRCUIT|Mux1~0_combout\ $ (\a~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:15:ALU|MUX_2B|rsltb~0_combout\,
	datab => \GEN_ALU:14:ALU|ADD1|cout~0_combout\,
	datac => \CONTROL_CIRCUIT|Mux1~0_combout\,
	datad => \a~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \GEN_ALU:15:ALU|ADD1|cout~0_combout\);

-- Location: LC_X3_Y1_N3
\carryout~0\ : maxv_lcell
-- Equation(s):
-- \carryout~0_combout\ = (\GEN_ALU:15:ALU|ADD1|cout~0_combout\ & (((!\opcode~combout\(2) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ALU:15:ALU|ADD1|cout~0_combout\,
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carryout~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:0:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:1:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:2:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:3:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:4:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:5:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:6:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:7:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:8:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(8));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:9:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(9));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:10:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(10));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:11:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(11));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:12:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(12));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:13:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(13));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:14:ALU|MUX_4|Mux0~1_combout\,
	oe => VCC,
	padio => ww_result(14));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \GEN_ALU:15:ALU|MUX_4|Mux0~5_combout\,
	oe => VCC,
	padio => ww_result(15));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\carryout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \carryout~0_combout\,
	oe => VCC,
	padio => ww_carryout);
END structure;


