library ieee;
use ieee.std_logic_1164.all;

entity input_control is
port(
	switches: in std_logic_vector(7 downto 0);
	switches_sel: in std_logic_vector(2 downto 0);
	out_temp, out_alt, out_umi: out std_logic_vector(7 downto 0)
);
end input_control;

architecture main of input_control is
begin

	process(switches_sel, switches)
	begin
		case switches_sel is
		
			when "001" => 
				out_temp <= switches;
             
			when "010" =>             
            out_umi <= switches;
             
			when "100" => 
            out_alt  <= switches;
				
			when others =>
				null;
				
		end case;
	end process;

end main;