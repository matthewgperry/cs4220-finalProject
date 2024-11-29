#ifndef __DFROBOT_C4001_H__
#define __DFROBOT_C4001_H__

#include "driver/uart.h"
#include <stdint.h>

typedef struct
{
    uint8_t workStatus;
    uint8_t workMode;
    uint8_t initStatus;
} sSensorStatus_t;

typedef struct
{
    uint8_t number;
    float speed;
    float range;
    uint32_t energy;
} sPrivateData_t;

typedef struct
{
    bool status;
    float response1;
    float response2;
    float response3;
} sResponseData_t;

typedef struct
{
    uint8_t pwm1;
    uint8_t pwm2;
    uint8_t timer;
} sPwmData_t;

typedef struct
{
    uint8_t exist;
    sSensorStatus_t sta;
    sPrivateData_t target;
} sAllData_t;

typedef enum
{
    eExitMode = 0x00,
    eSpeedMode = 0x01,
} eMode_t;

typedef enum
{
    eON = 0x01,
    eOFF = 0x00,
} eSwitch_t;

typedef enum
{
    eStartSen = 0x55,
    eStopSen = 0x33,
    eResetSen = 0xCC,
    eRecoverSen = 0xAA,
    eSaveParams = 0x5C,
    eChangeMode = 0x3B,
} eSetMode_t;

class DFRobot_C4001
{
public:
#define DEVICE_ADDR_0 0x2A
#define DEVICE_ADDR_1 0x2B
#define TIME_OUT 0x64 ///< time out
#define I2C_FLAG 0x01
#define UART_FLAG 0x02

#define REG_STATUS 0x00
#define REG_CTRL0 0x01
#define REG_CTRL1 0x02
#define REG_SOFT_VERSION 0x03
#define REG_RESULT_STATUS 0x10
#define REG_TRIG_SENSITIVITY 0x20
#define REG_KEEP_SENSITIVITY 0x21
#define REG_TRIG_DELAY 0x22
#define REG_KEEP_TIMEOUT_L 0x23
#define REG_KEEP_TIMEOUT_H 0x24
#define REG_E_MIN_RANGE_L 0x25
#define REG_E_MIN_RANGE_H 0x26
#define REG_E_MAX_RANGE_L 0x27
#define REG_E_MAX_RANGE_H 0x28
#define REG_E_TRIG_RANGE_L 0x29
#define REG_E_TRIG_RANGE_H 0x2A

#define REG_RESULT_OBJ_MUN 0x10
#define REG_RESULT_RANGE_L 0x11
#define REG_RESULT_RANGE_H 0x12
#define REG_RESULT_SPEED_L 0x13
#define REG_RESULT_SPEED_H 0x14
#define REG_RESULT_ENERGY_L 0x15
#define REG_RESULT_ENERGY_H 0x16
#define REG_CFAR_THR_L 0x20
#define REG_CFAR_THR_H 0x21
#define REG_T_MIN_RANGE_L 0x22
#define REG_T_MIN_RANGE_H 0x23
#define REG_T_MAX_RANGE_L 0x24
#define REG_T_MAX_RANGE_H 0x25
#define REG_MICRO_MOTION 0x26

#define START_SENSOR "sensorStart"
#define STOP_SENSOR "sensorStop"
#define SAVE_CONFIG "saveConfig"
#define RECOVER_SENSOR "resetCfg"  ///< factory data reset
#define RESET_SENSOR "resetSystem" ///< RESET_SENSOR
#define SPEED_MODE "setRunApp 1"
#define EXIST_MODE "setRunApp 0"

    DFRobot_C4001();
    ~DFRobot_C4001();
    bool motionDetection(void);
    void setSensor(eSetMode_t mode);
    bool setDelay(uint8_t trig, uint16_t keep);
    uint8_t getTrigDelay(void);
    uint16_t getKeepTimerout(void);
    uint16_t getTrigRange(void);
    uint16_t getMaxRange(void);
    uint16_t getMinRange(void);
    bool setDetectionRange(uint16_t min, uint16_t max, uint16_t trig);
    bool setTrigSensitivity(uint8_t sensitivity);
    bool setKeepSensitivity(uint8_t sensitivity);
    uint8_t getTrigSensitivity(void);
    uint8_t getKeepSensitivity(void);
    sSensorStatus_t getStatus(void);
    bool setIoPolaity(uint8_t value);
    uint8_t getIoPolaity(void);
    bool setPwm(uint8_t pwm1, uint8_t pwm2, uint8_t timer);
    sPwmData_t getPwm(void);
    bool setSensorMode(eMode_t mode);
    uint8_t getTargetNumber(void);
    float getTargetSpeed(void);
    float getTargetRange(void);
    uint32_t getTargetEnergy(void);
    bool setDetectThres(uint16_t min, uint16_t max, uint16_t thres);
    uint16_t getTMinRange(void);
    uint16_t getTMaxRange(void);
    uint16_t getThresRange(void);
    void setFrettingDetection(eSwitch_t sta);
    eSwitch_t getFrettingDetection(void);

protected:
    sResponseData_t wRCMD(const char *cmd1, uint8_t count);
    void writeCMD(const char *cmd1, const char *cmd2, uint8_t count);
    sAllData_t anaysisData(uint8_t *data, uint8_t len);
    sResponseData_t anaysisResponse(uint8_t *data, uint8_t len, uint8_t count);
    bool sensorStop(void);

private:
    uint8_t _addr;
    uint8_t _M_Flag = 0;
    sPrivateData_t _buffer;
    virtual void writeReg(uint8_t reg, uint8_t *data, uint8_t len) = 0;
    virtual int16_t readReg(uint8_t reg, uint8_t *data, uint8_t len) = 0;
};

class DFRobot_C4001_UART : public DFRobot_C4001
{
public:
    DFRobot_C4001_UART(int tx_pin, int rx_pin, uint32_t baud_rate);
    bool begin(void);

protected:
    virtual void writeReg(uint8_t reg, uint8_t *data, uint8_t len);
    virtual int16_t readReg(uint8_t reg, uint8_t *data, uint8_t len);

private:
    int tx_pin;
    int rx_pin;
    int baud_rate;
};

#endif