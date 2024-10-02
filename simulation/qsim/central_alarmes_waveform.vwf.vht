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
-- Generated on "10/02/2024 13:41:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          central_alarmes
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY central_alarmes_vhd_vec_tst IS
END central_alarmes_vhd_vec_tst;
ARCHITECTURE central_alarmes_arch OF central_alarmes_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alarme : STD_LOGIC;
SIGNAL altitude : STD_LOGIC;
SIGNAL clk1s : STD_LOGIC;
SIGNAL codigo_alarme : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL temperatura : STD_LOGIC;
SIGNAL umidade : STD_LOGIC;
COMPONENT central_alarmes
	PORT (
	alarme : OUT STD_LOGIC;
	altitude : IN STD_LOGIC;
	clk1s : IN STD_LOGIC;
	codigo_alarme : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	temperatura : IN STD_LOGIC;
	umidade : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : central_alarmes
	PORT MAP (
-- list connections between master ports and signals
	alarme => alarme,
	altitude => altitude,
	clk1s => clk1s,
	codigo_alarme => codigo_alarme,
	temperatura => temperatura,
	umidade => umidade
	);

-- clk1s
t_prcs_clk1s: PROCESS
BEGIN
LOOP
	clk1s <= '0';
	WAIT FOR 5000 ps;
	clk1s <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk1s;

-- temperatura
t_prcs_temperatura: PROCESS
BEGIN
	temperatura <= '0';
	WAIT FOR 140000 ps;
	temperatura <= '1';
	WAIT FOR 90000 ps;
	temperatura <= '0';
	WAIT FOR 330000 ps;
	temperatura <= '1';
	WAIT FOR 10000 ps;
	temperatura <= '0';
	WAIT FOR 70000 ps;
	temperatura <= '1';
	WAIT FOR 20000 ps;
	temperatura <= '0';
	WAIT FOR 80000 ps;
	temperatura <= '1';
	WAIT FOR 20000 ps;
	temperatura <= '0';
WAIT;
END PROCESS t_prcs_temperatura;

-- altitude
t_prcs_altitude: PROCESS
BEGIN
	altitude <= '0';
	WAIT FOR 140000 ps;
	altitude <= '1';
	WAIT FOR 90000 ps;
	altitude <= '0';
	WAIT FOR 60000 ps;
	altitude <= '1';
	WAIT FOR 130000 ps;
	altitude <= '0';
	WAIT FOR 320000 ps;
	altitude <= '1';
	WAIT FOR 20000 ps;
	altitude <= '0';
WAIT;
END PROCESS t_prcs_altitude;

-- umidade
t_prcs_umidade: PROCESS
BEGIN
	umidade <= '0';
	WAIT FOR 140000 ps;
	umidade <= '1';
	WAIT FOR 90000 ps;
	umidade <= '0';
	WAIT FOR 60000 ps;
	umidade <= '1';
	WAIT FOR 130000 ps;
	umidade <= '0';
	WAIT FOR 220000 ps;
	umidade <= '1';
	WAIT FOR 20000 ps;
	umidade <= '0';
	WAIT FOR 80000 ps;
	umidade <= '1';
	WAIT FOR 20000 ps;
	umidade <= '0';
	WAIT FOR 160000 ps;
	umidade <= '1';
	WAIT FOR 10000 ps;
	umidade <= '0';
WAIT;
END PROCESS t_prcs_umidade;
END central_alarmes_arch;
