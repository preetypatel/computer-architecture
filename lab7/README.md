
## Lab 7: Sequential Circuits Using VHDL (Flip-Flops)


### Lab Title
Design and Simulation of Sequential Circuits Using VHDL

---

## Objective

The objectives of this laboratory are:

- Design SR, D, JK, and T Flip-Flops using VHDL.
- Simulate the behavior of each flip-flop using GHDL.
- Verify the outputs using GTKWave waveform viewer.
- Understand the importance of clock signals in sequential circuits.
- Compare the operation of different types of flip-flops.

---

## Introduction

Sequential circuits are digital circuits whose outputs depend on both the current inputs and the previous state of the system. Unlike combinational circuits, sequential circuits require memory elements to store information. Flip-flops are the most commonly used memory elements in digital systems.

Each flip-flop stores one bit of binary data and changes its state only when a clock pulse is received. Because of this characteristic, flip-flops are widely used in registers, counters, shift registers, memory units, and processor control circuits.

In this laboratory, four types of flip-flops were designed and simulated using VHDL:

- SR Flip-Flop
- D Flip-Flop
- JK Flip-Flop
- T Flip-Flop

---

## Theory

### 1. SR Flip-Flop

The SR (Set-Reset) Flip-Flop is the simplest sequential memory device.

Inputs:
- S (Set)
- R (Reset)

Operation:

| S | R | Next State |
|---|---|------------|
|0|0|No Change|
|0|1|Reset (Q=0)|
|1|0|Set (Q=1)|
|1|1|Forbidden|

The forbidden condition should be avoided because it produces an undefined output.

---

### 2. D Flip-Flop

The D (Data) Flip-Flop removes the invalid state present in the SR flip-flop.

Operation:

- On every rising edge of the clock,
  - Q = D

Truth Table

| D | Q(next) |
|---|---------|
|0|0|
|1|1|

It is mainly used in registers and memory circuits.

---

### 3. JK Flip-Flop

The JK Flip-Flop improves the SR Flip-Flop by eliminating the forbidden state.

Truth Table

| J | K | Next State |
|---|---|------------|
|0|0|No Change|
|0|1|Reset|
|1|0|Set|
|1|1|Toggle|

The toggle condition makes it useful in counters.

---

### 4. T Flip-Flop

The T (Toggle) Flip-Flop changes its output whenever T = 1.

Truth Table

| T | Next State |
|---|------------|
|0|Hold|
|1|Toggle|

It is commonly used in binary counters and frequency dividers.

---

## Software Requirements

- Ubuntu Linux / Windows with WSL
- GHDL Simulator
- GTKWave
- Text Editor (VS Code)

---

## Files Included

```
sr_ff.vhd
d_ff.vhd
jk_ff.vhd
t_ff.vhd
ff_tb.vhd
README.md
```

---

## Simulation Procedure

1. Compile all VHDL source files.
2. Elaborate the testbench.
3. Execute the simulation.
4. Generate the VCD waveform file.
5. Open the waveform using GTKWave.
6. Observe the outputs of all four flip-flops.
7. Compare the outputs with their expected truth tables.

---

## Expected Simulation Results

### SR Flip-Flop

- S=1, R=0 → Output is Set.
- S=0, R=1 → Output is Reset.
- S=0, R=0 → Previous state is retained.

---

### D Flip-Flop

- Output follows the D input on every rising clock edge.
- Between clock edges, the output remains unchanged.

---

### JK Flip-Flop

- J=1, K=0 → Set
- J=0, K=1 → Reset
- J=1, K=1 → Toggle
- J=0, K=0 → Hold

---

### T Flip-Flop

- T=1 → Output toggles every clock pulse.
- T=0 → Output remains unchanged.

---

## Applications

### SR Flip-Flop

- Basic memory storage
- Latches
- Control circuits

### D Flip-Flop

- Registers
- Shift Registers
- Data Storage
- Pipeline Registers

### JK Flip-Flop

- Counters
- Frequency Dividers
- Control Logic

### T Flip-Flop

- Binary Counters
- Ripple Counters
- Frequency Division Circuits

---

## Advantages

- Stores one bit of data.
- Synchronous operation with clock.
- Fundamental building block of sequential circuits.
- Widely used in digital systems.
- Easy to model using VHDL.

---

## output
[!image](lab7.png)



## Conclusion

This laboratory demonstrated the design and simulation of SR, D, JK, and T Flip-Flops using VHDL. The generated waveforms verified that each flip-flop behaves according to its truth table. The experiment provided practical understanding of sequential logic, clock-triggered operations, and state storage, which are essential concepts in digital system design and computer architecture.

---

## Discussion

This laboratory involved the design and simulation of **SR, D, JK, and T Flip-Flops** using VHDL. The simulation results verified that each flip-flop operated correctly according to its truth table and responded only on the **rising edge of the clock**. The generated waveforms in **GTKWave** matched the expected outputs, confirming the correctness of the VHDL designs and testbench. Overall, the experiment improved understanding of sequential logic, clock-controlled circuits, and the implementation and simulation of flip-flops using VHDL.
