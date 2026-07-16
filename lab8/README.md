# Lab 8: VHDL Sequential Circuits – Counters

## Overview

This laboratory focuses on the design, simulation, and verification of two fundamental sequential circuits using VHDL:

- 4-bit Synchronous Up Counter
- 4-bit Synchronous Up/Down Counter

The simulation is performed using **GHDL**, and the waveforms are analyzed using **GTKWave**.

---

# Objectives

- Design a 4-bit synchronous up counter using VHDL.
- Design a 4-bit synchronous up/down counter using VHDL.
- Simulate both counters using GHDL.
- Observe and verify counter outputs using GTKWave.
- Understand synchronous counting and reset operations.

---

# Theory

A **counter** is a sequential digital circuit that changes its state in response to clock pulses. Counters are widely used in digital systems for counting events, frequency division, timing, memory addressing, and control applications.

Unlike combinational circuits, counters store information using flip-flops.

## 1. Synchronous Counter

In a synchronous counter, every flip-flop receives the same clock signal simultaneously. Therefore, all flip-flops change state together on the active clock edge.

### Advantages

- High operating speed
- No ripple delay
- Reliable operation
- Suitable for high-frequency circuits

---

## 2. 4-bit Up Counter

A 4-bit up counter increments its value by one on every rising edge of the clock.

Example sequence:

| Clock Pulse | Count |
|-------------|-------|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| ... | ... |
| 15 | 1111 |
| Next | 0000 |

After reaching **1111 (15)**, the counter wraps around to **0000**.

---

## 3. 4-bit Up/Down Counter

A 4-bit up/down counter can either increment or decrement depending on the direction control input.

- **UP = 1** → Count Up
- **UP = 0** → Count Down

Example:

### Up Counting

0000 → 0001 → 0010 → 0011 → ...

### Down Counting

1111 → 1110 → 1101 → 1100 → ...

---

## 4. Reset

The reset signal initializes the counter.

- **RST = 1** → Counter becomes 0000
- **RST = 0** → Normal counting operation

---

# Software Requirements

- GHDL
- GTKWave
- Visual Studio Code (optional)

---

# Project Files

```
counter_up.vhd
counter_updown.vhd
counter_tb.vhd
README.md
```

---

# Compilation

Analyze all VHDL files:

```bash
ghdl -a counter_up.vhd counter_updown.vhd counter_tb.vhd
```

Elaborate the testbench:

```bash
ghdl -e COUNTER_TB
```

Run the simulation and generate the VCD file:

```bash
ghdl -r COUNTER_TB --vcd=counters.vcd
```

Open the waveform:

```bash
gtkwave counters.vcd
```

---

# Signals to Observe

Add the following signals in GTKWave:

- CLK
- RST
- UP
- COUNT_UP
- COUNT_UD

For better readability, change the COUNT signals to **Decimal** format.

---

# Expected Simulation

### During Reset

- RST = 1
- Both counters become **0**

---

### Up Counter

The counter continuously increments:

```
0
1
2
3
4
5
...
15
0
```

---

### Up/Down Counter

When **UP = 1**

```
0
1
2
3
4
...
```

When **UP = 0**

```
10
9
8
7
6
...
```

When reset is asserted again, the counter returns to:

```
0
```

and resumes counting upward.

---

# Waveform Verification

The waveform should demonstrate the following behavior:

- Clock toggles every 20 ns.
- Reset initializes both counters to zero.
- The synchronous up counter increments after every rising clock edge.
- The up/down counter increments while **UP = 1**.
- The up/down counter decrements while **UP = 0**.
- Reset clears both counters during simulation.
- Both counters respond only on the rising edge of the clock.

---

# Observations

- Both counters operate synchronously using a common clock.
- The reset signal correctly initializes the counters.
- The up counter increases its value sequentially.
- The up/down counter changes counting direction according to the UP control signal.
- Simulation results match the expected theoretical operation.

---

# Applications

- Digital clocks
- Timers
- Frequency dividers
- Event counters
- Program counters
- Memory addressing
- Digital control systems
- Embedded systems

---

# Advantages

- Fast operation
- Simple implementation
- Accurate counting
- No ripple delay
- Easily expandable to larger bit widths

---
# output
![image](counter_.png)


# Conclusion

This experiment successfully demonstrated the design and simulation of a 4-bit synchronous up counter and a 4-bit synchronous up/down counter using VHDL. Simulation in GHDL and waveform analysis in GTKWave verified that both counters function correctly according to their specifications. The counters responded only on the rising edge of the clock, the reset signal initialized the count to zero, and the up/down counter correctly changed its counting direction based on the UP control signal. The experiment reinforces the concepts of sequential logic, synchronous design, and counter implementation in digital systems.
