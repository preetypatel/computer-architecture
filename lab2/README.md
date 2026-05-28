**Lab 2**: VHDL Code for Realizing Logic Gates

**Objective**:
• To write VHDL code for basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.
• To simulate each gate and verify its truth table using GTKWave.

**Theory**:
Logic gates are the fundamental building blocks of all digital circuits. Each gate performs a
basic Boolean operation on one or more binary inputs to produce a single binary output.

**Gate VHDL Operator Boolean Expression**:
AND and Y = A · B
OR or Y = A + B
NOT not Y = A
NAND nand Y = A · B
NOR nor Y = A + B
XOR xor Y = A ⊕ B
XNOR xnor Y = A ⊕ B

**Truth table**:
| A | B | AND | OR | NOT A | NAND | NOR | XOR |
| - | - | --- | -- | ----- | ---- | --- | --- |
| 0 | 0 | 0   | 0  | 1     | 1    | 1   | 0   |
| 0 | 1 | 0   | 1  | 1     | 1    | 0   | 1   |
| 1 | 0 | 0   | 1  | 0     | 1    | 0   | 1   |
| 1 | 1 | 1   | 1  | 0     | 0    | 0   | 0   |


**Simulation Tool**:
GHDL (VHDL simulator)
GTKWave (waveform viewer)

**Simulation Steps**:
ghdl -a logic_gates.vhd
ghdl -a logic_gates_tb.vhd
ghdl -e logic_gates_tb
ghdl -r logic_gates_tb --vcd=logic.vcd
gtkwave logic.vcd

📸**Output Observation**:Waveforms show correct behavior of all logic gates Outputs match truth table values

🧾 **Result**:  All logic gates were successfully implemented using VHDL and verified using simulation.

🏁 **Conclusion**: This experiment helped understand:
                    Basic logic gate operations.
                    VHDL coding structure.
                    Testbench simulation.
                    Digital waveform analysis.

