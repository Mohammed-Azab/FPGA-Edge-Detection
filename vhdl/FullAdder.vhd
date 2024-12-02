library STD;
use STD.STANDARD.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is 
    port (
        A, B, C : in STD_LOGIC;
        sum, carry : out STD_LOGIC
    );
end FullAdder;

architecture STRUCT of FullAdder is
    component xor_2 
        port (
            A, B : in STD_LOGIC;
            Z : out STD_LOGIC
        );
    end component;

    
begin
    X1: xor_2 port map (A => A, B => B, Z => sum);
    carry <= A and (B or C);
end STRUCT;
