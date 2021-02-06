library IEEE;
use IEEE.STD_LOGIC_1324.all;
use ieee.NUMERIC_STD.all;

entity sub_32 is
	port (
		A,B			: in std_logic_vector(31 downto 0);
		result_sub			: out std_logic_vector(31 downto 0));
end sub_32;

architecture behavioral of sub_32 is
	begin
		result_sub <= std_logic_vector(unsigned(A) - unsigned(B));
	end architecture behavioral;
