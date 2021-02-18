---------------------------------------------------------------------------
-- Author               : St�phane Meill�re
-- Creation Date        : 20 February 2005   
-- Version Number       : 1.0
--
-- Revision History     : 
--
-- Description :
--	TP N3 VHDL
---------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ALU_8 is
	port(
		A,B: in std_logic_vector(3 downto 0);
		Sel: in std_logic_vector(1 downto 0);

		S: out std_logic_vector(7 downto 0)
	);
end ALU_8;

architecture structural of ALU_8 is

begin

end structural;