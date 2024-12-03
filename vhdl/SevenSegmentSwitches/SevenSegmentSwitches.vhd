library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity SevenSegmentSwitches is
    Port (
        switches : in  STD_LOGIC_VECTOR(3 downto 0); -- 4 switches as input
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segment displays as output
    );
end SevenSegmentSwitches;

architecture Behavioral of SevenSegmentSwitches is
begin
    

    process(switches)
    begin
			HEX2 <= "0111111"; -- display "-"
			HEX3 <= "0111111"; 

        case switches(3 downto 0) is
            when "0000" => HEX1 <= "1000000";-- 0
            when "0001" => HEX1 <= "1001111"; -- 1
            when "0010" => HEX1 <= "0100100"; -- 2 
            when "0011" => HEX1 <= "0110000"; -- 3 
            when "0100" => HEX1 <= "0011001"; -- 4 
            when "0101" => HEX1 <= "0010010"; -- 5 
            when "0110" => HEX1 <= "0000011"; -- 6 
            when "0111" => HEX1 <= "0111000"; -- 7 
            when "1000" => HEX1 <= "0000000"; -- 8
            when "1001" => HEX1 <= "0010000"; -- 9 
            when others => HEX1 <= "1111111"; -- Turn off the display
        end case;
    end process;
end Behavioral;
