--/*
--**********************************************************
--  Design Automation Course Homework (Spring, 2020 Semester)
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce.aut.ac.ir
--  Designed TA (ali[dot]mohammadpour[at]ac[dot]ir)
--  *******************************************************
--  Student ID  : 9631019
--  Student Name: Arash Hajisafi
--  Student Mail: hajisafiarash@gmail.com
--  *******************************************************
--  Module: ProblemSet 3, Problem 3
--  *******************************************************
--  Additional Comments:
--*/

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity booth_multiplier is
	generic (
		n : positive := 8
	);
	port (
		clk : in std_logic ;
		reset : in std_logic ;
		m : in std_logic_vector(n-1 downto 0) ;
		r : in std_logic_vector(n-1 downto 0) ;
		result : out std_logic_vector((2 * n - 1) downto 0)
  );

end booth_multiplier;

architecture booth_multiplier_arc of booth_multiplier is
type state is (start, run, finish);
signal cur_state: state;


component counter is
	generic (
		n : positive := 8
	);
    Port ( clock : in STD_LOGIC;
           enable: in STD_LOGIC;
           reset : in STD_LOGIC;
           count_flag : out STD_LOGIC);
end component;

component Adder_Subtractor is
    generic (
		n : positive := 8
	);
    port(
        InputA, InputB: in STD_LOGIC_VECTOR(2*n+1 downto 0);
        Operation: in std_logic;
        Result: out STD_LOGIC_VECTOR(2*n+1 downto 0)
    );
end component;

signal counter_flag: std_logic;
signal add_res, sub_res: std_logic_vector(2*n+1 downto 0);

BEGIN
    counter1: counter generic map(n) port map(clk, '1', reset,counter_flag);
--	adder1: Adder_Subtractor generic map(n) port map (p, a, '0', add_res);
--	adder2: Adder_Subtractor generic map(n) port map (p, a, '1', sub_res);
	    
	PROCESS(clk)
		
		CONSTANT X_ZEROS : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (OTHERS => '0');
		CONSTANT Y_ZEROS : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (OTHERS => '0');
		


    VARIABLE a, s, p : STD_LOGIC_VECTOR(2*n + 1 DOWNTO 0) := (OTHERS => '0');
		VARIABLE mn      : STD_LOGIC_VECTOR(n - 1 DOWNTO 0);
	BEGIN
	if(rising_edge(clk)) then
		if(reset = '1') then
		  cur_state <= start;
		  a := (others => '0');
		  s := (others => '0');
		  p := (others => '0');
		else
		  case cur_state is
		      when start =>
		        a(2*n DOWNTO n + 1) := m;
                a(2*n + 1) := m(n - 1);
                
                mn := std_logic_vector(signed(NOT m)+ 1);
                
                s(2*n DOWNTO n + 1) := mn;
                s(2*n + 1) := NOT(m(n - 1));
                
                p(n DOWNTO 1) := r;
                cur_state <= run;
              
              when run =>
              if(counter_flag = '0') then                
                IF (m /= X_ZEROS AND r /= Y_ZEROS) THEN
                    
                        
                        IF (p(1 DOWNTO 0) = "01") THEN
                            p := std_logic_vector(signed(p) + signed(a));
                        ELSIF (p(1 DOWNTO 0) = "10") THEN
                            p := std_logic_vector(signed(p) + signed(s));
                        END IF;
                    
                    -- Shift Right Arithmetic
                    p(2*n DOWNTO 0) := p(2*n + 1 DOWNTO 1);
                
        --		END LOOP;
                else
                       p := (others => '0'); 
                
                 END IF;
            		
		      result <= p(2*n DOWNTO 1);
		      
		      else
		          cur_state <= finish;
		      end if;
		      
		  when others =>
		      null;
		      
		  end case;
		  end if;
		  end if;
		
	END PROCESS;
	
	end booth_multiplier_arc;
	
	
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

	entity counter is
	generic (
		n : positive := 8
	);
    Port ( clock : in STD_LOGIC;
           enable: in STD_LOGIC;
           reset : in STD_LOGIC;
           count_flag : out STD_LOGIC);
end counter;

architecture Behavioral of counter is

    component full_adder
        Port ( 
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Cin : in STD_LOGIC;
            Cout : out STD_LOGIC;
            S : out STD_LOGIC);
    end component;
    
    signal count: integer := n;
        
    begin
    process(clock)
    begin
        if(rising_edge(clock)) then
            if(reset = '1') then
                count<=n;
                count_flag<='0';
            elsif(count = 0) then
                count_flag<='1';
                count<= n;
            elsif(enable = '1') then
                count<=count - 1;
            end if;
        end if;
    end process;

end Behavioral;




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder_Subtractor is
    generic (
		n : positive := 8
	);
    port(
        InputA, InputB: in STD_LOGIC_VECTOR((2*n+1) downto 0);
        Operation: in std_logic;
        Result: out STD_LOGIC_VECTOR((2*n+1) downto 0)
    );
end Adder_Subtractor;

architecture Behavioral of Adder_Subtractor is
begin
    Result <= std_logic_vector(signed(InputA) + signed(InputB)) when Operation = '0' else
              std_logic_vector(signed(InputA) - signed(InputB));

end Behavioral;
