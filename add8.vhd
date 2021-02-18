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

entity add8 is
	port(
		A,B: in std_logic_vector(7 downto 0);
		Ci: in std_logic;

		S: out std_logic_vector(8 downto 0)
	);
end add8;

architecture structural of add8 is

component add4 is
	port(
		A,B: in std_logic_vector(3 downto 0);
		Ci: in std_logic;

		S: out std_logic_vector(4 downto 0)
	);
end component;

signal C: std_logic;

signal A0in: std_logic_vector(3 downto 0);
signal A1in: std_logic_vector(3 downto 0);

signal B0in: std_logic_vector(3 downto 0);
signal B1in: std_logic_vector(3 downto 0);

begin

	A0in <= A(3 downto 0);
	B0in <= B(3 downto 0);
	
	A1in <= A(7 downto 4);
	B1in <= A(7 downto 4);

	a4_0: add4 port map(
		A => A0in,
		B => B0in,
		Ci => Ci,
	
		S(0) => S(0),
		S(1) => S(1),
		S(2) => S(2),
		S(3) => S(3),
		S(4) => C
	);
	
	a4_1: add4 port map(
		A => A1in,
		B => B1in,
		Ci => C,
	
		S(0) => S(4),
		S(1) => S(5),
		S(2) => S(6),
		S(3) => S(7),
		S(4) => S(8)
	);
	

end structural;