# Matter Occupany Sensor Firmware

## Description

This firmware, built with ESP-IDF v5.2.1, initalizes control of a DFRobot C4001 MM-Wave sensor and sends data to a variety of smart home hubs with the Matter framework.

## Setup

#### Clean Build

ESP-IDF seems to have issues fully removing the build directory, so do it manually.

#### Setting Target

In the demo case, an ESP32-C6 is used.
So `idf.py set-target esp32c6` should be ran.

#### Configuration

`idf.py menuconfig`

#### Building and Flash

`idf.py build flash monitor`
