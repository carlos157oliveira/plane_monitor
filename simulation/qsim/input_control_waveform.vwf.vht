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
-- Generated on "10/02/2024 15:01:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          input_control
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY input_control_vhd_vec_tst IS
END input_control_vhd_vec_tst;
ARCHITECTURE input_control_arch OF input_control_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL out_alt : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_temp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_umi : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL switches : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL switches_sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT input_control
	PORT (
	out_alt : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_temp : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	out_umi : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	switches : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	switches_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : input_control
	PORT MAP (
-- list connections between master ports and signals
	out_alt => out_alt,
	out_temp => out_temp,
	out_umi => out_umi,
	switches => switches,
	switches_sel => switches_sel
	);
-- switches[7]
t_prcs_switches_7: PROCESS
BEGIN
	switches(7) <= '1';
	WAIT FOR 200000 ps;
	switches(7) <= '0';
	WAIT FOR 200000 ps;
	switches(7) <= '1';
	WAIT FOR 200000 ps;
	switches(7) <= '0';
	WAIT FOR 100000 ps;
	switches(7) <= '1';
	WAIT FOR 100000 ps;
	switches(7) <= '0';
WAIT;
END PROCESS t_prcs_switches_7;
-- switches[6]
t_prcs_switches_6: PROCESS
BEGIN
	switches(6) <= '0';
	WAIT FOR 200000 ps;
	switches(6) <= '1';
	WAIT FOR 200000 ps;
	switches(6) <= '0';
	WAIT FOR 100000 ps;
	switches(6) <= '1';
	WAIT FOR 100000 ps;
	switches(6) <= '0';
	WAIT FOR 200000 ps;
	switches(6) <= '1';
WAIT;
END PROCESS t_prcs_switches_6;
-- switches[5]
t_prcs_switches_5: PROCESS
BEGIN
	switches(5) <= '1';
	WAIT FOR 200000 ps;
	switches(5) <= '0';
	WAIT FOR 100000 ps;
	switches(5) <= '1';
	WAIT FOR 100000 ps;
	switches(5) <= '0';
WAIT;
END PROCESS t_prcs_switches_5;
-- switches[4]
t_prcs_switches_4: PROCESS
BEGIN
	switches(4) <= '0';
	WAIT FOR 100000 ps;
	switches(4) <= '1';
	WAIT FOR 400000 ps;
	switches(4) <= '0';
	WAIT FOR 100000 ps;
	switches(4) <= '1';
	WAIT FOR 200000 ps;
	switches(4) <= '0';
	WAIT FOR 100000 ps;
	switches(4) <= '1';
WAIT;
END PROCESS t_prcs_switches_4;
-- switches[3]
t_prcs_switches_3: PROCESS
BEGIN
	switches(3) <= '0';
	WAIT FOR 200000 ps;
	switches(3) <= '1';
	WAIT FOR 100000 ps;
	switches(3) <= '0';
	WAIT FOR 500000 ps;
	switches(3) <= '1';
	WAIT FOR 100000 ps;
	switches(3) <= '0';
WAIT;
END PROCESS t_prcs_switches_3;
-- switches[2]
t_prcs_switches_2: PROCESS
BEGIN
	switches(2) <= '1';
	WAIT FOR 200000 ps;
	switches(2) <= '0';
	WAIT FOR 100000 ps;
	switches(2) <= '1';
	WAIT FOR 200000 ps;
	switches(2) <= '0';
	WAIT FOR 200000 ps;
	switches(2) <= '1';
	WAIT FOR 200000 ps;
	switches(2) <= '0';
WAIT;
END PROCESS t_prcs_switches_2;
-- switches[1]
t_prcs_switches_1: PROCESS
BEGIN
	switches(1) <= '0';
	WAIT FOR 100000 ps;
	switches(1) <= '1';
	WAIT FOR 300000 ps;
	switches(1) <= '0';
	WAIT FOR 200000 ps;
	switches(1) <= '1';
	WAIT FOR 100000 ps;
	switches(1) <= '0';
WAIT;
END PROCESS t_prcs_switches_1;
-- switches[0]
t_prcs_switches_0: PROCESS
BEGIN
	switches(0) <= '0';
	WAIT FOR 100000 ps;
	switches(0) <= '1';
	WAIT FOR 100000 ps;
	switches(0) <= '0';
WAIT;
END PROCESS t_prcs_switches_0;
-- switches_sel[2]
t_prcs_switches_sel_2: PROCESS
BEGIN
	switches_sel(2) <= '0';
	WAIT FOR 600000 ps;
	switches_sel(2) <= '1';
	WAIT FOR 300000 ps;
	switches_sel(2) <= '0';
WAIT;
END PROCESS t_prcs_switches_sel_2;
-- switches_sel[1]
t_prcs_switches_sel_1: PROCESS
BEGIN
	switches_sel(1) <= '0';
	WAIT FOR 300000 ps;
	switches_sel(1) <= '1';
	WAIT FOR 300000 ps;
	switches_sel(1) <= '0';
WAIT;
END PROCESS t_prcs_switches_sel_1;
-- switches_sel[0]
t_prcs_switches_sel_0: PROCESS
BEGIN
	switches_sel(0) <= '1';
	WAIT FOR 300000 ps;
	switches_sel(0) <= '0';
WAIT;
END PROCESS t_prcs_switches_sel_0;
END input_control_arch;
