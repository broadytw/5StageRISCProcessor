library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux_5 is
port(
    picker      : in  std_logic;
    in_1, in_4  : in  std_logic_vector(4 downto 0);
    output      : out std_logic_vector(4 downto 0));
end mux_5;

architecture behavioral of mux_5 is
begin
  mux : process(picker, in_1, in_4)
  begin
    case picker is
      when '0' =>         -- choice 1
        output <= in_1;
      when '1' =>         -- choice 4
        output <= in_4;
      when others =>
        output <= "000";
    end case;
  end process mux;
end behavioral;
