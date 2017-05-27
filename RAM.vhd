----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:25:26 05/25/2017 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RAM is
    Port ( I_RAM_EN : in  STD_LOGIC;
           I_RAM_RE : in  STD_LOGIC;
           I_RAM_WE : in  STD_LOGIC;
           I_RAM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           I_RAM_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           O_RAM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is

-- each element in array is one byte
type ram_type is array(0 to 256) of STD_LOGIC_VECTOR(7 downto 0);

signal ram: ram_type:=(others=>x"00");

begin
process(I_RAM_EN, I_RAM_RE, I_RAM_WE, I_RAM_ADDR,I_RAM_DATA, ram)

	variable addr,offset :integer;
	variable o: STD_LOGIC_VECTOR (31 downto 0);
	begin
		addr:=conv_integer(I_RAM_ADDR);
		offset:=8192; --(x"00002000");
		addr:=addr-offset;
		if I_RAM_EN = '1' then
			if I_RAM_RE = '1'  then
				O_RAM_DATA <= (ram(addr)) & (ram(addr+1)) & (ram(addr+2)) & (ram(addr+3));
			end if;
			if I_RAM_WE ='1'  then
				ram(addr+3)<= (I_RAM_DATA(7 downto 0));
				ram(addr+2) <= (I_RAM_DATA(15 downto 8));
				ram(addr+1)<= (I_RAM_DATA(23 downto 16));
				ram(addr)	<= (I_RAM_DATA(31 downto 24));
			end if;
		end if;
	end process;


end Behavioral;

