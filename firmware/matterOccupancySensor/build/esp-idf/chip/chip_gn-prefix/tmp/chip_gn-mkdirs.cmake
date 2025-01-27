# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/matt/Projects/esp/esp-matter/connectedhomeip/connectedhomeip")
  file(MAKE_DIRECTORY "/home/matt/Projects/esp/esp-matter/connectedhomeip/connectedhomeip")
endif()
file(MAKE_DIRECTORY
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip"
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix"
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/tmp"
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/src/chip_gn-stamp"
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/src"
  "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/src/chip_gn-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/src/chip_gn-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/chip_gn-prefix/src/chip_gn-stamp${cfgdir}") # cfgdir has leading slash
endif()
