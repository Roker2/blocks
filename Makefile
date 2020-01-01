CC      := g++
TOOLCHAIN := arm-linux-gnueabi-
PT      :=
CFL     := -Wextra -std=c++11
TPATH := /home/dmitry/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/bin/
LPATH := /home/dmitry/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabi/
ARCH := -march=armv7 -mcpu=cortex-a9 --sysroot=$(LPATH)

default:
	mkdir -p bin
	g++ src/main.cpp src/blocks_game.cpp src/blocks_shape.cpp -o bin/blocks -lcurses -lrt -std=c++11 -Wall

pw3:
	mkdir -p bin
	$(TPATH)$(TOOLCHAIN)$(CC) $(CFL) $(ARCH) src/main.cpp src/blocks_game.cpp src/blocks_shape.cpp -o bin/blocks -lcurses -lrt -std=c++11 -Wall

doc:
	mkdir -p doc
	doxygen doxygen.conf

clean:
	rm bin/blocks
	rm -R doc/
