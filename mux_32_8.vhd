---------------------------------------------------------------------------
-- Author               : Tom VAUTRAY
-- Creation Date        : 18 / 02 / 2021
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
	
entity mux_32_8 is
	port(
		E0:	in std_logic_vector(31 downto 0);
		Sel:in std_logic_vector(1 downto 0);
	
		I1:	out std_logic_vector(7 downto 0)
	);
end mux_32_8;

architecture dataFlow of mux_32_8 is
begin
	with Sel select I1 <=
		E0(7 downto 0) when "00",
		E0(15 downto 8) when "01",
		E0(23 downto 16) when "10",
		E0(31 downto 24) when "11",
		E0(7 downto 0) when others;

end dataFlow;