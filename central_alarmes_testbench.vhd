library ieee;
use ieee.std_logic_1164.all;

entity testbench_central_alarmes is
end testbench_central_alarmes;

architecture main of testbench_central_alarmes is
	constant TEMPO : time := 10 ns;
	
	constant SIZE_CODIGO_ALARME: integer := 2;
	
	constant CODIGO_OFF: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "00";
	constant CODIGO_TEMPERATURA: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "01";
	constant CODIGO_ALTITUDE: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "10";
	constant CODIGO_UMIDADE: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0) := "11";

	type interface is record
		temperatura, altitude, umidade: std_logic;
		codigo_alarme: std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0);
		alarme: std_logic;
	end record interface;
	type array_of_tests is array (natural range <>) of interface;

	signal clk1s : std_logic := '0';
	signal temperatura, altitude, umidade : std_logic := '0';
	signal codigo_alarme : std_logic_vector (SIZE_CODIGO_ALARME-1 downto 0);
	signal alarme : std_logic;

	signal parar: std_logic := '0';

	constant test_cases: array_of_tests := (
		('0', '0', '0', CODIGO_OFF, '0'),
		('0', '0', '0', CODIGO_OFF, '0'),
		('1', '1', '1', CODIGO_TEMPERATURA, '1'),
		('1', '1', '1', CODIGO_TEMPERATURA, '1'),
		('1', '1', '1', CODIGO_ALTITUDE, '1'),
		('1', '1', '1', CODIGO_ALTITUDE, '1'),
		('1', '1', '1', CODIGO_UMIDADE, '1'),
		('0', '0', '0', CODIGO_UMIDADE, '1'),
		('0', '0', '0', CODIGO_OFF, '0'),
		('0', '0', '0', CODIGO_OFF, '0'),
		('0', '1', '1', CODIGO_ALTITUDE, '1'),
		('0', '0', '0', CODIGO_ALTITUDE, '1'),
		('0', '0', '0', CODIGO_UMIDADE, '1'),
		('0', '0', '0', CODIGO_UMIDADE, '1')
	);

begin

	UUT: entity work.central_alarmes
	port map (
		temperatura, altitude, umidade,
		clk1s,
		codigo_alarme,
		alarme
	);
	
	process begin
		wait for TEMPO;
		clk1s <= not clk1s;
		if (parar = '1') then wait; end if;
	end process;


	process
	begin
		wait for TEMPO;
		for i in test_cases'range loop

			temperatura <= test_cases(i).temperatura;
			altitude <= test_cases(i).altitude;
			umidade <= test_cases(i).umidade;
			
			-- a cada TEMPO o clock inverte seu valor, completando o ciclo em 2*TEMPO
			wait for 2*TEMPO;
			assert (
				test_cases(i).codigo_alarme = codigo_alarme
				and test_cases(i).alarme = alarme
			)
				report "Falha com teste "&integer'image(i)
					&" : codigo_alarme="&std_logic'image(codigo_alarme(0))&std_logic'image(codigo_alarme(1))
					&" alarme="&std_logic'image(alarme)
					severity error;
				
		end loop;
		parar <= '1';
		wait;
	end process;
end main;