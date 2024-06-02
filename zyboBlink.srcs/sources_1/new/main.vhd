library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity main is
	Port(
		sysclk            : in std_logic;
		pmod8ld           : out std_logic_vector(7 downto 0);
		LED               : out std_logic_vector(3 downto 0);
		RGB0              : out std_logic_vector (2 downto 0);
		RGB1              : out std_logic_vector (2 downto 0)
		);
end main;

architecture Behavioral of main is
	signal	w_clk	: std_logic;
	signal	w_rate	: std_logic;
	signal	w_count	: unsigned(7 downto 0):= (others => '0');
	signal	w_state	: integer range 0 to 125000000:= 0;

begin

w_clk 			<= sysclk;
pmod8ld         <= std_logic_vector(w_count);
LED(0)          <= w_count(2);
LED(1)          <= w_count(3);
LED(2)          <= w_count(4);
LED(3)          <= w_count(5);
RGB0(0)         <= w_count(5);
RGB0(1)         <= w_count(6);
RGB0(2)         <= w_count(7);
RGB1(0)         <= w_count(1);
RGB1(1)         <= w_count(2);
RGB1(2)         <= w_count(3);

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