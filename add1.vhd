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

entity add1 is
	port(
		A, B, Ci: in std_logic;
		Co, S: out std_logic
	);
end add1;

architecture dataflow of add1 is
begin

	S <= (A xor B) xor Ci;
	Co <= ((A and B) or (A and Ci) or (B and Ci));

end dataflow;