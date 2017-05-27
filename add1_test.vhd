--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:16:56 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/add1_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADD1
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
 
ENTITY add1_test IS
END add1_test;
 
ARCHITECTURE behavior OF add1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADD1
    PORT(
         I_ADD1_A : IN  std_logic_vector(31 downto 0);
         O_ADD1_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_ADD1_A : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_ADD1_OUT : std_logic_vector(31 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADD1 PORT MAP (
          I_ADD1_A => I_ADD1_A,
          O_ADD1_OUT => O_ADD1_OUT
        );



   -- Stimulus process
   stim_proc: process
   begin		
		
		I_ADD1_A<=x"00000001";
      wait for 100 ns;	

		I_ADD1_A<=x"00000012";
      wait for 100 ns;	

		I_ADD1_A<=x"00000022";
      wait for 100 ns;	

		I_ADD1_A<=x"000000aa";
      wait for 100 ns;	

		I_ADD1_A<=x"00000010";
      wait for 100 ns;	

		I_ADD1_A<=x"aaaaaaaa";
      wait for 100 ns;	

		I_ADD1_A<=x"ffffffff";
      wait for 100 ns;	

      wait;
   end process;

END;
