CC=g++
SRC=$(wildcard src/*.cpp) $(wildcard src/ecs/*.cpp) 
HDR=$(wildcard src/*.h) $(wildcard src/ecs/*.h)
LIB=-lmingw32 -lSDL2 -LSDL2main -LSDL2_image


all:
	$(CC) -I src/include -L src/lib -o main main.cpp $(SRC) $(HDR) $(LIB)