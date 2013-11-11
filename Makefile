PWD=`pwd`

CFLAGS=`pkg-config --cflags gtk+-2.0` -g -I./include
LIBS=`pkg-config --libs gtk+-2.0`
CC=gcc

OUTPUT=$(PWD)/objs
EXEOUTPUT=$(PWD)/
VPATH=source:include:obj

$(shell mkdir $(PWD)/obj)

EXE=Calander
OBJS=Calander.o

default: $(EXE)
	$(echo "Calling the default build:calander")

$(EXE): $(OBJS)
	$(CC) -o $(EXEOUTPUT)/$@ $(OUTPUT)/$< $(CFLAGS) $(LIBS)

Calander.o: Calander.c Calander.h gui.c gui.h
	$(CC) -o $(OUTPUT)/$@ $< $(CFLAGS) $(LIBS)

