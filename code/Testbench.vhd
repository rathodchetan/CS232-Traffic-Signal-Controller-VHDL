library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity Testbench is
end entity;

architecture trafficlight_vd of Testbench is
	component  TrafficLightsController
		port ( clk, rst, tr1, tr4 : in std_logic;
			r, g, y: out std_logic_vector (4 downto 0) );
		end component;
	signal clk, rst,tr1,tr4: std_logic;
	signal r,g, y: std_logic_vector(4 downto 0);
	--signal output_vector : std_logic_vector(7 downto 0);
	begin
		inst: TrafficLightsController port map(clk, rst, tr1, tr4, r, g, y);
		process
			variable COUNT: integer := 0;
		begin
			rst <= '1';
			tr1 <= '1';
			tr4 <= '0';
			clk <= '0';
			wait for 2.5sec;
			rst <= '1';
			clk <= '1';
			wait for 2.5sec;
			--rst<='0';
			while COUNT<150 loop
				COUNT := COUNT + 1;
				rst<='0';
				--tr1 <= '1';
				--tr4 <= '';
				clk <= '0';
				wait for 2.5sec;
				rst <='0';
				clk <= '1';
				wait for 2.5sec;
			end loop;
		end process;
				
end architecture;