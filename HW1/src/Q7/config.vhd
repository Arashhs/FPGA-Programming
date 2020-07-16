library IEEE;
use work.all; 


configuration FIG5_Circuit_Config of FIG5_Circuit is
  for MAX_ARCH
    for MAX1, MAX2: Maximum 
    use entity work.Maximum(MAX_POS);
    end for;
    
    for MAX3: Maximum use
        entity work.Maximum(MAX_SOP);
    end for;
    end for;
end configuration FIG5_Circuit_Config;