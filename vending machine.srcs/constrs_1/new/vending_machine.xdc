## =========================================================
## VENDING MACHINE - NEXYS A7-100T
## FPGA: XC7A100T-CSG324-1
## =========================================================


## =========================================================
## CLOCK
## Nexys A7 100 MHz onboard clock
## =========================================================

set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports clk]

create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


## =========================================================
## RESET
## BTNU - Push button
## =========================================================

set_property -dict { PACKAGE_PIN M18 IOSTANDARD LVCMOS33 } [get_ports reset]


## =========================================================
## MONEY INPUT
##
## SW0 = ₹5
## SW1 = ₹10
## SW2 = ₹15
##
## Encoded as:
## 000 = ₹0
## 001 = ₹5
## 010 = ₹10
## 011 = ₹15
## 100 = ₹20
## =========================================================

set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports {money[0]}]

set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports {money[1]}]

set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports {money[2]}]


## =========================================================
## PRODUCT SELECTION
##
## SW3 = Product selection
## 0 = Product A
## 1 = Product B
## =========================================================

set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports product_select]


## =========================================================
## BUY BUTTON
##
## BTNC = Buy
## =========================================================

set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports buy]


## =========================================================
## PRODUCT A LED
## LED0
## =========================================================

set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports product_a]


## =========================================================
## PRODUCT B LED
## LED1
## =========================================================

set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports product_b]


## =========================================================
## CHANGE AVAILABLE LED
## LED2
## =========================================================

set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports change_available]


## =========================================================
## INSUFFICIENT MONEY LED
## LED3
## =========================================================

set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports insufficient_money]


## =========================================================
## CHANGE OUTPUT
##
## LED4 = change[0]
## LED5 = change[1]
## LED6 = change[2]
## =========================================================

set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports {change[0]}]

set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports {change[1]}]

set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports {change[2]}]

 