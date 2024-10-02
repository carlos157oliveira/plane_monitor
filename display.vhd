library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display is
    Port (
        clk       : in std_logic;
        valor     : in std_logic_vector(15 downto 0);
		  flag_neg      : in std_logic;  -- flag da exibição
        disp_milhares : out std_logic_vector(6 downto 0);
        disp_centenas : out std_logic_vector(6 downto 0);
        disp_dezenas  : out std_logic_vector(6 downto 0);
        disp_unidades : out std_logic_vector(6 downto 0)
    );
end display;

architecture arch_display_test of display is

    signal milhares : integer range 0 to 9 := 0;
    signal centenas : integer range 0 to 9 := 0;
    signal dezenas  : integer range 0 to 9 := 0;
    signal unidades : integer range 0 to 9 := 0;

    function decodifica_7_segmentos(digito : integer) return std_logic_vector is
    begin
        case digito is
            when 0 => return "0000001";  -- 0
            when 1 => return "1001111";  -- 1
            when 2 => return "0010010";  -- 2
            when 3 => return "0000110";  -- 3
            when 4 => return "1001100";  -- 4
            when 5 => return "0100100";  -- 5
            when 6 => return "0100000";  -- 6
            when 7 => return "0001111";  -- 7
            when 8 => return "0000000";  -- 8
            when 9 => return "0000100";  -- 9
            when others => return "1111111";
        end case;
    end function;

begin
    process(clk)
    begin
        if rising_edge(clk) then
           milhares <= to_integer(unsigned(valor)) / 1000;
           centenas <= (to_integer(unsigned(valor)) mod 1000) / 100;
           dezenas  <= (to_integer(unsigned(valor)) mod 100) / 10;
           unidades <= to_integer(unsigned(valor)) mod 10;
        end if;
    end process;

    process(flag_neg)
    begin
        if flag_neg = '1' then
            disp_milhares <= "1111110";  -- sinal de negativo "-" se flag for 1
        else
            disp_milhares <= decodifica_7_segmentos(milhares);
        end if;
    end process;

    disp_centenas <= decodifica_7_segmentos(centenas);
    disp_dezenas  <= decodifica_7_segmentos(dezenas);
    disp_unidades <= decodifica_7_segmentos(unidades);

end arch_display_test;