set_property PACKAGE_PIN T22 [get_ports {leds_8bits1[0]}]
set_property PACKAGE_PIN T21 [get_ports {leds_8bits1[1]}]
set_property PACKAGE_PIN U22 [get_ports {leds_8bits1[2]}]
set_property PACKAGE_PIN U21 [get_ports {leds_8bits1[3]}]
set_property PACKAGE_PIN V22 [get_ports {leds_8bits1[4]}]
set_property PACKAGE_PIN W22 [get_ports {leds_8bits1[5]}]
set_property PACKAGE_PIN U19 [get_ports {leds_8bits1[6]}]
set_property PACKAGE_PIN U14 [get_ports {leds_8bits1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_8bits1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports trigger_input]
set_property IOSTANDARD LVCMOS33 [get_ports trigger_out]
set_property IOSTANDARD LVCMOS33 [get_ports adc_base_clock]
set_property PACKAGE_PIN F22 [get_ports {sws_8bits[0]}]
set_property PACKAGE_PIN G22 [get_ports {sws_8bits[1]}]
set_property PACKAGE_PIN H22 [get_ports {sws_8bits[2]}]
set_property PACKAGE_PIN F21 [get_ports {sws_8bits[3]}]
set_property PACKAGE_PIN H19 [get_ports {sws_8bits[4]}]
set_property PACKAGE_PIN H18 [get_ports {sws_8bits[5]}]
set_property PACKAGE_PIN H17 [get_ports {sws_8bits[6]}]
set_property PACKAGE_PIN M15 [get_ports {sws_8bits[7]}]
set_property PACKAGE_PIN W12 [get_ports trigger_input]
set_property PACKAGE_PIN W11 [get_ports trigger_out]
set_property PACKAGE_PIN V10 [get_ports adc_base_clock]

set_property PACKAGE_PIN P16 [get_ports {normal}]
set_property PACKAGE_PIN N15 [get_ports {random}]
set_property PACKAGE_PIN R18 [get_ports {pattern}]
set_property IOSTANDARD LVCMOS25 [get_ports {normal}]
set_property IOSTANDARD LVCMOS25 [get_ports {random}]
set_property IOSTANDARD LVCMOS25 [get_ports {pattern}]

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 34
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN L19 [get_ports {FMC_CLK0_N}];  # "FMC-CLK0_N"
#set_property PACKAGE_PIN L18 [get_ports {FMC_CLK0_P}];  # "FMC-CLK0_P"
set_property PACKAGE_PIN M20 [get_ports {sensor_frame_1_n}];  # "FMC-LA00_CC_N"
set_property PACKAGE_PIN M19 [get_ports {sensor_frame_1_p}];  # "FMC-LA00_CC_P"
set_property PACKAGE_PIN N20 [get_ports {sensor_clock_0_n}];  # "FMC-LA01_CC_N"
set_property PACKAGE_PIN N19 [get_ports {sensor_clock_0_p}];  # "FMC-LA01_CC_P"
#set_property PACKAGE_PIN P18 [get_ports {FMC_LA02_N}];  # "FMC-LA02_N"
#set_property PACKAGE_PIN P17 [get_ports {FMC_LA02_P}];  # "FMC-LA02_P"
set_property PACKAGE_PIN P22 [get_ports {sensor_1a_n}]; # "FMC-LA03_N"
set_property PACKAGE_PIN N22 [get_ports {sensor_1a_p}]; # "FMC-LA03_P"
set_property PACKAGE_PIN M22 [get_ports {sensor_2a_n}]; # "FMC-LA04_N"
set_property PACKAGE_PIN M21 [get_ports {sensor_2a_p}]; # "FMC-LA04_P"
#set_property PACKAGE_PIN K18 [get_ports {FMC_LA05_N}];  # "FMC-LA05_N"
#set_property PACKAGE_PIN J18 [get_ports {FMC_LA05_P}];  # "FMC-LA05_P"
#set_property PACKAGE_PIN L22 [get_ports {FMC_LA06_N}];  # "FMC-LA06_N"
#set_property PACKAGE_PIN L21 [get_ports {FMC_LA06_P}];  # "FMC-LA06_P"
set_property PACKAGE_PIN T17 [get_ports {sensor_2b_n}]; # "FMC-LA07_N"
set_property PACKAGE_PIN T16 [get_ports {sensor_2b_p}]; # "FMC-LA07_P"
set_property PACKAGE_PIN J22 [get_ports {sensor_1b_n}];  # "FMC-LA08_N"
set_property PACKAGE_PIN J21 [get_ports {sensor_1b_p}];  # "FMC-LA08_P"
#set_property PACKAGE_PIN R21 [get_ports {FMC_LA09_N}];  # "FMC-LA09_N"
#set_property PACKAGE_PIN R20 [get_ports {FMC_LA09_P}];  # "FMC-LA09_P"
set_property PACKAGE_PIN T19 [get_ports {csb}];  # "FMC-LA10_N"
#set_property PACKAGE_PIN R19 [get_ports {SDOB}];  # "FMC-LA10_P"
set_property PACKAGE_PIN N18 [get_ports {sensor_3a_n}]; # "FMC-LA11_N"
set_property PACKAGE_PIN N17 [get_ports {sensor_3a_p}]; # "FMC-LA11_P"
set_property PACKAGE_PIN P21 [get_ports {sensor_4a_n}]; # "FMC-LA12_N"
set_property PACKAGE_PIN P20 [get_ports {sensor_4a_p}]; # "FMC-LA12_P"
#set_property PACKAGE_PIN M17 [get_ports {FMC_LA13_N}];  # "FMC-LA13_N"
#set_property PACKAGE_PIN L17 [get_ports {FMC_LA13_P}];  # "FMC-LA13_P"
#set_property PACKAGE_PIN K20 [get_ports {SDOA}];  # "FMC-LA14_N"
set_property PACKAGE_PIN K19 [get_ports {csa}];  # "FMC-LA14_P"
set_property PACKAGE_PIN J17 [get_ports {sensor_3b_n}]; # "FMC-LA15_N"
set_property PACKAGE_PIN J16 [get_ports {sensor_3b_p}]; # "FMC-LA15_P"
set_property PACKAGE_PIN K21 [get_ports {sensor_4b_n}]; # "FMC-LA16_N"
set_property PACKAGE_PIN J20 [get_ports {sensor_4b_p}]; # "FMC-LA16_P"

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 35
## ----------------------------------------------------------------------------
#set_property PACKAGE_PIN C19 [get_ports {FMC_CLK1_N}];  # "FMC-CLK1_N"
#set_property PACKAGE_PIN D18 [get_ports {FMC_CLK1_P}];  # "FMC-CLK1_P"
set_property PACKAGE_PIN B20 [get_ports {sensor_clock_1_n}];  # "FMC-LA17_CC_N"
set_property PACKAGE_PIN B19 [get_ports {sensor_clock_1_p}];  # "FMC-LA17_CC_P"
set_property PACKAGE_PIN C20 [get_ports {sensor_frame_0_n}];  # "FMC-LA18_CC_N"
set_property PACKAGE_PIN D20 [get_ports {sensor_frame_0_p}];  # "FMC-LA18_CC_P"
#set_property PACKAGE_PIN G16 [get_ports {FMC_LA19_N}];  # "FMC-LA19_N"
#set_property PACKAGE_PIN G15 [get_ports {FMC_LA19_P}];  # "FMC-LA19_P"
#set_property PACKAGE_PIN G21 [get_ports {FMC_LA20_N}];  # "FMC-LA20_N"
#set_property PACKAGE_PIN G20 [get_ports {FMC_LA20_P}];  # "FMC-LA20_P"
set_property PACKAGE_PIN E20 [get_ports {sensor_6a_n}]; # "FMC-LA21_N"
set_property PACKAGE_PIN E19 [get_ports {sensor_6a_p}]; # "FMC-LA21_P"
set_property PACKAGE_PIN F19 [get_ports {sensor_5a_n}]; # "FMC-LA22_N"
set_property PACKAGE_PIN G19 [get_ports {sensor_5a_p}]; # "FMC-LA22_P"
#set_property PACKAGE_PIN D15 [get_ports {FMC_LA23_N}];  # "FMC-LA23_N"
#set_property PACKAGE_PIN E15 [get_ports {FMC_LA23_P}];  # "FMC-LA23_P"
set_property PACKAGE_PIN A19 [get_ports {sensor_6b_n}]; # "FMC-LA24_N"
set_property PACKAGE_PIN A18 [get_ports {sensor_6b_p}]; # "FMC-LA24_P"
set_property PACKAGE_PIN C22 [get_ports {sensor_5b_n}]; # "FMC-LA25_N"
set_property PACKAGE_PIN D22 [get_ports {sensor_5b_p}]; # "FMC-LA25_P"
#set_property PACKAGE_PIN E18 [get_ports {FMC_LA26_N}];  # "FMC-LA26_N"
#set_property PACKAGE_PIN F18 [get_ports {FMC_LA26_P}];  # "FMC-LA26_P"
set_property PACKAGE_PIN D21 [get_ports {sck}];  # "FMC-LA27_N"
set_property PACKAGE_PIN E21 [get_ports {mosi}];  # "FMC-LA27_P"
set_property PACKAGE_PIN A17 [get_ports {sensor_7a_n}]; # "FMC-LA28_N"
set_property PACKAGE_PIN A16 [get_ports {sensor_7a_p}]; # "FMC-LA28_P"
set_property PACKAGE_PIN C18 [get_ports {sensor_8a_n}]; # "FMC-LA29_N"
set_property PACKAGE_PIN C17 [get_ports {sensor_8a_p}]; # "FMC-LA29_P"
set_property PACKAGE_PIN B15 [get_ports {sensor_7b_n}]; # "FMC-LA30_N"
set_property PACKAGE_PIN C15 [get_ports {sensor_7b_p}]; # "FMC-LA30_P"
set_property PACKAGE_PIN B17 [get_ports {sensor_8b_n}]; # "FMC-LA31_N"
set_property PACKAGE_PIN B16 [get_ports {sensor_8b_p}]; # "FMC-LA31_P"
#set_property PACKAGE_PIN A22 [get_ports {FMC_LA32_N}];  # "FMC-LA32_N"
#set_property PACKAGE_PIN A21 [get_ports {FMC_LA32_P}];  # "FMC-LA32_P"
#set_property PACKAGE_PIN B22 [get_ports {FMC_LA33_N}];  # "FMC-LA33_N"
#set_property PACKAGE_PIN B21 [get_ports {FMC_LA33_P}];  # "FMC-LA33_P"

set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[7]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sws_8bits[5]}]

set_property PULLDOWN true [get_ports trigger_input]

set_property IOSTANDARD LVDS_25 [get_ports {sensor_1a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_1a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_1b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_1b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_2a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_2a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_2b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_2b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_3a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_3a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_3b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_3b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_4a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_4a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_4b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_4b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_5a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_5a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_5b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_5b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_6a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_6a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_6b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_6b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_7a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_7a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_7b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_7b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_8a_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_8a_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_8b_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_8b_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_clock_0_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_clock_0_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_clock_1_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_clock_1_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_frame_0_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_frame_0_p}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_frame_1_n}]
set_property IOSTANDARD LVDS_25 [get_ports {sensor_frame_1_p}]

set_property IOSTANDARD LVCMOS25 [get_ports {csa}]
set_property IOSTANDARD LVCMOS25 [get_ports {csb}]
set_property IOSTANDARD LVCMOS25 [get_ports {mosi}]
set_property IOSTANDARD LVCMOS25 [get_ports {sck}]
