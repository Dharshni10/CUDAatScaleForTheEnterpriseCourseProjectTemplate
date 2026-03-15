#include <cuda_runtime.h>
__global__ void invertKernel(unsigned char *data, int size)
{
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if(idx < size)
    {
        data[idx] = 255 - data[idx];
    }
}

extern "C" void runKernel(unsigned char *data, int size)
{
    unsigned char *d_data;
    cudaMalloc((void**)&d_data, size);
    cudaMemcpy(d_data, data, size, cudaMemcpyHostToDevice);
    int threads = 256;
    int blocks = (size + threads - 1) / threads;
    invertKernel<<<blocks, threads>>>(d_data, size);
    cudaMemcpy(data, d_data, size, cudaMemcpyDeviceToHost);
    cudaFree(d_data);
}
