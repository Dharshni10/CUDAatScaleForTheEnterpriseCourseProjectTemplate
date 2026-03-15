################################################################################
# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.
################################################################################

# CUDA compiler
NVCC = /usr/local/cuda/bin/nvcc

# Host compiler
CXX = g++

# Compiler flags
CXXFLAGS = -std=c++11 -I/usr/local/cuda/include

# Linker flags
LDFLAGS = -L/usr/local/cuda/lib64 -lcudart

# Directories
SRC_DIR = src
BIN_DIR = bin

# Source files
SRC = $(SRC_DIR)/main.cpp $(SRC_DIR)/kernel.cu

# Output executable
TARGET = $(BIN_DIR)/process

################################################################################
# Build rules
################################################################################

all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BIN_DIR)
	$(NVCC) $(SRC) -o $(TARGET) $(LDFLAGS)

################################################################################
# Clean build
################################################################################

clean:
	rm -rf $(BIN_DIR)/*

################################################################################
# Help
################################################################################

help:
	@echo "Available make commands:"
	@echo "  make        - Build the CUDA project."
	@echo "  make clean  - Remove compiled files."
	@echo "  make help   - Show this help message."
