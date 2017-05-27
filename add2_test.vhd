--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:22:43 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/add2_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD2
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
 
ENTITY add2_test IS
END add2_test;
 
ARCHITECTURE behavior OF add2_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD2
    PORT(
         I_ADD2_A : IN  std_logic_vector(31 downto 0);
         I_ADD2_B : IN  std_logic_vector(31 downto 0);
         I_ADD2_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADD2_A : std_logic_vector(31 downto 0) := (others => '0');
   signal I_ADD2_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal I_ADD2_Out : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD2 PORT MAP (
          I_ADD2_A => I_ADD2_A,
          I_ADD2_B => I_ADD2_B,
          I_ADD2_Out => I_ADD2_Out
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		I_ADD2_A<=x"00000001";
		I_ADD2_B<=x"01010101";
      wait for 100 ns;	

		I_ADD2_A<=x"aaaaaaaa";
		I_ADD2_B<=x"01010101";
		wait for 100 ns;

		I_ADD2_A<=x"11111111";
		I_ADD2_B<=x"01010101";
		wait for 100 ns;

		I_ADD2_A<=x"12121212";
		I_ADD2_B<=x"01010101";
		wait for 100 ns;

		I_ADD2_A<=x"00000001";
		I_ADD2_B<=x"0000000f";
		wait for 100 ns;
		
      -- insert stimulus here 

      wait;
   end process;

END;
