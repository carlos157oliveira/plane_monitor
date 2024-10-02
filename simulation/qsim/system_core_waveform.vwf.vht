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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/02/2024 14:24:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          system_core
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY system_core_vhd_vec_tst IS
END system_core_vhd_vec_tst;
ARCHITECTURE system_core_arch OF system_core_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alt_neg : STD_LOGIC;
SIGNAL ctrl : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL humid_neg : STD_LOGIC;
SIGNAL in_alt : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_humid : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_temp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL in_timer : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL led_display : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_neg : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL temp_neg : STD_LOGIC;
SIGNAL timer_neg : STD_LOGIC;
COMPONENT system_core
	PORT (
	alt_neg : IN STD_LOGIC;
	ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	humid_neg : IN STD_LOGIC;
	in_alt : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_humid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_temp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	in_timer : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	led_display : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_neg : OUT STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	temp_neg : IN STD_LOGIC;
	timer_neg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : system_core
	PORT MAP (
-- list connections between master ports and signals
	alt_neg => alt_neg,
	ctrl => ctrl,
	humid_neg => humid_neg,
	in_alt => in_alt,
	in_humid => in_humid,
	in_temp => in_temp,
	in_timer => in_timer,
	led_display => led_display,
	out_data => out_data,
	out_neg => out_neg,
	sel => sel,
	temp_neg => temp_neg,
	timer_neg => timer_neg
	);

-- humid_neg
t_prcs_humid_neg: PROCESS
BEGIN
	humid_neg <= '0';
WAIT;
END PROCESS t_prcs_humid_neg;

-- alt_neg
t_prcs_alt_neg: PROCESS
BEGIN
	alt_neg <= '0';
WAIT;
END PROCESS t_prcs_alt_neg;

-- timer_neg
t_prcs_timer_neg: PROCESS
BEGIN
	timer_neg <= '0';
WAIT;
END PROCESS t_prcs_timer_neg;

-- temp_neg
t_prcs_temp_neg: PROCESS
BEGIN
	temp_neg <= '0';
	WAIT FOR 200000 ps;
	temp_neg <= '1';
	WAIT FOR 100000 ps;
	temp_neg <= '0';
	WAIT FOR 250000 ps;
	temp_neg <= '1';
	WAIT FOR 50000 ps;
	temp_neg <= '0';
WAIT;
END PROCESS t_prcs_temp_neg;
-- ctrl[1]
t_prcs_ctrl_1: PROCESS
BEGIN
	ctrl(1) <= '0';
	WAIT FOR 320000 ps;
	ctrl(1) <= '1';
	WAIT FOR 80000 ps;
	ctrl(1) <= '0';
	WAIT FOR 80000 ps;
	ctrl(1) <= '1';
	WAIT FOR 240000 ps;
	ctrl(1) <= '0';
	WAIT FOR 240000 ps;
	ctrl(1) <= '1';
WAIT;
END PROCESS t_prcs_ctrl_1;
-- ctrl[0]
t_prcs_ctrl_0: PROCESS
BEGIN
	ctrl(0) <= '0';
	WAIT FOR 320000 ps;
	ctrl(0) <= '1';
	WAIT FOR 160000 ps;
	ctrl(0) <= '0';
	WAIT FOR 80000 ps;
	ctrl(0) <= '1';
	WAIT FOR 80000 ps;
	ctrl(0) <= '0';
	WAIT FOR 80000 ps;
	ctrl(0) <= '1';
WAIT;
END PROCESS t_prcs_ctrl_0;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
	WAIT FOR 550000 ps;
	sel(1) <= '1';
	WAIT FOR 100000 ps;
	sel(1) <= '0';
	WAIT FOR 200000 ps;
	sel(1) <= '1';
	WAIT FOR 100000 ps;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '0';
	WAIT FOR 100000 ps;
	sel(0) <= '1';
	WAIT FOR 200000 ps;
	sel(0) <= '0';
	WAIT FOR 250000 ps;
	sel(0) <= '1';
	WAIT FOR 100000 ps;
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
-- in_humid[7]
t_prcs_in_humid_7: PROCESS
BEGIN
	in_humid(7) <= '1';
	WAIT FOR 100000 ps;
	in_humid(7) <= '0';
	WAIT FOR 200000 ps;
	in_humid(7) <= '1';
	WAIT FOR 50000 ps;
	in_humid(7) <= '0';
	WAIT FOR 50000 ps;
	in_humid(7) <= '1';
	WAIT FOR 200000 ps;
	in_humid(7) <= '0';
	WAIT FOR 50000 ps;
	in_humid(7) <= '1';
	WAIT FOR 50000 ps;
	in_humid(7) <= '0';
	WAIT FOR 150000 ps;
	in_humid(7) <= '1';
	WAIT FOR 100000 ps;
	in_humid(7) <= '0';
WAIT;
END PROCESS t_prcs_in_humid_7;
-- in_humid[6]
t_prcs_in_humid_6: PROCESS
BEGIN
	in_humid(6) <= '0';
	WAIT FOR 100000 ps;
	in_humid(6) <= '1';
	WAIT FOR 150000 ps;
	in_humid(6) <= '0';
	WAIT FOR 50000 ps;
	in_humid(6) <= '1';
	WAIT FOR 150000 ps;
	in_humid(6) <= '0';
	WAIT FOR 50000 ps;
	in_humid(6) <= '1';
	WAIT FOR 50000 ps;
	in_humid(6) <= '0';
	WAIT FOR 400000 ps;
	in_humid(6) <= '1';
WAIT;
END PROCESS t_prcs_in_humid_6;
-- in_humid[5]
t_prcs_in_humid_5: PROCESS
BEGIN
	in_humid(5) <= '0';
	WAIT FOR 50000 ps;
	in_humid(5) <= '1';
	WAIT FOR 50000 ps;
	in_humid(5) <= '0';
	WAIT FOR 100000 ps;
	in_humid(5) <= '1';
	WAIT FOR 50000 ps;
	in_humid(5) <= '0';
	WAIT FOR 200000 ps;
	in_humid(5) <= '1';
	WAIT FOR 150000 ps;
	in_humid(5) <= '0';
	WAIT FOR 150000 ps;
	in_humid(5) <= '1';
	WAIT FOR 150000 ps;
	in_humid(5) <= '0';
WAIT;
END PROCESS t_prcs_in_humid_5;
-- in_humid[4]
t_prcs_in_humid_4: PROCESS
BEGIN
	in_humid(4) <= '1';
	WAIT FOR 100000 ps;
	in_humid(4) <= '0';
	WAIT FOR 100000 ps;
	in_humid(4) <= '1';
	WAIT FOR 50000 ps;
	in_humid(4) <= '0';
	WAIT FOR 100000 ps;
	in_humid(4) <= '1';
	WAIT FOR 50000 ps;
	in_humid(4) <= '0';
	WAIT FOR 50000 ps;
	in_humid(4) <= '1';
	WAIT FOR 100000 ps;
	in_humid(4) <= '0';
	WAIT FOR 200000 ps;
	in_humid(4) <= '1';
	WAIT FOR 50000 ps;
	in_humid(4) <= '0';
	WAIT FOR 150000 ps;
	in_humid(4) <= '1';
WAIT;
END PROCESS t_prcs_in_humid_4;
-- in_humid[3]
t_prcs_in_humid_3: PROCESS
BEGIN
	in_humid(3) <= '0';
	WAIT FOR 150000 ps;
	in_humid(3) <= '1';
	WAIT FOR 50000 ps;
	in_humid(3) <= '0';
	WAIT FOR 50000 ps;
	in_humid(3) <= '1';
	WAIT FOR 200000 ps;
	in_humid(3) <= '0';
	WAIT FOR 150000 ps;
	in_humid(3) <= '1';
	WAIT FOR 150000 ps;
	in_humid(3) <= '0';
	WAIT FOR 150000 ps;
	in_humid(3) <= '1';
	WAIT FOR 50000 ps;
	in_humid(3) <= '0';
WAIT;
END PROCESS t_prcs_in_humid_3;
-- in_humid[2]
t_prcs_in_humid_2: PROCESS
BEGIN
	in_humid(2) <= '0';
	WAIT FOR 50000 ps;
	in_humid(2) <= '1';
	WAIT FOR 200000 ps;
	in_humid(2) <= '0';
	WAIT FOR 50000 ps;
	in_humid(2) <= '1';
	WAIT FOR 350000 ps;
	in_humid(2) <= '0';
	WAIT FOR 50000 ps;
	in_humid(2) <= '1';
WAIT;
END PROCESS t_prcs_in_humid_2;
-- in_humid[1]
t_prcs_in_humid_1: PROCESS
BEGIN
	in_humid(1) <= '0';
	WAIT FOR 50000 ps;
	in_humid(1) <= '1';
	WAIT FOR 100000 ps;
	in_humid(1) <= '0';
	WAIT FOR 50000 ps;
	in_humid(1) <= '1';
	WAIT FOR 50000 ps;
	in_humid(1) <= '0';
	WAIT FOR 50000 ps;
	in_humid(1) <= '1';
	WAIT FOR 200000 ps;
	in_humid(1) <= '0';
	WAIT FOR 100000 ps;
	in_humid(1) <= '1';
	WAIT FOR 50000 ps;
	in_humid(1) <= '0';
	WAIT FOR 50000 ps;
	in_humid(1) <= '1';
	WAIT FOR 50000 ps;
	in_humid(1) <= '0';
	WAIT FOR 50000 ps;
	in_humid(1) <= '1';
	WAIT FOR 150000 ps;
	in_humid(1) <= '0';
WAIT;
END PROCESS t_prcs_in_humid_1;
-- in_humid[0]
t_prcs_in_humid_0: PROCESS
BEGIN
	in_humid(0) <= '0';
	WAIT FOR 200000 ps;
	in_humid(0) <= '1';
	WAIT FOR 100000 ps;
	in_humid(0) <= '0';
	WAIT FOR 50000 ps;
	in_humid(0) <= '1';
	WAIT FOR 100000 ps;
	in_humid(0) <= '0';
	WAIT FOR 150000 ps;
	in_humid(0) <= '1';
	WAIT FOR 50000 ps;
	in_humid(0) <= '0';
	WAIT FOR 50000 ps;
	in_humid(0) <= '1';
	WAIT FOR 50000 ps;
	in_humid(0) <= '0';
	WAIT FOR 50000 ps;
	in_humid(0) <= '1';
	WAIT FOR 50000 ps;
	in_humid(0) <= '0';
WAIT;
END PROCESS t_prcs_in_humid_0;
-- in_alt[7]
t_prcs_in_alt_7: PROCESS
BEGIN
	in_alt(7) <= '0';
	WAIT FOR 100000 ps;
	in_alt(7) <= '1';
	WAIT FOR 50000 ps;
	in_alt(7) <= '0';
	WAIT FOR 100000 ps;
	in_alt(7) <= '1';
	WAIT FOR 100000 ps;
	in_alt(7) <= '0';
	WAIT FOR 50000 ps;
	in_alt(7) <= '1';
	WAIT FOR 50000 ps;
	in_alt(7) <= '0';
	WAIT FOR 100000 ps;
	in_alt(7) <= '1';
	WAIT FOR 100000 ps;
	in_alt(7) <= '0';
	WAIT FOR 50000 ps;
	in_alt(7) <= '1';
	WAIT FOR 50000 ps;
	in_alt(7) <= '0';
	WAIT FOR 50000 ps;
	in_alt(7) <= '1';
WAIT;
END PROCESS t_prcs_in_alt_7;
-- in_alt[6]
t_prcs_in_alt_6: PROCESS
BEGIN
	in_alt(6) <= '1';
	WAIT FOR 100000 ps;
	in_alt(6) <= '0';
	WAIT FOR 100000 ps;
	in_alt(6) <= '1';
	WAIT FOR 50000 ps;
	in_alt(6) <= '0';
	WAIT FOR 150000 ps;
	in_alt(6) <= '1';
	WAIT FOR 100000 ps;
	in_alt(6) <= '0';
	WAIT FOR 50000 ps;
	in_alt(6) <= '1';
	WAIT FOR 50000 ps;
	in_alt(6) <= '0';
	WAIT FOR 150000 ps;
	in_alt(6) <= '1';
	WAIT FOR 50000 ps;
	in_alt(6) <= '0';
	WAIT FOR 50000 ps;
	in_alt(6) <= '1';
	WAIT FOR 50000 ps;
	in_alt(6) <= '0';
WAIT;
END PROCESS t_prcs_in_alt_6;
-- in_alt[5]
t_prcs_in_alt_5: PROCESS
BEGIN
	in_alt(5) <= '1';
	WAIT FOR 100000 ps;
	in_alt(5) <= '0';
	WAIT FOR 100000 ps;
	in_alt(5) <= '1';
	WAIT FOR 250000 ps;
	in_alt(5) <= '0';
	WAIT FOR 50000 ps;
	in_alt(5) <= '1';
	WAIT FOR 100000 ps;
	in_alt(5) <= '0';
	WAIT FOR 50000 ps;
	in_alt(5) <= '1';
	WAIT FOR 50000 ps;
	in_alt(5) <= '0';
	WAIT FOR 50000 ps;
	in_alt(5) <= '1';
	WAIT FOR 150000 ps;
	in_alt(5) <= '0';
	WAIT FOR 50000 ps;
	in_alt(5) <= '1';
WAIT;
END PROCESS t_prcs_in_alt_5;
-- in_alt[4]
t_prcs_in_alt_4: PROCESS
BEGIN
	in_alt(4) <= '0';
	WAIT FOR 100000 ps;
	in_alt(4) <= '1';
	WAIT FOR 300000 ps;
	in_alt(4) <= '0';
	WAIT FOR 100000 ps;
	in_alt(4) <= '1';
	WAIT FOR 50000 ps;
	in_alt(4) <= '0';
	WAIT FOR 50000 ps;
	in_alt(4) <= '1';
	WAIT FOR 150000 ps;
	in_alt(4) <= '0';
WAIT;
END PROCESS t_prcs_in_alt_4;
-- in_alt[3]
t_prcs_in_alt_3: PROCESS
BEGIN
	in_alt(3) <= '0';
	WAIT FOR 250000 ps;
	in_alt(3) <= '1';
	WAIT FOR 400000 ps;
	in_alt(3) <= '0';
	WAIT FOR 50000 ps;
	in_alt(3) <= '1';
	WAIT FOR 50000 ps;
	in_alt(3) <= '0';
	WAIT FOR 100000 ps;
	in_alt(3) <= '1';
	WAIT FOR 100000 ps;
	in_alt(3) <= '0';
WAIT;
END PROCESS t_prcs_in_alt_3;
-- in_alt[2]
t_prcs_in_alt_2: PROCESS
BEGIN
	in_alt(2) <= '0';
	WAIT FOR 200000 ps;
	in_alt(2) <= '1';
	WAIT FOR 50000 ps;
	in_alt(2) <= '0';
	WAIT FOR 100000 ps;
	in_alt(2) <= '1';
	WAIT FOR 50000 ps;
	in_alt(2) <= '0';
	WAIT FOR 100000 ps;
	in_alt(2) <= '1';
	WAIT FOR 100000 ps;
	in_alt(2) <= '0';
	WAIT FOR 50000 ps;
	in_alt(2) <= '1';
	WAIT FOR 200000 ps;
	in_alt(2) <= '0';
	WAIT FOR 100000 ps;
	in_alt(2) <= '1';
WAIT;
END PROCESS t_prcs_in_alt_2;
-- in_alt[1]
t_prcs_in_alt_1: PROCESS
BEGIN
	in_alt(1) <= '1';
	WAIT FOR 150000 ps;
	in_alt(1) <= '0';
	WAIT FOR 100000 ps;
	in_alt(1) <= '1';
	WAIT FOR 350000 ps;
	in_alt(1) <= '0';
	WAIT FOR 50000 ps;
	in_alt(1) <= '1';
	WAIT FOR 200000 ps;
	in_alt(1) <= '0';
WAIT;
END PROCESS t_prcs_in_alt_1;
-- in_alt[0]
t_prcs_in_alt_0: PROCESS
BEGIN
	in_alt(0) <= '0';
	WAIT FOR 50000 ps;
	in_alt(0) <= '1';
	WAIT FOR 150000 ps;
	in_alt(0) <= '0';
	WAIT FOR 100000 ps;
	in_alt(0) <= '1';
	WAIT FOR 50000 ps;
	in_alt(0) <= '0';
	WAIT FOR 50000 ps;
	in_alt(0) <= '1';
	WAIT FOR 50000 ps;
	in_alt(0) <= '0';
	WAIT FOR 50000 ps;
	in_alt(0) <= '1';
	WAIT FOR 150000 ps;
	in_alt(0) <= '0';
	WAIT FOR 50000 ps;
	in_alt(0) <= '1';
	WAIT FOR 100000 ps;
	in_alt(0) <= '0';
	WAIT FOR 100000 ps;
	in_alt(0) <= '1';
WAIT;
END PROCESS t_prcs_in_alt_0;
-- in_temp[7]
t_prcs_in_temp_7: PROCESS
BEGIN
	in_temp(7) <= '1';
	WAIT FOR 50000 ps;
	in_temp(7) <= '0';
	WAIT FOR 200000 ps;
	in_temp(7) <= '1';
	WAIT FOR 50000 ps;
	in_temp(7) <= '0';
	WAIT FOR 50000 ps;
	in_temp(7) <= '1';
	WAIT FOR 50000 ps;
	in_temp(7) <= '0';
	WAIT FOR 50000 ps;
	in_temp(7) <= '1';
	WAIT FOR 100000 ps;
	in_temp(7) <= '0';
	WAIT FOR 50000 ps;
	in_temp(7) <= '1';
	WAIT FOR 100000 ps;
	in_temp(7) <= '0';
	WAIT FOR 50000 ps;
	in_temp(7) <= '1';
	WAIT FOR 100000 ps;
	in_temp(7) <= '0';
	WAIT FOR 50000 ps;
	in_temp(7) <= '1';
	WAIT FOR 50000 ps;
	in_temp(7) <= '0';
WAIT;
END PROCESS t_prcs_in_temp_7;
-- in_temp[6]
t_prcs_in_temp_6: PROCESS
BEGIN
	in_temp(6) <= '1';
	WAIT FOR 100000 ps;
	in_temp(6) <= '0';
	WAIT FOR 50000 ps;
	in_temp(6) <= '1';
	WAIT FOR 50000 ps;
	in_temp(6) <= '0';
	WAIT FOR 50000 ps;
	in_temp(6) <= '1';
	WAIT FOR 150000 ps;
	in_temp(6) <= '0';
	WAIT FOR 50000 ps;
	in_temp(6) <= '1';
	WAIT FOR 50000 ps;
	in_temp(6) <= '0';
	WAIT FOR 50000 ps;
	in_temp(6) <= '1';
	WAIT FOR 100000 ps;
	in_temp(6) <= '0';
	WAIT FOR 100000 ps;
	in_temp(6) <= '1';
	WAIT FOR 50000 ps;
	in_temp(6) <= '0';
WAIT;
END PROCESS t_prcs_in_temp_6;
-- in_temp[5]
t_prcs_in_temp_5: PROCESS
BEGIN
	in_temp(5) <= '1';
	WAIT FOR 200000 ps;
	in_temp(5) <= '0';
	WAIT FOR 100000 ps;
	in_temp(5) <= '1';
	WAIT FOR 100000 ps;
	in_temp(5) <= '0';
	WAIT FOR 50000 ps;
	in_temp(5) <= '1';
	WAIT FOR 100000 ps;
	in_temp(5) <= '0';
	WAIT FOR 150000 ps;
	in_temp(5) <= '1';
	WAIT FOR 50000 ps;
	in_temp(5) <= '0';
	WAIT FOR 50000 ps;
	in_temp(5) <= '1';
WAIT;
END PROCESS t_prcs_in_temp_5;
-- in_temp[4]
t_prcs_in_temp_4: PROCESS
BEGIN
	in_temp(4) <= '1';
	WAIT FOR 150000 ps;
	in_temp(4) <= '0';
	WAIT FOR 200000 ps;
	in_temp(4) <= '1';
	WAIT FOR 50000 ps;
	in_temp(4) <= '0';
	WAIT FOR 100000 ps;
	in_temp(4) <= '1';
	WAIT FOR 50000 ps;
	in_temp(4) <= '0';
	WAIT FOR 50000 ps;
	in_temp(4) <= '1';
	WAIT FOR 150000 ps;
	in_temp(4) <= '0';
	WAIT FOR 50000 ps;
	in_temp(4) <= '1';
	WAIT FOR 100000 ps;
	in_temp(4) <= '0';
WAIT;
END PROCESS t_prcs_in_temp_4;
-- in_temp[3]
t_prcs_in_temp_3: PROCESS
BEGIN
	in_temp(3) <= '1';
	WAIT FOR 50000 ps;
	in_temp(3) <= '0';
	WAIT FOR 100000 ps;
	in_temp(3) <= '1';
	WAIT FOR 50000 ps;
	in_temp(3) <= '0';
	WAIT FOR 50000 ps;
	in_temp(3) <= '1';
	WAIT FOR 100000 ps;
	in_temp(3) <= '0';
	WAIT FOR 50000 ps;
	in_temp(3) <= '1';
	WAIT FOR 50000 ps;
	in_temp(3) <= '0';
	WAIT FOR 150000 ps;
	in_temp(3) <= '1';
	WAIT FOR 50000 ps;
	in_temp(3) <= '0';
	WAIT FOR 50000 ps;
	in_temp(3) <= '1';
	WAIT FOR 50000 ps;
	in_temp(3) <= '0';
	WAIT FOR 200000 ps;
	in_temp(3) <= '1';
WAIT;
END PROCESS t_prcs_in_temp_3;
-- in_temp[2]
t_prcs_in_temp_2: PROCESS
BEGIN
	in_temp(2) <= '1';
	WAIT FOR 300000 ps;
	in_temp(2) <= '0';
	WAIT FOR 100000 ps;
	in_temp(2) <= '1';
	WAIT FOR 50000 ps;
	in_temp(2) <= '0';
	WAIT FOR 200000 ps;
	in_temp(2) <= '1';
	WAIT FOR 100000 ps;
	in_temp(2) <= '0';
WAIT;
END PROCESS t_prcs_in_temp_2;
-- in_temp[1]
t_prcs_in_temp_1: PROCESS
BEGIN
	in_temp(1) <= '0';
	WAIT FOR 50000 ps;
	in_temp(1) <= '1';
	WAIT FOR 250000 ps;
	in_temp(1) <= '0';
	WAIT FOR 150000 ps;
	in_temp(1) <= '1';
	WAIT FOR 100000 ps;
	in_temp(1) <= '0';
	WAIT FOR 50000 ps;
	in_temp(1) <= '1';
	WAIT FOR 50000 ps;
	in_temp(1) <= '0';
	WAIT FOR 300000 ps;
	in_temp(1) <= '1';
WAIT;
END PROCESS t_prcs_in_temp_1;
-- in_temp[0]
t_prcs_in_temp_0: PROCESS
BEGIN
	in_temp(0) <= '1';
	WAIT FOR 50000 ps;
	in_temp(0) <= '0';
	WAIT FOR 50000 ps;
	in_temp(0) <= '1';
	WAIT FOR 50000 ps;
	in_temp(0) <= '0';
	WAIT FOR 50000 ps;
	in_temp(0) <= '1';
	WAIT FOR 100000 ps;
	in_temp(0) <= '0';
	WAIT FOR 50000 ps;
	in_temp(0) <= '1';
	WAIT FOR 150000 ps;
	in_temp(0) <= '0';
	WAIT FOR 50000 ps;
	in_temp(0) <= '1';
	WAIT FOR 100000 ps;
	in_temp(0) <= '0';
	WAIT FOR 100000 ps;
	in_temp(0) <= '1';
	WAIT FOR 200000 ps;
	in_temp(0) <= '0';
WAIT;
END PROCESS t_prcs_in_temp_0;
-- in_timer[15]
t_prcs_in_timer_15: PROCESS
BEGIN
	in_timer(15) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_15;
-- in_timer[14]
t_prcs_in_timer_14: PROCESS
BEGIN
	in_timer(14) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_14;
-- in_timer[13]
t_prcs_in_timer_13: PROCESS
BEGIN
	in_timer(13) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_13;
-- in_timer[12]
t_prcs_in_timer_12: PROCESS
BEGIN
	in_timer(12) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_12;
-- in_timer[11]
t_prcs_in_timer_11: PROCESS
BEGIN
	in_timer(11) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_11;
-- in_timer[10]
t_prcs_in_timer_10: PROCESS
BEGIN
	in_timer(10) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_10;
-- in_timer[9]
t_prcs_in_timer_9: PROCESS
BEGIN
	in_timer(9) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_9;
-- in_timer[8]
t_prcs_in_timer_8: PROCESS
BEGIN
	in_timer(8) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_8;
-- in_timer[7]
t_prcs_in_timer_7: PROCESS
BEGIN
	in_timer(7) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_7;
-- in_timer[6]
t_prcs_in_timer_6: PROCESS
BEGIN
	in_timer(6) <= '0';
	WAIT FOR 640000 ps;
	in_timer(6) <= '1';
WAIT;
END PROCESS t_prcs_in_timer_6;
-- in_timer[5]
t_prcs_in_timer_5: PROCESS
BEGIN
	in_timer(5) <= '0';
	WAIT FOR 320000 ps;
	in_timer(5) <= '1';
	WAIT FOR 320000 ps;
	in_timer(5) <= '0';
	WAIT FOR 320000 ps;
	in_timer(5) <= '1';
WAIT;
END PROCESS t_prcs_in_timer_5;
-- in_timer[4]
t_prcs_in_timer_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		in_timer(4) <= '0';
		WAIT FOR 160000 ps;
		in_timer(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	in_timer(4) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_4;
-- in_timer[3]
t_prcs_in_timer_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		in_timer(3) <= '0';
		WAIT FOR 80000 ps;
		in_timer(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	in_timer(3) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_3;
-- in_timer[2]
t_prcs_in_timer_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		in_timer(2) <= '0';
		WAIT FOR 40000 ps;
		in_timer(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	in_timer(2) <= '0';
WAIT;
END PROCESS t_prcs_in_timer_2;
-- in_timer[1]
t_prcs_in_timer_1: PROCESS
BEGIN
LOOP
	in_timer(1) <= '0';
	WAIT FOR 20000 ps;
	in_timer(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_timer_1;
-- in_timer[0]
t_prcs_in_timer_0: PROCESS
BEGIN
LOOP
	in_timer(0) <= '0';
	WAIT FOR 10000 ps;
	in_timer(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_timer_0;
END system_core_arch;
