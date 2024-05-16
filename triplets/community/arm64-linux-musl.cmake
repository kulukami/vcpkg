set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE static)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER "aarch64-linux-musl-gcc")
set(CMAKE_CXX_COMPILER "aarch64-linux-musl-g++")
set(CMAKE_ASM_COMPILER "aarch64-linux-musl-gcc")
set(CMAKE_ASM-ATT_COMPILER "aarch64-linux-musl-as")