-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/16/2023 10:08:03"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	sum : BUFFER std_logic_vector(3 DOWNTO 0);
	cout : BUFFER std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab2;

-- Design Ports Information
-- sum[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~13_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~17_combout\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
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
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \adder0|s~0_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \adder0|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:1:adder|s~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \gen_adders:1:adder|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:2:adder|s~combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \gen_adders:2:adder|cout~0_combout\ : std_logic;
SIGNAL \gen_adders:3:adder|s~combout\ : std_logic;
SIGNAL \gen_adders:3:adder|cout~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
sum <= ww_sum;
cout <= ww_cout;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;

-- Location: LCCOMB_X8_Y24_N2
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\gen_adders:3:adder|s~combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\gen_adders:3:adder|s~combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\gen_adders:3:adder|s~combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:3:adder|s~combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X8_Y24_N4
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\gen_adders:3:adder|cout~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\gen_adders:3:adder|cout~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\gen_adders:3:adder|cout~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:3:adder|cout~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X8_Y24_N6
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X8_Y24_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X9_Y24_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X11_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\gen_adders:3:adder|s~combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # (!\gen_adders:3:adder|s~combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\gen_adders:3:adder|s~combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:3:adder|s~combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X11_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\gen_adders:3:adder|cout~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # (!\gen_adders:3:adder|cout~0_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\gen_adders:3:adder|cout~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen_adders:3:adder|cout~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X8_Y24_N26
\Mod0|auto_generated|divider|divider|StageOut[52]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~12_combout\);

-- Location: LCCOMB_X8_Y24_N28
\Mod0|auto_generated|divider|divider|StageOut[51]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~13_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~13_combout\);

-- Location: LCCOMB_X8_Y24_N14
\Mod0|auto_generated|divider|divider|StageOut[50]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\);

-- Location: LCCOMB_X11_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[32]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\);

-- Location: LCCOMB_X10_Y24_N0
\Mod0|auto_generated|divider|divider|StageOut[48]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\);

-- Location: LCCOMB_X11_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[33]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\a[3]~input_o\ & ((\b[3]~input_o\) # (\gen_adders:2:adder|cout~0_combout\))) # (!\a[3]~input_o\ & (\b[3]~input_o\ 
-- & \gen_adders:2:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \gen_adders:2:adder|cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X10_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[31]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~15_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\a[2]~input_o\ $ (\b[2]~input_o\ $ (\gen_adders:1:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \b[2]~input_o\,
	datad => \gen_adders:1:adder|cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~15_combout\);

-- Location: LCCOMB_X10_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[30]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~17_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~17_combout\);

-- Location: IOOBUF_X14_Y29_N2
\sum[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \adder0|s~0_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:1:adder|s~combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:2:adder|s~combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:3:adder|s~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\cout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen_adders:3:adder|cout~0_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X17_Y27_N8
\adder0|s~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder0|s~0_combout\ = \a[0]~input_o\ $ (\b[0]~input_o\ $ (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \cin~input_o\,
	combout => \adder0|s~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X17_Y27_N18
\adder0|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \adder0|cout~0_combout\ = (\a[0]~input_o\ & ((\b[0]~input_o\) # (\cin~input_o\))) # (!\a[0]~input_o\ & (\b[0]~input_o\ & \cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \cin~input_o\,
	combout => \adder0|cout~0_combout\);

-- Location: LCCOMB_X10_Y24_N24
\gen_adders:1:adder|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:1:adder|s~combout\ = \a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \gen_adders:1:adder|s~combout\);

-- Location: IOIBUF_X0_Y25_N22
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X10_Y24_N10
\gen_adders:1:adder|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:1:adder|cout~0_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\) # (\adder0|cout~0_combout\))) # (!\a[1]~input_o\ & (\b[1]~input_o\ & \adder0|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \gen_adders:1:adder|cout~0_combout\);

-- Location: LCCOMB_X10_Y24_N28
\gen_adders:2:adder|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:2:adder|s~combout\ = \a[2]~input_o\ $ (\b[2]~input_o\ $ (\gen_adders:1:adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \gen_adders:1:adder|cout~0_combout\,
	combout => \gen_adders:2:adder|s~combout\);

-- Location: IOIBUF_X0_Y23_N8
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X10_Y24_N14
\gen_adders:2:adder|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:2:adder|cout~0_combout\ = (\a[2]~input_o\ & ((\b[2]~input_o\) # (\gen_adders:1:adder|cout~0_combout\))) # (!\a[2]~input_o\ & (\b[2]~input_o\ & \gen_adders:1:adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \gen_adders:1:adder|cout~0_combout\,
	combout => \gen_adders:2:adder|cout~0_combout\);

-- Location: LCCOMB_X9_Y24_N0
\gen_adders:3:adder|s\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:3:adder|s~combout\ = \a[3]~input_o\ $ (\b[3]~input_o\ $ (\gen_adders:2:adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \gen_adders:2:adder|cout~0_combout\,
	combout => \gen_adders:3:adder|s~combout\);

-- Location: LCCOMB_X11_Y24_N10
\gen_adders:3:adder|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gen_adders:3:adder|cout~0_combout\ = (\a[3]~input_o\ & ((\b[3]~input_o\) # (\gen_adders:2:adder|cout~0_combout\))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & \gen_adders:2:adder|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datad => \gen_adders:2:adder|cout~0_combout\,
	combout => \gen_adders:3:adder|cout~0_combout\);

-- Location: LCCOMB_X8_Y24_N0
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \gen_adders:2:adder|s~combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\gen_adders:2:adder|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:2:adder|s~combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X8_Y24_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X8_Y24_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X8_Y24_N22
\Mod0|auto_generated|divider|divider|StageOut[54]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~10_combout\);

-- Location: LCCOMB_X8_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[53]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~11_combout\);

-- Location: LCCOMB_X9_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[51]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\a[3]~input_o\ & ((\b[3]~input_o\) # (\gen_adders:2:adder|cout~0_combout\))) # (!\a[3]~input_o\ & (\b[3]~input_o\ 
-- & \gen_adders:2:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \gen_adders:2:adder|cout~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\);

-- Location: LCCOMB_X9_Y24_N2
\Mod0|auto_generated|divider|divider|StageOut[50]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\ $ (\gen_adders:2:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \gen_adders:2:adder|cout~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\);

-- Location: LCCOMB_X8_Y24_N16
\Mod0|auto_generated|divider|divider|StageOut[49]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\);

-- Location: LCCOMB_X10_Y24_N22
\Mod0|auto_generated|divider|divider|StageOut[48]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\);

-- Location: LCCOMB_X9_Y24_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~19_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X9_Y24_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X9_Y24_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[51]~13_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~13_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~21_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y24_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~12_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~12_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X9_Y24_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[53]~11_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~11_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X9_Y24_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~10_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~10_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X9_Y24_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X9_Y24_N26
\Mod0|auto_generated|divider|divider|StageOut[57]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\gen_adders:1:adder|s~combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \gen_adders:1:adder|s~combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\);

-- Location: LCCOMB_X10_Y24_N2
\Mod0|auto_generated|divider|divider|StageOut[49]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\b[2]~input_o\ $ (\a[2]~input_o\ $ (\gen_adders:1:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \gen_adders:1:adder|cout~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\);

-- Location: LCCOMB_X9_Y24_N20
\Mod0|auto_generated|divider|divider|StageOut[58]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[49]~15_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[49]~23_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\);

-- Location: LCCOMB_X9_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[59]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\);

-- Location: LCCOMB_X17_Y27_N4
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ $ (\adder0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datac => \adder0|s~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X17_Y27_N14
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ & (\adder0|s~0_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datab => \adder0|s~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X17_Y27_N0
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ & (!\adder0|s~0_combout\ & \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datab => \adder0|s~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X17_Y27_N26
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ & \adder0|s~0_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ $ (\adder0|s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datac => \adder0|s~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X17_Y27_N12
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\adder0|s~0_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datab => \adder0|s~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X17_Y27_N22
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & ((\adder0|s~0_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\ & \adder0|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datac => \adder0|s~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X17_Y27_N24
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & ((!\adder0|s~0_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~17_combout\,
	datac => \adder0|s~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~18_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X11_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \gen_adders:2:adder|s~combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\gen_adders:2:adder|s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen_adders:2:adder|s~combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X11_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y24_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X11_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[33]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\);

-- Location: LCCOMB_X11_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[32]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\ $ (\gen_adders:2:adder|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \gen_adders:2:adder|cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X11_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[31]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~12_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~12_combout\);

-- Location: LCCOMB_X10_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[30]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\a[1]~input_o\ $ (\b[1]~input_o\ $ (\adder0|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \b[1]~input_o\,
	datad => \adder0|cout~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~16_combout\);

-- Location: LCCOMB_X11_Y24_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~17_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~16_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X11_Y24_N2
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~15_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~12_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~15_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X11_Y24_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~11_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X11_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y24_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X10_Y24_N26
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X10_Y24_N4
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mux1~0_combout\);

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_cout <= \cout~output_o\;

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

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;
END structure;


