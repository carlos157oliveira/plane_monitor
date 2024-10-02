library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_cronometro is
end testbench_cronometro;

architecture main of testbench_cronometro is
	constant TEMPO : time := 10 ns;
	constant NUM_BITS: integer := 16;

	type interface is record
		b_resetar, b_pausar : std_logic;
		display : integer;
	end record interface;
	type array_of_tests is array (natural range <>) of interface;

	signal clk : std_logic := '0';
	signal b_resetar, b_pausar : std_logic;
	signal display : std_logic_vector (NUM_BITS-1 downto 0);
	signal clk1s: std_logic;

	signal parar: std_logic := '0';
	
	constant TEST_CLOCK_FREQUENCY: integer := 6;

	constant test_cases: array_of_tests := (
		('1', '1', 1),
		('1', '1', 2),
		('1', '1', 3),
		('1', '1', 4),
		('1', '1', 5),
		('1', '1', 6),
		('1', '0', 7),
		('1', '1', 7),
		('1', '1', 7),
		('1', '1', 7),
		('1', '1', 7),
		('1', '0', 7),
		('1', '1', 13),
		('1', '1', 14),
		('1', '1', 15),
		('0', '1', 16),
		('1', '1', 0),
		('1', '1', 0),
		('1', '1', 0),
		('0', '1', 0),
		('1', '1', 1),
		('1', '1', 2),
		('1', '1', 3)
	);

begin

	UUT: entity work.cronometro
	generic map (CLOCK_FREQUENCY => TEST_CLOCK_FREQUENCY)
	port map (
		clk,
		b_resetar, b_pausar,
		display,
		clk1s
	);
	
	process begin
		wait for TEMPO;
		clk <= not clk;
		if (parar = '1') then wait; end if;
	end process;
	
	process begin
		wait for TEST_CLOCK_FREQUENCY*TEMPO;
		if (parar = '1') then wait; end if;
		assert clk1s = '1'
			report "Falha no clock de 1s(1)" severity error;
		
		wait for TEST_CLOCK_FREQUENCY*TEMPO;
		if (parar = '1') then wait; end if;
		assert clk1s = '0'
			report "Falha no clock de 1s(0)" severity error;
		
	end process;

	process
		variable integer_display: integer;
	begin
		for i in test_cases'range loop

			b_resetar <= test_cases(i).b_resetar;
			b_pausar <= test_cases(i).b_pausar;

			-- a cada TEMPO o clock inverte seu valor, completando o ciclo em 2*TEMPO
			wait for TEST_CLOCK_FREQUENCY*2*TEMPO;
			integer_display := to_integer(unsigned(display));
			assert (test_cases(i).display = integer_display)
				report "Falha com teste "&integer'image(i)
					&" : display="&integer'image(integer_display)
					&" clk1s="&std_logic'image(clk1s)
					severity error;
				
		end loop;
		parar <= '1';
		wait;
	end process;
end main;