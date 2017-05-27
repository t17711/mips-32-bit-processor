--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:07:50 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/fsm_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY fsm_test IS
END fsm_test;
 
ARCHITECTURE behavior OF fsm_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         I_FSM_CLK : IN  std_logic;
         I_FSM_EN : IN  std_logic;
         I_FSM_INST : IN  std_logic_vector(31 downto 0);
         O_FEM_IF : OUT  std_logic;
         O_FEM_ID : OUT  std_logic;
         O_FEM_EX : OUT  std_logic;
         O_FEM_ME : OUT  std_logic;
         O_FEM_WB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I_FSM_CLK : std_logic := '0';
   signal I_FSM_EN : std_logic := '0';
   signal I_FSM_INST : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_FEM_IF : std_logic;
   signal O_FEM_ID : std_logic;
   signal O_FEM_EX : std_logic;
   signal O_FEM_ME : std_logic;
   signal O_FEM_WB : std_logic;

   -- Clock period definitions
   constant I_FSM_CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          I_FSM_CLK => I_FSM_CLK,
          I_FSM_EN => I_FSM_EN,
          I_FSM_INST => I_FSM_INST,
          O_FEM_IF => O_FEM_IF,
          O_FEM_ID => O_FEM_ID,
          O_FEM_EX => O_FEM_EX,
          O_FEM_ME => O_FEM_ME,
          O_FEM_WB => O_FEM_WB
        );

   -- Clock process definitions
   I_FSM_CLK_process :process
   begin
		I_FSM_CLK <= '0';
		wait for I_FSM_CLK_period/2;
		I_FSM_CLK <= '1';
		wait for I_FSM_CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for I_FSM_CLK_period*10;
		I_FSM_INST<=x"00000001";
		I_FSM_EN<='1';
      -- insert stimulus here 

      wait;
   end process;

END;
