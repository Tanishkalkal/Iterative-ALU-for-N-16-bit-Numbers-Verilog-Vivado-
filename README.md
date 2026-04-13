# Iterative ALU for N × 16-bit Numbers

## 📌 Overview
A parameterized ALU designed in Verilog that iteratively processes 
N numbers of 16-bit width and performs multiple arithmetic and 
logical operations on them.

---

## ⚙️ Features
- Supports N numbers of 16-bit input
- Iterative processing logic
- 5+ operations supported:
  - ADD (Addition)
  - SUB (Subtraction)
  - AND (Bitwise AND)
  - OR  (Bitwise OR)
  - Square Root

---

## 🛠️ Tools Used
| Tool | Purpose |
|------|---------|
| Verilog | Hardware Description Language |
| Vivado | Simulation & Waveform Debugging |

---

## 📂 Project Structure
ALU_Project/
├── src/
│   └── alu.v          # Main ALU Verilog file
├── testbench/
│   └── alu_tb.v       # Testbench file
├── simulation/
│   └── waveform.png   # RTL simulation waveform
└── README.md

---

## 🔬 Simulation
- Implemented and verified using testbenches in Vivado
- RTL simulation and waveform debugging performed
- All 5+ instructions validated successfully

---

## 🚀 How to Run
1. Open **Vivado**
2. Import `alu.v` and `alu_tb.v`
3. Run **Simulation**
4. Check waveform output

---

## 👤 Author
- **Tanish kalkal**
- B.Tech ECE — KIET Group of Institutions
- [[LinkedIn Profile Link](https://www.linkedin.com/in/tanish-kalkal-153824328/)]
- [GitHub Profile Link]

---

## 📄 License
This project is for educational purposes.
