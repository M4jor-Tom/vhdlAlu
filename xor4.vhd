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

entity xor4 is
	port(
		A,B: in std_logic_vector(3 downto 0);

		S: out std_logic_vector(3 downto 0)
	);
end xor4;

architecture structural of xor4 is

begin

S(0) <= A(0) xor B(0);
S(1) <= A(1) xor B(1);
S(2) <= A(2) xor B(2);
S(3) <= A(3) xor B(3);

end structural;