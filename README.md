Information:
------------

This is a linux user space daemon-driver for ADS7846 based touch screen. Daemon is intended for Allwiner based devices like Orange Pi. 
Program includes calibration mode ( --cal ) with visual guidence based on X11. Tested for Orange Pi PC Plus running Armbian.

This is modified to run without the need of interrupts since new boards(like Allwinner H6) dont support edge interrupts on pins.
Uses polling to get input from the touchscreen.

This was tested on a Orange Pi One Plus(Allwinner H6)
Attributions:
-------------

SPI communication is based on c++ wrapper created by Philippe Van Hecke - https://github.com/lephiloux/spidev-lib . 
Touch screen calibration procedure was designed and coded by Carlos E. Vidales - http://www.embedded.com/design/system-integration/4023968/How-To-Calibrate-Touch-Screens .

Tips:
-----
When using Waveshare LCDs like http://www.waveshare.com/wiki/10.1inch_HDMI_LCD bear in mind RPi pinout incompatibility of OrangePi. Reroute CS pin to PC3 (SPI0_CS) of your OPi - solder the pin 26 and 24 together or use extension cables for all SPI signals. 

If you want to use nonroot user add /etc/udev.d rule for spi and gpio.

How to:
-------

Install WereCatf version of WiringOP for handling pin/pen interrupt and X11 dependencies:
```
$ apt-get install libx11-dev libxtst-dev
$ git clone https://github.com/orangepi-xunlong/wiringOP.git
$ cd WiringOP
$ chmod +x ./build
$ ./build
```

Compile using:
```
$ git clone https://github.com/Tomasz-Mankowski/ADS7846-X11-daemon.git
$ cd ADS7846-X11-daemon
$ make
```

Calibrate touch screen:
```
$ ./ADS7846-X11 --cal
```

Run:
```
$ ./ADS7846-X11
```

Or run it as service/daemon using:
```
$ nohup ./ADS7846-X11 > /dev/null 2>&1 &
```

For help use:
```
$ ./ADS7846-X11 --help
```	
