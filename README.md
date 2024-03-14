# Matrix-Multiplier-RTL-to-GDSII
# 16x16 Matrix Multiplier Design

## Overview
This project focuses on designing a 16x16 matrix multiplier, a crucial functional block used in various computational tasks such as image processing, signal processing, and neural networks. The multiplier takes two 16x16 matrices as inputs and produces the result of their multiplication.

## Technology and Tools
- **Technology**: Skywater OpenPDK 130nm
- **Tools Used**: OpenLane for the RTL to GDSII flow.

## Design Blocks
1. **RTL Design**: 
   - RTL code in Verilog HDL for the 16x16 matrix multiplier.
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
- `rtl/`: Contains Verilog HDL files for the matrix multiplier.
- `synthesis/`: Holds synthesis scripts, reports, and synthesized netlist.
- `layout/`: Contains layout files including GDS, spice, and .oa files.
- `docs/`: Documentation related to the design process.

## Design Details
- **Matrix Multiplier**: RTL code implements a 16x16 matrix multiplier.
- **Clock Frequency**: 50MHz 
- **Area**: 50mm sq.




