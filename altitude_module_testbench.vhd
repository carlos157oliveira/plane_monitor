library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity testbench_altitude is
end testbench_altitude;

architecture main of testbench_altitude is
	signal altitude_input_value : std_logic_vector (7 downto 0);
	signal alt_value  : std_logic_vector (7 downto 0);
	signal clk_altitude : std_logic := '0';
	signal alarm_flag : std_logic;
	signal neg_flag : std_logic;
	-- altitude_output_value = | 1 bit de alarme | 1 bit de sinal | 8 bits de dados |
	
	signal parar : std_logic := '0';
	constant tempo : time := 500 ms;
begin
	
	UUT: entity work.altitude_module
	port map(altitude_input_value, alt_value, clk_altitude, alarm_flag, neg_flag);
	
	-- Valores de teste
	altitude_input_value <= "11010111",    					-- valor inicial '101' até 2s
									"11010000" after 2000 ms,   	-- muda para '97' após 2s
									"11001001" after 3000 ms,     -- muda para '94' após 3s
									"11000101" after 5000 ms;     -- muda para '92' após 5s
									
	
	-- Controla o sinal 'parar' para interromper o clock após 6 segundos
	parar <= '0', '1' after 7000 ms;

	-- Clock oscilando até o sinal 'parar' ser ativado
	clk_altitude <= not clk_altitude after tempo when (parar = '0') else '0';

end main;