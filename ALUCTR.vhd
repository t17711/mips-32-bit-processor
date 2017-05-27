----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:56:25 05/25/2017 
-- Design Name: 
-- Module Name:    ALUCTR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUCTR is
    Port ( I_ALU_OP : in  STD_LOGIC_VECTOR (1 downto 0);
           I_ALU_FUNCT : in  STD_LOGIC_VECTOR (5 downto 0);
           O_ALU_CTR : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUCTR;

architecture Behavioral of ALUCTR is

begin

process (I_ALU_OP, I_ALU_FUNCT)
begin

case I_ALU_OP is
	when "10" =>
		O_ALU_CTR <= "0010";
	when "00" =>
		O_ALU_CTR <= "0010";
	when "01" =>
		O_ALU_CTR <= "0110";
	when others=>
		O_ALU_CTR <= "0000";

end case;

end process;
end Behavioral;

