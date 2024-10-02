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
-- Generated on "10/02/2024 14:53:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          umidade_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY umidade_module_vhd_vec_tst IS
END umidade_module_vhd_vec_tst;
ARCHITECTURE umidade_module_arch OF umidade_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarm_output : STD_LOGIC;
SIGNAL negative_output : STD_LOGIC;
SIGNAL umidade_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL umidade_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT umidade_module
	PORT (
	alarm_output : OUT STD_LOGIC;
	negative_output : OUT STD_LOGIC;
	umidade_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	umidade_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : umidade_module
	PORT MAP (
-- list connections between master ports and signals
	alarm_output => alarm_output,
	negative_output => negative_output,
	umidade_in => umidade_in,
	umidade_out => umidade_out
	);
-- umidade_in[7]
t_prcs_umidade_in_7: PROCESS
BEGIN
	umidade_in(7) <= '0';
	WAIT FOR 468000 ps;
	umidade_in(7) <= '1';
	WAIT FOR 468000 ps;
	umidade_in(7) <= '0';
WAIT;
END PROCESS t_prcs_umidade_in_7;
-- umidade_in[6]
t_prcs_umidade_in_6: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		umidade_in(6) <= '0';
		WAIT FOR 234000 ps;
		umidade_in(6) <= '1';
		WAIT FOR 234000 ps;
	END LOOP;
	umidade_in(6) <= '0';
WAIT;
END PROCESS t_prcs_umidade_in_6;
-- umidade_in[5]
t_prcs_umidade_in_5: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		umidade_in(5) <= '0';
		WAIT FOR 126000 ps;
		umidade_in(5) <= '1';
		WAIT FOR 108000 ps;
	END LOOP;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(5) <= '0';
		WAIT FOR 108000 ps;
		umidade_in(5) <= '1';
		WAIT FOR 126000 ps;
	END LOOP;
	umidade_in(5) <= '0';
WAIT;
END PROCESS t_prcs_umidade_in_5;
-- umidade_in[4]
t_prcs_umidade_in_4: PROCESS
BEGIN
	umidade_in(4) <= '0';
	WAIT FOR 72000 ps;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(4) <= '1';
		WAIT FOR 54000 ps;
		umidade_in(4) <= '0';
		WAIT FOR 54000 ps;
	END LOOP;
	umidade_in(4) <= '1';
	WAIT FOR 72000 ps;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(4) <= '0';
		WAIT FOR 54000 ps;
		umidade_in(4) <= '1';
		WAIT FOR 54000 ps;
	END LOOP;
	umidade_in(4) <= '0';
	WAIT FOR 72000 ps;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(4) <= '1';
		WAIT FOR 54000 ps;
		umidade_in(4) <= '0';
		WAIT FOR 54000 ps;
	END LOOP;
	umidade_in(4) <= '1';
	WAIT FOR 72000 ps;
	umidade_in(4) <= '0';
	WAIT FOR 54000 ps;
	umidade_in(4) <= '1';
WAIT;
END PROCESS t_prcs_umidade_in_4;
-- umidade_in[3]
t_prcs_umidade_in_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		umidade_in(3) <= '0';
		WAIT FOR 36000 ps;
		FOR i IN 1 TO 2
		LOOP
			umidade_in(3) <= '1';
			WAIT FOR 36000 ps;
			umidade_in(3) <= '0';
			WAIT FOR 18000 ps;
		END LOOP;
		umidade_in(3) <= '1';
		WAIT FOR 36000 ps;
		FOR i IN 1 TO 2
		LOOP
			umidade_in(3) <= '0';
			WAIT FOR 36000 ps;
			umidade_in(3) <= '1';
			WAIT FOR 18000 ps;
		END LOOP;
	END LOOP;
	umidade_in(3) <= '0';
	WAIT FOR 36000 ps;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(3) <= '1';
		WAIT FOR 36000 ps;
		umidade_in(3) <= '0';
		WAIT FOR 18000 ps;
	END LOOP;
	umidade_in(3) <= '1';
	WAIT FOR 36000 ps;
	FOR i IN 1 TO 2
	LOOP
		umidade_in(3) <= '0';
		WAIT FOR 36000 ps;
		umidade_in(3) <= '1';
		WAIT FOR 18000 ps;
	END LOOP;
	umidade_in(3) <= '0';
	WAIT FOR 36000 ps;
	umidade_in(3) <= '1';
	WAIT FOR 36000 ps;
	umidade_in(3) <= '0';
	WAIT FOR 18000 ps;
	umidade_in(3) <= '1';
	WAIT FOR 36000 ps;
	umidade_in(3) <= '0';
WAIT;
END PROCESS t_prcs_umidade_in_3;
-- umidade_in[2]
t_prcs_umidade_in_2: PROCESS
BEGIN
	umidade_in(2) <= '0';
	WAIT FOR 18000 ps;
	FOR i IN 1 TO 6
	LOOP
		umidade_in(2) <= '1';
		WAIT FOR 18000 ps;
		umidade_in(2) <= '0';
		WAIT FOR 18000 ps;
		umidade_in(2) <= '1';
		WAIT FOR 36000 ps;
		umidade_in(2) <= '0';
		WAIT FOR 18000 ps;
		umidade_in(2) <= '1';
		WAIT FOR 18000 ps;
		umidade_in(2) <= '0';
		WAIT FOR 36000 ps;
	END LOOP;
	umidade_in(2) <= '1';
	WAIT FOR 18000 ps;
	umidade_in(2) <= '0';
	WAIT FOR 18000 ps;
	umidade_in(2) <= '1';
	WAIT FOR 36000 ps;
	umidade_in(2) <= '0';
	WAIT FOR 18000 ps;
	umidade_in(2) <= '1';
	WAIT FOR 18000 ps;
	umidade_in(2) <= '0';
WAIT;
END PROCESS t_prcs_umidade_in_2;
-- umidade_in[1]
t_prcs_umidade_in_1: PROCESS
BEGIN
	FOR i IN 1 TO 13
	LOOP
		umidade_in(1) <= '0';
		WAIT FOR 36000 ps;
		umidade_in(1) <= '1';
		WAIT FOR 36000 ps;
	END LOOP;
	umidade_in(1) <= '0';
	WAIT FOR 36000 ps;
	umidade_in(1) <= '1';
WAIT;
END PROCESS t_prcs_umidade_in_1;
-- umidade_in[0]
t_prcs_umidade_in_0: PROCESS
BEGIN
	FOR i IN 1 TO 27
	LOOP
		umidade_in(0) <= '0';
		WAIT FOR 18000 ps;
		umidade_in(0) <= '1';
		WAIT FOR 18000 ps;
	END LOOP;
	umidade_in(0) <= '0';
	WAIT FOR 18000 ps;
	umidade_in(0) <= '1';
WAIT;
END PROCESS t_prcs_umidade_in_0;
END umidade_module_arch;
