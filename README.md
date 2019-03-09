# macOS for Asus Zenbook UX330UA (March 9, 2019)
This project is to give the UX330UA a complete and functional build of macOS 10.14 Mojave using the guide from  https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH with modified kexts.

## My Specs 
Model: UX330UAK

Bios: 311

CPU: Intel i5-7200U

GPU: Intel HD620

RAM: 8GB LPDDR3

Display: FHD, 1920x1080

Storage: PCIE x2 NMVe Adata XPG SX8200 Pro 256GB

Wifi: Broadcom DW1560

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
- Microphone
- Display Brightness
- SD Card Reader
- Sleep / Wake
- Wifi 
- Bluetooth
- Auto Brightness

# What doesn't work
- Touch ID (It will never work)

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

## Credits
Ryan Wong

## Special Thanks
hieplpvip (For the amazing Asus Zenbook Guide)
the-darkvoid (For the modified VoodooI2C Kext)

