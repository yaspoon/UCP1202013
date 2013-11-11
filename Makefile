CFLAGS=`pkg-config --cflags gtk+-2.0` -g
LIBS=`pkg-config --libs gtk+-2.0`
CC=

default: calander
	$(echo "Calling the default build:calander")

calander: Calander.c Calander.h
	$(CC) $< $@ $(CFLAGS) $(LIBS)

