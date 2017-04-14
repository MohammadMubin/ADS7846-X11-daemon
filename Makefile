DEBUG = -O3
CC = g++
CFLAGS = $(DEBUG) -Wall

LDLIBS = -lspidev-lib++ -lwiringPi -lpthread

ADS7846_X11_daemon: main.cpp
	$(CC) -o ./build/ADS7846_X11_daemon main.cpp $(LDLIBS) $(CFLAGS)