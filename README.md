# Real-Time Embedded Systems (CS 4220/6235) Final Project - Fall 2024

## Overview

This repository contains the hardware schematics (PCB design files) in `occupancySensorBoard`, the initial Arduino scripts in `arduino`, and the ESP32 firmware in `firmware`.

The firmware defines an occupancy sensor with the DFRobot C4001 MM-Wave sensor with the Matter standard.

## Setup

Note: The ESP-IDF has an unresolved bug, requiring a manual workaround. The bug I experienced is described [here](https://esp32.com/viewtopic.php?t=42744).

1. Choose an install method for the ESP-IDF. I used the Linux install method. Follow the instructions [here](https://docs.espressif.com/projects/esp-idf/en/v5.3.1/esp32/get-started/index.html).

2. Install [ESP-Matter](https://docs.espressif.com/projects/esp-matter/en/latest/esp32/developing.html).

3. Clone this repository.

4. Source the ESP-IDF and ESP-Matter environment variables.

5. Navigate to the `firmware` directory.

6. Run `idf.py set-target esp32c6` to set the target board to the ESP32-C6.

7. Run `idf.py menuconfig` to configure the firmware (WiFi setup, flash size, etc).

8. Run `idf.py build` to build the firmware.


## PCB Production

The PCB design files are in the `occupancySensorBoard` directory. The PCB was designed in KiCad.

The PCB was produced by JLCPCB. The Gerber, BOM, and CPL files are in the `occupancySensorBoard/jlcpcb` directory.
