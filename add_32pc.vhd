library IEEE;
use IEEE.STD_LOGIC_1324.all;
use ieee.NUMERIC_STD.all;

entity add_32pc is
	port (
    cnt_in  : in integer;
		A,B			: in std_logic_vector(31 downto 0);
		result_add			: out std_logic_vector(31 downto 0));
end add_32pc;

architecture behavioral of add_32pc is
	begin
    process(cnt_in)
    begin
      IF (cnt_in > 1) THEN
  		  result_add <= std_logic_vector(unsigned(A) + unsigned(B));
      ELSE
        result_add <= x"0000";
      END IF;
    end process;
	end architecture behavioral;
