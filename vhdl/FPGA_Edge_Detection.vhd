library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Include the package where the matrix is defined
use work.MatrixPkg.ALL;         -- Include the package with the matrix definition
use work.SevenSegPkg.ALL;       -- Include the 7-segment display package

entity FPGA_Edge_Detection is
    port (
        clk : in STD_LOGIC;             -- Clock input
        reset : in STD_LOGIC;           -- Reset input
        input_signal : in STD_LOGIC_VECTOR(7 downto 0);  -- Input signal
        output_signal : out STD_LOGIC_VECTOR(7 downto 0) -- Output signal for 7-segment display
    );
end FPGA_Edge_Detection;

architecture STRUCT of FPGA_Edge_Detection is

    -- Matrix and filter variables from MatrixPkg
    signal processed_signal : STD_LOGIC_VECTOR(7 downto 0);
    signal edge_matrix : ImageMatrix;
	 
	 
	 -- Function to compute the threshold value (mean of the matrix)
    function compute_Threshold() return integer is
        variable sum : integer := 0;
        variable mean : integer := 1;
    begin
        -- Sum all the values in the image matrix
        for i in 0 to 9 loop 
            for j in 0 to 9 loop
                sum := sum + my_matrix(i, j);  -- Assuming my_matrix contains the image data
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
                gx_val := gx_val + (my_matrix(x+i-1, y+j-1) * Gx(i, j));
                gy_val := gy_val + (my_matrix(x+i-1, y+j-1) * Gy(i, j));
            end loop;
        end loop;

        -- Compute the magnitude of the gradient
        edge_val := integer(sqrt(gx_val**2 + gy_val**2));

        -- Return edge based on threshold
        if edge_val < T then 
            return 0;
        else 
            return 1;
        end if;
    end function;

    
begin

    -- Edge detection process
    process(clk, reset)
        variable T : integer := 0;  -- Declare T variable inside the process
    begin
        if reset = '1' then -- clear the output if reset is on
            for i in 0 to 9 loop
                for j in 0 to 9 loop
                    edge_matrix(i, j) := 0;
                end loop;
            end loop;
        elsif rising_edge(clk) then
            -- Calculate the threshold value
            T := compute_Threshold();  -- Call the function to compute the threshold

            -- Iterate over the image matrix to apply edge detection
            for i in 1 to 8 loop  -- count number = no of Rows of the image -  no of rows of Gx + 1
                for j in 1 to 8 loop
                    edge_matrix(i, j) := compute_edge(i, j, T);  -- Apply edge detection using the computed threshold
                end loop;
            end loop;
        end if;
    end process;

    -- Convert processed result (edge value at 5,5) to 7-segment display
    --output_signal <= Decode7Seg(std_logic_vector(to_unsigned(edge_matrix(5, 5), 4)));  -- Use 4 bits for display

end STRUCT;
