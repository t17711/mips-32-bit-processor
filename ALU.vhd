----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:28:36 05/25/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( I_ALU_EN : in  STD_LOGIC;
           I_ALU_CTL : in  STD_LOGIC_VECTOR (3 downto 0);
           I_ALU_A : in  STD_LOGIC_VECTOR (31 downto 0);
           I_ALU_B : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           O_ALU_Zero : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal r : STD_LOGIC_VECTOR (31 downto 0);

begin
process (I_ALU_EN, I_ALU_CTL, I_ALU_A, I_ALU_B)
begin
	if I_ALU_EN = '1' then 
		if I_ALU_CTL = "0010" then -- add stuff
			r<= I_ALU_A+I_ALU_B;
			O_ALU_Zero <='0';
		elsif I_ALU_CTL = "0110" then
			r<= I_ALU_A+I_ALU_B;
			if I_ALU_A = I_ALU_B then
				O_ALU_Zero <='0';
			else
				O_ALU_Zero <='1';
			end if;
		end if;
	end if;

end process;
O_ALU_OUT<=r;
end Behavioral;

