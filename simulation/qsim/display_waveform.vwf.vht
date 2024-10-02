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
-- Generated on "10/02/2024 14:15:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          display
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY display_vhd_vec_tst IS
END display_vhd_vec_tst;
ARCHITECTURE display_arch OF display_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL disp_centenas : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp_dezenas : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp_milhares : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp_unidades : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL flag : STD_LOGIC;
SIGNAL valor : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT display
	PORT (
	clk : IN STD_LOGIC;
	disp_centenas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp_dezenas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp_milhares : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp_unidades : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	flag : IN STD_LOGIC;
	valor : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : display
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	disp_centenas => disp_centenas,
	disp_dezenas => disp_dezenas,
	disp_milhares => disp_milhares,
	disp_unidades => disp_unidades,
	flag => flag,
	valor => valor
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
-- valor[15]
t_prcs_valor_15: PROCESS
BEGIN
	valor(15) <= '0';
	WAIT FOR 320000 ps;
	valor(15) <= '1';
	WAIT FOR 80000 ps;
	valor(15) <= '0';
	WAIT FOR 40000 ps;
	valor(15) <= '1';
	WAIT FOR 80000 ps;
	valor(15) <= '0';
	WAIT FOR 120000 ps;
	valor(15) <= '1';
	WAIT FOR 40000 ps;
	valor(15) <= '0';
	WAIT FOR 40000 ps;
	valor(15) <= '1';
	WAIT FOR 40000 ps;
	valor(15) <= '0';
	WAIT FOR 80000 ps;
	valor(15) <= '1';
WAIT;
END PROCESS t_prcs_valor_15;
-- valor[14]
t_prcs_valor_14: PROCESS
BEGIN
	valor(14) <= '0';
	WAIT FOR 320000 ps;
	valor(14) <= '1';
	WAIT FOR 40000 ps;
	valor(14) <= '0';
	WAIT FOR 40000 ps;
	valor(14) <= '1';
	WAIT FOR 40000 ps;
	valor(14) <= '0';
	WAIT FOR 160000 ps;
	valor(14) <= '1';
	WAIT FOR 40000 ps;
	valor(14) <= '0';
	WAIT FOR 80000 ps;
	valor(14) <= '1';
	WAIT FOR 120000 ps;
	valor(14) <= '0';
	WAIT FOR 80000 ps;
	valor(14) <= '1';
	WAIT FOR 40000 ps;
	valor(14) <= '0';
WAIT;
END PROCESS t_prcs_valor_14;
-- valor[13]
t_prcs_valor_13: PROCESS
BEGIN
	valor(13) <= '0';
	WAIT FOR 80000 ps;
	valor(13) <= '1';
	WAIT FOR 40000 ps;
	valor(13) <= '0';
	WAIT FOR 200000 ps;
	valor(13) <= '1';
	WAIT FOR 40000 ps;
	valor(13) <= '0';
	WAIT FOR 80000 ps;
	valor(13) <= '1';
	WAIT FOR 40000 ps;
	valor(13) <= '0';
	WAIT FOR 120000 ps;
	valor(13) <= '1';
	WAIT FOR 40000 ps;
	valor(13) <= '0';
	WAIT FOR 40000 ps;
	valor(13) <= '1';
	WAIT FOR 80000 ps;
	valor(13) <= '0';
	WAIT FOR 40000 ps;
	valor(13) <= '1';
	WAIT FOR 40000 ps;
	valor(13) <= '0';
	WAIT FOR 80000 ps;
	valor(13) <= '1';
WAIT;
END PROCESS t_prcs_valor_13;
-- valor[12]
t_prcs_valor_12: PROCESS
BEGIN
	valor(12) <= '0';
	WAIT FOR 40000 ps;
	valor(12) <= '1';
	WAIT FOR 40000 ps;
	valor(12) <= '0';
	WAIT FOR 80000 ps;
	valor(12) <= '1';
	WAIT FOR 80000 ps;
	valor(12) <= '0';
	WAIT FOR 120000 ps;
	valor(12) <= '1';
	WAIT FOR 40000 ps;
	valor(12) <= '0';
	WAIT FOR 40000 ps;
	valor(12) <= '1';
	WAIT FOR 40000 ps;
	valor(12) <= '0';
	WAIT FOR 200000 ps;
	valor(12) <= '1';
	WAIT FOR 40000 ps;
	valor(12) <= '0';
	WAIT FOR 120000 ps;
	valor(12) <= '1';
WAIT;
END PROCESS t_prcs_valor_12;
-- valor[11]
t_prcs_valor_11: PROCESS
BEGIN
	valor(11) <= '0';
	WAIT FOR 120000 ps;
	valor(11) <= '1';
	WAIT FOR 80000 ps;
	valor(11) <= '0';
	WAIT FOR 120000 ps;
	valor(11) <= '1';
	WAIT FOR 160000 ps;
	valor(11) <= '0';
	WAIT FOR 240000 ps;
	valor(11) <= '1';
	WAIT FOR 80000 ps;
	valor(11) <= '0';
	WAIT FOR 120000 ps;
	valor(11) <= '1';
WAIT;
END PROCESS t_prcs_valor_11;
-- valor[10]
t_prcs_valor_10: PROCESS
BEGIN
	valor(10) <= '1';
	WAIT FOR 80000 ps;
	valor(10) <= '0';
	WAIT FOR 400000 ps;
	valor(10) <= '1';
	WAIT FOR 80000 ps;
	valor(10) <= '0';
	WAIT FOR 40000 ps;
	valor(10) <= '1';
	WAIT FOR 120000 ps;
	valor(10) <= '0';
	WAIT FOR 40000 ps;
	valor(10) <= '1';
	WAIT FOR 120000 ps;
	valor(10) <= '0';
WAIT;
END PROCESS t_prcs_valor_10;
-- valor[9]
t_prcs_valor_9: PROCESS
BEGIN
	valor(9) <= '0';
	WAIT FOR 40000 ps;
	valor(9) <= '1';
	WAIT FOR 80000 ps;
	valor(9) <= '0';
	WAIT FOR 240000 ps;
	valor(9) <= '1';
	WAIT FOR 40000 ps;
	valor(9) <= '0';
	WAIT FOR 40000 ps;
	valor(9) <= '1';
	WAIT FOR 80000 ps;
	valor(9) <= '0';
	WAIT FOR 120000 ps;
	valor(9) <= '1';
	WAIT FOR 80000 ps;
	valor(9) <= '0';
	WAIT FOR 80000 ps;
	valor(9) <= '1';
	WAIT FOR 40000 ps;
	valor(9) <= '0';
	WAIT FOR 40000 ps;
	valor(9) <= '1';
WAIT;
END PROCESS t_prcs_valor_9;
-- valor[8]
t_prcs_valor_8: PROCESS
BEGIN
	valor(8) <= '0';
	WAIT FOR 80000 ps;
	valor(8) <= '1';
	WAIT FOR 40000 ps;
	valor(8) <= '0';
	WAIT FOR 80000 ps;
	valor(8) <= '1';
	WAIT FOR 80000 ps;
	valor(8) <= '0';
	WAIT FOR 40000 ps;
	valor(8) <= '1';
	WAIT FOR 40000 ps;
	valor(8) <= '0';
	WAIT FOR 240000 ps;
	valor(8) <= '1';
	WAIT FOR 40000 ps;
	valor(8) <= '0';
	WAIT FOR 40000 ps;
	valor(8) <= '1';
	WAIT FOR 40000 ps;
	valor(8) <= '0';
	WAIT FOR 200000 ps;
	valor(8) <= '1';
	WAIT FOR 40000 ps;
	valor(8) <= '0';
WAIT;
END PROCESS t_prcs_valor_8;
-- valor[7]
t_prcs_valor_7: PROCESS
BEGIN
	valor(7) <= '1';
	WAIT FOR 40000 ps;
	valor(7) <= '0';
	WAIT FOR 120000 ps;
	valor(7) <= '1';
	WAIT FOR 40000 ps;
	valor(7) <= '0';
	WAIT FOR 40000 ps;
	valor(7) <= '1';
	WAIT FOR 40000 ps;
	valor(7) <= '0';
	WAIT FOR 80000 ps;
	valor(7) <= '1';
	WAIT FOR 40000 ps;
	valor(7) <= '0';
	WAIT FOR 120000 ps;
	valor(7) <= '1';
	WAIT FOR 120000 ps;
	valor(7) <= '0';
	WAIT FOR 40000 ps;
	valor(7) <= '1';
	WAIT FOR 40000 ps;
	valor(7) <= '0';
	WAIT FOR 200000 ps;
	valor(7) <= '1';
WAIT;
END PROCESS t_prcs_valor_7;
-- valor[6]
t_prcs_valor_6: PROCESS
BEGIN
	valor(6) <= '1';
	WAIT FOR 40000 ps;
	valor(6) <= '0';
	WAIT FOR 280000 ps;
	valor(6) <= '1';
	WAIT FOR 40000 ps;
	valor(6) <= '0';
	WAIT FOR 80000 ps;
	valor(6) <= '1';
	WAIT FOR 40000 ps;
	valor(6) <= '0';
	WAIT FOR 80000 ps;
	valor(6) <= '1';
	WAIT FOR 40000 ps;
	valor(6) <= '0';
	WAIT FOR 240000 ps;
	valor(6) <= '1';
	WAIT FOR 120000 ps;
	valor(6) <= '0';
WAIT;
END PROCESS t_prcs_valor_6;
-- valor[5]
t_prcs_valor_5: PROCESS
BEGIN
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 80000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 80000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 80000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 40000 ps;
	valor(5) <= '0';
	WAIT FOR 40000 ps;
	valor(5) <= '1';
	WAIT FOR 120000 ps;
	valor(5) <= '0';
WAIT;
END PROCESS t_prcs_valor_5;
-- valor[4]
t_prcs_valor_4: PROCESS
BEGIN
	valor(4) <= '1';
	WAIT FOR 40000 ps;
	valor(4) <= '0';
	WAIT FOR 200000 ps;
	valor(4) <= '1';
	WAIT FOR 40000 ps;
	valor(4) <= '0';
	WAIT FOR 40000 ps;
	valor(4) <= '1';
	WAIT FOR 160000 ps;
	valor(4) <= '0';
	WAIT FOR 40000 ps;
	valor(4) <= '1';
	WAIT FOR 40000 ps;
	valor(4) <= '0';
	WAIT FOR 40000 ps;
	valor(4) <= '1';
	WAIT FOR 120000 ps;
	valor(4) <= '0';
	WAIT FOR 80000 ps;
	valor(4) <= '1';
	WAIT FOR 40000 ps;
	valor(4) <= '0';
	WAIT FOR 40000 ps;
	valor(4) <= '1';
	WAIT FOR 40000 ps;
	valor(4) <= '0';
	WAIT FOR 40000 ps;
	valor(4) <= '1';
WAIT;
END PROCESS t_prcs_valor_4;
-- valor[3]
t_prcs_valor_3: PROCESS
BEGIN
	valor(3) <= '0';
	WAIT FOR 40000 ps;
	valor(3) <= '1';
	WAIT FOR 160000 ps;
	valor(3) <= '0';
	WAIT FOR 160000 ps;
	valor(3) <= '1';
	WAIT FOR 40000 ps;
	valor(3) <= '0';
	WAIT FOR 40000 ps;
	valor(3) <= '1';
	WAIT FOR 80000 ps;
	valor(3) <= '0';
	WAIT FOR 160000 ps;
	valor(3) <= '1';
	WAIT FOR 40000 ps;
	valor(3) <= '0';
	WAIT FOR 40000 ps;
	valor(3) <= '1';
	WAIT FOR 80000 ps;
	valor(3) <= '0';
	WAIT FOR 80000 ps;
	valor(3) <= '1';
WAIT;
END PROCESS t_prcs_valor_3;
-- valor[2]
t_prcs_valor_2: PROCESS
BEGIN
	valor(2) <= '0';
	WAIT FOR 40000 ps;
	valor(2) <= '1';
	WAIT FOR 40000 ps;
	valor(2) <= '0';
	WAIT FOR 40000 ps;
	valor(2) <= '1';
	WAIT FOR 120000 ps;
	valor(2) <= '0';
	WAIT FOR 160000 ps;
	valor(2) <= '1';
	WAIT FOR 40000 ps;
	valor(2) <= '0';
	WAIT FOR 160000 ps;
	valor(2) <= '1';
	WAIT FOR 40000 ps;
	valor(2) <= '0';
	WAIT FOR 200000 ps;
	valor(2) <= '1';
	WAIT FOR 40000 ps;
	valor(2) <= '0';
WAIT;
END PROCESS t_prcs_valor_2;
-- valor[1]
t_prcs_valor_1: PROCESS
BEGIN
	valor(1) <= '1';
	WAIT FOR 80000 ps;
	valor(1) <= '0';
	WAIT FOR 200000 ps;
	valor(1) <= '1';
	WAIT FOR 40000 ps;
	valor(1) <= '0';
	WAIT FOR 40000 ps;
	valor(1) <= '1';
	WAIT FOR 80000 ps;
	valor(1) <= '0';
	WAIT FOR 40000 ps;
	valor(1) <= '1';
	WAIT FOR 120000 ps;
	valor(1) <= '0';
	WAIT FOR 80000 ps;
	valor(1) <= '1';
	WAIT FOR 240000 ps;
	valor(1) <= '0';
	WAIT FOR 40000 ps;
	valor(1) <= '1';
WAIT;
END PROCESS t_prcs_valor_1;
-- valor[0]
t_prcs_valor_0: PROCESS
BEGIN
	valor(0) <= '0';
	WAIT FOR 80000 ps;
	valor(0) <= '1';
	WAIT FOR 40000 ps;
	valor(0) <= '0';
	WAIT FOR 40000 ps;
	valor(0) <= '1';
	WAIT FOR 40000 ps;
	valor(0) <= '0';
	WAIT FOR 120000 ps;
	valor(0) <= '1';
	WAIT FOR 40000 ps;
	valor(0) <= '0';
	WAIT FOR 160000 ps;
	valor(0) <= '1';
	WAIT FOR 160000 ps;
	valor(0) <= '0';
	WAIT FOR 40000 ps;
	valor(0) <= '1';
	WAIT FOR 120000 ps;
	valor(0) <= '0';
	WAIT FOR 80000 ps;
	valor(0) <= '1';
WAIT;
END PROCESS t_prcs_valor_0;
END display_arch;
