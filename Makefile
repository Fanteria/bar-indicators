CXX = g++
CXXFLAGS = --std=c++17 -Wall -Wextra -Werror -pedantic -g
OBJ = battery.o cpu.o disc.o ram.o
TARGET_EXEC = main
BIN = ./bin
SRC = ./src

# Targets
.PHONY: build
.PHONY: clean

#build:
#	$(CXX) $(CXXFLAGS) cpu.cpp -o cpu
build: $(BIN)/battery $(BIN)/cpu $(BIN)/disc $(BIN)/ram

$(BIN)/%: $(SRC)/%.cpp
	@mkdir -p $(BIN)
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -rf $(TARGET_EXEC) $(BIN)

