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

-- DATE "04/16/2022 18:20:16"

-- 
-- Device: Altera 5M160ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	TrafficLightsController IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tr1 : IN std_logic;
	tr4 : IN std_logic;
	r : BUFFER std_logic_vector(4 DOWNTO 0);
	g : BUFFER std_logic_vector(4 DOWNTO 0);
	y : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END TrafficLightsController;

-- Design Ports Information


ARCHITECTURE structure OF TrafficLightsController IS
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
SIGNAL ww_tr1 : std_logic;
SIGNAL ww_tr4 : std_logic;
SIGNAL ww_r : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(4 DOWNTO 0);
SIGNAL \Add0~155\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \tr1~combout\ : std_logic;
SIGNAL \Add0~157_cout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_161\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \count~24_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_162\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_163\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_164\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_165\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_166\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_167\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_168\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_169\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_170\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_171\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_172\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_173\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_174\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_175\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_176\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_177\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_178\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_179\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_180\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_181\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_182\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_183\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_184\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \count[0]~30_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \actSignal~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \actSignal~0_combout\ : std_logic;
SIGNAL \actSignal~2_combout\ : std_logic;
SIGNAL \actSignal~5_combout\ : std_logic;
SIGNAL \r~4_combout\ : std_logic;
SIGNAL \actSignal~3_combout\ : std_logic;
SIGNAL \actSignal~6_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \count~29_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \tr4~combout\ : std_logic;
SIGNAL \actSignal~4_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \r[0]~reg0_regout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \r[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r~5_combout\ : std_logic;
SIGNAL \r~6_combout\ : std_logic;
SIGNAL \r[2]~reg0_regout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \r~7_combout\ : std_logic;
SIGNAL \r[3]~reg0_regout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \r~8_combout\ : std_logic;
SIGNAL \r~9_combout\ : std_logic;
SIGNAL \r[4]~reg0_regout\ : std_logic;
SIGNAL \g~2_combout\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \g~1_combout\ : std_logic;
SIGNAL \g[0]~reg0_regout\ : std_logic;
SIGNAL \g~4_combout\ : std_logic;
SIGNAL \g~3_combout\ : std_logic;
SIGNAL \g[1]~reg0_regout\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \g~6_combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \g~5_combout\ : std_logic;
SIGNAL \g[2]~reg0_regout\ : std_logic;
SIGNAL \g~7_combout\ : std_logic;
SIGNAL \g[3]~reg0_regout\ : std_logic;
SIGNAL \g~8_combout\ : std_logic;
SIGNAL \g[4]~reg0_regout\ : std_logic;
SIGNAL \y~3_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \y[0]~reg0_regout\ : std_logic;
SIGNAL \y~5_combout\ : std_logic;
SIGNAL \y~4_combout\ : std_logic;
SIGNAL \y[1]~reg0_regout\ : std_logic;
SIGNAL \y~7_combout\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \y[2]~reg0_regout\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \y~8_combout\ : std_logic;
SIGNAL \y[3]~reg0_regout\ : std_logic;
SIGNAL \y~11_combout\ : std_logic;
SIGNAL \y~10_combout\ : std_logic;
SIGNAL \y[4]~reg0_regout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL actSignal : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tr1 <= tr1;
ww_tr4 <= tr4;
r <= ww_r;
g <= ww_g;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr1,
	combout => \tr1~combout\);

-- Location: LC_X4_Y1_N4
\Add0~157\ : maxv_lcell
-- Equation(s):
-- \Add0~157_cout\ = CARRY((!count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155\,
	cout => \Add0~157_cout\);

-- Location: LC_X4_Y1_N5
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (count(1) $ ((\Add0~157_cout\)))
-- \Add0~152\ = CARRY(((!\Add0~157_cout\) # (!count(1))))
-- \Add0~152COUT1_161\ = CARRY(((!\Add0~157_cout\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	cin => \Add0~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_161\);

-- Location: LC_X4_Y1_N1
\Equal0~10\ : maxv_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (!count(0) & (count(3) & (\Equal0~9_combout\ & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(3),
	datac => \Equal0~9_combout\,
	datad => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X4_Y1_N6
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = count(2) $ ((((!(!\Add0~157_cout\ & \Add0~152\) # (\Add0~157_cout\ & \Add0~152COUT1_161\)))))
-- \Add0~122\ = CARRY((count(2) & ((!\Add0~152\))))
-- \Add0~122COUT1_162\ = CARRY((count(2) & ((!\Add0~152COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	cin => \Add0~157_cout\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_162\);

-- Location: LC_X4_Y1_N2
\count~24\ : maxv_lcell
-- Equation(s):
-- \count~24_combout\ = ((\process_0~8_combout\ & (\Add0~120_combout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datac => \process_0~8_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~24_combout\);

-- Location: LC_X4_Y1_N3
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((\process_0~5_combout\ & ((\Equal2~0_combout\) # ((!\Equal0~10_combout\ & \count~24_combout\)))) # (!\process_0~5_combout\ & (((\count~24_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \count~24_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X4_Y1_N7
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (count(3) $ (((!\Add0~157_cout\ & \Add0~122\) # (\Add0~157_cout\ & \Add0~122COUT1_162\))))
-- \Add0~147\ = CARRY(((!\Add0~122\) # (!count(3))))
-- \Add0~147COUT1_163\ = CARRY(((!\Add0~122COUT1_162\) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	cin => \Add0~157_cout\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_163\);

-- Location: LC_X4_Y1_N8
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (count(4) $ ((!(!\Add0~157_cout\ & \Add0~147\) # (\Add0~157_cout\ & \Add0~147COUT1_163\))))
-- \Add0~2\ = CARRY(((count(4) & !\Add0~147\)))
-- \Add0~2COUT1_164\ = CARRY(((count(4) & !\Add0~147COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	cin => \Add0~157_cout\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_164\);

-- Location: LC_X4_Y2_N5
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS((\process_0~8_combout\ & (!\process_0~7_combout\ & (!\rst~combout\ & \Add0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~8_combout\,
	datab => \process_0~7_combout\,
	datac => \rst~combout\,
	datad => \Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X4_Y1_N9
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = count(5) $ (((((!\Add0~157_cout\ & \Add0~2\) # (\Add0~157_cout\ & \Add0~2COUT1_164\)))))
-- \Add0~7\ = CARRY(((!\Add0~2COUT1_164\)) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	cin => \Add0~157_cout\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X5_Y2_N7
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS((\Add0~5_combout\ & (!\rst~combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~5_combout\,
	datab => \rst~combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X5_Y1_N0
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(6) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY(((count(6) & !\Add0~7\)))
-- \Add0~12COUT1_165\ = CARRY(((count(6) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_165\);

-- Location: LC_X5_Y2_N0
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS((\Add0~10_combout\ & (!\rst~combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~10_combout\,
	datab => \rst~combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X5_Y1_N1
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(7) $ (((!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_165\))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!count(7))))
-- \Add0~17COUT1_166\ = CARRY(((!\Add0~12COUT1_165\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_166\);

-- Location: LC_X4_Y2_N0
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((\process_0~8_combout\ & (!\process_0~7_combout\ & (!\rst~combout\ & \Add0~15_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~8_combout\,
	datab => \process_0~7_combout\,
	datac => \rst~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X5_Y1_N2
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(8) $ ((!(!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_166\))))
-- \Add0~22\ = CARRY(((count(8) & !\Add0~17\)))
-- \Add0~22COUT1_167\ = CARRY(((count(8) & !\Add0~17COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_167\);

-- Location: LC_X7_Y2_N2
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (!\process_0~7_combout\ & \Add0~20_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X5_Y1_N3
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(9) $ (((!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_167\))))
-- \Add0~27\ = CARRY(((!\Add0~22\) # (!count(9))))
-- \Add0~27COUT1_168\ = CARRY(((!\Add0~22COUT1_167\) # (!count(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_168\);

-- Location: LC_X7_Y2_N1
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS((!\rst~combout\ & (\Add0~25_combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \Add0~25_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X5_Y1_N4
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(10) $ ((!(!\Add0~7\ & \Add0~27\) # (\Add0~7\ & \Add0~27COUT1_168\))))
-- \Add0~32\ = CARRY(((count(10) & !\Add0~27COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	cin => \Add0~7\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X7_Y2_N5
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS((!\rst~combout\ & (\Add0~30_combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \Add0~30_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X5_Y1_N5
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(11) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(11))))
-- \Add0~37COUT1_169\ = CARRY(((!\Add0~32\) # (!count(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_169\);

-- Location: LC_X7_Y2_N4
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (!\process_0~7_combout\ & \Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X5_Y1_N6
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(12) $ ((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_169\))))
-- \Add0~42\ = CARRY(((count(12) & !\Add0~37\)))
-- \Add0~42COUT1_170\ = CARRY(((count(12) & !\Add0~37COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_170\);

-- Location: LC_X3_Y2_N1
\count[12]\ : maxv_lcell
-- Equation(s):
-- count(12) = DFFEAS((!\rst~combout\ & (!\process_0~7_combout\ & (\Add0~40_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~7_combout\,
	datac => \Add0~40_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X5_Y1_N7
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(13) $ (((!\Add0~32\ & \Add0~42\) # (\Add0~32\ & \Add0~42COUT1_170\))))
-- \Add0~47\ = CARRY(((!\Add0~42\) # (!count(13))))
-- \Add0~47COUT1_171\ = CARRY(((!\Add0~42COUT1_170\) # (!count(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	cin => \Add0~32\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_171\);

-- Location: LC_X3_Y2_N3
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS((!\rst~combout\ & (!\process_0~7_combout\ & (\Add0~45_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~7_combout\,
	datac => \Add0~45_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X5_Y1_N8
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = count(14) $ ((((!(!\Add0~32\ & \Add0~47\) # (\Add0~32\ & \Add0~47COUT1_171\)))))
-- \Add0~52\ = CARRY((count(14) & ((!\Add0~47\))))
-- \Add0~52COUT1_172\ = CARRY((count(14) & ((!\Add0~47COUT1_171\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	cin => \Add0~32\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_172\);

-- Location: LC_X3_Y2_N4
\count[14]\ : maxv_lcell
-- Equation(s):
-- count(14) = DFFEAS((!\rst~combout\ & (!\process_0~7_combout\ & (\process_0~8_combout\ & \Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~7_combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X5_Y1_N9
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = count(15) $ (((((!\Add0~32\ & \Add0~52\) # (\Add0~32\ & \Add0~52COUT1_172\)))))
-- \Add0~57\ = CARRY(((!\Add0~52COUT1_172\)) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	cin => \Add0~32\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X2_Y2_N2
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS((\process_0~8_combout\ & (!\rst~combout\ & (!\process_0~7_combout\ & \Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~8_combout\,
	datab => \rst~combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X6_Y1_N0
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(16) $ ((!\Add0~57\)))
-- \Add0~62\ = CARRY(((count(16) & !\Add0~57\)))
-- \Add0~62COUT1_173\ = CARRY(((count(16) & !\Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_173\);

-- Location: LC_X6_Y2_N8
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~60_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X6_Y1_N1
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(17) $ (((!\Add0~57\ & \Add0~62\) # (\Add0~57\ & \Add0~62COUT1_173\))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!count(17))))
-- \Add0~67COUT1_174\ = CARRY(((!\Add0~62COUT1_173\) # (!count(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	cin => \Add0~57\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_174\);

-- Location: LC_X6_Y2_N1
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\Add0~65_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \Add0~65_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X6_Y1_N2
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = count(18) $ ((((!(!\Add0~57\ & \Add0~67\) # (\Add0~57\ & \Add0~67COUT1_174\)))))
-- \Add0~72\ = CARRY((count(18) & ((!\Add0~67\))))
-- \Add0~72COUT1_175\ = CARRY((count(18) & ((!\Add0~67COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	cin => \Add0~57\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_175\);

-- Location: LC_X6_Y2_N0
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X6_Y1_N3
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(19) $ (((!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_175\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(19))))
-- \Add0~77COUT1_176\ = CARRY(((!\Add0~72COUT1_175\) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_176\);

-- Location: LC_X6_Y2_N4
\count[19]\ : maxv_lcell
-- Equation(s):
-- count(19) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X6_Y1_N4
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count(20) $ ((!(!\Add0~57\ & \Add0~77\) # (\Add0~57\ & \Add0~77COUT1_176\))))
-- \Add0~82\ = CARRY(((count(20) & !\Add0~77COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	cin => \Add0~57\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X7_Y2_N7
\count[20]\ : maxv_lcell
-- Equation(s):
-- count(20) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (!\process_0~7_combout\ & \Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X6_Y1_N5
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count(21) $ ((\Add0~82\)))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!count(21))))
-- \Add0~87COUT1_177\ = CARRY(((!\Add0~82\) # (!count(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_177\);

-- Location: LC_X7_Y2_N9
\count[21]\ : maxv_lcell
-- Equation(s):
-- count(21) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (!\process_0~7_combout\ & \Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X6_Y1_N6
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(22) $ ((!(!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_177\))))
-- \Add0~92\ = CARRY(((count(22) & !\Add0~87\)))
-- \Add0~92COUT1_178\ = CARRY(((count(22) & !\Add0~87COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_178\);

-- Location: LC_X7_Y2_N3
\count[22]\ : maxv_lcell
-- Equation(s):
-- count(22) = DFFEAS((!\rst~combout\ & (\Add0~90_combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \Add0~90_combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X6_Y1_N7
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(23) $ (((!\Add0~82\ & \Add0~92\) # (\Add0~82\ & \Add0~92COUT1_178\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!count(23))))
-- \Add0~97COUT1_179\ = CARRY(((!\Add0~92COUT1_178\) # (!count(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	cin => \Add0~82\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_179\);

-- Location: LC_X7_Y2_N6
\count[23]\ : maxv_lcell
-- Equation(s):
-- count(23) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (!\process_0~7_combout\ & \Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~7_combout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X6_Y1_N8
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = count(24) $ ((((!(!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_179\)))))
-- \Add0~102\ = CARRY((count(24) & ((!\Add0~97\))))
-- \Add0~102COUT1_180\ = CARRY((count(24) & ((!\Add0~97COUT1_179\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_180\);

-- Location: LC_X6_Y2_N9
\count[24]\ : maxv_lcell
-- Equation(s):
-- count(24) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LC_X6_Y1_N9
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(25) $ (((!\Add0~82\ & \Add0~102\) # (\Add0~82\ & \Add0~102COUT1_180\))))
-- \Add0~107\ = CARRY(((!\Add0~102COUT1_180\) # (!count(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	cin => \Add0~82\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout => \Add0~107\);

-- Location: LC_X6_Y2_N5
\count[25]\ : maxv_lcell
-- Equation(s):
-- count(25) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LC_X7_Y1_N0
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = count(26) $ ((((!\Add0~107\))))
-- \Add0~112\ = CARRY((count(26) & ((!\Add0~107\))))
-- \Add0~112COUT1_181\ = CARRY((count(26) & ((!\Add0~107\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	cin => \Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_181\);

-- Location: LC_X7_Y1_N6
\count[26]\ : maxv_lcell
-- Equation(s):
-- count(26) = DFFEAS((!\rst~combout\ & (\process_0~8_combout\ & (\Add0~110_combout\ & !\process_0~7_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~8_combout\,
	datac => \Add0~110_combout\,
	datad => \process_0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LC_X7_Y1_N1
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count(27) $ (((!\Add0~107\ & \Add0~112\) # (\Add0~107\ & \Add0~112COUT1_181\))))
-- \Add0~117\ = CARRY(((!\Add0~112\) # (!count(27))))
-- \Add0~117COUT1_182\ = CARRY(((!\Add0~112COUT1_181\) # (!count(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	cin => \Add0~107\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_182\);

-- Location: LC_X6_Y2_N6
\count[27]\ : maxv_lcell
-- Equation(s):
-- count(27) = DFFEAS((!\process_0~7_combout\ & (!\rst~combout\ & (\process_0~8_combout\ & \Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LC_X7_Y1_N2
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (count(28) $ ((!(!\Add0~107\ & \Add0~117\) # (\Add0~107\ & \Add0~117COUT1_182\))))
-- \Add0~127\ = CARRY(((count(28) & !\Add0~117\)))
-- \Add0~127COUT1_183\ = CARRY(((count(28) & !\Add0~117COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	cin => \Add0~107\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_183\);

-- Location: LC_X4_Y2_N9
\count[28]\ : maxv_lcell
-- Equation(s):
-- count(28) = DFFEAS((\process_0~8_combout\ & (!\process_0~7_combout\ & (!\rst~combout\ & \Add0~125_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~8_combout\,
	datab => \process_0~7_combout\,
	datac => \rst~combout\,
	datad => \Add0~125_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(28));

-- Location: LC_X7_Y1_N3
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (count(29) $ (((!\Add0~107\ & \Add0~127\) # (\Add0~107\ & \Add0~127COUT1_183\))))
-- \Add0~132\ = CARRY(((!\Add0~127\) # (!count(29))))
-- \Add0~132COUT1_184\ = CARRY(((!\Add0~127COUT1_183\) # (!count(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	cin => \Add0~107\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_184\);

-- Location: LC_X4_Y2_N7
\count[29]\ : maxv_lcell
-- Equation(s):
-- count(29) = DFFEAS((\process_0~8_combout\ & (!\process_0~7_combout\ & (!\rst~combout\ & \Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~8_combout\,
	datab => \process_0~7_combout\,
	datac => \rst~combout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LC_X7_Y1_N4
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = count(30) $ ((((!(!\Add0~107\ & \Add0~132\) # (\Add0~107\ & \Add0~132COUT1_184\)))))
-- \Add0~142\ = CARRY((count(30) & ((!\Add0~132COUT1_184\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	cin => \Add0~107\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout => \Add0~142\);

-- Location: LC_X7_Y1_N8
\count[30]\ : maxv_lcell
-- Equation(s):
-- count(30) = DFFEAS((!\rst~combout\ & (!\process_0~7_combout\ & (\Add0~140_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => \process_0~7_combout\,
	datac => \Add0~140_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LC_X7_Y1_N5
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = ((\Add0~142\ $ (!count(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\);

-- Location: LC_X3_Y2_N7
\count[31]\ : maxv_lcell
-- Equation(s):
-- count(31) = DFFEAS((\process_0~7_combout\) # ((\rst~combout\) # ((!\Add0~135_combout\) # (!\process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \process_0~8_combout\,
	datad => \Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LC_X4_Y2_N6
\Equal0~7\ : maxv_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (((!count(29) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count(29),
	datad => count(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X3_Y2_N5
\Equal0~8\ : maxv_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (count(31) & (count(2) & (\Equal0~7_combout\ & !count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(2),
	datac => \Equal0~7_combout\,
	datad => count(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: LC_X7_Y2_N0
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!count(23) & (!count(21) & (!count(20) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(21),
	datac => count(20),
	datad => count(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X6_Y2_N3
\Equal0~6\ : maxv_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!count(25) & (!count(24) & (!count(27) & !count(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(24),
	datac => count(27),
	datad => count(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X3_Y2_N6
\Equal0~2\ : maxv_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!count(13) & (!count(12) & (!count(14) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(12),
	datac => count(14),
	datad => count(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X4_Y2_N4
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (!count(4) & (!count(7) & (!count(6) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(7),
	datac => count(6),
	datad => count(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X6_Y2_N2
\Equal0~3\ : maxv_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!count(19) & (!count(17) & (!count(18) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(17),
	datac => count(18),
	datad => count(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X7_Y2_N8
\Equal0~1\ : maxv_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!count(11) & (!count(8) & (!count(10) & !count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(8),
	datac => count(10),
	datad => count(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X3_Y2_N9
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X3_Y2_N2
\Equal0~9\ : maxv_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X4_Y2_N1
\Equal8~0\ : maxv_lcell
-- Equation(s):
-- \Equal8~0_combout\ = (count(0) & (count(1) & (!count(3) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal8~0_combout\);

-- Location: LC_X3_Y3_N6
\process_0~4\ : maxv_lcell
-- Equation(s):
-- \process_0~4_combout\ = (!count(1) & (count(3) & (\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~4_combout\);

-- Location: LC_X3_Y3_N4
\count[0]~30\ : maxv_lcell
-- Equation(s):
-- \count[0]~30_combout\ = (!\rst~combout\ & (((!\process_0~4_combout\)) # (!\process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1133",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \rst~combout\,
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count[0]~30_combout\);

-- Location: LC_X3_Y3_N5
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS((\count[0]~30_combout\ & ((\process_0~8_combout\ & (\Add0~150_combout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~150_combout\,
	datab => \Equal8~0_combout\,
	datac => \process_0~8_combout\,
	datad => \count[0]~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X3_Y3_N2
\process_0~6\ : maxv_lcell
-- Equation(s):
-- \process_0~6_combout\ = (actSignal(31) & (!actSignal(1) & (actSignal(0) $ (!actSignal(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0090",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(0),
	datab => actSignal(2),
	datac => actSignal(31),
	datad => actSignal(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~6_combout\);

-- Location: LC_X4_Y2_N8
\process_0~8\ : maxv_lcell
-- Equation(s):
-- \process_0~8_combout\ = ((count(3)) # ((!\Equal0~9_combout\) # (!\process_0~6_combout\))) # (!count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => \process_0~6_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~8_combout\);

-- Location: LC_X3_Y1_N1
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((!count(0) & (!\rst~combout\ & (!\process_0~7_combout\ & \process_0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(0),
	datab => \rst~combout\,
	datac => \process_0~7_combout\,
	datad => \process_0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X3_Y2_N8
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (count(3) & (count(0) & (!count(1) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(1),
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X5_Y2_N8
\Equal5~0\ : maxv_lcell
-- Equation(s):
-- \Equal5~0_combout\ = (((count(1) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal5~0_combout\);

-- Location: LC_X4_Y2_N2
\g~0\ : maxv_lcell
-- Equation(s):
-- \g~0_combout\ = (!count(0) & (\Equal5~0_combout\ & (\process_0~6_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \Equal5~0_combout\,
	datac => \process_0~6_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~0_combout\);

-- Location: LC_X4_Y2_N3
\actSignal~1\ : maxv_lcell
-- Equation(s):
-- \actSignal~1_combout\ = (\rst~combout\) # ((\process_0~7_combout\ & (!\Equal2~0_combout\)) # (!\process_0~7_combout\ & ((\g~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \rst~combout\,
	datac => \Equal2~0_combout\,
	datad => \g~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~1_combout\);

-- Location: LC_X5_Y2_N5
\actSignal[31]\ : maxv_lcell
-- Equation(s):
-- actSignal(31) = DFFEAS(VCC, GLOBAL(\clk~combout\), VCC, , \actSignal~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	aclr => GND,
	ena => \actSignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => actSignal(31));

-- Location: LC_X2_Y1_N1
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (((actSignal(1)) # (!actSignal(0))) # (!actSignal(2))) # (!actSignal(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(31),
	datab => actSignal(2),
	datac => actSignal(1),
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal7~0_combout\);

-- Location: LC_X2_Y3_N0
\actSignal~0\ : maxv_lcell
-- Equation(s):
-- \actSignal~0_combout\ = (actSignal(0) & (((!actSignal(2) & actSignal(31)))))

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
	dataa => actSignal(0),
	datac => actSignal(2),
	datad => actSignal(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~0_combout\);

-- Location: LC_X3_Y4_N5
\actSignal~2\ : maxv_lcell
-- Equation(s):
-- \actSignal~2_combout\ = ((\actSignal~0_combout\ & ((actSignal(1)) # (!\tr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \tr1~combout\,
	datac => actSignal(1),
	datad => \actSignal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~2_combout\);

-- Location: LC_X3_Y3_N1
\actSignal~5\ : maxv_lcell
-- Equation(s):
-- \actSignal~5_combout\ = (\process_0~5_combout\ & ((\process_0~4_combout\ & ((\actSignal~2_combout\))) # (!\process_0~4_combout\ & (\Equal7~0_combout\)))) # (!\process_0~5_combout\ & (\Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \Equal7~0_combout\,
	datac => \process_0~4_combout\,
	datad => \actSignal~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~5_combout\);

-- Location: LC_X2_Y2_N6
\r~4\ : maxv_lcell
-- Equation(s):
-- \r~4_combout\ = (\process_0~7_combout\ & (\Equal2~0_combout\)) # (!\process_0~7_combout\ & (((\process_0~8_combout\) # (\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \Equal2~0_combout\,
	datac => \process_0~8_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~4_combout\);

-- Location: LC_X3_Y3_N8
\actSignal[1]\ : maxv_lcell
-- Equation(s):
-- actSignal(1) = DFFEAS(((\r~4_combout\ & (actSignal(1))) # (!\r~4_combout\ & ((\actSignal~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => actSignal(1),
	datab => \actSignal~5_combout\,
	datac => VCC,
	datad => \r~4_combout\,
	aclr => GND,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => actSignal(1));

-- Location: LC_X2_Y3_N1
\actSignal~3\ : maxv_lcell
-- Equation(s):
-- \actSignal~3_combout\ = ((\actSignal~0_combout\ & ((\tr1~combout\) # (actSignal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tr1~combout\,
	datab => actSignal(1),
	datad => \actSignal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~3_combout\);

-- Location: LC_X3_Y3_N9
\actSignal~6\ : maxv_lcell
-- Equation(s):
-- \actSignal~6_combout\ = (\actSignal~3_combout\ & (((\process_0~4_combout\ & \process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \actSignal~3_combout\,
	datac => \process_0~4_combout\,
	datad => \process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~6_combout\);

-- Location: LC_X2_Y3_N8
\actSignal[0]\ : maxv_lcell
-- Equation(s):
-- actSignal(0) = DFFEAS((\rst~combout\) # ((\r~4_combout\ & (actSignal(0))) # (!\r~4_combout\ & ((!\actSignal~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeaf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst~combout\,
	datab => actSignal(0),
	datac => \actSignal~6_combout\,
	datad => \r~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => actSignal(0));

-- Location: LC_X2_Y3_N2
\process_0~5\ : maxv_lcell
-- Equation(s):
-- \process_0~5_combout\ = (!actSignal(2) & (actSignal(31) & ((actSignal(0)) # (actSignal(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(0),
	datab => actSignal(1),
	datac => actSignal(2),
	datad => actSignal(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~5_combout\);

-- Location: LC_X5_Y2_N6
\count~29\ : maxv_lcell
-- Equation(s):
-- \count~29_combout\ = (((\Add0~145_combout\ & \process_0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~145_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~29_combout\);

-- Location: LC_X4_Y1_N0
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS((\process_0~5_combout\ & ((\Equal2~0_combout\) # ((!\Equal0~10_combout\ & \count~29_combout\)))) # (!\process_0~5_combout\ & (((\count~29_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal0~10_combout\,
	datad => \count~29_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X3_Y2_N0
\process_0~7\ : maxv_lcell
-- Equation(s):
-- \process_0~7_combout\ = (count(3) & (!count(1) & (\process_0~5_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => \process_0~5_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~7_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tr4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tr4,
	combout => \tr4~combout\);

-- Location: LC_X2_Y3_N5
\actSignal~4\ : maxv_lcell
-- Equation(s):
-- \actSignal~4_combout\ = (\tr4~combout\ & (((actSignal(2)) # (!actSignal(31))) # (!actSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c4cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(0),
	datab => \tr4~combout\,
	datac => actSignal(2),
	datad => actSignal(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \actSignal~4_combout\);

-- Location: LC_X2_Y3_N4
\actSignal[2]\ : maxv_lcell
-- Equation(s):
-- actSignal(2) = DFFEAS((\r~4_combout\ & (actSignal(2))) # (!\r~4_combout\ & (((\process_0~7_combout\ & \actSignal~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => actSignal(2),
	datab => \process_0~7_combout\,
	datac => \actSignal~4_combout\,
	datad => \r~4_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => actSignal(2));

-- Location: LC_X2_Y1_N9
\Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \Decoder1~0_combout\ = ((!actSignal(2) & (!actSignal(1) & actSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => actSignal(2),
	datac => actSignal(1),
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~0_combout\);

-- Location: LC_X2_Y1_N3
\Decoder0~3\ : maxv_lcell
-- Equation(s):
-- \Decoder0~3_combout\ = (!\tr4~combout\ & (((actSignal(2)) # (!actSignal(0))) # (!actSignal(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(31),
	datab => actSignal(2),
	datac => \tr4~combout\,
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~3_combout\);

-- Location: LC_X3_Y3_N3
\r~0\ : maxv_lcell
-- Equation(s):
-- \r~0_combout\ = (\process_0~5_combout\ & ((\process_0~4_combout\ & ((!\Decoder0~3_combout\))) # (!\process_0~4_combout\ & (\Equal7~0_combout\)))) # (!\process_0~5_combout\ & (\Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ecc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \Equal7~0_combout\,
	datac => \Decoder0~3_combout\,
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~0_combout\);

-- Location: LC_X3_Y3_N0
\r[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \r[0]~reg0_regout\ = DFFEAS((\rst~combout\) # ((\r~0_combout\ & ((\r[0]~reg0_regout\) # (\Decoder1~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \actSignal~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \r[0]~reg0_regout\,
	datab => \rst~combout\,
	datac => \Decoder1~0_combout\,
	datad => \r~0_combout\,
	aclr => GND,
	ena => \actSignal~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r[0]~reg0_regout\);

-- Location: LC_X2_Y1_N4
\Equal6~0\ : maxv_lcell
-- Equation(s):
-- \Equal6~0_combout\ = ((!actSignal(2) & (!actSignal(1) & !actSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => actSignal(2),
	datac => actSignal(1),
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal6~0_combout\);

-- Location: LC_X3_Y3_N7
\r~2\ : maxv_lcell
-- Equation(s):
-- \r~2_combout\ = (!\actSignal~4_combout\ & (\process_0~5_combout\ & (\actSignal~3_combout\ & \process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \actSignal~4_combout\,
	datab => \process_0~5_combout\,
	datac => \actSignal~3_combout\,
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~2_combout\);

-- Location: LC_X2_Y2_N8
\r~3\ : maxv_lcell
-- Equation(s):
-- \r~3_combout\ = (\r[1]~reg0_regout\ & (((\actSignal~2_combout\) # (!\r~2_combout\)))) # (!\r[1]~reg0_regout\ & (\Equal6~0_combout\ & ((\actSignal~2_combout\) # (!\r~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r[1]~reg0_regout\,
	datab => \Equal6~0_combout\,
	datac => \actSignal~2_combout\,
	datad => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~3_combout\);

-- Location: LC_X2_Y2_N4
\r[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \r[1]~reg0_regout\ = DFFEAS((\r~4_combout\ & (\r[1]~reg0_regout\)) # (!\r~4_combout\ & (((\r~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \r~4_combout\,
	datab => \r[1]~reg0_regout\,
	datac => VCC,
	datad => \r~3_combout\,
	aclr => GND,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r[1]~reg0_regout\);

-- Location: LC_X2_Y3_N6
\Decoder0~2\ : maxv_lcell
-- Equation(s):
-- \Decoder0~2_combout\ = (!\tr1~combout\ & (!actSignal(1) & (\actSignal~0_combout\ & !\actSignal~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tr1~combout\,
	datab => actSignal(1),
	datac => \actSignal~0_combout\,
	datad => \actSignal~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder0~2_combout\);

-- Location: LC_X2_Y3_N9
\r~5\ : maxv_lcell
-- Equation(s):
-- \r~5_combout\ = (\r[2]~reg0_regout\) # ((actSignal(0) & (actSignal(1) & !actSignal(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => actSignal(0),
	datab => actSignal(1),
	datac => actSignal(2),
	datad => \r[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~5_combout\);

-- Location: LC_X2_Y3_N7
\r~6\ : maxv_lcell
-- Equation(s):
-- \r~6_combout\ = (\r~5_combout\ & ((\process_0~7_combout\ & (!\Decoder0~2_combout\)) # (!\process_0~7_combout\ & ((!\Equal7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "440c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \r~5_combout\,
	datac => \Equal7~0_combout\,
	datad => \process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~6_combout\);

-- Location: LC_X2_Y3_N3
\r[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \r[2]~reg0_regout\ = DFFEAS(((\r~4_combout\ & (\r[2]~reg0_regout\)) # (!\r~4_combout\ & ((\r~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \r[2]~reg0_regout\,
	datac => \r~6_combout\,
	datad => \r~4_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r[2]~reg0_regout\);

-- Location: LC_X2_Y1_N2
\Decoder1~1\ : maxv_lcell
-- Equation(s):
-- \Decoder1~1_combout\ = ((!actSignal(2) & (actSignal(1) & !actSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => actSignal(2),
	datac => actSignal(1),
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~1_combout\);

-- Location: LC_X2_Y2_N1
\r~7\ : maxv_lcell
-- Equation(s):
-- \r~7_combout\ = (\r[3]~reg0_regout\ & (((!\r~2_combout\) # (!\actSignal~2_combout\)))) # (!\r[3]~reg0_regout\ & (\Decoder1~1_combout\ & ((!\r~2_combout\) # (!\actSignal~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0eee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~reg0_regout\,
	datab => \Decoder1~1_combout\,
	datac => \actSignal~2_combout\,
	datad => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~7_combout\);

-- Location: LC_X2_Y2_N3
\r[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \r[3]~reg0_regout\ = DFFEAS((\r~4_combout\ & (\r[3]~reg0_regout\)) # (!\r~4_combout\ & (((\r~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \r~4_combout\,
	datab => \r[3]~reg0_regout\,
	datac => VCC,
	datad => \r~7_combout\,
	aclr => GND,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r[3]~reg0_regout\);

-- Location: LC_X2_Y1_N7
\Decoder1~2\ : maxv_lcell
-- Equation(s):
-- \Decoder1~2_combout\ = ((actSignal(2) & (!actSignal(1) & actSignal(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => actSignal(2),
	datac => actSignal(1),
	datad => actSignal(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~2_combout\);

-- Location: LC_X3_Y4_N9
\r~8\ : maxv_lcell
-- Equation(s):
-- \r~8_combout\ = (\actSignal~4_combout\ & (!\actSignal~3_combout\ & (!\actSignal~2_combout\ & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \actSignal~4_combout\,
	datab => \actSignal~3_combout\,
	datac => \actSignal~2_combout\,
	datad => \process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~8_combout\);

-- Location: LC_X2_Y2_N9
\r~9\ : maxv_lcell
-- Equation(s):
-- \r~9_combout\ = ((!\r~8_combout\ & ((\r[4]~reg0_regout\) # (\Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \r[4]~reg0_regout\,
	datac => \Decoder1~2_combout\,
	datad => \r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \r~9_combout\);

-- Location: LC_X2_Y2_N7
\r[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \r[4]~reg0_regout\ = DFFEAS((\r~4_combout\ & (\r[4]~reg0_regout\)) # (!\r~4_combout\ & (((\r~9_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \r~4_combout\,
	datab => \r[4]~reg0_regout\,
	datac => VCC,
	datad => \r~9_combout\,
	aclr => GND,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r[4]~reg0_regout\);

-- Location: LC_X4_Y4_N6
\g~2\ : maxv_lcell
-- Equation(s):
-- \g~2_combout\ = (\g[0]~reg0_regout\ & (((!\Equal2~0_combout\) # (!\Decoder1~0_combout\)))) # (!\g[0]~reg0_regout\ & (\Decoder0~3_combout\ & ((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g[0]~reg0_regout\,
	datab => \Decoder0~3_combout\,
	datac => \Decoder1~0_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~2_combout\);

-- Location: LC_X4_Y4_N1
\y~0\ : maxv_lcell
-- Equation(s):
-- \y~0_combout\ = (\Decoder1~0_combout\ & (((\Equal8~0_combout\ & !\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~0_combout\);

-- Location: LC_X4_Y4_N2
\g~1\ : maxv_lcell
-- Equation(s):
-- \g~1_combout\ = (\g[0]~reg0_regout\ & (((!\Equal7~0_combout\ & \g~0_combout\)) # (!\y~0_combout\))) # (!\g[0]~reg0_regout\ & (!\Equal7~0_combout\ & (\g~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g[0]~reg0_regout\,
	datab => \Equal7~0_combout\,
	datac => \g~0_combout\,
	datad => \y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~1_combout\);

-- Location: LC_X4_Y4_N3
\g[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \g[0]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\g~2_combout\)) # (!\process_0~4_combout\ & ((\g~1_combout\))))) # (!\process_0~5_combout\ & (((\g~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \g~2_combout\,
	datad => \g~1_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g[0]~reg0_regout\);

-- Location: LC_X3_Y4_N6
\g~4\ : maxv_lcell
-- Equation(s):
-- \g~4_combout\ = (\process_0~7_combout\ & (!\Equal2~0_combout\)) # (!\process_0~7_combout\ & (((!\process_0~6_combout\) # (!\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2777",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~4_combout\);

-- Location: LC_X3_Y4_N7
\g~3\ : maxv_lcell
-- Equation(s):
-- \g~3_combout\ = (\g[1]~reg0_regout\) # (((!\actSignal~2_combout\ & \r~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g[1]~reg0_regout\,
	datac => \actSignal~2_combout\,
	datad => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~3_combout\);

-- Location: LC_X3_Y4_N8
\g[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \g[1]~reg0_regout\ = DFFEAS((\g~4_combout\ & (((\g~3_combout\)))) # (!\g~4_combout\ & (!\Equal6~0_combout\ & (\g[1]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal6~0_combout\,
	datab => \g[1]~reg0_regout\,
	datac => \g~4_combout\,
	datad => \g~3_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g[1]~reg0_regout\);

-- Location: LC_X2_Y1_N0
\Decoder1~3\ : maxv_lcell
-- Equation(s):
-- \Decoder1~3_combout\ = ((actSignal(0) & (actSignal(1) & !actSignal(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => actSignal(0),
	datac => actSignal(1),
	datad => actSignal(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Decoder1~3_combout\);

-- Location: LC_X2_Y2_N5
\g~6\ : maxv_lcell
-- Equation(s):
-- \g~6_combout\ = (\g[2]~reg0_regout\ & (((!\Equal2~0_combout\) # (!\Decoder1~3_combout\)))) # (!\g[2]~reg0_regout\ & (\Decoder0~2_combout\ & ((!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g[2]~reg0_regout\,
	datab => \Decoder0~2_combout\,
	datac => \Decoder1~3_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~6_combout\);

-- Location: LC_X5_Y2_N1
\y~1\ : maxv_lcell
-- Equation(s):
-- \y~1_combout\ = (\Decoder1~3_combout\ & (((\Equal8~0_combout\ & !\process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~3_combout\,
	datac => \Equal8~0_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~1_combout\);

-- Location: LC_X5_Y2_N2
\g~5\ : maxv_lcell
-- Equation(s):
-- \g~5_combout\ = (\g[2]~reg0_regout\ & (((\g~0_combout\ & \Equal7~0_combout\)) # (!\y~1_combout\))) # (!\g[2]~reg0_regout\ & (\g~0_combout\ & (\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \g[2]~reg0_regout\,
	datab => \g~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~5_combout\);

-- Location: LC_X5_Y2_N3
\g[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \g[2]~reg0_regout\ = DFFEAS((\process_0~7_combout\ & (\g~6_combout\)) # (!\process_0~7_combout\ & (((\g~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , VCC, , , \rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~7_combout\,
	datab => \g~6_combout\,
	datac => VCC,
	datad => \g~5_combout\,
	aclr => GND,
	sload => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g[2]~reg0_regout\);

-- Location: LC_X3_Y4_N0
\g~7\ : maxv_lcell
-- Equation(s):
-- \g~7_combout\ = ((\g[3]~reg0_regout\) # ((\actSignal~2_combout\ & \r~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \g[3]~reg0_regout\,
	datac => \actSignal~2_combout\,
	datad => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~7_combout\);

-- Location: LC_X3_Y4_N1
\g[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \g[3]~reg0_regout\ = DFFEAS((\g~4_combout\ & (((\g~7_combout\)))) # (!\g~4_combout\ & (!\Decoder1~1_combout\ & (\g[3]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f404",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Decoder1~1_combout\,
	datab => \g[3]~reg0_regout\,
	datac => \g~4_combout\,
	datad => \g~7_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g[3]~reg0_regout\);

-- Location: LC_X3_Y4_N4
\g~8\ : maxv_lcell
-- Equation(s):
-- \g~8_combout\ = ((\g[4]~reg0_regout\) # ((\r~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \g[4]~reg0_regout\,
	datad => \r~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \g~8_combout\);

-- Location: LC_X3_Y4_N2
\g[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \g[4]~reg0_regout\ = DFFEAS((\g~4_combout\ & (((\g~8_combout\)))) # (!\g~4_combout\ & (\g[4]~reg0_regout\ & (!\Decoder1~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \g[4]~reg0_regout\,
	datab => \Decoder1~2_combout\,
	datac => \g~8_combout\,
	datad => \g~4_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \g[4]~reg0_regout\);

-- Location: LC_X4_Y4_N4
\y~3\ : maxv_lcell
-- Equation(s):
-- \y~3_combout\ = ((\Decoder1~0_combout\ & ((\Equal2~0_combout\))) # (!\Decoder1~0_combout\ & (\y[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y[0]~reg0_regout\,
	datac => \Decoder1~0_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~3_combout\);

-- Location: LC_X4_Y4_N9
\y~2\ : maxv_lcell
-- Equation(s):
-- \y~2_combout\ = (\Decoder1~0_combout\ & ((\process_0~8_combout\ & (\y[0]~reg0_regout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))) # (!\Decoder1~0_combout\ & (\y[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \y[0]~reg0_regout\,
	datac => \Equal8~0_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~2_combout\);

-- Location: LC_X4_Y4_N7
\y[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[0]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\y~3_combout\)) # (!\process_0~4_combout\ & ((\y~2_combout\))))) # (!\process_0~5_combout\ & (((\y~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \y~3_combout\,
	datad => \y~2_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[0]~reg0_regout\);

-- Location: LC_X4_Y4_N0
\y~5\ : maxv_lcell
-- Equation(s):
-- \y~5_combout\ = (\Equal6~0_combout\ & (((\Equal2~0_combout\)))) # (!\Equal6~0_combout\ & (\y[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~reg0_regout\,
	datab => \Equal6~0_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~5_combout\);

-- Location: LC_X4_Y4_N8
\y~4\ : maxv_lcell
-- Equation(s):
-- \y~4_combout\ = (\Equal6~0_combout\ & ((\process_0~8_combout\ & (\y[1]~reg0_regout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))) # (!\Equal6~0_combout\ & (\y[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y[1]~reg0_regout\,
	datab => \Equal6~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~4_combout\);

-- Location: LC_X4_Y4_N5
\y[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[1]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\y~5_combout\)) # (!\process_0~4_combout\ & ((\y~4_combout\))))) # (!\process_0~5_combout\ & (((\y~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \y~5_combout\,
	datad => \y~4_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[1]~reg0_regout\);

-- Location: LC_X3_Y1_N6
\y~7\ : maxv_lcell
-- Equation(s):
-- \y~7_combout\ = (\Decoder1~3_combout\ & (((\Equal2~0_combout\)))) # (!\Decoder1~3_combout\ & (\y[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~reg0_regout\,
	datab => \Decoder1~3_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~7_combout\);

-- Location: LC_X3_Y1_N2
\y~6\ : maxv_lcell
-- Equation(s):
-- \y~6_combout\ = (\Decoder1~3_combout\ & ((\process_0~8_combout\ & (\y[2]~reg0_regout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))) # (!\Decoder1~3_combout\ & (\y[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~reg0_regout\,
	datab => \Decoder1~3_combout\,
	datac => \process_0~8_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~6_combout\);

-- Location: LC_X3_Y1_N3
\y[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[2]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\y~7_combout\)) # (!\process_0~4_combout\ & ((\y~6_combout\))))) # (!\process_0~5_combout\ & (((\y~6_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \y~7_combout\,
	datad => \y~6_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[2]~reg0_regout\);

-- Location: LC_X3_Y1_N0
\y~9\ : maxv_lcell
-- Equation(s):
-- \y~9_combout\ = ((\Decoder1~1_combout\ & ((\Equal2~0_combout\))) # (!\Decoder1~1_combout\ & (\y[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \y[3]~reg0_regout\,
	datac => \Decoder1~1_combout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~9_combout\);

-- Location: LC_X3_Y1_N8
\y~8\ : maxv_lcell
-- Equation(s):
-- \y~8_combout\ = (\Decoder1~1_combout\ & ((\process_0~8_combout\ & (\y[3]~reg0_regout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))) # (!\Decoder1~1_combout\ & (\y[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \y[3]~reg0_regout\,
	datac => \process_0~8_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~8_combout\);

-- Location: LC_X3_Y1_N9
\y[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[3]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\y~9_combout\)) # (!\process_0~4_combout\ & ((\y~8_combout\))))) # (!\process_0~5_combout\ & (((\y~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \y~9_combout\,
	datad => \y~8_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[3]~reg0_regout\);

-- Location: LC_X3_Y1_N7
\y~11\ : maxv_lcell
-- Equation(s):
-- \y~11_combout\ = ((\Decoder1~2_combout\ & ((\Equal2~0_combout\))) # (!\Decoder1~2_combout\ & (\y[4]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder1~2_combout\,
	datac => \y[4]~reg0_regout\,
	datad => \Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~11_combout\);

-- Location: LC_X3_Y1_N4
\y~10\ : maxv_lcell
-- Equation(s):
-- \y~10_combout\ = (\Decoder1~2_combout\ & ((\process_0~8_combout\ & (\y[4]~reg0_regout\)) # (!\process_0~8_combout\ & ((\Equal8~0_combout\))))) # (!\Decoder1~2_combout\ & (\y[4]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~reg0_regout\,
	datab => \Decoder1~2_combout\,
	datac => \process_0~8_combout\,
	datad => \Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \y~10_combout\);

-- Location: LC_X3_Y1_N5
\y[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \y[4]~reg0_regout\ = DFFEAS((\process_0~5_combout\ & ((\process_0~4_combout\ & (\y~11_combout\)) # (!\process_0~4_combout\ & ((\y~10_combout\))))) # (!\process_0~5_combout\ & (((\y~10_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , \rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f780",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \y~11_combout\,
	datad => \y~10_combout\,
	aclr => GND,
	sclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y[4]~reg0_regout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \r[0]~reg0_regout\,
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \r[1]~reg0_regout\,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \r[2]~reg0_regout\,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \r[3]~reg0_regout\,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\r[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \r[4]~reg0_regout\,
	oe => VCC,
	padio => ww_r(4));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g[0]~reg0_regout\,
	oe => VCC,
	padio => ww_g(0));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g[1]~reg0_regout\,
	oe => VCC,
	padio => ww_g(1));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g[2]~reg0_regout\,
	oe => VCC,
	padio => ww_g(2));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g[3]~reg0_regout\,
	oe => VCC,
	padio => ww_g(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\g[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \g[4]~reg0_regout\,
	oe => VCC,
	padio => ww_g(4));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[0]~reg0_regout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[1]~reg0_regout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[2]~reg0_regout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[3]~reg0_regout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \y[4]~reg0_regout\,
	oe => VCC,
	padio => ww_y(4));
END structure;


