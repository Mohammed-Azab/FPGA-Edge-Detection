library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity SevenSegmentOutput is
    Port (
        i0, i1, i2, i3 : in integer;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segment displays as output
    );
end SevenSegmentOutput;

architecture Behavioral of SevenSegmentOutput is

    function int_to_7seg(input : integer) return STD_LOGIC_VECTOR is
    begin
        case input is
            when 0 => return "1000000"; -- 0
            when 1 => return "1001111"; -- 1
            when 2 => return "0100100"; -- 2 
            when 3 => return "0110000"; -- 3 
            when 4 => return "0011001"; -- 4 
            when 5 => return "0010010"; -- 5 
            when 6 => return "0000011"; -- 6 
            when 7 => return "1111000"; -- 7 
            when 8 => return "0000000"; -- 8
            when 9 => return "0010000"; -- 9 
            when others => return "1111111"; -- Turn off the display for invalid input
        end case;
    end function;

begin

    HEX0 <= int_to_7seg(i3); 
    HEX1 <= int_to_7seg(i2); 
    HEX2 <= "0111111";
    HEX3 <= "0111111";
    HEX4 <= int_to_7seg(i1);
    HEX5 <= int_to_7seg(i0);

end Behavioral;
