#!/usr/bin/env bash

MODEL_BIOS="T78_XXXXX.bin"
FIRMWARE_PATH="/boot/efi/EFI/HP/DEVFW"

# Remove the dangling firmware binary from the directory since the update tool creates a new file `firmware.bin`
sudo rm ${FIRMWARE_PATH}/${MODEL_BIOS}
