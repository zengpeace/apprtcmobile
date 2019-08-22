# Install script for directory: /work/av/m77/src/third_party/boringssl/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/crypto/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/ssl/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/ssl/test/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/tool/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/util/fipstools/cavp/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/util/fipstools/acvp/modulewrapper/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/boringssl/decrepit/cmake_install.cmake")

endif()

