library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity temp_module is
port(
	temp_in: in std_logic_vector(7 downto 0);
	neg_flag: out std_logic := '0';
	alarm_flag: out std_logic := '0';
	temp_value: out std_logic_vector(7 downto 0)
);
end temp_module;

architecture main of temp_module is
	signal initialized : boolean := true;
begin

	process(temp_in)
		variable temp : integer := 0;
		variable converted_val : integer := 0;
	begin
		-- Converte input_val de std_logic_vector para inteiro
		if initialized then
			temp := 128;
			initialized <= false;
		else
			temp := to_integer(unsigned(temp_in));
		end if;

		-- Aplicando a fórmula para converter o valor de entrada para o range -40 a 80
		converted_val := (temp * 120) / 255 - 40;

		-- Checa condição de alarme
		if (converted_val < 0) or (converted_val > 30) then
			alarm_flag <= '1';
		else
			alarm_flag <= '0';
		end if;

		-- Verifica se o valor é negativo
		if converted_val < 0 then
			neg_flag <= '1'; -- Sinaliza que é negativo
			 -- Converte para positivo
			temp_value <= std_logic_vector(to_unsigned(abs(converted_val), 8));
		else
			neg_flag <= '0'; -- Sinaliza que é positivo
			-- Mantém o valor positivo
			temp_value <= std_logic_vector(to_unsigned(converted_val, 8));
		end if;
	end process;

end main;