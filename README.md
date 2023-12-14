# LVGL demonstration
#### Raspberry Pi with official 7" screen
---
Based on LVGL version 8.3.11

Submodule links to the [the lvgl and lv_drivers](https://github.com/lvgl) repositories.

LVGL documentation is [located here](https://docs.lvgl.io/).

---
This repository is a working implementation of LVGL (Little and Versatile Embedded Graphics Library) on  Raspian with the official 7" LCD screen.

This implementation uses the linux frame buffer interface.
___
### Building and running
#### On Pi
Download the repository on your Pi and run ``make`` in the lvgl_demo directory.
The code should compile without errors and you should end up with an excutable file named **demo-8.3.11-arm** in the lvgl_demo directory.

The executable file must be run with root permission to allow access to the frame buffer device:
```sudo ./demo```
#### On PC
```sudo apt-get install gcc-arm-linux-gnueabihf``` to install arm compiler.

Run ``make`` in the lvgl_demo directory.

Copy the excutable file named **demo-8.3.11-arm** in the lvgl_demo directory to the Pi to execute.

### TODO
* makefile doesn't handle changes to .h files.  
 
