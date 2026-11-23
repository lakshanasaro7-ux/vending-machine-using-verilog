Vending Machine Using Verilog HDL

1. Project Overview

This project implements a digital vending machine controller using Verilog HDL. It is designed and simulated using Xilinx Vivado.

The vending machine accepts coin inputs, calculates the total credit, checks the product price, dispenses the product, and returns the remaining change.

2. Objectives

- To design a vending machine using Verilog HDL.
- To understand digital logic design.
- To implement coin detection and credit calculation.
- To generate product dispensing and change outputs.

3. Tools and Technologies

- HDL: Verilog
- Software: Xilinx Vivado
- Simulator: XSim
- FPGA Family: Artix-7
- Target Device: xc7a100tcsg324-1

4. Working Principle

1. The system starts with a reset.
2. The user inserts 5-unit or 10-unit coins.
3. The controller calculates the total credit.
4. The credit is compared with the product price.
5. If sufficient credit is available, the product is dispensed.
6. If extra money is inserted, the remaining amount is returned as change.

5. Project Features

- Coin input detection
- Credit calculation
- Price comparison
- Product dispensing
- Change return

6. Project Files

- vending_machine.v – Main Verilog RTL design.
- Testbench – Used for functional simulation.
- XDC file – FPGA pin constraints, if applicable.
- Simulation waveforms – Functional verification results.

7. Simulation

The design is tested using Xilinx Vivado Simulator (XSim).

Simulation test cases include:

- Reset condition.
- Coin input of 5 and 10 units.
- Sufficient credit.
- Excess credit and change calculation.

8. Applications

- Automated vending machines.
- Digital payment control systems.
- Embedded control applications.

9. Conclusion

The vending machine controller demonstrates the implementation of digital sequential logic using Verilog HDL. The project provides practical understanding of RTL design and functional simulation.

10. References

1. Samir Palnitkar, Verilog HDL: A Guide to Digital Design and Synthesis.
2. IEEE Standard 1364 – Verilog HDL.
3. AMD Xilinx Vivado Design Suite User Guide.
