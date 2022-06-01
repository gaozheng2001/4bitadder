----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/03/12 12:33:42
-- Design Name: 
-- Module Name: tb_four_adder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_four_adder is
--  Port ( );
end tb_four_adder;

architecture Behavioral of tb_four_adder is
    component four_adder
    port(A,B: in std_logic_vector;
    Cin: in std_logic;
    S: out std_logic_vector;
    Cout: out std_logic
    );
    end component;
    
    signal A: std_logic_vector (3 downto 0);
    signal B: std_logic_vector (3 downto 0);
    signal Cin: std_logic:='0';
    
    signal S: std_logic_vector (3 downto 0);
    signal Cout: std_logic:='0';
    
    constant period : time := 20ns;
    
begin
    uut: four_adder port map(
    A => A,
    B => B,
    Cin => Cin,
    S => S,
    Cout => Cout
    );
    
    A0_process:process
    begin
        A(0) <= '0';
        wait for period/2;
        A(0) <= '1';
        wait for period/2;
    end process;  
    
    B0_process:process
    begin
        B(0) <= '0';
        wait for period;
        B(0) <= '1';
        wait for period;
    end process;  
    
    A1_process:process
    begin
        A(1) <= '0';
        wait for period*2;
        A(1) <= '1';
        wait for period*2;
    end process;  
    
    B1_process:process
    begin
        B(1) <= '0';
        wait for period*4;
        B(1) <= '1';
        wait for period*4;
    end process;  
    
    A2_process:process
    begin
        A(2) <= '0';
        wait for period*8;
        A(2) <= '1';
        wait for period*8;
    end process;  
    
    B2_process:process
    begin
        B(2) <= '0';
        wait for period*16;
        B(2) <= '1';
        wait for period*16;
    end process;  
    
    A3_process:process
    begin
        A(3) <= '0';
        wait for period*32;
        A(3) <= '1';
        wait for period*32;
    end process;  
    
    B3_process:process
    begin
        B(3) <= '0';
        wait for period*64;
        B(3) <= '1';
        wait for period*64;
    end process;  
    
    Cin_process:process
    begin
        Cin <= '0';
        wait for period*128;
        Cin <= '1';
        wait for period*128;
    end process;
end Behavioral;
