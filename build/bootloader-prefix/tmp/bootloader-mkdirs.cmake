# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/prasad-gaikwad/esp/esp-idf/components/bootloader/subproject"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/tmp"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/src/bootloader-stamp"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/src"
  "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/prasad-gaikwad/esp-idf_framework/shrike_fi_firmware/C++/inheritance/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
