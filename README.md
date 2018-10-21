# WIP (Jan 26, 2018)
# macOS for Asus Zenbook UX330UA 
This project is to give the UX330UA an almost complete and functional build of macOS <S>10.13 High Sierra</S> 10.12 Sierra

## My Specs 
Model: UX330UAK

Bios: 311

CPU: Intel i5-7200U

GPU: Intel HD620

RAM: 8GB LPDDR3 

Display: FHD, 1920x1080

Storage: NMVe Intel 600P 256GB 

Wifi: Intel Dual Band Wireless-AC 8260

## Note
Your laptop may or may not have the exact specs as mine. Results may vary. If you need help, please ask.
If you use a USB wifi adapter look for drivers from that model

# What Works
- Audio
- Keyboard
- Battery
- USB Ports
- Trackpad 
- Webcam
- Brightness

# What doesn't work
- Backlight
- Wifi (With 8260)
- Bluetooth
- Sleep / Wake

# Pre-Installation
1. Replace original wifi chipset with a DW1560 (Recommended) or use a USB wifi adapter (Not recommended)
2. You will have to wipe the entire disk 
3. Change your BIOS settings: 
  - **Disable** VT-d
  - **Enable** Legacy USB Support
  - **Disable** Secure Boot
  - **Enable** Launch CSM 
  - Set DVMT to **64M**
  - Change boot priority to USB
  
# Installation
1. Create a macOS installation disk with a 16GB or more USB
2. Install clover with UEFI only and in drivers64UEFI - choose OsxAptioFix2Drv-64
3. Replace the original config.plist to the one I have provided
4. Place the kexts in CLOVER/kexts/other and the HFSPlus.efi in /CLOVER/drivers64UEFI
5. Boot into USB
6. Install macOS

# Post-Installation
1. Partition your disk to 2GB to install Clover 
2. Install Clover with these options: 
  - Install for UEFI booting only
  - Install Clover in the ESP
  - Themes - You can pick any theme you want
  - Drivers64UEFI / EmuVariableUefi-64, FSInject-64, HFSPlus, and OsxAptioFix2Drv-64
  - Install all RC scripts on all other bootable OS X volume
  - Optional RC Scripts / disable sleep proxy client
  - (Optional) Pref panel
3. Replace the original config.plist with mine
4. Use KextWizard to install sata-100-unsupported, facksmc, and voodoops2
**Now** you should be able to boot without the USB
5. Reboot your computer and press F4 before proceeding into macOS
6. Now you will need to patch your DSDT and SSDT's. Follow this guide [here](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/) Use MACiASL 6.1 to patch the DSDT and SSDT. 
7. Use the provided DSDT patches and SSDT patches. For Graphics_PNLF.txt in SSDT, **only** place in one of the SSDT 
8. Now place the newly patched DSDT and SSDT's into the CLOVER/ACPI/patched
9. Reboot and make sure everything works
10. Now use KextWizard to place the rest of the kexts that I provided into S/L/E 
11. Reboot once again to see if all are working. 
12. Now you have an almost completely working hackintosh!

## Credits
Ryan Wong
