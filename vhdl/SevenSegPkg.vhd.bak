library IEEE;
use IEEE.STD_LOGIC_1164.all;

package body SevenSegPkg is
    function Decode7Seg(hex_digit : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR(6 downto 0) is
    begin
        case hex_digit is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when "1010" => return "0001000"; -- A
            when "1011" => return "0000011"; -- B
            when "1100" => return "1000110"; -- C
            when "1101" => return "0100001"; -- D
            when "1110" => return "0000110"; -- E
            when "1111" => return "0001110"; -- F
            when others => return "1111111"; -- Blank
        end case;
    end function;
end SevenSegPkg;
