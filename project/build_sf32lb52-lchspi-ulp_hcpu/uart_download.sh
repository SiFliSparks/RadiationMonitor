#!/bin/bash

WORK_PATH=$(dirname "$0")
CURR_PATH=$(pwd)
cd "$WORK_PATH"

echo ""
echo "      Uart Download"
echo ""
read -p "please input the serial port (e.g. /dev/ttyUSB0): " input
echo "$input"

sftool -p "$input" -c SF32LB52 write_flash "bootloader\bootloader.bin@0x12010000" "main.bin@0x12020000" "ftab\ftab.bin@0x12000000"

