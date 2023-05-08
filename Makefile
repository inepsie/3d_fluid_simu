# Makefile
DEPENDENCIES = 'glew glfw3'
#DEPENDENCIES = 'glfw3 GL X11 pthread Xrandr Xi dl GLEW GLU'

CXXFLAGS = $(shell pkg-config --cflags $(DEPENDENCIES))
LDLIBS = $(shell pkg-config --libs $(DEPENDENCIES))
#LDFLAGS = -lm -ldl -lX11 -lXrandr -lXi -lXxf86vm -lGL -lpthread
LDFLAGS = -lglfw3 -lGLEW -lX11 -lXrandr -lXinerama -lXi -lXxf86vm -lXcursor -ldl -lGL -lm -lpthread -O3

main: main.o
	g++ main.o -o main $(LDLIBS) $(LDFLAGS)

main.o: main.cpp
	g++ -c main.cpp $(CXXFLAGS)

.PHONY:
clean: rm main main.o *.o
