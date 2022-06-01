----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/10 11:00:45
-- Design Name: 
-- Module Name: four_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
Use IEEE.Std_Logic_Unsigned.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_adder is
    Port ( A :in std_logic_vector(3 downto 0);
           B :in std_logic_vector(3 downto 0);
           Cin : in STD_LOGIC;
           S :out std_logic_vector(3 downto 0);
           Cout : out STD_LOGIC);
end four_adder;

architecture Behavioral of four_adder is
    SIGNAL c0,c1,c2:std_logic;
begin
    S(0) <= A(0) xor B(0) xor Cin;
	c0 <= (A(0) and B(0)) or (A(0) and Cin) or (B(0) and Cin);

	S(1) <= A(1) xor B(1) xor c0;
	c1 <= (A(1) and B(1)) or (A(1) and c0) or (B(1) and c0);
	
	S(2) <= A(2) xor B(2) xor c1;
	c2 <= (A(2) and B(2)) or (A(2) and c1) or (B(2) and c1);
	
	S(3) <= A(3) xor B(3) xor c2;
	Cout <= (A(3) and B(3)) or (A(3) and c2) or (B(3) and c2);
end Behavioral;
