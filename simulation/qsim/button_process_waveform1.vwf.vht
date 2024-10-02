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
-- Generated on "10/02/2024 13:56:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          button_process
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY button_process_vhd_vec_tst IS
END button_process_vhd_vec_tst;
ARCHITECTURE button_process_arch OF button_process_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL btn_altim : STD_LOGIC;
SIGNAL btn_crono : STD_LOGIC;
SIGNAL btn_pausa : STD_LOGIC;
SIGNAL btn_psico : STD_LOGIC;
SIGNAL btn_termo : STD_LOGIC;
SIGNAL btn_zerar : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL ctrl : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT button_process
	PORT (
	btn_altim : IN STD_LOGIC;
	btn_crono : IN STD_LOGIC;
	btn_pausa : IN STD_LOGIC;
	btn_psico : IN STD_LOGIC;
	btn_termo : IN STD_LOGIC;
	btn_zerar : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	ctrl : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : button_process
	PORT MAP (
-- list connections between master ports and signals
	btn_altim => btn_altim,
	btn_crono => btn_crono,
	btn_pausa => btn_pausa,
	btn_psico => btn_psico,
	btn_termo => btn_termo,
	btn_zerar => btn_zerar,
	clk => clk,
	ctrl => ctrl
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- btn_crono
t_prcs_btn_crono: PROCESS
BEGIN
	btn_crono <= '1';
	WAIT FOR 60000 ps;
	btn_crono <= '0';
	WAIT FOR 40000 ps;
	btn_crono <= '1';
WAIT;
END PROCESS t_prcs_btn_crono;

-- btn_pausa
t_prcs_btn_pausa: PROCESS
BEGIN
	btn_pausa <= '1';
	WAIT FOR 280000 ps;
	btn_pausa <= '0';
	WAIT FOR 40000 ps;
	btn_pausa <= '1';
WAIT;
END PROCESS t_prcs_btn_pausa;

-- btn_zerar
t_prcs_btn_zerar: PROCESS
BEGIN
	btn_zerar <= '1';
	WAIT FOR 560000 ps;
	btn_zerar <= '0';
	WAIT FOR 20000 ps;
	btn_zerar <= '1';
WAIT;
END PROCESS t_prcs_btn_zerar;

-- btn_termo
t_prcs_btn_termo: PROCESS
BEGIN
	btn_termo <= '1';
	WAIT FOR 160000 ps;
	btn_termo <= '0';
	WAIT FOR 40000 ps;
	btn_termo <= '1';
WAIT;
END PROCESS t_prcs_btn_termo;

-- btn_psico
t_prcs_btn_psico: PROCESS
BEGIN
	btn_psico <= '1';
	WAIT FOR 410000 ps;
	btn_psico <= '0';
	WAIT FOR 50000 ps;
	btn_psico <= '1';
WAIT;
END PROCESS t_prcs_btn_psico;

-- btn_altim
t_prcs_btn_altim: PROCESS
BEGIN
	btn_altim <= '1';
	WAIT FOR 650000 ps;
	btn_altim <= '0';
	WAIT FOR 50000 ps;
	btn_altim <= '1';
WAIT;
END PROCESS t_prcs_btn_altim;
END button_process_arch;
