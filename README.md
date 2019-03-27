# macOS for Asus Zenbook UX330UAK (March 26, 2019)
![UX330UAK](https://laptoping.com/specs/wp-content/uploads/2017/05/Asus-Zenbook-UX330UA-AH54-AH5Q-2.png)

This project is to give the UX330UAK a complete and functional build of macOS 10.14.4 Mojave using the guide from  https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH with modified kexts.

## My Specs
Model: UX330UAK

Bios: 311

CPU: 2.71GHz Intel i5-7200U (0x606)

GPU: Intel HD620 1536MB (0x5916)

RAM: 1867MHz Micron 8GB Dual Channel LPDDR3

Display: FHD, 1920x1080

Storage: PCIE x2 NMVe Adata XPG SX8200 Pro 256GB

Partition Type: APFS (TRIM automatically enabled)

Wifi: Broadcom DW1560

Bluetooth: Broadcom DW1560

## Note
Your laptop may or may not have the exact specs as mine. Results may vary. If you need help, please ask.
If you use a USB wifi adapter look for drivers from that model.

# What Works
- Audio
- Headphone Jack
- Keyboard
- Keyboard Brightness
- All Fn Keys
- Battery Manager
- USB A Ports
- USB C Port
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
- Touch ID (It will never work) (Disabled)

# Pre-Installation
1. Replace original wifi chipset with a DW1560 (Recommended) or use a USB wifi adapter (Not recommended)
2. You will have to wipe the entire disk
3. Make sure to upgrade or downgrade to BIOS 311 (BIOS 312 doesn't work)
4. Change your BIOS settings:
  - **Disable** VT-d
  - **Enable** Legacy USB Support
  - **Disable** Secure Boot
  - **Enable** Launch CSM
  - Set DVMT to **64M**
  - Change boot priority to USB
5. For Installation go to the wiki: https://github.com/Rybo713/UX330UA-macOS/wiki/Installation

## Credits
- hieplpvip (For the amazing Asus Zenbook Guide) https://github.com/hieplpvip/ASUS-ZENBOOK-HACKINTOSH
- the-darkvoid (For the modified VoodooI2C Kext and CPUFriendDataProvider Kext) https://github.com/the-darkvoid/XPS9360-macOS
