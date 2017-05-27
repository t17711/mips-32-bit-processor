----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:34 05/25/2017 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( I_FSM_CLK 	: in  STD_LOGIC;
           I_FSM_EN 		: in  STD_LOGIC;
           I_FSM_INST 	: in  STD_LOGIC_VECTOR (31 downto 0);
           O_FEM_IF 		: out  STD_LOGIC;
           O_FEM_ID 		: out  STD_LOGIC;
           O_FEM_EX 		: out  STD_LOGIC;
           O_FEM_ME 		: out  STD_LOGIC;
           O_FEM_WB 		: out  STD_LOGIC);
end FSM;

architecture Behavioral of FSM is

TYPE State_T is (S_IF, S_ID, S_EX, S_ME, S_WB, S_end); -- define state
Signal State: State_T;

begin

process (I_FSM_CLK, I_FSM_EN, I_FSM_EN,State)
begin
	if I_FSM_EN = '1' then
		if rising_edge(I_FSM_CLK) then
						
			case State is 	
				when S_IF=> 
					O_FEM_IF <='1';
					O_FEM_ID <='0';
					O_FEM_EX <='0';
					O_FEM_ME <='0';
					O_FEM_WB <='0';
					State<=S_ID;
				when S_ID=>
					O_FEM_IF <='0';
					O_FEM_ID <='1';
					O_FEM_EX <='0';
					O_FEM_ME <='0';
					O_FEM_WB <='0';
					
					-- dont run after we reach 0 instruction
					if I_FSM_INST=x"00000000" then
						State<=S_end;
						O_FEM_EX <='0';
					else
						State<=S_EX;
					end if;

				when S_EX=>
					O_FEM_IF <='0';
					O_FEM_ID <='0';
					O_FEM_EX <='1';
					O_FEM_ME <='0';
					O_FEM_WB <='0';
					State <= S_ME;

				when S_ME=>
					O_FEM_IF <='0';
					O_FEM_ID <='0';
					O_FEM_EX <='0';
					O_FEM_ME <='1';
					O_FEM_WB <='0';
					State<=S_WB;
				when S_WB=>
					O_FEM_IF <='0';
					O_FEM_ID <='0';
					O_FEM_EX <='0';
					O_FEM_ME <='0';
					O_FEM_WB <='1';	
					State<=S_IF;
				when others=>
					O_FEM_IF <='0';
					O_FEM_ID <='0';
					O_FEM_EX <='0';
					O_FEM_ME <='0';
					O_FEM_WB <='0';
					State<=S_end;
			end case;
		end if;
	else
		State<=S_IF;
	end if;

end process;
end Behavioral;

