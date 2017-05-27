----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:23 05/25/2017 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use std.textio.all;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( I_ROM_EN: in std_logic;
			  I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is

-- each element in array is one byte
type rom_type is array(0 to 255) of STD_LOGIC_VECTOR(7 downto 0);

-- create a function to initialize rom from file
impure function init_rom(RomFileName: in string) return rom_type is
	file fp: text;
	variable file_line: line;
	variable temp_bv: bit_vector(31 downto 0);
	variable temp_mem: rom_type;
	variable rom_count: integer :=0;
	variable ROM_SIZE: integer :=255; -- our memory is 256 
begin
	temp_mem := (others => x"00");
	file_open(fp, RomFileName, read_mode);
	
	while not endfile(fp) loop
		-- read line
		readline(fp, file_line);
		
		read(file_line, temp_bv);
		
		temp_mem(rom_count) 		:= to_stdlogicvector(temp_bv(7 downto 0));
		temp_mem(rom_count+1) 	:= to_stdlogicvector(temp_bv(15 downto 8));
		temp_mem(rom_count+2) 	:= to_stdlogicvector(temp_bv(23 downto 16));
		temp_mem(rom_count+3) 	:= to_stdlogicvector(temp_bv(31 downto 24));
		rom_count := rom_count +4;
		if rom_count >= ROM_SIZE then
			exit;
		end if;
		
	end loop;
	file_close(fp);
	return temp_mem;
end function;

-- call function to initialize rom
signal rom: rom_type:=init_rom("Fibonacci.bin");

begin
	process (I_ROM_EN,I_ROM_ADDR, rom)
	variable pc_int :integer;
		begin
			if I_ROM_EN = '1' then
				pc_int:=to_integer(unsigned(I_ROM_ADDR));
				O_ROM_DATA<= rom(pc_int+3) & rom(pc_int+2) & rom(pc_int+1)  & rom(pc_int);
			end if;
	end process;
end Behavioral;

