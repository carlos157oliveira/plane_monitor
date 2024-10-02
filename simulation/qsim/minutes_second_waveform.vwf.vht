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
-- Generated on "10/02/2024 14:49:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          minutes_second_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY minutes_second_module_vhd_vec_tst IS
END minutes_second_module_vhd_vec_tst;
ARCHITECTURE minutes_second_module_arch OF minutes_second_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL minute_second_output_value : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL second_input_value : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT minutes_second_module
	PORT (
	minute_second_output_value : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	second_input_value : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : minutes_second_module
	PORT MAP (
-- list connections between master ports and signals
	minute_second_output_value => minute_second_output_value,
	second_input_value => second_input_value
	);
-- second_input_value[15]
t_prcs_second_input_value_15: PROCESS
BEGIN
	second_input_value(15) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_15;
-- second_input_value[14]
t_prcs_second_input_value_14: PROCESS
BEGIN
	second_input_value(14) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_14;
-- second_input_value[13]
t_prcs_second_input_value_13: PROCESS
BEGIN
	second_input_value(13) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_13;
-- second_input_value[12]
t_prcs_second_input_value_12: PROCESS
BEGIN
	second_input_value(12) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_12;
-- second_input_value[11]
t_prcs_second_input_value_11: PROCESS
BEGIN
	second_input_value(11) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_11;
-- second_input_value[10]
t_prcs_second_input_value_10: PROCESS
BEGIN
	second_input_value(10) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_10;
-- second_input_value[9]
t_prcs_second_input_value_9: PROCESS
BEGIN
	second_input_value(9) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_9;
-- second_input_value[8]
t_prcs_second_input_value_8: PROCESS
BEGIN
	second_input_value(8) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_8;
-- second_input_value[7]
t_prcs_second_input_value_7: PROCESS
BEGIN
	second_input_value(7) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_7;
-- second_input_value[6]
t_prcs_second_input_value_6: PROCESS
BEGIN
	second_input_value(6) <= '0';
	WAIT FOR 320000 ps;
	second_input_value(6) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_6;
-- second_input_value[5]
t_prcs_second_input_value_5: PROCESS
BEGIN
	second_input_value(5) <= '1';
	WAIT FOR 320000 ps;
	second_input_value(5) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_5;
-- second_input_value[4]
t_prcs_second_input_value_4: PROCESS
BEGIN
	second_input_value(4) <= '1';
	WAIT FOR 320000 ps;
	second_input_value(4) <= '0';
	WAIT FOR 640000 ps;
	second_input_value(4) <= '1';
WAIT;
END PROCESS t_prcs_second_input_value_4;
-- second_input_value[3]
t_prcs_second_input_value_3: PROCESS
BEGIN
	second_input_value(3) <= '1';
	WAIT FOR 320000 ps;
	second_input_value(3) <= '0';
	WAIT FOR 320000 ps;
	second_input_value(3) <= '1';
	WAIT FOR 320000 ps;
	second_input_value(3) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_3;
-- second_input_value[2]
t_prcs_second_input_value_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		second_input_value(2) <= '0';
		WAIT FOR 160000 ps;
		second_input_value(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	second_input_value(2) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_2;
-- second_input_value[1]
t_prcs_second_input_value_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		second_input_value(1) <= '0';
		WAIT FOR 80000 ps;
		second_input_value(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	second_input_value(1) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_1;
-- second_input_value[0]
t_prcs_second_input_value_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		second_input_value(0) <= '0';
		WAIT FOR 40000 ps;
		second_input_value(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	second_input_value(0) <= '0';
WAIT;
END PROCESS t_prcs_second_input_value_0;
END minutes_second_module_arch;
