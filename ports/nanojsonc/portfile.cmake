vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO open-source-patterns/nanojsonc
        REF "${VERSION}"
        SHA512 306fce8f90c1e5b9031f3f2b1cec5430722477425766fc05e430cceb03bb85188f2c451c0c7d34aed49b506e6a2cd835e419792362f992acbafc0b099fbe4b5e
        HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}" OPTIONS -DBUILD_TESTS=OFF)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup() # removes /debug/share
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include") # removes debug/include

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE") # Install License
file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}") # Install Usage
