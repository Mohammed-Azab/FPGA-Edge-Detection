library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SevenSegmentController is
    port (
        digit : in STD_LOGIC_VECTOR(3 downto 0);  -- Input BCD digit
        segments : out STD_LOGIC_VECTOR(6 downto 0)  -- Output 7-segment encoding
    );
end SevenSegmentController;

architecture Behavioral of SevenSegmentController is
    -- Lookup table for 7-segment encoding
    type Segment_Lookup is array (0 to 15) of STD_LOGIC_VECTOR(6 downto 0);
    
    -- Define the segments for digits 0 to 9
    constant SEGMENTSL : Segment_Lookup := (
        "1111110", -- 0
        "0110000", -- 1
        "1101101", -- 2
        "1111001", -- 3
        "0110011", -- 4
        "1011011", -- 5
        "1011111", -- 6
        "1110000", -- 7
        "1111111", -- 8
        "1111011", -- 9
        "0000000", -- Blank (Unused digits)
        "0000000", -- Blank
        "0000000", -- Blank
        "0000000", -- Blank
        "0000000", -- Blank
        "0000000"  -- Blank
    );
begin
    -- Map BCD input to 7-segment encoding
    process(digit)
    begin
        if unsigned(digit) <= 9 then
            segments <= SEGMENTSL(to_integer(unsigned(digit)));
        else
            segments <= "0000000"; -- Turn off for invalid input
        end if;
    end process;
end Behavioral;
