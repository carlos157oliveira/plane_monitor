library ieee;
use ieee.std_logic_1164.all;

entity main_testbench is

end main_testbench;

architecture main of main_testbench is

	 function converte_7_segmentos_para_string (segmentos: std_logic_vector (6 downto 0)) return string is
    begin
		case segmentos is
			when "0000001" => return "0";
			when "1001111" => return "1";
			when "0010010" => return "2";
			when "0000110" => return "3";
			when "1001100" => return "4";
			when "0100100" => return "5";
			when "0100000" => return "6";
			when "0001111" => return "7";
			when "0000000" => return "8";
			when "0000100" => return "9";
			when "1111110" => return "-";
			when others => return "X";
		end case;
	end function;

	-- Simulando um 1 segundo com 10 ciclos de clock
	constant TEMPO : time := 10 ns;
	-- 2*TEMPO = 1 ciclo de clock
	constant TWO_SECONDS: time := 20*2*TEMPO;

	type interface is record
		Balt, Bumid, Btemp, Btimer, Brestart, Bplay_pause: std_logic;
		alt_in, umid_in, temp_in: std_logic_vector (7 downto 0);
		display: string (1 to 4);
		LED_alarm: std_logic;
	end record interface;
	type array_of_tests is array (natural range <>) of interface;

	signal Balt, Bumid, Btemp, Btimer, Brestart, Bplay_pause: std_logic := '1';
	signal alt_in, umid_in, temp_in: std_logic_vector (7 downto 0) := "00000000";
	signal clk: std_logic := '0';
	signal disp_milhares, disp_centenas, disp_dezenas, disp_unidades: std_logic_vector (6 downto 0);
	signal LED_alarm : std_logic := '0';
	signal beauty_display: string (1 to 7);
	
	signal LED_estado: std_logic_vector (3 downto 0);

	signal parar: std_logic := '0';

	-- testes a cada 2 segundos
	constant test_cases: array_of_tests := (
		-- altitude: 70 FL -> "10010101"
		-- umidade:  14 %  -> "11011011"
		-- temp:		 24ºC  -> "10001010"
		('1','1','1','1','1','1',  "10010101","11011011","10001010",  "0001", '0'), -- começa no cronometro (0)
		('1','1','1','1','1','1',  "10010101","11011011","10001010",  "0003", '0'), -- (1)
		('1','1','1','1','1','1',  "10010101","11011011","10001010",  "0005", '0'), -- (2)
		('0','1','1','1','1','1',  "10010101","11011011","10001010",  "0007", '0'), -- (3)
		('1','1','1','1','1','1',  "10010101","11011011","10001010",  "0070", '0'), -- alterar para altitude (4)
		-- altitude: 58 FL -> "01111101"
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0058", '1'), -- (5)
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0058", '0'), -- (6)
		('1','0','1','1','1','1',  "01111101","11011011","10001010",  "0058", '0'), -- (7)
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0014", '0'), -- alterar para umidade (8)
		-- umidade: 21% -> "11001001"
		-- e tenta alterar o display para altitude mesmo com LED_alarm, o que nao eh permitido
		('0','1','1','1','1','1',  "01111101","11001001","10001010",  "0021", '1'), -- (9)
		('1','1','1','1','1','1',  "01111101","11001001","10001010",  "0021", '1'), -- (10)
		-- volta a umidade para 14% e mostra display selecionado de altitude
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0058", '0'), -- (11)
		('1','1','0','1','1','1',  "01111101","11011011","10001010",  "0058", '0'), -- (12)
		-- altera para temperatura
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0024", '0'), -- (13)
		-- temperatura 40ºC -> "10101010"
		('1','1','1','1','1','1',  "01111101","11011011","10101010",  "0040", '1'), -- (14)
		-- volta temperatura para 25ºC
		('1','1','1','1','1','1',  "01111101","11011011","10001010",  "0024", '0'), -- (15)
		-- disparar os tres LED_alarms
		-- altitude: 114 FL -> "11110100"
		-- umidade:  5 %  -> "11110010"
		-- temp:		 -12ºC  -> "00111100"
		('1','1','1','1','1','1',  "11110100","11110010","00111100",  "-012", '1'), -- (16)
		('1','1','1','1','1','1',  "11110100","11110010","00111100",  "0005", '1'), -- (17)
		('1','1','1','1','1','1',  "11110100","11110010","00111100",  "-012", '1'), -- (18)
		('1','1','1','1','1','1',  "11110100","11110010","00111100",  "0114", '1'), -- (19)
		-- voltar para o normal
		-- altitude: 99 FL -> "11010100"
		-- umidade:  14 %  -> "11011011"
		-- temp:		 24ºC  -> "10001010"
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0014", '1'), -- (20)
		-- resetar cronometro
		('1','1','1','1','0','1',  "11010100","11011011","10001010",  "0024", '0'), -- (21)
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0000", '0'), -- (22)
		-- iniciar cronometro
		('1','1','1','1','0','1',  "11010100","11011011","10001010",  "0000", '0'), -- (23)
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0001", '0'), -- (24)
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0003", '0'), -- (25)
		-- parar cronometro
		('1','1','1','1','1','0',  "11010100","11011011","10001010",  "0005", '0'), -- (26)
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0006", '0'), -- (27)
		('1','1','1','1','1','1',  "11010100","11011011","10001010",  "0006", '0') -- (28)
	);

begin

	UUT: entity work.main_generated_source
		generic map (
			CLOCK_FREQUENCY => 10
		)
		port map (
			Btemp => Btemp, Balt => Balt, Bumid => Bumid, Btimer => Btimer, Brestart => Brestart, Bplay_pause => Bplay_pause,
			alt_in => alt_in, umid_in => umid_in, temp_in => temp_in,
			HEX3 => disp_milhares, HEX2 => disp_centenas, HEX1 => disp_dezenas, HEX0 => disp_unidades,
			LED_alarm => LED_alarm,
			clock => clk,
			LED => LED_estado
		);

	process begin
		wait for TEMPO;
		clk <= not clk;
		if (parar = '1') then wait; end if;
	end process;


	process
		variable display: string (1 to 4);
		variable selecao: string (1 to 2);
	begin
		for i in test_cases'range loop

			Btemp <= test_cases(i).Btemp;
			Balt <= test_cases(i).Balt;
			Bumid <= test_cases(i).Bumid;
			Btimer <= test_cases(i).Btimer;
			Brestart <= test_cases(i).Brestart;
			Bplay_pause <= test_cases(i).Bplay_pause;
			
			alt_in <= test_cases(i).alt_in;
			umid_in <= test_cases(i).umid_in;
			temp_in <= test_cases(i).temp_in;
			
			wait for TWO_SECONDS;
			
			case LED_estado is
            when "0010" =>
                -- temperatura
					 selecao := " C";
            when "1000" =>
                -- altitude
					 selecao := "FL";
            when "0100" =>
                -- umidade
					 selecao := "%U";
            when others =>
                -- hora
					 selecao := " T";
			end case;
			
			display := converte_7_segmentos_para_string(disp_milhares)
						&converte_7_segmentos_para_string(disp_centenas)
						&converte_7_segmentos_para_string(disp_dezenas)
						&converte_7_segmentos_para_string(disp_unidades);
						
			beauty_display <= display & " " & selecao;
			
			assert (
				test_cases(i).display = display
				and test_cases(i).LED_alarm = LED_alarm
			)
				report "Falha com teste "&integer'image(i)
					&" : display="&display
					&" LED_alarm="&std_logic'image(LED_alarm)
					severity error;
				
		end loop;
		parar <= '1';
		wait;
	end process;
end main;