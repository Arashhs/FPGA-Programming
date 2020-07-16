----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2020 06:38:33 AM
-- Design Name: 
-- Module Name: Maximum - MAX_SOP
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Maximum is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           RES : out STD_LOGIC_VECTOR (1 downto 0));
end Maximum;

architecture MAX_SOP of Maximum is

begin
    RES(0) <= (not A(1) and B(0)) or (A(0) and not B(1)) or (B(0) and B(1)) or (A(0) and A(1));
    RES(1) <= (A(1)) or (B(1));

end MAX_SOP;

architecture MAX_POS of Maximum is

begin
    RES(0) <= (A(0) or B(0)) and (B(1) or not A(1) or A(0)) and (not B(1) or B(0) or A(1));
    RES(1) <= (A(1) or B(1));
    
end MAX_POS;