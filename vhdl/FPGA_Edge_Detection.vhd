library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

use work.MatrixPkg.ALL;        

entity FPGA_Edge_Detection is
    port (
        enable : in STD_LOGIC;          -- enable input linked to switch 0 (sw0)
        reset : in STD_LOGIC;          
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segment displays as output
    );
end FPGA_Edge_Detection;

architecture STRUCT of FPGA_Edge_Detection is

    
    signal edge_matrix : ImageMatrix;	-- ImageMatrixMatrix from MatrixPkg
    
    -- signals for the 7-segment display
    signal i0, i1, i2, i3 : integer; 
	 
	 --signal F : STD_LOGIC;  -- Flag

	 --signal T : integer := 0;  -- Threshold

	 
	 component SevenSegmentOutput is
    Port (
        i0, i1, i2, i3 : in integer;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)
    );
	 end component;

	 function isItActiveHigh(my_matrix: ImageMatrix) return boolean is 
		  variable activeHigh : boolean := false;
		  variable minValues : integer := 0;
		  variable maxValues : integer := 0;
	 begin
        
        for i in 0 to 9 loop
            for j in 0 to 9 loop 
				    if (my_matrix(i, j) > 125) then 
								if (my_matrix(i, j) < 256) then
										maxValues := maxValues + 1;
								end if;
					 else 
							if (my_matrix(i, j) < 126) then
								if (my_matrix(i, j) > -1) then
											minValues := minValues + 1;
								end if;
							end if;
					 end if;
            end loop; 
        end loop;
		  if (maxvalues < minValues) then 
				activeHigh := true;
		  end if;
		  
		  return activeHigh; -- means the "0" is the dominant and the edge is detected in 1's.
	 end function;
		
		
    function compute_threshold(my_matrix: ImageMatrix) return integer is -- (Factor Theroy of the matrix)
        variable sum : integer := 0;
		  variable minValue : integer := 255;
		  variable maxValue : integer := 0;
		  variable maximum : integer := 0;
		  variable maxRight : integer := 0;
		  variable maxLeft : integer := 0;
		  variable threshold : integer := 0;
		  variable dynamic_range : integer := 1;

    begin
        
        for i in 0 to 9 loop
            for j in 0 to 9 loop 
                sum := sum + my_matrix(i, j);
					 if (my_matrix(i, j) > maximum) then
								maximum := my_matrix(i, j);
					 end if;
					 if (my_matrix(i, j) < minValue) then
								minValue := my_matrix(i, j);
								if (i > 0) then 
									maxLeft := my_matrix(i, j-1);
									maxValue := maxLeft;
								end if;
								if (j < 9) then 
									maxRight := my_matrix(i, j+1);
									if (maxLeft < maxRight) then 
										maxValue := maxRight;
									end if;
								end if;
					 end if;
            end loop;
        end loop;
		  dynamic_range  := maxValue - minValue;
		  if dynamic_range = 0 then
        dynamic_range := 1; -- Prevent division by zero
        end if;
		  
		  if (isItActiveHigh(my_matrix)) then 
				threshold := integer((real(sum) / 25.0) + (8.0 * real(maximum) / 10.0)); -- scaling_factor = 80%
				else 
					 threshold := integer(minValue) + integer(8.0 * real(dynamic_range) / 10.0); -- scaling_factor = 80%
		  end if;
        return threshold;
    end function;

    
    function compute_edge(x: integer; y: integer; T: integer) return integer is -- compute gradient magnitude
        variable gx_val : integer := 0;
        variable gy_val : integer := 0;
        variable edge_val : integer := 0;
    begin
        for i in 0 to 2 loop
            for j in 0 to 2 loop
                -- Apply the Prewitt Gx and Gy filters on the image matrix
                gx_val := gx_val + (my_matrix(x+i, y+j) * Gx(i, j));
                gy_val := gy_val + (my_matrix(x+i, y+j) * Gy(i, j));
            end loop;
        end loop;

        
        edge_val := abs(integer(sqrt(real(gx_val**2 + gy_val**2)))); -- Compute the magnitude of the gradient

        if edge_val < T then 
            return 0;
        else 
            return 1;
        end if;
    end function;


begin	
	 
	 SevenSegmentDisplay : SevenSegmentOutput
    port map (
        i0 => i0,
        i1 => i1,
        i2 => i2,
        i3 => i3,
        HEX0 => HEX0,
        HEX1 => HEX1,
        HEX2 => HEX2,
        HEX3 => HEX3,
        HEX4 => HEX4,
        HEX5 => HEX5
							);


    process(enable, reset)
			--variable firstTime : boolean := true;
			variable F : integer ;
			Variable T : integer ;
			Variable DEE : integer := 1; -- detected Edge Element
    begin
			 
		  i0 <= 11;
		  i1 <= 11;
		  i2 <= 11;
		  i3 <= 11;
		  F := 0;
		  T := compute_threshold(my_matrix);
		  --T := T + 50;
				
        if enable = '1' then
            
            --T := compute_threshold(my_matrix);
				--T := 300;
				--T := 145; 130:155

            for i in 1 to 8 loop  -- count number = no of Rows of the image - no of rows of Gx + 1
                for j in 1 to 8 loop
                    edge_matrix(i, j) <= compute_edge(i-1, j-1, T);  
        
                    -- Assertion to check if edge_matrix(i, j) is 1
                    assert edge_matrix(i, j) = 1
                    report "Edge detected at position (" & integer'image(i) & ", " & integer'image(j) & ")" severity note;
                end loop;
            end loop;
            
            -- Find the coordinates of the beginning and the end of the Line detection
            for i in 1 to 8 loop
                for j in 1 to 8 loop
                    if (F = 0) then
                        if (edge_matrix(i, j) = 1) then
                            i0 <= i;
                            i1 <= j;
									 F := F + 1;
                        end if;
                    else  
								if (edge_matrix(i, j) = 1) then
                            i2 <= i;
                            i3 <= j;
								end if;
						 end if;
					end loop;
            end loop;
        end if;
		  
    end process;

   

end STRUCT;
