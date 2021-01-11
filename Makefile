DEBUG = -O3
CC = g++
CFLAGS = -std=c++11 $(DEBUG) -Wall

LDLIBS = -lwiringPi -lpthread -lX11 -lXtst -lcrypt -lrt

ADS7846-X11: main.cpp calibration.cpp calibration.h point.cpp point.h ADS7846.cpp ADS7846.h
	$(CC) -o ./ADS7846-X11 main.cpp calibration.cpp calibration.h point.cpp point.h ADS7846.cpp ADS7846.h $(LDLIBS) $(CFLAGS)
