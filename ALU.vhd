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

signal S_add: std_logic_vector(4 downto 0);
signal S_mul: std_logic_vector(7 downto 0);
signal S_xor: std_logic_vector(3 downto 0);

signal muxin: std_logic_vector(31 downto 0);

component mux_32_8 is
	port(
		E0:	in std_logic_vector(31 downto 0);
		Sel:in std_logic_vector(1 downto 0);
	
		I1:	out std_logic_vector(7 downto 0)
	);
end component;

component add4 is
	port(
		A,B: in std_logic_vector(3 downto 0);
		Ci: in std_logic;

		S: out std_logic_vector(4 downto 0)
	);
end component;

begin
	
	muxin(7 downto 0) <= "000"&S_add;
	muxin(15 downto 8) <= S_mul;
	muxin(23 downto 16) <= "0000"&S_xor;
	muxin(31 downto 24) <= "00000000";

	m_32_8: mux_32_8 port map(
		E0 => muxin,
		Sel => Sel,
	
		I1 => S
	);

	a4: add4 port map(
		A => A,
		B => B,
		Ci => '0',

		S => S_add
	);

end structural;