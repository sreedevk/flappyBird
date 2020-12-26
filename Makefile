CC := g++
HDRS := lib/game.h lib/background.h lib/base.h lib/bird.h lib/obstacle.h lib/obstacle_manager.h
SRCS := lib/background.cpp lib/base.cpp lib/bird.cpp lib/game.cpp lib/obstacle.cpp lib/obstacle_manager.cpp
CFLAGS := `sdl2-config --cflags --libs` -lSDL2_image
TARGET := bin/flappyBird

all:
	${CC} main.cpp ${HDRS} ${SRCS} -o ${TARGET} ${CFLAGS} -w

debug:
	${CC} main.cpp ${HDRS} ${SRCS} -o ${TARGET} ${CFLAGS} -w -g

clean:
	rm -rf bin/*
