# Analog-IC-Design
High-performance analog circuit design workflows powered by open-source tools like Ngspice, Xschem, Magic, and Sky130. Includes schematics, netlists, simulations, layout automation, and verification scripts. 📐 Op-Amps • Filters • Bias Circuits • Layout vs. Schematic (LVS) • DRC-clean layouts 🚀 Built for research, education, and rapid prototyping.
<<<<<<< HEAD
=======
# 🎤 Analog IC Design

This repository documents various aspects of analog integrated circuit (IC) design with examples, circuit images, simulations, and system-level analysis. It is structured for quick understanding and reference for students and enthusiasts in electronics and communication.

---

## 📑 Table of Contents

1. [USB Microphone System Analysis](#1-usb-microphone-system-analysis)
2. [High-Pass Filter Circuit](#2-high-pass-filter-circuit)

---

## 1. USB Microphone System Analysis

This section explains the analog front-end of a USB microphone setup and its role in signal conditioning and conversion.

### 🔧 System Overview

- **MEMS Microphone**: Captures sound and outputs analog signal  
- **Op-Amp (OPA344)**: Amplifies & filters  
- **ADC + USB Output**: Digitizes and sends to PC

🎧 This design enables real-time USB-MIDI output via analog signal conditioning.

### 🎛️ Thevenin Equivalent Model

![Thevenin Model](images/thevenin_model.png)

Used for:
- Impedance matching  
- Loading analysis  
- Minimal signal loss

### 📷 Microphone Circuit Schematic

![Mic Schematic](images/mic_circuit.png)

### 📈 Output Response

![Output Response](images/output_response.png)

🧪 Shows amplified voltage within designed range.

### 📊 Frequency Response

![Freq Response](images/freq_response.png)

Reveals bandwidth and filter behavior.

---

## 2. High-Pass Filter Circuit

This section explains the working and transfer function of a high-pass filter using an op-amp.

### 🔎 Circuit Overview

- `C_i = 4.7 μF` (blocks DC)  
- `R_i = R_f = 5kΩ` (sets gain & time constant)  
- Op-Amp in **non-inverting** mode

### 🧮 Transfer Function


H(s) = (Rf * s * Ci) / (1 + s * Ri * Ci)


- At low freq → attenuation  
- At high freq → gain = 1

### 🔻 Cutoff Frequency

fc = 1 / (2πRiCi)
≈ 6.77 Hz


### 🖼️ Schematic & Symbolic Diagram

![Opamp Symbol](images/opamp_symbol.png)  
![HPF Schematic](images/hpf_schematic.png)

### 📈 Frequency Response of HPF

![HPF Response](images/hpf_response.png)

### 🔁 Simulink Output

![HPF Simulink Output](images/hpf_simulink.png)

---

## 📄 View Simulation Files

[Click here to see high-pass SPICE file](netlists/hiPass.sp)

---

>>>>>>> 9d60157 (Update README with structured documentation and visuals)

<<<<<<< HEAD
...content from remote GitHub repo...
=======
...your local changes...
>>>>>>> 9d60157... Update README with structured documentation and visuals
