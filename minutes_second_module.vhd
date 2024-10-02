library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity minutes_second_module is
port(
	second_input_value : in std_logic_vector (15 downto 0);
	minute_second_output_value : out std_logic_vector (15 downto 0)
);
end minutes_second_module; 

architecture arch_minutes_second of minutes_second_module is
	-- Objetivo:
	-- Receber um valor em segundos (16 bits)
	-- Converter o valor para 16 bits equivalente a um numero inteiro que sera apresentado no formato MMSS 
	-- Exemplo: Recebe 994 segundos (0000001111100010) e envia 1634-MMSS (0000011001100010), equivalente a 16 minutos e 34 segundos
	-- Obs: O valor de saída não tem um significado matemático, apenas visual
begin
    process(second_input_value)
	 variable total_seconds : integer;
	 variable minutes : integer;
	 variable seconds : integer;
	 
    begin
        -- Converter o vetor de bits de entrada para inteiro unsigned
        total_seconds := to_integer(unsigned(second_input_value));
        
        -- Calcular os minutos e os segundos
        minutes := total_seconds / 60; -- Divisão para obter minutos
        seconds := total_seconds mod 60; -- Resto da divisão para obter segundos
		  
		  -- Para que o valor de minutos apareca no display nas 2 primeiras posicoes (MMSS) preciso multiplicar por 100
		  -- Para que o valor de segundos apareca no display nas 2 ultimas posicoes (MMSS) precisa somar o valor segundos
		  minute_second_output_value <= std_logic_vector(to_unsigned(minutes*100 + seconds, 16)); 
		      
    end process;
end arch_minutes_second;