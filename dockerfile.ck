# Usage: docker build -t ck -f dockerfile.amd .

#FROM rocm/pytorch:latest
FROM rocm/pytorch:rocm5.1.3_ubuntu20.04_py3.7_pytorch_1.11.0

RUN mkdir /workspace

RUN cd /workspace && git clone https://github.com/RadeonOpenCompute/rocm-cmake.git
RUN cd /workspace/rocm-cmake && mkdir build && cd build && \
    cmake .. && cmake --build . && sudo cmake --build . --target install

RUN cd /workspace && git clone -b ck-9110 https://github.com/RadeonOpenCompute/llvm-project.git && \
        cd llvm-project && mkdir build && cd build && \
        cmake -DCMAKE_INSTALL_PREFIX=/opt/rocm/llvm   \
              -DCMAKE_BUILD_TYPE=Release              \
              -DLLVM_ENABLE_ASSERTIONS=1              \
              -DLLVM_TARGETS_TO_BUILD="AMDGPU;X86"    \
              -DLLVM_ENABLE_PROJECTS="clang;lld;compiler-rt"  \
              ../llvm && \
        make -j
ENV HIP_CLANG_PATH=/workspace/llvm-project/build/bin

#RUN cd /workspace && git clone https://github.com/ROCmSoftwarePlatform/composable_kernel.git
RUN cd /workspace && git clone https://github.com/zhangyaobit/composable_kernel.git
RUN cd /workspace/composable_kernel && mkdir build && cd build &&         \
    cmake                                                                 \
    -D BUILD_DEV=OFF                                                      \
    -D CMAKE_BUILD_TYPE=Release                                           \
    -D CMAKE_CXX_FLAGS=" --offload-arch=gfx908 --offload-arch=gfx90a -O3" \
    -D CMAKE_CXX_COMPILER=/opt/rocm/bin/hipcc                             \
    -D CMAKE_PREFIX_PATH=/opt/rocm                                        \
    -D CMAKE_INSTALL_PREFIX=${PATH_TO_CK_INSTALL_DIRECTORY}               \
    .. &&                                                                 \
    make install -j
