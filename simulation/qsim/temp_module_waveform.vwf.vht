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
-- Generated on "10/02/2024 14:36:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          temp_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY temp_module_vhd_vec_tst IS
END temp_module_vhd_vec_tst;
ARCHITECTURE temp_module_arch OF temp_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarm_flag : STD_LOGIC;
SIGNAL neg_flag : STD_LOGIC;
SIGNAL temp_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL temp_value : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT temp_module
	PORT (
	alarm_flag : OUT STD_LOGIC;
	neg_flag : OUT STD_LOGIC;
	temp_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	temp_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : temp_module
	PORT MAP (
-- list connections between master ports and signals
	alarm_flag => alarm_flag,
	neg_flag => neg_flag,
	temp_in => temp_in,
	temp_value => temp_value
	);
-- temp_in[7]
t_prcs_temp_in_7: PROCESS
BEGIN
	temp_in(7) <= '0';
	WAIT FOR 80000 ps;
	temp_in(7) <= '1';
	WAIT FOR 160000 ps;
	temp_in(7) <= '0';
	WAIT FOR 160000 ps;
	temp_in(7) <= '1';
	WAIT FOR 400000 ps;
	temp_in(7) <= '0';
	WAIT FOR 160000 ps;
	temp_in(7) <= '1';
WAIT;
END PROCESS t_prcs_temp_in_7;
-- temp_in[6]
t_prcs_temp_in_6: PROCESS
BEGIN
	temp_in(6) <= '1';
	WAIT FOR 80000 ps;
	temp_in(6) <= '0';
	WAIT FOR 160000 ps;
	temp_in(6) <= '1';
	WAIT FOR 80000 ps;
	temp_in(6) <= '0';
	WAIT FOR 160000 ps;
	temp_in(6) <= '1';
	WAIT FOR 80000 ps;
	temp_in(6) <= '0';
	WAIT FOR 80000 ps;
	temp_in(6) <= '1';
	WAIT FOR 80000 ps;
	temp_in(6) <= '0';
WAIT;
END PROCESS t_prcs_temp_in_6;
-- temp_in[5]
t_prcs_temp_in_5: PROCESS
BEGIN
	temp_in(5) <= '0';
	WAIT FOR 80000 ps;
	temp_in(5) <= '1';
	WAIT FOR 80000 ps;
	temp_in(5) <= '0';
	WAIT FOR 320000 ps;
	temp_in(5) <= '1';
	WAIT FOR 80000 ps;
	temp_in(5) <= '0';
	WAIT FOR 160000 ps;
	temp_in(5) <= '1';
	WAIT FOR 80000 ps;
	temp_in(5) <= '0';
WAIT;
END PROCESS t_prcs_temp_in_5;
-- temp_in[4]
t_prcs_temp_in_4: PROCESS
BEGIN
	temp_in(4) <= '0';
	WAIT FOR 640000 ps;
	temp_in(4) <= '1';
WAIT;
END PROCESS t_prcs_temp_in_4;
-- temp_in[3]
t_prcs_temp_in_3: PROCESS
BEGIN
	temp_in(3) <= '0';
	WAIT FOR 80000 ps;
	temp_in(3) <= '1';
	WAIT FOR 240000 ps;
	temp_in(3) <= '0';
	WAIT FOR 160000 ps;
	temp_in(3) <= '1';
	WAIT FOR 80000 ps;
	temp_in(3) <= '0';
	WAIT FOR 160000 ps;
	temp_in(3) <= '1';
	WAIT FOR 80000 ps;
	temp_in(3) <= '0';
	WAIT FOR 160000 ps;
	temp_in(3) <= '1';
WAIT;
END PROCESS t_prcs_temp_in_3;
-- temp_in[2]
t_prcs_temp_in_2: PROCESS
BEGIN
	temp_in(2) <= '1';
	WAIT FOR 80000 ps;
	temp_in(2) <= '0';
	WAIT FOR 240000 ps;
	temp_in(2) <= '1';
	WAIT FOR 240000 ps;
	temp_in(2) <= '0';
	WAIT FOR 160000 ps;
	temp_in(2) <= '1';
	WAIT FOR 240000 ps;
	temp_in(2) <= '0';
WAIT;
END PROCESS t_prcs_temp_in_2;
-- temp_in[1]
t_prcs_temp_in_1: PROCESS
BEGIN
	temp_in(1) <= '1';
	WAIT FOR 160000 ps;
	temp_in(1) <= '0';
	WAIT FOR 160000 ps;
	temp_in(1) <= '1';
	WAIT FOR 160000 ps;
	temp_in(1) <= '0';
	WAIT FOR 80000 ps;
	temp_in(1) <= '1';
	WAIT FOR 80000 ps;
	temp_in(1) <= '0';
	WAIT FOR 80000 ps;
	temp_in(1) <= '1';
	WAIT FOR 80000 ps;
	temp_in(1) <= '0';
	WAIT FOR 160000 ps;
	temp_in(1) <= '1';
WAIT;
END PROCESS t_prcs_temp_in_1;
-- temp_in[0]
t_prcs_temp_in_0: PROCESS
BEGIN
	temp_in(0) <= '0';
	WAIT FOR 80000 ps;
	temp_in(0) <= '1';
	WAIT FOR 160000 ps;
	temp_in(0) <= '0';
	WAIT FOR 80000 ps;
	temp_in(0) <= '1';
	WAIT FOR 240000 ps;
	temp_in(0) <= '0';
	WAIT FOR 80000 ps;
	temp_in(0) <= '1';
	WAIT FOR 80000 ps;
	temp_in(0) <= '0';
	WAIT FOR 160000 ps;
	temp_in(0) <= '1';
WAIT;
END PROCESS t_prcs_temp_in_0;
END temp_module_arch;
