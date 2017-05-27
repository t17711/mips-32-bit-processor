--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:29:19 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/mux32_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX32
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
 
ENTITY mux32_test IS
END mux32_test;
 
ARCHITECTURE behavior OF mux32_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX32
    PORT(
         I_MUX_0 : IN  std_logic_vector(31 downto 0);
         I_MUX_1 : IN  std_logic_vector(31 downto 0);
         I_MUX_Sel : IN  std_logic;
         O_MUX_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_MUX_0 : std_logic_vector(31 downto 0) := (others => '0');
   signal I_MUX_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal I_MUX_Sel : std_logic := '0';

 	--Outputs
   signal O_MUX_Out : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX32 PORT MAP (
          I_MUX_0 => I_MUX_0,
          I_MUX_1 => I_MUX_1,
          I_MUX_Sel => I_MUX_Sel,
          O_MUX_Out => O_MUX_Out
        );


   -- Stimulus process
   stim_proc: process
   begin		
		
		I_MUX_0<=x"11111111";
		I_MUX_1<=x"ffffffff";
		I_MUX_Sel<='0';
		wait for 100 ns;	

		I_MUX_Sel<='1';
		wait for 100 ns;	

		I_MUX_0<=x"a1a1a1a1";
		I_MUX_1<=x"000a100a";
		I_MUX_Sel<='0';
		wait for 100 ns;	

		I_MUX_Sel<='1';
		wait for 100 ns;	

      wait;
   end process;

END;
