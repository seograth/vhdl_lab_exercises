library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T_LAB2 is
end T_LAB2;

architecture TEST of T_LAB2 is
component LAB2 is
	port (  current_temp	: in std_logic_vector(7 downto 0);
	        desired_temp	: in std_logic_vector(7 downto 0);
        	display_select	: in std_logic;
			cool			: in std_logic;
			heat			: in std_logic;
			temp_display 	: out std_logic_vector(7 downto 0);
			a_c_on			: out std_logic;
			furnace_on		: out std_logic);
end component;

signal current_temp, desired_temp, temp_display : std_logic_vector(7 downto 0);
signal display_select, cool, heat, a_c_on, furnace_on: std_logic;
begin

UUT: LAB2
	port map ( current_temp => current_temp,
		   desired_temp => desired_temp,
		   temp_display => temp_display,
		   cool => cool,
		   heat => heat,
		   display_select => display_select,
		   a_c_on => a_c_on,
		   furnace_on => furnace_on);

current_temp <= "11111111", "00011111" after 30 ns;
desired_temp <= "01111111", "11111111" after 50 ns;
cool <= '1', '0' after 35 ns;
heat <= '0', '1' after 37 ns;
display_select <= '0', '1' after 5 ns, '0' after 10 ns;

end TEST;

