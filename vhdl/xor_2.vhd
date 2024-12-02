library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor_test is
    port (
        A, B : in STD_LOGIC;
        Z : out STD_LOGIC
    );
end xor_test;

architecture behavior of xor_test is
begin
    Z <= A xor B;
end behavior;
