--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:01 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/ctl_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CTL
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
 
ENTITY ctl_test IS
END ctl_test;
 
ARCHITECTURE behavior OF ctl_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CTL
    PORT(
         I_CTL_EN : IN  std_logic;
         I_CTL_INST : IN  std_logic_vector(5 downto 0);
         O_CTL_RegDst : OUT  std_logic;
         O_CTL_Branch : OUT  std_logic;
         O_CTL_MemRead : OUT  std_logic;
         O_CTL_MemtoReg : OUT  std_logic;
         O_CTL_ALUOp : OUT  std_logic_vector(1 downto 0);
         O_CTL_MemWrite : OUT  std_logic;
         O_CTL_ALUSrc : OUT  std_logic;
         O_CTL_RegWrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_CTL_EN : std_logic := '0';
   signal I_CTL_INST : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal O_CTL_RegDst : std_logic;
   signal O_CTL_Branch : std_logic;
   signal O_CTL_MemRead : std_logic;
   signal O_CTL_MemtoReg : std_logic;
   signal O_CTL_ALUOp : std_logic_vector(1 downto 0);
   signal O_CTL_MemWrite : std_logic;
   signal O_CTL_ALUSrc : std_logic;
   signal O_CTL_RegWrite : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CTL PORT MAP (
          I_CTL_EN 			=> I_CTL_EN,
          I_CTL_INST 		=> I_CTL_INST,
          O_CTL_RegDst 		=> O_CTL_RegDst,
          O_CTL_Branch 		=> O_CTL_Branch,
          O_CTL_MemRead 	=> O_CTL_MemRead,
          O_CTL_MemtoReg 	=> O_CTL_MemtoReg,
          O_CTL_ALUOp 		=> O_CTL_ALUOp,
          O_CTL_MemWrite 	=> O_CTL_MemWrite,
          O_CTL_ALUSrc 		=> O_CTL_ALUSrc,
          O_CTL_RegWrite 	=> O_CTL_RegWrite
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
	
		I_CTL_EN<='1';
		I_CTL_INST<="000000";
      wait for 100 ns;	
		
		I_CTL_INST<="001001";
      wait for 100 ns;	
		
		I_CTL_INST<="001000";
      wait for 100 ns;	
		
		I_CTL_INST<="101011";
      wait for 100 ns;	
		
		I_CTL_INST<="000101";
      wait for 100 ns;	

      wait;
   end process;

END;
