NAME = PlanetSim2D
CXX = g++
CXXFLAGS = -std=c++20 -O2 -Wall
LDFLAGS = -Llib -lraylib -lgdi32 -lwinmm
INCLUDES = -Iinclude/raylib -Iinclude/imgui -Isrc

SRC = src/**.cpp include/imgui/**.cpp
OUT = build/$(NAME).exe

default:
	$(CXX) $(CXXFLAGS) $(SRC) -o $(OUT) $(INCLUDES) $(LDFLAGS)
