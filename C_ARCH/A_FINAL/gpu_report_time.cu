/*
to compile:
nvcc --gpu-architecture=compute_70 gpu_report_time.cu

requirement for reduction in the device
Hardware: kepler or newer architecture
nvcc: cuda 9 or newer
*/

// Comment out if you excute reduction in the host
#define ACCUMULATE_IN_DEVICE

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

const int N = (256 * 256);
const int BSIZE = 32;

__global__ void gpu_kernel(float *d_A, float *d_B, float *d_C, int len)
{
    // write your code here
    int i = blockDim.x * blockIdx.x + threadIdx.x;
    float mysum = 0.0;
    if (i < len) {
        d_C[i] = 0.0;
        for (int j = 0; j < len; j++) {
            mysum += (d_A[i] - d_B[j]) * (d_A[i] - d_B[j]); 
        }
    }
    __syncthreads();
    #ifdef ACCUMULATE_IN_DEVICE
    for (int offset = 32/2; offset > 0; offset >>= 1){
        mysum += __shfl_down_sync(0xffffffff, mysum, offset, 32);
    }
    if (threadIdx.x == 0) d_C[blockIdx.x] = mysum;
    #else
    d_C[i] = mysum;
    #endif
}

__host__ void cpu_kernel(float *d_A, float *d_B, float *d_C, int len)
{
    for (int i = 0; i < len; i++) {
        d_C[i] = 0.0;
        for (int j = 0; j < len; j++) {
            d_C[i] += (d_A[i] - d_B[j]) * (d_A[i] - d_B[j]); 
        }
    }
}

int main(int argc, char **argv)
{
    float *h_A, *h_B, *h_C;  // for host memory
    float *d_A, *d_B, *d_C;  // for device memory
    float result;     // resut
    dim3 grid(N/BSIZE, 1, 1), block(BSIZE, 1, 1); // grid and block size
    cudaEvent_t start, stop;              // for measument time on GPU
    struct timeval start_time, end_time;  // for measument time on CPU
    float elapsed_time;

    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    /* host memory allocation */
    h_A = (float *)malloc(sizeof(float) * N);
    h_B = (float *)malloc(sizeof(float) * N);
    h_C = (float *)malloc(sizeof(float) * N);

    for (int i = 0; i < N; ++i) {
        h_A[i] = 1.0f; h_B[i] = 2.0f; h_C[i] = 0.0f;
    }

    /* device memory allocation */
    cudaMalloc((void **)&d_A, sizeof(float) * N);
    cudaMalloc((void **)&d_B, sizeof(float) * N);
    cudaMalloc((void **)&d_C, sizeof(float) * N);

    /* copy data the host to the device */
    cudaMemcpy(d_A, h_A, sizeof(float) * N, cudaMemcpyHostToDevice);
    cudaMemcpy(d_B, h_B, sizeof(float) * N, cudaMemcpyHostToDevice);

    /* The host calles the karnel */ 
    cudaEventRecord(start, 0);

    gpu_kernel<<<grid, block>>>(d_A, d_B, d_C, N);
    cudaMemcpy(h_C, d_C, sizeof(float) * N, cudaMemcpyDeviceToHost);
    result = 0.0;
    #ifdef ACCUMULATE_IN_DEVICE
    for (int i = 0; i < N/BSIZE; ++i) {
        result += h_C[i];
    }
    #else
    for (int i = 0; i < N; ++i) {
        result += h_C[i];
    }
    #endif
    result /= (float) N;
    cudaEventRecord(stop, 0);
    cudaEventSynchronize(stop);
    cudaEventElapsedTime(&elapsed_time, start, stop);

    /*  Result write back */

    /*  Release device memory */
    cudaFree(d_A); cudaFree(d_B); cudaFree(d_C);

    /* check the result for GPU */
    printf("GPU: result = %f, time = %f [msec]\n", result, elapsed_time);

    /* check the result for CPU */
    gettimeofday(&start_time, NULL);

    cpu_kernel(h_A, h_B, h_C, N);
    result = 0.0;
    for (int i = 0; i < N; ++i)
        result += h_C[i];
    result /= (float) N;

    gettimeofday(&end_time, NULL);
    elapsed_time = (end_time.tv_sec - start_time.tv_sec) * 1000.0 +
                   (end_time.tv_usec - start_time.tv_usec) / 1000.0;
    printf("CPU: result = %f, time = %f [msec]\n", result, elapsed_time);

    /*  Release host memory  */
    free(h_A); free(h_B); free(h_C);

  return 0;
}
