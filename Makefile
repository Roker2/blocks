CC      := g++
TOOLCHAIN := arm-linux-gnueabihf-
PT      :=
CFL     := -Wextra -std=c++11
TPATH := /home/dmitry/gcc-linaro-7.5.0-2019.12-i686-mingw32_arm-linux-gnueabihf/bin/
LPATH := /home/dmitry/gcc-linaro-7.5.0-2019.12-i686-mingw32_arm-linux-gnueabihf/
ARCH := -march=armv7-a -mcpu=cortex-a5 --sysroot=$(LPATH)

default:
	mkdir -p bin
	g++ src/main.cpp src/blocks_game.cpp src/blocks_shape.cpp -o bin/blocks -lcurses -lrt -std=c++11 -Wall

pw3:
	mkdir -p bin
	$(CC) $(CFL) src/main.cpp src/blocks_game.cpp src/blocks_shape.cpp -o bin/blocks -lcurses -lrt -std=c++11 -Wall -m32

doc:
	mkdir -p doc
	doxygen doxygen.conf

clean:
	rm bin/blocks
	rm -R doc/
