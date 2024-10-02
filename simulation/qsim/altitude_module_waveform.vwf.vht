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
-- Generated on "10/02/2024 14:38:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          altitude_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY altitude_module_vhd_vec_tst IS
END altitude_module_vhd_vec_tst;
ARCHITECTURE altitude_module_arch OF altitude_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarm_flag : STD_LOGIC;
SIGNAL alt_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL altitude_input_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk_altitude : STD_LOGIC;
SIGNAL neg_flag : STD_LOGIC;
COMPONENT altitude_module
	PORT (
	alarm_flag : OUT STD_LOGIC;
	alt_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	altitude_input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk_altitude : IN STD_LOGIC;
	neg_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : altitude_module
	PORT MAP (
-- list connections between master ports and signals
	alarm_flag => alarm_flag,
	alt_value => alt_value,
	altitude_input_value => altitude_input_value,
	clk_altitude => clk_altitude,
	neg_flag => neg_flag
	);
-- altitude_input_value[7]
t_prcs_altitude_input_value_7: PROCESS
BEGIN
	altitude_input_value(7) <= '1';
	WAIT FOR 250000 ps;
	altitude_input_value(7) <= '0';
	WAIT FOR 100000 ps;
	altitude_input_value(7) <= '1';
WAIT;
END PROCESS t_prcs_altitude_input_value_7;
-- altitude_input_value[6]
t_prcs_altitude_input_value_6: PROCESS
BEGIN
	altitude_input_value(6) <= '1';
	WAIT FOR 300000 ps;
	altitude_input_value(6) <= '0';
	WAIT FOR 50000 ps;
	altitude_input_value(6) <= '1';
WAIT;
END PROCESS t_prcs_altitude_input_value_6;
-- altitude_input_value[5]
t_prcs_altitude_input_value_5: PROCESS
BEGIN
	altitude_input_value(5) <= '0';
	WAIT FOR 250000 ps;
	altitude_input_value(5) <= '1';
	WAIT FOR 100000 ps;
	altitude_input_value(5) <= '0';
WAIT;
END PROCESS t_prcs_altitude_input_value_5;
-- altitude_input_value[4]
t_prcs_altitude_input_value_4: PROCESS
BEGIN
	altitude_input_value(4) <= '0';
	WAIT FOR 300000 ps;
	altitude_input_value(4) <= '1';
	WAIT FOR 50000 ps;
	altitude_input_value(4) <= '0';
	WAIT FOR 50000 ps;
	altitude_input_value(4) <= '1';
WAIT;
END PROCESS t_prcs_altitude_input_value_4;
-- altitude_input_value[3]
t_prcs_altitude_input_value_3: PROCESS
BEGIN
	altitude_input_value(3) <= '1';
	WAIT FOR 250000 ps;
	altitude_input_value(3) <= '0';
	WAIT FOR 100000 ps;
	altitude_input_value(3) <= '1';
	WAIT FOR 50000 ps;
	altitude_input_value(3) <= '0';
	WAIT FOR 400000 ps;
	altitude_input_value(3) <= '1';
WAIT;
END PROCESS t_prcs_altitude_input_value_3;
-- altitude_input_value[2]
t_prcs_altitude_input_value_2: PROCESS
BEGIN
	altitude_input_value(2) <= '0';
	WAIT FOR 200000 ps;
	altitude_input_value(2) <= '1';
	WAIT FOR 100000 ps;
	altitude_input_value(2) <= '0';
	WAIT FOR 50000 ps;
	altitude_input_value(2) <= '1';
	WAIT FOR 50000 ps;
	altitude_input_value(2) <= '0';
	WAIT FOR 200000 ps;
	altitude_input_value(2) <= '1';
	WAIT FOR 200000 ps;
	altitude_input_value(2) <= '0';
WAIT;
END PROCESS t_prcs_altitude_input_value_2;
-- altitude_input_value[1]
t_prcs_altitude_input_value_1: PROCESS
BEGIN
	altitude_input_value(1) <= '0';
	WAIT FOR 100000 ps;
	altitude_input_value(1) <= '1';
	WAIT FOR 100000 ps;
	altitude_input_value(1) <= '0';
	WAIT FOR 100000 ps;
	altitude_input_value(1) <= '1';
	WAIT FOR 100000 ps;
	altitude_input_value(1) <= '0';
	WAIT FOR 100000 ps;
	altitude_input_value(1) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		altitude_input_value(1) <= '0';
		WAIT FOR 100000 ps;
		altitude_input_value(1) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_altitude_input_value_1;
-- altitude_input_value[0]
t_prcs_altitude_input_value_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		altitude_input_value(0) <= '0';
		WAIT FOR 50000 ps;
		altitude_input_value(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	altitude_input_value(0) <= '0';
	WAIT FOR 150000 ps;
	altitude_input_value(0) <= '1';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 6
	LOOP
		altitude_input_value(0) <= '0';
		WAIT FOR 50000 ps;
		altitude_input_value(0) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_altitude_input_value_0;

-- clk_altitude
t_prcs_clk_altitude: PROCESS
BEGIN
LOOP
	clk_altitude <= '0';
	WAIT FOR 5000 ps;
	clk_altitude <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_altitude;
END altitude_module_arch;
