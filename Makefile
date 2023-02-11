CXX = g++
CXXFLAGS = --std=c++17 -Wall -Wextra -Werror -pedantic -g
OBJ = battery.o cpu.o disc.o ram.o
TARGET_EXEC = main
BIN = ./bin
SRC = ./src
NAME = .bar-indicators

# Targets
.PHONY: build
.PHONY: intall
.PHONY: clean

#build:
#	$(CXX) $(CXXFLAGS) cpu.cpp -o cpu
build: $(BIN)/battery $(BIN)/cpu $(BIN)/disc $(BIN)/ram

$(BIN)/%: $(SRC)/%.cpp
	@mkdir -p $(BIN)
	$(CXX) $(CXXFLAGS) $< -o $@

install: build
	mkdir -p "${HOME}/$(NAME)"
	mv $(BIN)/* "${HOME}/$(NAME)"
	rm -r $(BIN)

clean:
	rm -rf $(TARGET_EXEC) $(BIN)

