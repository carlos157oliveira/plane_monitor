library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity umidade_module is 
	port(
		umidade_in: in std_logic_vector(7 downto 0);
		alarm_output, negative_output: out std_logic;
		umidade_out: out std_logic_vector(7 downto 0):= "00001111"
	);
end umidade_module;

architecture umidade_main of umidade_module is
begin

	process(umidade_in)
		variable umidade_int: integer range 0 to 100 := 0 ;
		variable inverted_umidade_in: std_logic_vector(7 downto 0) := (others => '0');
	begin
		--Invertendo o valor de entrada
		inverted_umidade_in := std_logic_vector(to_unsigned(255, 8) - unsigned(umidade_in));
		
		--Os valores de umidade devem sempre ser de 0 a 100
		umidade_int := (to_integer(unsigned(inverted_umidade_in)) *100) / 255; 
		
		if(umidade_int < 10 or umidade_int > 20) then
			alarm_output <= '1'; -- Acionar alarme
		else
			alarm_output <= '0'; -- Condição sem alarme
		end if;
		
		umidade_out <= std_logic_vector(to_unsigned(umidade_int, umidade_out'length));
	end process;
	
	
	negative_output <= '0'; --Os valores de umidade são sempre positivos
end umidade_main;