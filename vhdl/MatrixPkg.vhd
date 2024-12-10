library STD;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package MatrixPkg is

type ImageMatrix is array (0 to 9, 0 to 9) of integer;
constant my_matrix : ImageMatrix := 
(
       (  1,   2,  48,  40,   2,  44,  14,  22,  18,  17),
       ( 43,  25,   2,  33,  18,  43,   9,   4,  30,  32),
       (  8,  39,  31, 148, 169,   7,  38,  24,  23,  46),
       ( 11,  39,  28, 160, 152,  35,  10,  49,  18,  49),
       ( 46,  45,  24, 138, 178,  23,  12,  28,   9,  32),
       ( 22,  44,  10, 112, 175,  11,  43,  37,  21,   8),
       ( 24,  46,  21, 101, 111,   2,  10,  24,  25,  48),
       ( 17,  41,   6, 159, 180,  18,  42,   1,  28,  45),
       (  5,  42,  33, 112, 136,  42,  35,  42,  41,  35),
       ( 31,   8,  37,  33,  12,  40,  32,  37,   9,  42)

																			);

type Prewitte_Filter is array (0 to 2, 0 to 2) of integer;

constant Gx : Prewitte_Filter := 
( 
 (-1,0,1),
 (-1,0,1),
 (-1,0,1)
			);

constant Gy : Prewitte_Filter := 
(
 (-1,-1,-1),
 ( 0, 0, 0),
 ( 1, 1, 1)
			  );


end MatrixPkg;
