library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity altitude_module is
port(
	altitude_input_value : in std_logic_vector (7 downto 0);
	alt_value : out std_logic_vector (7 downto 0) := "01011101";
	clk_altitude : in std_logic; -- clock de 1 segundo para fazer leitura da altitude
	-- altitude_output_value = | 1 bit de alarme | 1 bit de sinal | 8 bits de dados |
	alarm_flag : out std_logic;
	neg_flag : out std_logic
);
end altitude_module;

architecture arch_altitude of altitude_module is
	signal previous_altitude : std_logic_vector(7 downto 0) := (others => '0');  -- Armazena a altitude anterior
	signal diff_alarm : std_logic := '0'; 
	signal value_alarm : std_logic := '0'; 
begin
	-- Esse bloco tem 3 objetivos
	-- **Objetivo 1**: Converter o valor da altitude (8 bits de dados)
	-- **Objetivo 2**: Definir se o alarme será acionado (1 bit de alarme)
	-- **Objetivo 3**: Atribuir o bit de sinal '0'(1 bit de sinal)
	-- Altitude_output_value = | 1 bit de alarme | 1 bit de sinal | 8 bits de dados |
	
	process(clk_altitude, altitude_input_value)
		variable altitude_int : integer := 0;
		variable result : integer := 0;
		variable previous_altitude_int : integer := 0;
		variable current_altitude_int : integer := 0;
		variable diff : integer := 0;
	begin
		
		-- **Objetivo 1**: Converter o valor da altitude
		-- Converter altitude_input_value para inteiro
		altitude_int := to_integer(unsigned(altitude_input_value));
		
		-- Calcular Altitude(8 bits de dados) = (altitude_input_value) * 120 / 255
		result := (altitude_int * 120) / 255;
		
		-- Converter o resultado de volta para std_logic_vector (8 bits) e atribuir aos bits de dados
		alt_value(7 downto 0) <= std_logic_vector(to_unsigned(result, 8));
		
		-- **Objetivo 3**: Atribuir o bit de sinal (sempre 0, pois não há valores negativos)
		neg_flag <= '0';
		
		-- **Objetivo 2**: Definir se o alarme será acionado
		-- Condição 1 (C1). Se altitude for maior que 100FL
		if (result > 100) then 
			value_alarm <= '1';  -- Alarme on
		else
			value_alarm <= '0';  -- Alarme off
		end if;
			
		if rising_edge(clk_altitude) then	
			-- Comparar valor atual com o valor lido 1 segundo atrás para verificar a variação
			current_altitude_int := altitude_int;  -- Altitude atual (já convertida)
			previous_altitude_int := to_integer(unsigned(previous_altitude));  -- Altitude anterior
			diff := ((abs(current_altitude_int - previous_altitude_int))* 120) / 255;  -- Diferença entre valores consecutivos
			
			-- Condição 2 (C2) : Se a variação da altitude for maior ou igual a 3FL
			if ((previous_altitude_int > current_altitude_int) and (diff >= 3)) then 
				diff_alarm <= '1';  -- Alarme on
			else
				diff_alarm <= '0';
			end if;	
			-- Atualizar o valor anterior com o valor atual da altitude
			previous_altitude <= altitude_input_value;
		end if;
		
		alarm_flag <= diff_alarm or value_alarm;
		
	end process;
end arch_altitude;