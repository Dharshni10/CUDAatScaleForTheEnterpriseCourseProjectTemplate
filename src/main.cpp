#include <iostream>
#include <vector>

extern "C" void runKernel(unsigned char *data, int size);
int main()
{
    std::cout << "CUDA Processing Started" << std::endl;
    int size = 1024 * 1024;
    std::vector<unsigned char> data(size);
    for(int i=0;i<size;i++)
    {
        data[i] = rand()%255;
    }
    runKernel(data.data(), size);
    std::cout << "GPU Processing Finished" << std::endl;
    return 0;
}
