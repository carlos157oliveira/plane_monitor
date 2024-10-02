library ieee;
use ieee.std_logic_1164.all;

entity central_alarmes is
	generic (
		SIZE_CODIGO_ALARME: integer := 2;
		SIZE_VETOR_ALARME: integer := 3
	);
	port(
		temperatura, altitude, umidade: in std_logic;
		clk1s: in std_logic;
		codigo_alarme: out std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "00";
		alarme: out std_logic := '0'
	);
end central_alarmes;

architecture main of central_alarmes is
	constant CODIGO_OFF: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "00";
	constant CODIGO_TEMPERATURA: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "01";
	constant CODIGO_ALTITUDE: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "10";
	constant CODIGO_UMIDADE: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "11";
	
	constant temperatura_idx: integer := 0;
	constant altitude_idx: integer := 1;
	constant umidade_idx: integer := 2;

	type ALARMES is array (0 to SIZE_VETOR_ALARME-1) of std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0);
	constant alarmes_array: ALARMES := (CODIGO_TEMPERATURA, CODIGO_ALTITUDE, CODIGO_UMIDADE);
	
begin
	process (clk1s, temperatura, altitude, umidade)
		variable seconds_count: integer range 0 to 1;
		variable vetor_alarme: std_logic_vector (0 to SIZE_VETOR_ALARME-1) := "000";
		variable idx: integer range 0 to SIZE_VETOR_ALARME-1 := 0;
	begin
		
		if rising_edge(clk1s) then
			if vetor_alarme = "000" then
				vetor_alarme := temperatura & altitude & umidade;
			end if;
			if vetor_alarme = "000" then
				alarme <= '0';
				codigo_alarme <= CODIGO_OFF;
			else
				alarme <= '1';
				for i in vetor_alarme'range loop
					if vetor_alarme(i) = '1' then
						idx := i;
						exit;
					end if;
				end loop;

				codigo_alarme <= alarmes_array(idx);

				if seconds_count = 1 then
					vetor_alarme(idx) := '0';
					seconds_count := 0;
				else
					seconds_count := seconds_count + 1;
				end if;
			end if;
		end if;
	end process;
end main;