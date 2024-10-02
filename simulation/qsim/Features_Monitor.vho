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

-- DATE "10/02/2024 15:01:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	input_control IS
    PORT (
	switches : IN std_logic_vector(7 DOWNTO 0);
	switches_sel : IN std_logic_vector(2 DOWNTO 0);
	out_temp : BUFFER std_logic_vector(7 DOWNTO 0);
	out_alt : BUFFER std_logic_vector(7 DOWNTO 0);
	out_umi : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END input_control;

ARCHITECTURE structure OF input_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_switches_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_alt : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_out_umi : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_temp[0]~output_o\ : std_logic;
SIGNAL \out_temp[1]~output_o\ : std_logic;
SIGNAL \out_temp[2]~output_o\ : std_logic;
SIGNAL \out_temp[3]~output_o\ : std_logic;
SIGNAL \out_temp[4]~output_o\ : std_logic;
SIGNAL \out_temp[5]~output_o\ : std_logic;
SIGNAL \out_temp[6]~output_o\ : std_logic;
SIGNAL \out_temp[7]~output_o\ : std_logic;
SIGNAL \out_alt[0]~output_o\ : std_logic;
SIGNAL \out_alt[1]~output_o\ : std_logic;
SIGNAL \out_alt[2]~output_o\ : std_logic;
SIGNAL \out_alt[3]~output_o\ : std_logic;
SIGNAL \out_alt[4]~output_o\ : std_logic;
SIGNAL \out_alt[5]~output_o\ : std_logic;
SIGNAL \out_alt[6]~output_o\ : std_logic;
SIGNAL \out_alt[7]~output_o\ : std_logic;
SIGNAL \out_umi[0]~output_o\ : std_logic;
SIGNAL \out_umi[1]~output_o\ : std_logic;
SIGNAL \out_umi[2]~output_o\ : std_logic;
SIGNAL \out_umi[3]~output_o\ : std_logic;
SIGNAL \out_umi[4]~output_o\ : std_logic;
SIGNAL \out_umi[5]~output_o\ : std_logic;
SIGNAL \out_umi[6]~output_o\ : std_logic;
SIGNAL \out_umi[7]~output_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches_sel[0]~input_o\ : std_logic;
SIGNAL \switches_sel[1]~input_o\ : std_logic;
SIGNAL \switches_sel[2]~input_o\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \out_temp[0]$latch~combout\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \out_temp[1]$latch~combout\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \out_temp[2]$latch~combout\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \out_temp[3]$latch~combout\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \out_temp[4]$latch~combout\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \out_temp[5]$latch~combout\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \out_temp[6]$latch~combout\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \out_temp[7]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \out_alt[0]$latch~combout\ : std_logic;
SIGNAL \out_alt[1]$latch~combout\ : std_logic;
SIGNAL \out_alt[2]$latch~combout\ : std_logic;
SIGNAL \out_alt[3]$latch~combout\ : std_logic;
SIGNAL \out_alt[4]$latch~combout\ : std_logic;
SIGNAL \out_alt[5]$latch~combout\ : std_logic;
SIGNAL \out_alt[6]$latch~combout\ : std_logic;
SIGNAL \out_alt[7]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \out_umi[0]$latch~combout\ : std_logic;
SIGNAL \out_umi[1]$latch~combout\ : std_logic;
SIGNAL \out_umi[2]$latch~combout\ : std_logic;
SIGNAL \out_umi[3]$latch~combout\ : std_logic;
SIGNAL \out_umi[4]$latch~combout\ : std_logic;
SIGNAL \out_umi[5]$latch~combout\ : std_logic;
SIGNAL \out_umi[6]$latch~combout\ : std_logic;
SIGNAL \out_umi[7]$latch~combout\ : std_logic;

BEGIN

ww_switches <= switches;
ww_switches_sel <= switches_sel;
out_temp <= ww_out_temp;
out_alt <= ww_out_alt;
out_umi <= ww_out_umi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_temp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[0]~output_o\);

\out_temp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[1]~output_o\);

\out_temp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[2]~output_o\);

\out_temp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[3]~output_o\);

\out_temp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[4]~output_o\);

\out_temp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[5]~output_o\);

\out_temp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[6]~output_o\);

\out_temp[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_temp[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out_temp[7]~output_o\);

\out_alt[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[0]~output_o\);

\out_alt[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[1]~output_o\);

\out_alt[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[2]~output_o\);

\out_alt[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[3]~output_o\);

\out_alt[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[4]~output_o\);

\out_alt[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[5]~output_o\);

\out_alt[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[6]~output_o\);

\out_alt[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_alt[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out_alt[7]~output_o\);

\out_umi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[0]~output_o\);

\out_umi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[1]~output_o\);

\out_umi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[2]~output_o\);

\out_umi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[3]~output_o\);

\out_umi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[4]~output_o\);

\out_umi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[5]~output_o\);

\out_umi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[6]~output_o\);

\out_umi[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_umi[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out_umi[7]~output_o\);

\switches[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

\switches_sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches_sel(0),
	o => \switches_sel[0]~input_o\);

\switches_sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches_sel(1),
	o => \switches_sel[1]~input_o\);

\switches_sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches_sel(2),
	o => \switches_sel[2]~input_o\);

\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\switches_sel[0]~input_o\ & (!\switches_sel[1]~input_o\ & !\switches_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches_sel[0]~input_o\,
	datac => \switches_sel[1]~input_o\,
	datad => \switches_sel[2]~input_o\,
	combout => \Mux26~0_combout\);

\out_temp[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[0]$latch~combout\ = (\Mux26~0_combout\ & (\switches[0]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[0]~input_o\,
	datac => \out_temp[0]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[0]$latch~combout\);

\switches[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

\out_temp[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[1]$latch~combout\ = (\Mux26~0_combout\ & (\switches[1]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[1]~input_o\,
	datac => \out_temp[1]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[1]$latch~combout\);

\switches[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

\out_temp[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[2]$latch~combout\ = (\Mux26~0_combout\ & (\switches[2]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[2]~input_o\,
	datac => \out_temp[2]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[2]$latch~combout\);

\switches[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

\out_temp[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[3]$latch~combout\ = (\Mux26~0_combout\ & (\switches[3]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[3]~input_o\,
	datac => \out_temp[3]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[3]$latch~combout\);

\switches[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

\out_temp[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[4]$latch~combout\ = (\Mux26~0_combout\ & (\switches[4]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[4]~input_o\,
	datac => \out_temp[4]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[4]$latch~combout\);

\switches[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

\out_temp[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[5]$latch~combout\ = (\Mux26~0_combout\ & (\switches[5]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[5]~input_o\,
	datac => \out_temp[5]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[5]$latch~combout\);

\switches[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

\out_temp[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[6]$latch~combout\ = (\Mux26~0_combout\ & (\switches[6]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[6]~input_o\,
	datac => \out_temp[6]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[6]$latch~combout\);

\switches[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

\out_temp[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_temp[7]$latch~combout\ = (\Mux26~0_combout\ & (\switches[7]~input_o\)) # (!\Mux26~0_combout\ & ((\out_temp[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[7]~input_o\,
	datac => \out_temp[7]$latch~combout\,
	datad => \Mux26~0_combout\,
	combout => \out_temp[7]$latch~combout\);

\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\switches_sel[2]~input_o\ & (!\switches_sel[0]~input_o\ & !\switches_sel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches_sel[2]~input_o\,
	datac => \switches_sel[0]~input_o\,
	datad => \switches_sel[1]~input_o\,
	combout => \Mux8~0_combout\);

\out_alt[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[0]$latch~combout\ = (\Mux8~0_combout\ & (\switches[0]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[0]~input_o\,
	datac => \out_alt[0]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[0]$latch~combout\);

\out_alt[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[1]$latch~combout\ = (\Mux8~0_combout\ & (\switches[1]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[1]~input_o\,
	datac => \out_alt[1]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[1]$latch~combout\);

\out_alt[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[2]$latch~combout\ = (\Mux8~0_combout\ & (\switches[2]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[2]~input_o\,
	datac => \out_alt[2]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[2]$latch~combout\);

\out_alt[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[3]$latch~combout\ = (\Mux8~0_combout\ & (\switches[3]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[3]~input_o\,
	datac => \out_alt[3]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[3]$latch~combout\);

\out_alt[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[4]$latch~combout\ = (\Mux8~0_combout\ & (\switches[4]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[4]~input_o\,
	datac => \out_alt[4]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[4]$latch~combout\);

\out_alt[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[5]$latch~combout\ = (\Mux8~0_combout\ & (\switches[5]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[5]~input_o\,
	datac => \out_alt[5]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[5]$latch~combout\);

\out_alt[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[6]$latch~combout\ = (\Mux8~0_combout\ & (\switches[6]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[6]~input_o\,
	datac => \out_alt[6]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[6]$latch~combout\);

\out_alt[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_alt[7]$latch~combout\ = (\Mux8~0_combout\ & (\switches[7]~input_o\)) # (!\Mux8~0_combout\ & ((\out_alt[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[7]~input_o\,
	datac => \out_alt[7]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out_alt[7]$latch~combout\);

\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\switches_sel[1]~input_o\ & (!\switches_sel[0]~input_o\ & !\switches_sel[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches_sel[1]~input_o\,
	datac => \switches_sel[0]~input_o\,
	datad => \switches_sel[2]~input_o\,
	combout => \Mux17~0_combout\);

\out_umi[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[0]$latch~combout\ = (\Mux17~0_combout\ & (\switches[0]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[0]~input_o\,
	datac => \out_umi[0]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[0]$latch~combout\);

\out_umi[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[1]$latch~combout\ = (\Mux17~0_combout\ & (\switches[1]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[1]~input_o\,
	datac => \out_umi[1]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[1]$latch~combout\);

\out_umi[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[2]$latch~combout\ = (\Mux17~0_combout\ & (\switches[2]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[2]~input_o\,
	datac => \out_umi[2]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[2]$latch~combout\);

\out_umi[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[3]$latch~combout\ = (\Mux17~0_combout\ & (\switches[3]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[3]~input_o\,
	datac => \out_umi[3]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[3]$latch~combout\);

\out_umi[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[4]$latch~combout\ = (\Mux17~0_combout\ & (\switches[4]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[4]~input_o\,
	datac => \out_umi[4]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[4]$latch~combout\);

\out_umi[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[5]$latch~combout\ = (\Mux17~0_combout\ & (\switches[5]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[5]~input_o\,
	datac => \out_umi[5]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[5]$latch~combout\);

\out_umi[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[6]$latch~combout\ = (\Mux17~0_combout\ & (\switches[6]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[6]~input_o\,
	datac => \out_umi[6]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[6]$latch~combout\);

\out_umi[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out_umi[7]$latch~combout\ = (\Mux17~0_combout\ & (\switches[7]~input_o\)) # (!\Mux17~0_combout\ & ((\out_umi[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches[7]~input_o\,
	datac => \out_umi[7]$latch~combout\,
	datad => \Mux17~0_combout\,
	combout => \out_umi[7]$latch~combout\);

ww_out_temp(0) <= \out_temp[0]~output_o\;

ww_out_temp(1) <= \out_temp[1]~output_o\;

ww_out_temp(2) <= \out_temp[2]~output_o\;

ww_out_temp(3) <= \out_temp[3]~output_o\;

ww_out_temp(4) <= \out_temp[4]~output_o\;

ww_out_temp(5) <= \out_temp[5]~output_o\;

ww_out_temp(6) <= \out_temp[6]~output_o\;

ww_out_temp(7) <= \out_temp[7]~output_o\;

ww_out_alt(0) <= \out_alt[0]~output_o\;

ww_out_alt(1) <= \out_alt[1]~output_o\;

ww_out_alt(2) <= \out_alt[2]~output_o\;

ww_out_alt(3) <= \out_alt[3]~output_o\;

ww_out_alt(4) <= \out_alt[4]~output_o\;

ww_out_alt(5) <= \out_alt[5]~output_o\;

ww_out_alt(6) <= \out_alt[6]~output_o\;

ww_out_alt(7) <= \out_alt[7]~output_o\;

ww_out_umi(0) <= \out_umi[0]~output_o\;

ww_out_umi(1) <= \out_umi[1]~output_o\;

ww_out_umi(2) <= \out_umi[2]~output_o\;

ww_out_umi(3) <= \out_umi[3]~output_o\;

ww_out_umi(4) <= \out_umi[4]~output_o\;

ww_out_umi(5) <= \out_umi[5]~output_o\;

ww_out_umi(6) <= \out_umi[6]~output_o\;

ww_out_umi(7) <= \out_umi[7]~output_o\;
END structure;


