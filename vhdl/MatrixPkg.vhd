library STD;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package MatrixPkg is

type ImageMatrix is array (0 to 9, 0 to 9) of integer;
constant my_matrix : ImageMatrix := (
(  0,  27,  71,  71,  77,  75,  78,  76,  74,  38),
 (  0,  46, 129, 126, 132, 132, 135, 128, 121,  62),
 (  0,  49, 144, 140, 140, 139, 135, 137, 126,  61),
 (  0,  51, 155, 157, 152, 144, 170, 164, 128,  66),
 (  0,  53, 160, 162, 148, 201, 205, 138, 120,  62),
 (  0,  54, 164, 123,  57, 158, 142, 107, 112,  59),
 (  0,  51, 113,  31,  79, 105, 102,  98, 102,  54),
 (  0,  38,  48,  76,  94,  82,  81,  83,  83,  42),
 (  0,  38, 104,  97,  81,  73,  67,  65,  70,  38),
 (  0,   5,  14,  11,   9,   9,   6,   5,   6,   4)
);

type Prewitte_Filter is array (0 to 2, 0 to 2) of integer;

constant Gx : Prewitte_Filter := (
(-1,0,1),
(-1,0,1),
(-1,0,1)
);

constant Gy : Prewitte_Filter := (
(-1,-1,-1),
(0,0,0),
(1,1,1)
);



end MatrixPkg;
