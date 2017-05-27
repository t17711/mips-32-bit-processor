--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:58:49 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/pc_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pc_test IS
END pc_test;
 
ARCHITECTURE behavior OF pc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         I_PC_UPDATE : IN  std_logic;
         I_PC : IN  std_logic_vector(31 downto 0);
         O_PC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_PC_UPDATE : std_logic := '0';
   signal I_PC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_PC : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          I_PC_UPDATE => I_PC_UPDATE,
          I_PC => I_PC,
          O_PC => O_PC
        );

   -- Stimulus process
   stim_proc: process
   begin		
		I_PC_UPDATE <='0';
      wait for 100 ns;	
		
		I_PC_UPDATE <='1';
		I_PC<=x"01010101";
      wait for 100 ns;	

		I_PC_UPDATE <='0';
      wait for 100 ns;	

		I_PC_UPDATE <='1';
		I_PC<=x"ceeeeeee";
      wait for 100 ns;	
		
		I_PC_UPDATE <='0';
      wait for 100 ns;	

      wait;
   end process;

END;
