#!/bin/bash

echo "Compiling CUDA Project..."

make

echo "Running CUDA Program..."

./bin/process
