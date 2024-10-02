library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buttons_test is 
	port(
		temp: in std_logic;
		alt: in std_logic;
		umid: in std_logic;
		timer: in std_logic;
		ctrl: out std_logic_vector(3 downto 0)
	);
end buttons_test;

architecture main of buttons_test is
begin
	process(temp, alt, umid, timer)
	begin

		if((temp = '1') and (alt = '1') and (umid = '1') and (timer = '1')) then
			ctrl <= "0000";
		elsif((timer = '0')) then
			ctrl <= "0001";
		elsif((temp = '0')) then
			ctrl <= "0010";
		elsif((umid = '0')) then
			ctrl <= "0100";
		elsif((alt = '0')) then
			ctrl <= "1000";
		else
			ctrl <= "0000";
		end if;
	end process;

end main;