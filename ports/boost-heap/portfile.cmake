# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/heap
    REF boost-${VERSION}
    SHA512 4585d61775ad0c3f374d5d67d817b471fa5d0f796f396a09a100192898837b318d87507c2b86e3ad9ae6e37de160b1b2ff884f7ade13bfb83300b8371b32fa2e
    HEAD_REF master
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
