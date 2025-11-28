# Portable Bluetooth Signal Strength Detector

The Portable Bluetooth Signal Strength Detector is an embedded device developed based on SiFli-SDK. It acquires signal strength for each frequency point in the 2402MHz~2480MHz band through Bluetooth scanning and displays it in real-time via bar charts on the screen.

## Project Overview

This project uses the SiFli-SDK framework to implement Bluetooth signal strength detection functionality on the SF32LB52x chip. The device can scan 79 Bluetooth frequency points (0-78), display the RSSI value of each frequency point in real-time, and provide an intuitive bar chart interface through the LVGL graphics library.

## Main Features

- **Bluetooth Frequency Point Scanning**: Covers 2402MHz~2480MHz band, scanning 79 frequency points
- **Data Storage and Playback**: Supports storing up to 10 sets of historical data, switchable via buttons
- **Data Smoothing Processing**: Real-time display data is the average of the previous 30 scan data, effectively reducing instantaneous noise
- **Bar Chart Visualization**: Implements dynamic bar chart display using LVGL library, supporting gradient color effects
- **Button Control**: Supports start/stop scanning and historical data browsing functions

## Technical Specifications

- **Hardware Platform**: SF32LB52x chip
- **Bluetooth Band**: 2402MHz~2480MHz
- **Number of Frequency Points**: 79 (channels 0-78)
- **RSSI Range**: -110dBm ~ -20dBm
- **Data Update Frequency**: Updates every 30ms
- **Historical Data Storage**: Up to 10 data sets
- **Display Range**: Y-axis range -110dBm ~ -20dBm

## Project Structure

```
RadiationMonitor/
├── README.md              # Project documentation
├── README_EN.md           # English version documentation
├── assets/                # Resource files
│   └── img.jpg           # Project effect image
├── project/              # Project configuration files
│   ├── Kconfig           # Kernel configuration
│   ├── SConscript        # SCons build script
│   ├── SConstruct        # SCons build configuration
│   ├── rtconfig.py       # RT-Thread configuration
│   ├── proj.conf         # Project configuration
│   └── build_sf32lb52-lchspi-ulp_hcpu/  # Build output directory
└── src/                  # Source code directory
    ├── main.c            # Main program entry
    ├── Kconfig           # Source code configuration
    ├── SConscript        # Source code build script
    ├── BT/               # Bluetooth related code
    │   ├── bt_repeat.c   # Bluetooth scanning core logic
    │   ├── bt_repeat.h   # Bluetooth scanning header file
    │   └── SConscript    # Bluetooth module build script
    └── generated/        # GUI-Guider generated code
        ├── gui.c         # GUI main program
        ├── gui.h         # GUI header file
        ├── gui_guider.c  # GUI configuration and event handling
        ├── gui_guider.h  # GUI configuration header file
        ├── setup_scr_screen.c  # Screen setup and chart configuration
        ├── events_init.c # Event initialization
        ├── widgets_init.c # Widget initialization
        ├── widgets_init.h # Widget initialization header file
        └── SConscript    # GUI module build script
```

## Core Module Description

### 1. Bluetooth Scanning Module (`src/BT/bt_repeat.c`)

- **Functionality**: Implements Bluetooth frequency point scanning and RSSI value acquisition
  - Supports cyclic scanning of 79 frequency points
  - Data queue management (10 sets of historical data)
  - **Data Smoothing**: Real-time display data is the average of the previous 10 scan data
  - **Data Storage**: Supports storing 10 sets of historical data, switchable via buttons

### 2. User Interface Module (`src/generated/`)

- **Functionality**: LVGL-based graphical user interface
- **Main Components**:
  - Bar chart display: Real-time display of RSSI values for 79 frequency points, supporting gradient color effects
  - Dynamic axis labels: X-axis displays key frequency points (2402MHz, 2441MHz, 2480MHz)
  - Status indication: Displays ON/OFF status and unit labels
  - Button event handling: Supports KEY2 button control

### 3. Main Program Module (`src/main.c`)

- **Functionality**: System initialization and task scheduling
- **Main Tasks**:
  - Button initialization (KEY2)
  - GUI thread startup
  - Bluetooth scanning thread startup
  - System main loop
  - Button state machine processing (supports short press and long press)

## Button Function Description

- **KEY2**: Multi-function button
  - **Short Press**: Start/stop scanning toggle
  - **Long Press**: Historical data browsing (forward page turning)

## Interface Features

- **Bar Chart**: Real-time RSSI value display for 79 frequency points
- **Axis Labels**: X-axis displays key frequency points (2402MHz, 2441MHz, 2480MHz)
- **Status Display**: Top displays ON/OFF status indication

## Running Effect
![image](assets/img.jpg)

### Environment Requirements

- SiFli-SDK development environment
- RT-Thread operating system
- GUI-Guider tool (for interface design)
- SF32LB52x chip development board

## Build Instructions

1. Configure project: Use `project/Kconfig` for kernel configuration
2. Build project: Use SCons build system
3. Flash program: Use provided download scripts

## Reference Documentation

- [SiFli-SDK Quick Start](https://docs.sifli.com/projects/sdk/latest/sf32lb52x/quickstart/index.html)
- [RT-Thread Documentation](https://www.rt-thread.org/document/site/)
- [LVGL Graphics Library Documentation](https://docs.lvgl.io/latest/en/html/)

## Technical Support

If you have any technical questions, please submit an [issue](https://github.com/SiFliSparks/RadiationMonitor/issues)