# Install script for directory: /root/AndroidStudioProjects/apprtcmobile/libwebrtc/third_party

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
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/abseil-cpp/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/boringssl/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/libevent/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/libsrtp/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/libvpx/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/libyuv/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/opus/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/protobuf/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/rnnoise/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/usrsctp/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/pffft/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/ffmpeg/cmake_install.cmake")
  include("/root/AndroidStudioProjects/apprtcmobile/libwebrtc/.cxx/cmake/debug/arm64-v8a/third_party/openh264/cmake_install.cmake")

endif()

