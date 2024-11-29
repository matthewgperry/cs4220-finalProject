# Install script for directory: /home/matt/Projects/esp/esp-idf

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/matt/.espressif/tools/riscv32-esp-elf/esp-13.2.0_20230928/riscv32-esp-elf/bin/riscv32-esp-elf-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/riscv/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_ringbuf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/efuse/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_mm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/driver/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_pm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_bootloader_format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_app_format/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/bootloader_support/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/bootloader/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esptool_py/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/partition_table/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_partition/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/app_update/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/spi_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/pthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_system/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_rom/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/hal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/log/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/heap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_hw_support/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/freertos/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/newlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/cxx/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_timer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/app_trace/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_event/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/nvs_flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_phy/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/vfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/lwip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_netif_stack/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_netif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/wpa_supplicant/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_coex/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/bt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/unity/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/cmock/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/console/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/http_parser/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp-tls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_eth/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_gdbstub/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_hid/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/tcp_transport/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_http_client/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_http_server/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_https_ota/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_https_server/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_psram/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_lcd/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/protobuf-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/protocomm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_local_ctrl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espcoredump/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/wear_levelling/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/sdmmc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/idf_test/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/ieee802154/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/json/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/mqtt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/nvs_sec_provider/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/spiffs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/ulp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/usb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/wifi_provisioning/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__cmake_utilities/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__button/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/lvgl__lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lvgl_port/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__led_strip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__led_indicator/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_gc9a01/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_ili9341/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch_cst816s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch_ft5x06/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch_gt1151/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch_gt911/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_lcd_touch_tt21100/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_bsp_generic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/main/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_delta_ota/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_encrypted_img/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__rmaker_common/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_diagnostics/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__cbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_diag_data_store/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_insights/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__mdns/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp-serial-flasher/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_rcp_update/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__esp_secure_cert_mgr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/chip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter_console/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter_bridge/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/app_bridge/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/app_reset/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__json_generator/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__jsmn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/espressif__json_parser/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter_controller/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter_ota_provider/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/esp_matter_rainmaker/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/DFRobot_C4001/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/matt/Notes/uni/cs4220/project/occupancySensor/firmware/matterOccupancySensor/build/esp-idf/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()