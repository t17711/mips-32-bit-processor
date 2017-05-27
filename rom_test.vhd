--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:10:55 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/rom_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rom_test IS
END rom_test;
 
ARCHITECTURE behavior OF rom_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    Port ( I_ROM_EN: in std_logic;
			  I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
	signal I_ROM_EN : std_logic;
   signal I_ROM_ADDR : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ROM_DATA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
			I_ROM_EN=>I_ROM_EN,
          I_ROM_ADDR => I_ROM_ADDR,
          O_ROM_DATA => O_ROM_DATA
        );

   -- Stimulus process
   stim_proc: process
		begin		
			
			I_ROM_EN<='1';
			-- hold reset state for 100 ns.
			I_ROM_ADDR<=x"00000000";
			wait for 10 ns;
		
		-- loop for all code
			while I_ROM_ADDR<x"00000100" loop
				I_ROM_ADDR<=I_ROM_ADDR+x"00000004";
				wait for 10 ns;		
			end loop;
			-- insert stimulus here 

			wait;
		end process;

END;
