-- Vhdl test bench created from schematic C:\Users\binod\Desktop\Development\COde\xilinx_proj\MIPS_32_BIT\Processor.sch - Thu May 25 23:09:35 2017
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Processor_Processor_sch_tb IS
END Processor_Processor_sch_tb;
ARCHITECTURE behavioral OF Processor_Processor_sch_tb IS 

   COMPONENT Processor
   PORT( CLK	:	IN	STD_LOGIC; 
          EN	:	IN	STD_LOGIC; 
          XLXN_145	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL CLK	:	STD_LOGIC;
   SIGNAL EN	:	STD_LOGIC;
   SIGNAL XLXN_145		:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   constant processor_CLK_period : time := 5 ps;

BEGIN

   UUT: Processor PORT MAP(
		CLK => CLK, 
		EN => EN, 
		XLXN_145	 => XLXN_145	
   );

  
	Processor_CLK_process :process
   begin
		CLK <= '0';		wait for processor_CLK_period/2;
		CLK <= '1';		wait for processor_CLK_period/2;
   end process;
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
			EN<='0';      			wait for processor_CLK_period*1;
			EN<='1';					wait for processor_CLK_period*1;
			wait for 1.6 ns;
			assert false report "Simulation stop at time " severity failure;

   END PROCESS;
-- *** End Test Bench - User Defined Section ***


END;
