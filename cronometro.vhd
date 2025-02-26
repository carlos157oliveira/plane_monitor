library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; -- Permite a operação em std_logic
use ieee.numeric_std.all;

entity cronometro is
generic(
	CLOCK_FREQUENCY: integer := 50_000_000;
--	CLOCK_FREQUENCY: integer := 10;
	MAX_SECONDS: integer := 5999;
	NUM_BITS: integer := 16
);
port(
	clk : in std_logic;
	b_resetar, b_pausar : in std_logic;
	display : out std_logic_vector (NUM_BITS-1 downto 0) := ( others => '0' );
	clk1s: buffer std_logic := '0'
);
end cronometro;

architecture main of cronometro is
	
	--- Maquina de estados, primeiro estado enumerado eh inicial, sem importar atribuicao!!!
	type STATES is (contando, resetado, pausado);
	signal state : STATES := contando;
	
	-- Estado dos botoes
	signal anterior : std_logic_vector (1 downto 0) := "11";
	signal p_resetar : boolean := False;
	signal p_pausar : boolean := False;

begin
	
	-- Tratar dos botoes
	process (clk) begin
		if (rising_edge(clk)) then
			-- Se o anterior foi 0 e o novo for 1
			-- Quer dizer que estava apertado e soltou
			p_resetar <= anterior(1) = '0' and b_resetar = '1';
			p_pausar  <= anterior(0) = '0' and b_pausar = '1';
			
			anterior <= b_resetar & b_pausar;
		end if;
	end process;

	-- Tratar de maquina de estados
	process (clk) begin
		if (rising_edge(clk)) then
			case state is
				when resetado => 
					if (p_resetar or p_pausar) then state <= contando;
					end if;
				when contando =>
					if (p_resetar) then state <= resetado;
					elsif (p_pausar) then state <= pausado;
					end if;
				when pausado =>
					if (p_resetar) then state <= resetado;
					elsif (p_pausar) then state <= contando;
					end if;
			end case;
		end if;
	end process;
	
	-- Tratar da saida
	process (clk)
		variable clock_counter: integer range 0 to CLOCK_FREQUENCY / 2 := 0;

		variable segundos : std_logic_vector (NUM_BITS-1 downto 0) := ( others => '0' );
		variable counter : integer := 0; -- Sem tamanho para ter certeza que cabe
	begin
		if (rising_edge(clk)) then
			clock_counter := clock_counter + 1;
			if (clock_counter = CLOCK_FREQUENCY / 2) then
				clock_counter := 0;
				clk1s <= not clk1s;
			end if;
			-- Contando segundos;
			-- 5999 segundos equivale a 99 minutos e 59 segundos ("0001011101101111"" em binario)
			if (state = contando or state = pausado) and segundos /= std_logic_vector(to_unsigned(MAX_SECONDS, NUM_BITS)) then 
				counter := counter + 1;
				if (counter = CLOCK_FREQUENCY) then 
					counter := 0;
					segundos := segundos + 1;
				end if;
			end if;
			
			-- Definindo saidas
			case state is
				when resetado =>
					segundos := ( others => '0' );
					display <= ( others => '0' );
				when contando =>
					display <= segundos;
				when pausado =>
					-- deixar display inerte
			end case;
		end if;
	end process;

end main;
