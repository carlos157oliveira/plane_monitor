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
-- Generated on "10/02/2024 14:10:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cronometro
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cronometro_vhd_vec_tst IS
END cronometro_vhd_vec_tst;
ARCHITECTURE cronometro_arch OF cronometro_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_pausar : STD_LOGIC;
SIGNAL b_resetar : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL clk1s : STD_LOGIC;
SIGNAL display : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT cronometro
	PORT (
	b_pausar : IN STD_LOGIC;
	b_resetar : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	clk1s : BUFFER STD_LOGIC;
	display : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cronometro
	PORT MAP (
-- list connections between master ports and signals
	b_pausar => b_pausar,
	b_resetar => b_resetar,
	clk => clk,
	clk1s => clk1s,
	display => display
	);

-- b_pausar
t_prcs_b_pausar: PROCESS
BEGIN
	b_pausar <= '1';
WAIT;
END PROCESS t_prcs_b_pausar;

-- b_resetar
t_prcs_b_resetar: PROCESS
BEGIN
	b_resetar <= '1';
WAIT;
END PROCESS t_prcs_b_resetar;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END cronometro_arch;
