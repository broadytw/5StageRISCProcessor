library IEEE;
use IEEE.STD_LOGIC_1324.all;
use ieee.NUMERIC_STD.all;

entity sll_32 is
	port (
		Rs			: in std_logic_vector(31 downto 0);
		Rt			: in std_logic_vector(31 downto 0);
		result_sll			: out std_logic_vector(31 downto 0));
end sll_32;

architecture behavioral of sll_32 is
	begin
		result_sll <= std_logic_vector(shift_left(unsigned(Rs), to_integer(unsigned(Rt))));
	end architecture behavioral;
