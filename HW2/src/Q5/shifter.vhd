----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 10:00:28 PM
-- Design Name: 
-- Module Name: shifter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter is
	port (
		data_inp : in std_logic_vector(7 downto 0) ;
		shamt : in std_logic_vector(2 downto 0) ;
		shmod : in std_logic ; 
		data_out : out std_logic_vector(7 downto 0));

end shifter;


architecture p2_3_arc of shifter is

begin

     process(data_inp, shamt, shmod) 
     begin
        if (shmod = '0') then
            data_out <= std_logic_vector(unsigned(data_inp) srl to_integer(unsigned(shamt)));
            
        else
            data_out <= to_stdlogicvector(to_bitvector(data_inp) sra to_integer(unsigned(shamt)));
        
        end if;
            
     end process;
end  p2_3_arc;




architecture p2_4_arc of shifter is

    signal f: std_logic;
    
    component mux is
        port (A,B,C,D,E,F,G,H: in std_logic;        
        sel : in std_logic_vector(2 downto 0);
        Y : out std_logic);
    end component;

begin

     -- write your code here
     f <= shmod and data_inp(7);
     
     mux1: mux port map(data_inp(7), f, f, f, f, f, f, f, shamt, data_out(7));
     mux2: mux port map(data_inp(6), data_inp(7), f, f, f, f, f, f, shamt, data_out(6));
     mux3: mux port map(data_inp(5), data_inp(6), data_inp(7), f, f, f, f, f, shamt, data_out(5));
     mux4: mux port map(data_inp(4), data_inp(5), data_inp(6), data_inp(7), f, f, f, f, shamt, data_out(4));
     mux5: mux port map(data_inp(3), data_inp(4), data_inp(5), data_inp(6), data_inp(7), f, f, f, shamt, data_out(3));
     mux6: mux port map(data_inp(2), data_inp(3), data_inp(4), data_inp(5), data_inp(6), data_inp(7), f, f, shamt, data_out(2));
     mux7: mux port map(data_inp(1), data_inp(2), data_inp(3), data_inp(4), data_inp(5), data_inp(6), data_inp(7), f, shamt, data_out(1));
     mux8: mux port map(data_inp(0), data_inp(1), data_inp(2), data_inp(3), data_inp(4), data_inp(5), data_inp(6), data_inp(7), shamt, data_out(0));


end  p2_4_arc;

------------------------------------------------
--- describe new modules here if needed --------
------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity mux is

    port (A,B,C,D,E,F,G,H: in std_logic;
    
    sel : in std_logic_vector(2 downto 0);
    
    
    Y : out std_logic);

end mux;

architecture mux8 of mux is

begin

    process (sel, A,B,C,D,E,F,G,H)
    
    begin
    
        case sel is
        
        when "000" => Y <=A;
        
        when "001" => Y <=B;
        
        when "010" => Y <=C;
        
        when "011" => Y <=D;
        
        when "100" => Y <=E;
        
        when "101" => Y <=F;
        
        when "110" => Y <=G;
        
        when "111" => Y <=H;
        
        when others => Y <=A;

    
    end case;
    
    end process;
    

end mux8;
