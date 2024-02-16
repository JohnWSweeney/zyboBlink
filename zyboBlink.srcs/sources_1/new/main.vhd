----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 02:44:55 PM
-- Design Name: 
-- Module Name: main - Behavioral
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
USE IEEE.NUMERIC_STD.ALL;

entity main is
	Port(
		sysclk			: in std_logic;
		pmodStandard	: out std_logic_vector(7 downto 0);
		led				: out std_logic_vector(3 downto 0)
		);
end main;

architecture Behavioral of main is

signal	w_clk	: std_logic;
signal	w_rate	: std_logic;
signal	w_count	: unsigned(7 downto 0):= (others => '0');
signal	w_state	: integer range 0 to 125000000:= 0;

begin

w_clk 			<= sysclk;
pmodStandard	<= std_logic_vector(w_count);
led(0)			<= w_rate;
led(1)			<= not w_rate;
led(2)			<= w_rate;
led(3)			<= not w_rate;

process(w_clk)
begin
	if rising_edge(w_clk) then
		case w_state is
			when 12500000 =>
				w_rate <= not w_rate;
				w_count <= w_count + 1;
				w_state <= 0;
			when others =>
				w_state <= w_state + 1;
		end case;
	end if;
end process;

end Behavioral;