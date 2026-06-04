**Lab 4: VHDL Code for Combinational Circuits (MUX and DEMUX)**

**Objective:**
• To design and simulate a 4-to-1 Multiplexer (MUX) in VHDL.
• To design and simulate a 1-to-4 Demultiplexer (DEMUX) in VHDL.

**Theory:**

**1.Multiplexer(MUX):**
      A multiplexer selects one of 2n input data lines and routes it to a single output based on n
      select lines. A 4-to-1 MUX has 4 data inputs (D0–D3), 2 select lines (S1S0), and 1 output (Y).

| S1 | S0 | Y  |
| -- | -- | -- |
| 0  | 0  | D0 |
| 0  | 1  | D1 |
| 1  | 0  | D2 |
| 1  | 1  | D3 |

**2.Demultiplexer(DEMUX):**
        A demultiplexer routes a single input to one of 2n output lines based on n select lines. A 1-to-4
        DEMUX has 1 data input (D), 2 select lines (S1S0), and 4 outputs (Y0–Y3).

| S1 | S0 | Y             |
| -- | -- | ------------- |
| 0  | 0  | Y0 = D        |
| 0  | 1  | Y1 = D        |
| 1  | 0  | Y2 = D        |
| 1  | 1  | Y3 = D        |

**Applications:**
**1.Multiplexer:**
  a.Data routing systems
  b.Communication networks
  c.Digital signal processing
  d.Resource sharing in digital systems

**2.Demultiplexer:**
  a.Data distribution systems
  b.Memory addressing
  c.Communication receivers
  d.Signal routing applications

**Observation:**
     The Multiplexer correctly selected one input from four inputs based on the select lines.
      The Demultiplexer successfully routed the input signal to the selected output line.
      Simulation waveforms confirmed the proper operation of both combinational circuits.

**Conclusion:**
The experiment was successfully completed. VHDL code for a 4-to-1 Multiplexer and a 1-to-4 Demultiplexer was designed, implemented, and simulated. The obtained outputs matched the theoretical truth tables, confirming the correct operation of the combinational circuits. This lab enhanced understanding of digital design using VHDL and the practical implementation of MUX and DEMUX circuits.
