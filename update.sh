#!/usr/bin/env bash

HP_EXE="sp149851.exe"
MODEL_BIOS="T78_01150000.bin"
FIRMWARE_PATH="/boot/efi/EFI/HP/DEVFW"

# Extract spXXXXXX.exe
echo "Extracting ${HP_EXE}"
7za e ${HP_EXE}

# Put the model .bin in the folder
echo "Copying ${MODEL_BIOS} to ${FIRMWARE_PATH}"
sudo cp ${MODEL_BIOS} ${FIRMWARE_PATH}/${MODEL_BIOS}

# Update will be applied when you reboot and go into
# BIOS setup and select Update BIOS using local media
echo "Shutdown the computer -> Go into BIOS Setup -> Select Update BIOS using local media"
echo "Run the cleanup script after the update is complete"
