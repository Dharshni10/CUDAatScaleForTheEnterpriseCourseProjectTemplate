# CUDA GPU Data Processing Project

## Overview

This project demonstrates GPU-accelerated data processing using NVIDIA CUDA.
The program implements a CUDA kernel to process large arrays of data using thousands of parallel GPU threads.

The goal of this project is to show how GPU computation can accelerate data processing tasks compared to traditional CPU-based execution.

The CUDA kernel performs a simple processing operation (data inversion) on a large dataset generated in memory. The computation is executed in parallel on the GPU.

---

## Technologies Used

* CUDA
* C++
* NVIDIA GPU
* Google Colab (GPU environment)

---

## Project Structure

```
CUDAatScaleForTheEnterpriseCourseProjectTemplate
│
├── bin/                  # Compiled executable files
├── data/                 # Sample data directory (optional)
├── lib/                  # Libraries (template folder)
├── src/                  # Source code
│   ├── main.cpp
│   ├── kernel.cu
│   └── imageRotationNPP.cpp
│
├── Makefile              # Build configuration
├── run.sh                # Script to build and run the project
├── INSTALL               # Installation instructions
├── execution_proof.png   # Screenshot showing program execution
└── README.md
```

---

## How the Program Works

1. The main program generates a large array of data to simulate image pixel values.
2. The data is transferred from CPU memory to GPU memory.
3. A CUDA kernel launches thousands of GPU threads.
4. Each thread processes a portion of the data in parallel.
5. The processed data is copied back to the CPU.

This demonstrates the use of CUDA for parallel data processing.

---

## CUDA Kernel

The CUDA kernel performs a simple data inversion operation on each element:

```
data[i] = 255 - data[i];
```

This operation is executed in parallel across many GPU threads.

---

## Compilation

The program can be compiled using the Makefile:

```
make
```

---

## Running the Program

Run the executable using the run script:

```
./run.sh
```

Expected output:

```
CUDA Processing Started
GPU Processing Finished
```

---

## Proof of Execution

The file **execution_proof.png** in this repository shows the successful compilation and execution of the CUDA program in a GPU environment using Google Colab.

---

## Dataset

For this demonstration, the dataset is generated dynamically within the program rather than loading external image files. This allows the program to process large data arrays without requiring external datasets.

---

## Author

Dharshni V M

---

## License

This project is based on the CUDA at Scale course template provided for educational purposes.
