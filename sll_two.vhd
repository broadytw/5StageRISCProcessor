library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.NUMERIC_STD.all;

entity sll_two is
	port (
		imm			: in std_logic_vector(31 downto 0);
		imm_shifted			: out std_logic_vector(31 downto 0));
end sll_two;

architecture behavioral of sll_two is
	begin
		imm_shifted <= std_logic_vector(shift_left(unsigned(imm), 2));
	end architecture behavioral;
