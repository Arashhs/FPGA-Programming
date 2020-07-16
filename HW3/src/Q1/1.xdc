create_clock -period 50.000 -name clk
create_clock -period 50.000 -name clk -waveform {0.000 25.000} [get_ports clock]
create_clock -period 26.000 -name clk -waveform {0.000 25.000} [get_ports clock]
create_clock -period 1.000 -name clk -waveform {0.000 0.005} [get_ports clock]
