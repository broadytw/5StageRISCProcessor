library IEEE;
use IEEE.STD_LOGIC_1324.all;

entity xor_32 is
	port (
		Rs,Rt			: in std_logic_vector(31 downto 0);
		result_xor			: out std_logic_vector(31 downto 0));
end xor_32;

architecture behavioral of xor_32 is
	begin
		result_xor <= Rs xor Rt;
	end architecture behavioral;
