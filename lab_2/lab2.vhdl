library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LAB2 is
	port (  current_temp	: in std_logic_vector(7 downto 0);
	        desired_temp	: in std_logic_vector(7 downto 0);
        	display_select	: in std_logic;
			cool			: in std_logic;
			heat			: in std_logic;
			temp_display 	: out std_logic_vector(7 downto 0);
			a_c_on			: out std_logic;
			furnace_on		: out std_logic);
end LAB2;

architecture BEHAV of LAB2 is
begin

process (display_select, current_temp, desired_temp, cool, heat)
begin
	if display_select = '1' then
		temp_display <= current_temp;
	else
		temp_display <= desired_temp;
	end if;

	temp_display <= current_temp when display_select = '1' else
					desired_temp when display_select = '0';
	
	a_c_on <= '1' when cool = '1' and current_temp > desired_temp else
			  '0' when cool = '0' or current_temp < desired_temp;

	furnace_on <= '1' when heat = '1' and current_temp < desired_temp else 
				'0' when heat = '0' or current_temp > desired_temp;

end process;

end BEHAV;
