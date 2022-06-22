library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity TrafficLightsController is
	port ( clk, rst, tr1, tr4 : in std_logic;
	r, g, y: out std_logic_vector (4 downto 0) );
end entity;

architecture trafficlight_arc of TrafficLightsController is

begin

process (clk,rst) 
	variable actSignal,count: integer;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				count := 1;
				r <= "11011";
				y <= "00000";
				g <= "00100";
				actSignal := 2;
				
			else
				if ( count = 12 or count = 13 ) and ( actSignal = 0 or actSignal = 2 or actSignal = 3 ) then
					if count = 12 then
						g(actSignal) <= '0';
						y(actSignal) <= '1';
						count := 13;
					else
						y(actSignal) <= '0';
						r(actSignal) <= '1';
						if actSignal = 0 then
							if tr1 = '1' then
								actSignal := 1;
							else
								actSignal := 2;
							end if;
						elsif actSignal = 2 then
							actSignal := 3;
						else
							if tr4='1' then
								actSignal := 4;
							else
								actSignal := 0;
							end if;
						end if;
						r(actSignal) <= '0';
						g(actSignal) <= '1';
						count := 1;
						
					end if; 
				elsif ( count = 6 or count = 7) and (actSignal = 1 or actSignal = 4) then
					if count = 6 then
						g(actSignal) <= '0';
						y(actSignal) <=  '1';
						count := 7;
					else
						y(actSignal) <= '0';
						r(actSignal) <= '1';
						if actSignal = 4 then
							actSignal := 0;
						else
							actSignal := 2;
						end if;
						g(actSignal) <= '1';
						r(actSignal) <= '0';
						count := 1;
					end if;
				else
					count := count + 1;
				end if;
			end if;
		end if;
		
		end process;
	
end architecture;