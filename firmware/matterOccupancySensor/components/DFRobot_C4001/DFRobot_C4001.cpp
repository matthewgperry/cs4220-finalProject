#include "DFRobot_C4001.h"
#include "driver/uart.h"
#include "esp_log.h"
#include "esp_timer.h"
#include <string>
#include <cstring>
#include <stddef.h>

#define UART_NUM UART_NUM_0
#define BUF_SIZE 1024
static const char *TAG = "DFRobot_C4001";

DFRobot_C4001::DFRobot_C4001() : _addr(DEVICE_ADDR_0) {
    memset(&_buffer, 0, sizeof(sPrivateData_t));
}

// Add the missing destructor definition
DFRobot_C4001::~DFRobot_C4001() {
}


DFRobot_C4001_UART::DFRobot_C4001_UART(int tx_pin, int rx_pin, uint32_t baud_rate)
    : DFRobot_C4001(), tx_pin(tx_pin), rx_pin(rx_pin), baud_rate(baud_rate) {}

bool DFRobot_C4001_UART::begin() {
    const uart_config_t uart_config = {
        .baud_rate = baud_rate,
        .data_bits = UART_DATA_8_BITS,
        .parity = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM, &uart_config);
    uart_set_pin(UART_NUM, tx_pin, rx_pin, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE);
    uart_driver_install(UART_NUM, BUF_SIZE * 2, 0, 0, NULL, 0);
    return true;
}


void DFRobot_C4001_UART::writeReg(uint8_t reg, uint8_t *data, uint8_t len) {
    uart_write_bytes(UART_NUM, (const char *)data, len);
}

int16_t DFRobot_C4001_UART::readReg(uint8_t reg, uint8_t *data, uint8_t len) {
    uint16_t i = 0;
    uint32_t start_time = esp_timer_get_time() / 1000;
    while ((esp_timer_get_time() / 1000) - start_time < TIME_OUT) {
        int length = 0;
        uart_get_buffered_data_len(UART_NUM, (size_t *)&length);
        if (length > 0) {
            int read_len = uart_read_bytes(UART_NUM, data + i, len - i, 20 / portTICK_RATE_MS);
            if (read_len > 0) {
                i += read_len;
                if (i >= len) return len;
            }
        }
    }
    return i;
}

void DFRobot_C4001::setSensor(eSetMode_t mode) {
    if (mode == eStartSen) {
        writeReg(0, (uint8_t *)START_SENSOR, strlen(START_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(200));
    } else if (mode == eStopSen) {
        writeReg(0, (uint8_t *)STOP_SENSOR, strlen(STOP_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(200));
    } else if (mode == eResetSen) {
        writeReg(0, (uint8_t *)RESET_SENSOR, strlen(RESET_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(1500));
    } else if (mode == eSaveParams) {
        writeReg(0, (uint8_t *)STOP_SENSOR, strlen(STOP_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(200));
        writeReg(0, (uint8_t *)SAVE_CONFIG, strlen(SAVE_CONFIG));
        vTaskDelay(pdMS_TO_TICKS(800));
        writeReg(0, (uint8_t *)START_SENSOR, strlen(START_SENSOR));
    } else if (mode == eRecoverSen) {
        writeReg(0, (uint8_t *)STOP_SENSOR, strlen(STOP_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(200));
        writeReg(0, (uint8_t *)RECOVER_SENSOR, strlen(RECOVER_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(800));
        writeReg(0, (uint8_t *)START_SENSOR, strlen(START_SENSOR));
        vTaskDelay(pdMS_TO_TICKS(500));
    }
}

bool DFRobot_C4001::motionDetection(void) {
    static bool old = false;
    uint8_t status = 0;
    uint8_t len = 0;
    uint8_t temp[100] = {0};
    sAllData_t data;
    len = readReg(0, temp, 100);
    data = anaysisData(temp, len);
    if (data.exist) {
        old = (bool)status;
        ESP_LOGI(TAG, "Occupancy: %d", (bool)status);
        return (bool)data.exist;
    } else {
        return (bool)old;
        ESP_LOGI(TAG, "Occupancy: %d", (bool)old);
    }
}

sAllData_t DFRobot_C4001::anaysisData(uint8_t* data, uint8_t len)
{
    sAllData_t allData;
    uint8_t location = 0;
    
    // Initialize the structure with zeros
    memset(&allData, 0, sizeof(sAllData_t));
    
    // Find the start of the data marked by '$'
    for(uint8_t i = 0; i < len; i++) {
        if(data[i] == '$') {
            location = i;
            break;
        }
    }
    
    // Return empty structure if no valid start found
    if(location == len) {
        return allData;
    }
    
    // Check for Human Presence Detection mode
    if(strncmp((const char *)(data + location), "$DFHPD", strlen("$DFHPD")) == 0) {
        allData.sta.workMode = eExitMode;
        allData.sta.workStatus = 1;
        allData.sta.initStatus = 1;
        
        if(data[location + 7] == '1') {
            allData.exist = 1;
        } else {
            allData.exist = 0;
        }
    }
    // Check for Speed Detection mode
    else if(strncmp((const char *)(data + location), "$DFDMD", strlen("$DFDMD")) == 0) {
        allData.sta.workMode = eSpeedMode;
        allData.sta.workStatus = 1;
        allData.sta.initStatus = 1;
        
        // Create a temporary buffer for string manipulation
        char temp_buffer[256];
        if (len - location >= sizeof(temp_buffer)) {
            return allData;
        }
        
        // Copy data to temporary buffer for safer manipulation
        memcpy(temp_buffer, data + location, len - location);
        temp_buffer[len - location] = '\0';
        
        char* saveptr;
        char* token = strtok_r(temp_buffer, ",", &saveptr);
        int index = 0;
        char* parts[8] = {NULL};
        
        // Parse the comma-separated values
        while (token != NULL && index < 8) {
            parts[index++] = token;
            token = strtok_r(NULL, ",", &saveptr);
        }
        
        // Check if we have enough parts
        if (index >= 6) {
            // Convert string values to appropriate types with error checking
            char* endptr;
            
            // Parse target number
            long number = strtol(parts[1], &endptr, 10);
            if (*endptr == '\0') {
                allData.target.number = (int)number;
            } else {
            }
            
            // Parse range (multiply by 100 as per original)
            float range = strtof(parts[3], &endptr);
            if (*endptr == '\0') {
                allData.target.range = range * 100;
            } else {
            }
            
            // Parse speed (multiply by 100 as per original)
            float speed = strtof(parts[4], &endptr);
            if (*endptr == '\0') {
                allData.target.speed = speed * 100;
            } else {
            }
            
            // Parse energy
            float energy = strtof(parts[5], &endptr);
            if (*endptr == '\0') {
                allData.target.energy = energy;
            } else {
            }
            
        } else {
        }
    } else {
    }
    
    return allData;
}

bool DFRobot_C4001::setSensorMode(eMode_t mode) {
    sensorStop();
    if (mode == eExitMode) {
        writeReg(0, (uint8_t *)EXIST_MODE, strlen(EXIST_MODE));
        vTaskDelay(pdMS_TO_TICKS(50));
    } else {
        writeReg(0, (uint8_t *)SPEED_MODE, strlen(SPEED_MODE));
        vTaskDelay(pdMS_TO_TICKS(50));
    }
    vTaskDelay(pdMS_TO_TICKS(50));
    writeReg(0, (uint8_t *)SAVE_CONFIG, strlen(SAVE_CONFIG));
    vTaskDelay(pdMS_TO_TICKS(500));
    writeReg(0, (uint8_t *)START_SENSOR, strlen(START_SENSOR));
    vTaskDelay(pdMS_TO_TICKS(100));
    return true;
}

bool DFRobot_C4001::setDetectionRange(uint16_t min, uint16_t max, uint16_t trig) {
    if (max < 240 || max > 2000) {
        return false;
    }
    if (min < 30 || min > max) {
        return false;
    }
    std::string data1 = "setRange ";
    std::string data2 = "setTrigRange ";
    data1 += std::to_string(((float)min) / 100.0);
    data1 += " ";
    data1 += std::to_string(((float)max) / 100.0);
    data2 += std::to_string(((float)trig) / 100.0);
    writeCMD(data1.c_str(), data2.c_str(), (uint8_t)2);
    return true;
}