library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

-- Include the package where the matrix is defined
use work.MatrixPkg.ALL;         -- Include the package with the matrix definition

entity FPGA_Edge_Detection is
    port (
        enable : in STD_LOGIC;          -- enable input linked to switch 0 (sw0)
        reset : in STD_LOGIC;           -- Reset input
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)  -- 7-segment displays as output
    );
end FPGA_Edge_Detection;

architecture STRUCT of FPGA_Edge_Detection is

    -- Matrix and filter variables from MatrixPkg
    signal edge_matrix : ImageMatrix;	
    
    -- signals for the 7-segment display
    signal i0, i1, i2, i3 : integer; 
	 
	 --signal F : integer := 0;  -- Flag

	 signal T : integer := 0;  -- Threshold

	 
	 component SevenSegmentOutput is
    Port (
        i0, i1, i2, i3 : in integer;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out STD_LOGIC_VECTOR(6 downto 0)
    );
	 end component;


    -- Function to compute the threshold value (mean of the matrix)
    function compute_threshold(my_matrix: ImageMatrix) return integer is
        variable sum : integer := 0;
        variable mean : integer := 1;
    begin
        
        for i in 0 to 9 loop 
            for j in 0 to 9 loop
                sum := sum + my_matrix(i, j);  
            end loop;
        end loop;

        -- Compute the mean (threshold)
        mean := sum / 100;  -- Assuming a 10x10 matrix (100 elements in total)
        return mean;
    end function;

    -- Function to compute gradient magnitude
    function compute_edge(x: integer; y: integer; T: integer) return integer is
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

        -- Compute the magnitude of the gradient
        edge_val := integer(sqrt(real(gx_val**2 + gy_val**2)));

        -- Return edge based on threshold
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


    -- Edge detection process
    process(enable, reset)
			--variable firstTime : boolean := true;
    begin
        if reset = '0' then -- clear the output if reset is on
            for i in 0 to 9 loop
                for j in 0 to 9 loop
                    edge_matrix(i, j) <= 0;
                end loop;
            end loop;
				i0 <= 11;
				i1 <= 11;
				i2 <= 11;
				i3 <= 11;
				
        elsif enable = '1' then
            for i in 0 to 9 loop
                for j in 0 to 9 loop
                    edge_matrix(i, j) <= 0;
                end loop;
            end loop;
            -- Calculate the threshold value
            T <= compute_threshold(my_matrix);

            for i in 0 to 7 loop  -- count number = no of Rows of the image - no of rows of Gx + 1
                for j in 0 to 7 loop
                    edge_matrix(i, j) <= compute_edge(i, j, T);  
        
                    -- Assertion to check if edge_matrix(i, j) is 1
                    assert edge_matrix(i, j) = 1
                    report "Edge detected at position (" & integer'image(i) & ", " & integer'image(j) & ")" severity note;
                end loop;
            end loop;
            
            -- Find the coordinates of the beginning and the end of the Line detection
            for i in 0 to 7 loop
                for j in 0 to 7 loop
                    if (i0 = 11) then
                        if (edge_matrix(i, j) = 1) then
                            i0 <= i;
                            i1 <= j;
                        end if;
                    else  
								if (edge_matrix(i, j) = 1) then
                            i2 <= i;
                            i3 <= j;
								end if;
						 end if;
					end loop;
            end loop;
				
				--i0 <= 3; -- just to try to test the display
				--i1 <= 4;
				--i2 <= 7;
				--i3 <= 9;
        end if;
		  
    end process;

   

end STRUCT;
