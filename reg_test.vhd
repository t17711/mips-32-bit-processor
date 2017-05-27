--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:05:51 05/25/2017
-- Design Name:   
-- Module Name:   C:/Users/binod/Desktop/Development/COde/xilinx_proj/MIPS_32_BIT/reg_test.vhd
-- Project Name:  MIPS_32_BIT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG
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
 
ENTITY reg_test IS
END reg_test;
 
ARCHITECTURE behavior OF reg_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG
    PORT(
         I_REG_EN : IN  std_logic;
         I_REG_WE : IN  std_logic;
         I_REG_SEL_RS : IN  std_logic_vector(4 downto 0);
         I_REG_SEL_RT : IN  std_logic_vector(4 downto 0);
         I_REG_SEL_RD : IN  std_logic_vector(4 downto 0);
         I_REG_DATA_RD : IN  std_logic_vector(31 downto 0);
         O_REG_DATA_A : OUT  std_logic_vector(31 downto 0);
         O_REG_DATA_B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_REG_EN : std_logic := '0';
   signal I_REG_WE : std_logic := '0';
   signal I_REG_SEL_RS : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SEL_RT : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SEL_RD : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_DATA_RD : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_REG_DATA_A : std_logic_vector(31 downto 0);
   signal O_REG_DATA_B : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG PORT MAP (
          I_REG_EN => I_REG_EN,
          I_REG_WE => I_REG_WE,
          I_REG_SEL_RS => I_REG_SEL_RS,
          I_REG_SEL_RT => I_REG_SEL_RT,
          I_REG_SEL_RD => I_REG_SEL_RD,
          I_REG_DATA_RD => I_REG_DATA_RD,
          O_REG_DATA_A => O_REG_DATA_A,
          O_REG_DATA_B => O_REG_DATA_B
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		I_REG_EN<='1';
		I_REG_WE<='1';
		
		I_REG_SEL_RS<="00000";
		I_REG_SEL_RT<="00001";
		I_REG_SEL_RD<="00001";
		
		I_REG_DATA_RD<=x"cccccccc";
      wait for 100 ns;	
		I_REG_WE<='0';

		-- loop for all code
		while I_REG_SEL_RT <"11111" loop
			I_REG_WE<='0';
			wait for 10 ns;		
			I_REG_WE<='1';
			I_REG_SEL_RS<=I_REG_SEL_RS+"00001";
			I_REG_SEL_RT<=I_REG_SEL_RT+"00001";
			I_REG_SEL_RD<=I_REG_SEL_RD+"00001";
			I_REG_DATA_RD<=I_REG_DATA_RD+x"00000001";

			wait for 10 ns;					
		end loop;


      wait;
   end process;

END;
