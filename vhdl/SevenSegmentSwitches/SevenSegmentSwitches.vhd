library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity declaration
entity SevenSegmentSwitches is
    Port (
        switches : in  STD_LOGIC_VECTOR(3 downto 0); -- 4 switches as input
        segments : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segment display as output
    );
end SevenSegmentSwitches;

-- Architecture definition
architecture Behavioral of SevenSegmentSwitches is
begin
    process(switches)
    begin
        case switches(3 downto 0) is
            when "0000" => segments <= "1000000"; -- 0
            when "0001" => segments <= "1001111"; -- 1
            when "0010" => segments <= "0100100"; -- 2 
            when "0011" => segments <= "0110000"; -- 3 
            when "0100" => segments <= "0011001"; -- 4 
            when "0101" => segments <= "0010010"; -- 5 
            when "0110" => segments <= "0000011"; -- 6 
            when "0111" => segments <= "0111000"; -- 7 
            when "1000" => segments <= "0000000"; -- 8
            when "1001" => segments <= "0010000"; -- 9 
            when others => segments <= "1111111"; -- Turn off the display
        end case;
    end process;
end Behavioral;
