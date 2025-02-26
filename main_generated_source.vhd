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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
-- CREATED		"Wed Oct  2 15:10:03 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY main_generated_source IS 
	generic (
		CLOCK_FREQUENCY: integer := 50_000_000
	);
	PORT
	(
		clock :  IN  STD_LOGIC;
		Btemp :  IN  STD_LOGIC;
		Balt :  IN  STD_LOGIC;
		Bumid :  IN  STD_LOGIC;
		Btimer :  IN  STD_LOGIC;
		Bplay_pause :  IN  STD_LOGIC;
		Brestart :  IN  STD_LOGIC;
		alt_in :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		temp_in :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		umid_in :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		LED_Alarm :  OUT  STD_LOGIC;
		HEX0 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		LED :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END main_generated_source;

ARCHITECTURE bdf_type OF main_generated_source IS 

COMPONENT system_core
	PORT(timer_neg : IN STD_LOGIC;
		 temp_neg : IN STD_LOGIC;
		 humid_neg : IN STD_LOGIC;
		 alt_neg : IN STD_LOGIC;
		 ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 in_alt : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 in_humid : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 in_temp : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 in_timer : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 out_neg : OUT STD_LOGIC;
		 led_display : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 out_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT umidade_module
	PORT(umidade_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 alarm_output : OUT STD_LOGIC;
		 negative_output : OUT STD_LOGIC;
		 umidade_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT button_process
	PORT(clk : IN STD_LOGIC;
		 btn_crono : IN STD_LOGIC;
		 btn_pausa : IN STD_LOGIC;
		 btn_zerar : IN STD_LOGIC;
		 btn_termo : IN STD_LOGIC;
		 btn_psico : IN STD_LOGIC;
		 btn_altim : IN STD_LOGIC;
		 ctrl : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT display
	PORT(clk : IN STD_LOGIC;
		 flag_neg : IN STD_LOGIC;
		 valor : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 disp_centenas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 disp_dezenas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 disp_milhares : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 disp_unidades : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cronometro
GENERIC (CLOCK_FREQUENCY : INTEGER;
			MAX_SECONDS : INTEGER;
			NUM_BITS : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 b_resetar : IN STD_LOGIC;
		 b_pausar : IN STD_LOGIC;
		 clk1s : OUT STD_LOGIC;
		 display : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT minutes_second_module
	PORT(second_input_value : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 minute_second_output_value : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT central_alarmes
GENERIC (SIZE_CODIGO_ALARME : INTEGER;
			SIZE_VETOR_ALARME : INTEGER
			);
	PORT(temperatura : IN STD_LOGIC;
		 altitude : IN STD_LOGIC;
		 umidade : IN STD_LOGIC;
		 clk1s : IN STD_LOGIC;
		 alarme : OUT STD_LOGIC;
		 codigo_alarme : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altitude_module
	PORT(clk_altitude : IN STD_LOGIC;
		 altitude_input_value : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 alarm_flag : OUT STD_LOGIC;
		 neg_flag : OUT STD_LOGIC;
		 alt_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT temp_module
	PORT(temp_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 neg_flag : OUT STD_LOGIC;
		 alarm_flag : OUT STD_LOGIC;
		 temp_value : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	neg_flag_alt :  STD_LOGIC;
SIGNAL	neg_flag_temp :  STD_LOGIC;
SIGNAL	neg_flag_umidade :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '0';



b2v_inst : system_core
PORT MAP(timer_neg => SYNTHESIZED_WIRE_0,
		 temp_neg => neg_flag_temp,
		 humid_neg => neg_flag_umidade,
		 alt_neg => neg_flag_alt,
		 ctrl => SYNTHESIZED_WIRE_1,
		 in_alt => SYNTHESIZED_WIRE_2,
		 in_humid => SYNTHESIZED_WIRE_3,
		 in_temp => SYNTHESIZED_WIRE_4,
		 in_timer => SYNTHESIZED_WIRE_5,
		 sel => SYNTHESIZED_WIRE_6,
		 out_neg => SYNTHESIZED_WIRE_7,
		 led_display => LED,
		 out_data => SYNTHESIZED_WIRE_8);


b2v_inst10 : umidade_module
PORT MAP(umidade_in => umid_in,
		 alarm_output => SYNTHESIZED_WIRE_12,
		 negative_output => neg_flag_umidade,
		 umidade_out => SYNTHESIZED_WIRE_3);


b2v_inst12 : button_process
PORT MAP(clk => clock,
		 btn_crono => Btimer,
		 btn_pausa => Bplay_pause,
		 btn_zerar => Brestart,
		 btn_termo => Btemp,
		 btn_psico => Bumid,
		 btn_altim => Balt,
		 ctrl => SYNTHESIZED_WIRE_1);


b2v_inst13 : display
PORT MAP(clk => clock,
		 flag_neg => SYNTHESIZED_WIRE_7,
		 valor => SYNTHESIZED_WIRE_8,
		 disp_centenas => HEX2,
		 disp_dezenas => HEX1,
		 disp_milhares => HEX3,
		 disp_unidades => HEX0);


b2v_inst2 : cronometro
GENERIC MAP(CLOCK_FREQUENCY => CLOCK_FREQUENCY,
			MAX_SECONDS => 6000,
			NUM_BITS => 16
			)
PORT MAP(clk => clock,
		 b_resetar => Brestart,
		 b_pausar => Bplay_pause,
		 clk1s => SYNTHESIZED_WIRE_15,
		 display => SYNTHESIZED_WIRE_9);


b2v_inst3 : minutes_second_module
PORT MAP(second_input_value => SYNTHESIZED_WIRE_9,
		 minute_second_output_value => SYNTHESIZED_WIRE_5);


b2v_inst4 : central_alarmes
GENERIC MAP(SIZE_CODIGO_ALARME => 2,
			SIZE_VETOR_ALARME => 3
			)
PORT MAP(temperatura => SYNTHESIZED_WIRE_10,
		 altitude => SYNTHESIZED_WIRE_11,
		 umidade => SYNTHESIZED_WIRE_12,
		 clk1s => SYNTHESIZED_WIRE_15,
		 alarme => LED_Alarm,
		 codigo_alarme => SYNTHESIZED_WIRE_6);



b2v_inst8 : altitude_module
PORT MAP(clk_altitude => SYNTHESIZED_WIRE_15,
		 altitude_input_value => alt_in,
		 alarm_flag => SYNTHESIZED_WIRE_11,
		 neg_flag => neg_flag_alt,
		 alt_value => SYNTHESIZED_WIRE_2);


b2v_inst9 : temp_module
PORT MAP(temp_in => temp_in,
		 neg_flag => neg_flag_temp,
		 alarm_flag => SYNTHESIZED_WIRE_10,
		 temp_value => SYNTHESIZED_WIRE_4);


END bdf_type;