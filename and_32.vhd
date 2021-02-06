library IEEE;
use IEEE.STD_LOGIC_1324.all;

entity and_32 is
	port (
		Rs,Rt			: in std_logic_vector(31 downto 0);
		result_and			: out std_logic_vector(31 downto 0));
end and_32;

architecture behavioral of and_32 is
	begin
		result_and <= Rs and Rt;
	end architecture behavioral;
