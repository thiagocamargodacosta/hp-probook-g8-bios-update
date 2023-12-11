### Helper script to update HP Probook 445 G8 BIOS using Linux

This repository contains a bash script that extracts the bios update executable and copies the firmware binary to the EFI partition so that the user can update the BIOS using local media

**Super-user privileges are necessary to copy the firmware binary to the EFI partition**

#### Steps

1. Download the executable from HP Support Website and place it inside this folder.

2. Modify `update.sh` so that the `MODEL_BIOS` variable matches the firmware binary for your laptop model

3. Run `update.sh` as sudo to copy the firmware binary to a directory inside the EFI partition

4. Shutdown the system

5. Boot into BIOS

6. Select BIOS Menu

7. Select Update System BIOS

8. Select Update using local media

9. Wait for the update to complete

10. Verify that you are running the latest BIOS

11. Modify `cleanup.sh` so that the `MODEL_BIOS` variable matches the firmware binary for your laptop model

12. Run `cleanup.sh` as sudo to remove the firmware binary from the EFI directory
