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
		sysclk	: in std_logic;
		je		: out std_logic_vector(7 downto 0);
		o_led	: out std_logic
		);
end main;

architecture Behavioral of main is

signal	clk	: std_logic;
signal	led	: std_logic;
signal	cnt	: unsigned(7 downto 0):= (others => '0');
signal	state	: integer range 0 to 125000000:= 0;

begin

clk	<= sysclk;
je <= std_logic_vector(cnt);
o_led	<= led;

process(clk)
begin
	if rising_edge(clk) then
		case state is
			when 12500000 =>
				led <= not led;
				cnt <= cnt + 1;
				state <= 0;
			when others =>
				state <= state + 1;
		end case;
	end if;
end process;

end Behavioral;
