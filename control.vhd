library ieee;
use ieee.std_logic_1164.all;

entity control is
	port(
				OPcode        : in std_logic_vector(4 downto 0); -- OPcode from instruction[15 to 11]
        ALUOp         : out std_logic_vector(3 downto 0);--control signals
		    jump,branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,RegDst	: out std_logic); --control signals
end control;

architecture behavioral of control is

  begin
  controls : process(OPcode)
  begin
    case OPcode is --case statement for instruction code
      when "00000" => --add
        ALUOp <= "0000";
        jump <= '0'; --goes high when executing jump
        branch <= '0'; --goes high when executing branch
        MemRead <= '0'; --goes high when reading from memory
        MemtoReg <= '0'; --goes high when pulling data from memory rather than ALU
        MemWrite <= '0'; --goes high when writing to memory
        ALUSrc <= '0'; --goes high when second ALU input is immediate rather than reg value
        RegWrite <= '1'; --goes high when writing to register file
        RegDst <= '0'; --goes high when resgister destination is Rt rather than Rd
      when "00001" => --sub
        ALUOp <= "0001";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "00010" => --and
        ALUOp <= "0011";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "00011" => --or
        ALUOp <= "0010";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "00100" => --andi
        ALUOp <= "0011";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "00101" => --ori
        ALUOp <= "0010";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "00110" => --xor
        ALUOp <= "0100";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "00111" => --sll
        ALUOp <= "0101";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "01000" => --srl
        ALUOp <= "0110";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "01001" => --slt
        ALUOp <= "1000";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "01010" => --sgt
        ALUOp <= "0111";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '1';
        RegDst <= '0';
      when "01011" => --sw
        ALUOp <= "0000";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '1';
        ALUSrc <= '1';
        RegWrite <= '0';
        RegDst <= '1';
      when "01100" => --lw
        ALUOp <= "0000";
        jump <= '0';
        branch <= '0';
        MemRead <= '1';
        MemtoReg <= '1';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "01101" => --li
        ALUOp <= "1101";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "01110" => --addi
        ALUOp <= "0000";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "01111" => --subi
        ALUOp <= "0001";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '1';
        RegWrite <= '1';
        RegDst <= '1';
      when "10000" => --bne
        ALUOp <= "1001";
        jump <= '0';
        branch <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '1';
      when "10001" => --beq
        ALUOp <= "1010";
        jump <= '0';
        branch <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '1';
      when "10010" => --bgt
        ALUOp <= "1011";
        jump <= '0';
        branch <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '1';
      when "10011" => --blt
        ALUOp <= "1100";
        jump <= '0';
        branch <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '1';
      when "10100" => --jump
        ALUOp <= "0000";
        jump <= '1';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '0';
      when others =>
        ALUOp <= "0000";
        jump <= '0';
        branch <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        MemWrite <= '0';
        ALUSrc <= '0';
        RegWrite <= '0';
        RegDst <= '0';
    end case;
  end process controls;
end behavioral;