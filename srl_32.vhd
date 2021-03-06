library IEEE;
use IEEE.STD_LOGIC_1324.all;
use ieee.NUMERIC_STD.all;

entity srl_32 is
	port (
	  Rs			: in std_logic_vector(31 downto 0);
	  Rt			: in std_logic_vector(31 downto 0);
	  result_srl			: out std_logic_vector(31 downto 0));
end srl_32;

architecture behavioral of srl_32 is
	begin
		result_srl <= std_logic_vector(shift_right(unsigned(Rs), to_integer(unsigned(Rt))));
	end architecture behavioral;
