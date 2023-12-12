library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T_LAB1 is
end T_LAB1;

architecture TEST of T_LAB1 is
component LAB1 is
	port (  current_temp	: in std_logic_vector(7 downto 0);
	        desired_temp	: in std_logic_vector(7 downto 0);
        	display_select	: in std_logic;
			temp_display : out std_logic_vector(7 downto 0));
end component;

signal current_temp, desired_temp, temp_display : std_logic_vector(7 downto 0);
signal display_select : std_logic;
begin

UUT: LAB1
	port map ( current_temp => current_temp,
		   desired_temp => desired_temp,
		   temp_display => temp_display,
		   display_select => display_select);

current_temp <= "10101010";
desired_temp <= "01010101";
display_select <= '0', '1' after 5 ns, '0' after 10 ns;

end TEST;

