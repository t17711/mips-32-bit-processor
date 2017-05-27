----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:51:43 05/25/2017 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SEL_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end REG;

architecture Behavioral of REG is

-- each element in array is one byte
type reg_type is array(0 to 32) of STD_LOGIC_VECTOR(31 downto 0);
signal reg: reg_type:=(others=>x"00000000");

begin
process (I_REG_EN, I_REG_WE,I_REG_SEL_RS,I_REG_SEL_RT,I_REG_SEL_RD,I_REG_DATA_RD)

variable r1, r2, w: integer:=0;

begin
	r1 := conv_integer(I_REG_SEL_RS);
	r2 := conv_integer(I_REG_SEL_RT);
	w  := conv_integer(I_REG_SEL_RD);	
	if I_REG_EN = '1' then
		if I_REG_WE = '1' then
			reg(w)<=I_REG_DATA_RD;	
		end if;
	end if;
	O_REG_DATA_A<= reg(r1);
	O_REG_DATA_B<= reg(r2);


end process;
end Behavioral;

