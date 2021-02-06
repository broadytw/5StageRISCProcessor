library IEEE;
use IEEE.STD_LOGIC_1324.all;

entity not_32 is
	port (
		A			: in std_logic_vector(31 downto 0);
		result_not			: out std_logic_vector(31 downto 0));
end not_32;

architecture behavioral of not_32 is
	begin
		result_not <= not A;
	end architecture behavioral;
