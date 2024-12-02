library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sqrt_function is --Newton-Raphson Method
    Port ( input_value : in integer;
           sqrtResult : out integer);
end sqrt_function;

architecture Behavioral of sqrt_function is
begin

    process(input_value)
        variable guess : integer := input_value / 2;  -- Initial guess (half of input)
        variable result : integer := 0;
    begin
        -- Newton-Raphson iteration (approximation)
        -- Using the formula: guess = (guess + input / guess) / 2
        for i in 0 to 10 loop  -- 10 iterations to converge
            guess := (guess + (input_value / guess)) / 2;
        end loop;
        
        result := guess;
        sqrtResult <= result;
    end process;

end Behavioral;