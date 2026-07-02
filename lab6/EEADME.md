# Lab 6: VHDL Code for Combinational Circuits – Code Converter

## Course
**Computer Architecture (CMP 262)**

## Lab Title
**Lab 6: VHDL Code for Combinational Circuits – Code Converter**

---

# Objective

- Design and simulate a **BCD-to-Excess-3 Code Converter** using VHDL.
- Design and simulate a **Binary-to-Gray Code Converter** using VHDL.
- Understand the implementation of combinational logic circuits using VHDL.
- Verify the functionality of both converters through simulation using GHDL and GTKWave.

---

# Theory

## 1. BCD to Excess-3 Code Converter

Binary Coded Decimal (BCD) represents decimal digits (0–9) using 4-bit binary numbers.

**Excess-3 (XS-3)** is a non-weighted code obtained by adding **3 (0011)** to each valid BCD digit.

### Formula

```
Excess-3 = BCD + 0011
```

### Advantages

- Self-complementing code
- Simplifies decimal arithmetic
- Used in digital arithmetic circuits

### Truth Table

| Decimal | BCD | Excess-3 |
|----------|-----|----------|
| 0 | 0000 | 0011 |
| 1 | 0001 | 0100 |
| 2 | 0010 | 0101 |
| 3 | 0011 | 0110 |
| 4 | 0100 | 0111 |
| 5 | 0101 | 1000 |
| 6 | 0110 | 1001 |
| 7 | 0111 | 1010 |
| 8 | 1000 | 1011 |
| 9 | 1001 | 1100 |

---

## 2. Binary to Gray Code Converter

Gray code is a binary numbering system in which two consecutive values differ by only one bit.

It minimizes errors during transitions and is widely used in:

- Rotary encoders
- Digital communication
- Position sensors
- Error minimization circuits

### Conversion Formula

```
G3 = B3
G2 = B3 XOR B2
G1 = B2 XOR B1
G0 = B1 XOR B0
```

---

# VHDL Programs

## Program 1: BCD to Excess-3 Converter

### Test Cases

| BCD Input | Decimal | Excess-3 Output |
|-----------|---------|-----------------|
| 0000 | 0 | 0011 |
| 0001 | 1 | 0100 |
| 0101 | 5 | 1000 |
| 1001 | 9 | 1100 |

---

# Program 2: Binary to Gray Code Converter


### Test Cases

| Binary Input | Gray Output |
|--------------|-------------|
| 0000 | 0000 |
| 0001 | 0001 |
| 0010 | 0011 |
| 0011 | 0010 |
| 0100 | 0110 |
| 1111 | 1000 |

# Expected Output

## BCD to Excess-3

| BCD | Excess-3 |
|------|----------|
| 0000 | 0011 |
| 0001 | 0100 |
| 0101 | 1000 |
| 1001 | 1100 |

---

## Binary to Gray

| Binary | Gray |
|---------|------|
| 0000 | 0000 |
| 0001 | 0001 |
| 0010 | 0011 |
| 0011 | 0010 |
| 0100 | 0110 |
| 1111 | 1000 |

---

# Files Included

```
Lab6/
│── bcd_to_xs3.vhd
│── bcd_xs3_tb.vhd
│── bin_to_gray.vhd
│── gray_tb.vhd
│── bcd_xs3.vcd
│── gray.vcd
│── README.md
```

---

# Discussion

This experiment demonstrated the design and simulation of two combinational code converters using VHDL. The BCD-to-Excess-3 converter generated the Excess-3 code by adding 3 to the BCD input, while the Binary-to-Gray converter used XOR operations to produce Gray code. Simulation results matched the expected outputs, confirming that both VHDL designs functioned correctly. The experiment also provided practical experience with VHDL coding, GHDL compilation, simulation, and waveform analysis using GTKWave.

---

# Conclusion

The objectives of the experiment were successfully achieved. The BCD-to-Excess-3 and Binary-to-Gray code converters were designed, simulated, and verified using VHDL. The simulation results matched the theoretical outputs, demonstrating the correct implementation of combinational logic circuits. This lab enhanced understanding of code conversion techniques and strengthened practical skills in digital circuit design using VHDL.




