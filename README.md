# Analog-IC-Design
High-performance analog circuit design workflows powered by open-source tools like Ngspice, Xschem, Magic, and Sky130. Includes schematics, netlists, simulations, layout automation, and verification scripts. 📐 Op-Amps • Filters • Bias Circuits • Layout vs. Schematic (LVS) • DRC-clean layouts 🚀 Built for research, education, and rapid prototyping.
📑 Table of Contents
USB Microphone System Analysis
High-Pass Filter Circuit
1. USB Microphone System Analysis
This section explains the analog front-end of a USB microphone setup and its role in signal conditioning and conversion.



System Overview:

MEMS Microphone (SPH8878LR5H-1): Captures sound and outputs an analog voltage signal.
Amplification & Filtering: The analog signal passes through a coupling capacitor and resistor, then enters an op-amp (OPA344) for amplification and noise filtering.
Analog to Digital Conversion (ADC): The conditioned analog signal is fed into an Arduino’s 10-bit ADC.
Digital Processing and USB Output: The microcontroller processes the data and outputs it as USB-MIDI to a host device.
🎧 This design enables real-time conversion of sound into USB-MIDI digital data using analog IC techniques.

🎛️ Thevenin Equivalent Model of the Microphone
To understand the microphone as a signal source, it can be modeled with its Thevenin equivalent:

This model helps in:

Analyzing signal strength and loading
Impedance matching for the amplifier input
Ensuring minimal signal loss at the interface


📷 This schematic shows the practical implementation of the Thevenin model using Xschem.
📈 Output Response of the Microphone Circuit
The simulation below shows the voltage output (vout) across the load, after signal amplification and filtering.



🧪 This waveform helps verify if the designed circuit properly amplifies the mic signal within expected voltage ranges.

📈 Frequency Response
The frequency response reveals the bandwidth and filtering effects of the analog stage.



#### 🔁 Simulink Output
The Simulink simulation confirms system-level behavior and time-domain signal dynamics.



---
📄 Click here to view simulation code

🔧 Op-Amp Modeling as a Single Pole System
To better analyze the frequency response of the analog front-end, the operational amplifier is modeled using a single-pole transfer function. This provides insight into the bandwidth limitations and phase behavior of the amplifier.



#### 🔁 Simulink Output
The Simulink simulation confirms system-level behavior and time-domain signal dynamics.



2. High-Pass Filter Circuit
This section explains the working and transfer function of a high-pass filter using an op-amp.



Circuit Overview:

Input Capacitor ( C_i = 4.7 \mu F ): Blocks DC and allows AC signals to pass.
Resistors ( R_i = R_f = 5k\Omega ): Define gain and time constant of the filter.
Op-Amp: Configured in non-inverting mode to amplify the filtered signal.
S-Domain Transfer Function:

H(s) = (Rf * s * Ci) / (1 + s * Ri * Ci)

At low frequencies (s → 0), H(s) → 0 → High attenuation of low-frequency signals.
At high frequencies (s → ∞), H(s) → Rf / Ri = 1 → Passes high frequencies with gain 1.
🔻 Cutoff Frequency (fc):
fc = 1 / (2πRiCi)

For Ri = 5kΩ, Ci = 4.7μF:

fc ≈ 6.77 Hz
Op-Amp Schematic Diagram
Detailed internal schematic of the operational amplifier: 

Op-Amp Symbolic Diagram
Standard symbolic representation of an operational amplifier: 

High-Pass Filter Circuit Using the Op-Amp
High-pass filter circuit built using the op-amp symbol shown above: 
High-Pass Filter Response Plot and Simulink Output
1. Frequency Response Plot of the High-Pass Filter
The plot below shows the frequency response (gain vs frequency) of the high-pass filter circuit.



2. Simulink Output of the High-Pass Filter
simulink output from the Simulink simulation of the high-pass filter circuit.



📄 [click here to see simulation code](https://github.com/)
About
No description, website, or topics provided.
Resources
 Readme
 Activity
Stars
 0 stars
Watchers
 0 watching
Forks
 0 forks
Report repository
Releases
No releases published
Packages
No packages published
Footer
