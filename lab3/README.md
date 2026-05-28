**Lab 3**: VHDL Code for Combinational Circuits (Encoder and Decoder)

**Objective**:
• To design and simulate a 4-to-2 priority encoder in VHDL.
• To design and simulate a 2-to-4 decoder in VHDL.

**Theory**:
Encoder:   An encoder converts 2n input lines into an n-bit binary code. Only one input is active (HIGH)
          at a time. A 4-to-2 encoder has 4 inputs (I0–I3) and produces a 2-bit output (Y1Y0).
          A priority encoder handles the case where multiple inputs are high simultaneously by
          giving priority to the highest-numbered active input.
📊 Encoder Truth Table (4-to-2)
| I3 I2 I1 I0 |Y1 Y0 |
|:-----:      |:------:|
| 0001        | 00   |
| 0010        | 01   |
| 0100        | 10   |
| 1000        | 11   |
	
Decoder: A decoder converts an n-bit binary input into one of 2n output lines. A 2-to-4 decoder has
          a 2-bit input (A1A0) and 4 output lines (Y0–Y3). Exactly one output is HIGH at a time.

## 📊 Decoder Truth Table (2-to-4)

| Input | Output |
|:-----:|:------:|
| 00    | 0001   |
| 01    | 0010   |
| 10    | 0100   |
| 11    | 1000   |

🧪 **Simulation Tools**:
GHDL (VHDL Simulator)
GTKWave (Waveform Viewer)

⚙️ **Simulation Commands**:
ghdl -a encoder.vhd
ghdl -a decoder.vhd
ghdl -a comb_tb.vhd
ghdl -e comb_tb
ghdl -r comb_tb --vcd=comb.vcd
gtkwave comb.vcd

📊 **Observation**:
Encoder converts one-hot input to binary output
Decoder converts binary input to one-hot output
Simulation matches expected truth tables

🧾 **Result**:Encoder and Decoder circuits were successfully designed and verified using VHDL simulation.

🏁 **Conclusion**:This experiment helped understand:
                  Combinational circuit design.
                  Encoder and decoder logic.
                  VHDL structural and behavioral modeling.
                  Simulation and waveform analysis.
