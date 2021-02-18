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

entity add4 is
	port(
		A,B: in std_logic_vector(3 downto 0);
		Ci: in std_logic;

		S: out std_logic_vector(4 downto 0)
	);
end add4;

architecture structural of add4 is

component add1 is
	port(
		A, B, Ci: in std_logic;
		Co, S: out std_logic
	);
end component;

signal C: std_logic_vector(2 downto 0);

begin

	a1_0: add1 port map(
		A => A(0),
		B => B(0),
		Ci => Ci,
	
		Co => C(0),
		S => S(0)
	);
	
	
	a1_1: add1 port map(
		A => A(1),
		B => B(1),
		Ci => C(0),
	
		Co => C(1),
		S => S(1)
	);
	
	
	a1_2: add1 port map(
		A => A(2),
		B => B(2),
		Ci => C(1),
	
		Co => C(2),
		S => S(2)
	);
	
	
	a1_3: add1 port map(
		A => A(3),
		B => B(3),
		Ci => C(2),
	
		Co => S(4),
		S => S(3)
	);
	

end structural;