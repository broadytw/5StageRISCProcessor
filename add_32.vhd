library IEEE;
use IEEE.STD_LOGIC_1324.all;
use ieee.NUMERIC_STD.all;

entity add_32 is
	port (
		A,B			: in std_logic_vector(31 downto 0);
		result_add			: out std_logic_vector(31 downto 0));
end add_32;

architecture behavioral of add_32 is
	begin
		result_add <= std_logic_vector(unsigned(A) + unsigned(B));
	end architecture behavioral;
