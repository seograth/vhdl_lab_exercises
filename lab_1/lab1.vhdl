library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LAB1 is
	port (  current_temp	: in std_logic_vector(7 downto 0);
	        desired_temp	: in std_logic_vector(7 downto 0);
        	display_select	: in std_logic;
			temp_display : out std_logic_vector(7 downto 0));
end LAB1;

architecture BEHAV of LAB1 is
begin

process (display_select, current_temp, desired_temp)
begin
	if display_select = '1' then
		temp_display <= current_temp;
	else
		temp_display <= desired_temp;
	end if;

end process;

end BEHAV;
