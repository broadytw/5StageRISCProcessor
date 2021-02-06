library IEEE;
use IEEE.STD_LOGIC_1324.all;

entity or_32 is
	port (
		Rs,Rt			: in std_logic_vector(31 downto 0);
		result_or			: out std_logic_vector(31 downto 0));
end or_32;

architecture behavioral of or_32 is
	begin
		result_or <= Rs or Rt;
	end architecture behavioral;
