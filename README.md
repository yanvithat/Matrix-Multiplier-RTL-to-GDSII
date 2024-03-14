# Matrix-Multiplier-RTL-to-GDSII


## Overview
This project focuses on designing a 8-bit 16x16 Matrix Multiplier, a crucial functional block used in various computational tasks such as image processing, signal processing, and neural networks. The multiplier takes two 16x16 matrices as inputs and produces the result of their multiplication.

## Technology and Tools
- **Technology**: Skywater OpenPDK 130nm
- **Tools Used**: OpenLane for the RTL to GDSII flow.

## Design Blocks
1. **RTL Design**: 
   - RTL code in Verilog HDL for the 8-bit 16x16 Matrix Multiplier.
   - Verification of the functionality through simulation.

2. **Synthesis**:
   - Utilize OpenLane tool to synthesize Verilog code targeting Sky130 CMOS technology.
   - Generate synthesis reports for analysis.

3. **Layout**:
   - Design layout adhering to Sky130 CMOS design rules.
   - Ensure proper placement and routing for optimal performance.

4. **Simulation and Verification**:
   - Verify the functionality of the layout through post-layout simulation.
   - Ensure that the design meets timing and performance requirements.

## Directory Structure
- `rtl/`: Contains Verilog HDL files for the Matrix Multiplier.
- `synthesis/`: Holds synthesized netlist and power netlist.
- `layout/`: Contains layout files including .gds, .spice, .lef and .ext files.
- `reports/`: Contains manufacturibility report, power and STA reports
- `metrics/`: Contains metrics.csv file, detailing area, recommended clock frequency, wire lengths etc

## Design Details
- **Matrix Multiplier**: RTL code implements a 16x16 Matrix Multiplier.
- **Clock Frequency**: 90MHz
- **Die Area**: 51058.57 um^2
- **Core Area**: 43835.792 um^2
- **Power Requirement**: 1.8V




