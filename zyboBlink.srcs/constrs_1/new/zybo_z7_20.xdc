# System clock
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { sysclk }];

# Logic LEDs
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { LED[0] }];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { LED[1] }];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports { LED[2] }];
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { LED[3] }];

# Pmod Connector JE
set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[0] }];
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[1] }];
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[2] }];
set_property -dict { PACKAGE_PIN H15 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[3] }];
set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[4] }];
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[5] }];
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[6] }];
set_property -dict { PACKAGE_PIN Y17 IOSTANDARD LVCMOS33 } [get_ports { pmod8ld[7] }];

# RGB LED LD5   
set_property -dict { PACKAGE_PIN Y11 IOSTANDARD LVCMOS33 } [get_ports { RGB0[0] }]; # red
set_property -dict { PACKAGE_PIN T5 IOSTANDARD LVCMOS33 } [get_ports { RGB0[1] }]; # green
set_property -dict { PACKAGE_PIN Y12 IOSTANDARD LVCMOS33 } [get_ports { RGB0[2] }]; # blue

# RGB LED LD6   
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { RGB1[0] }]; # red
set_property -dict { PACKAGE_PIN F17 IOSTANDARD LVCMOS33 } [get_ports { RGB1[1] }]; # green
set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { RGB1[2] }]; # blue