#include <esp_log.h>
#include <stdlib.h>
#include <string.h>

#include <esp_matter.h>
#include "bsp/esp-bsp.h"

#include <app_priv.h>

#include "DFRobot_C4001.h"

using namespace esp_matter;
using namespace esp_matter::attribute;
using namespace esp_matter::endpoint;
using namespace chip::app::Clusters;

static const char *TAG = "app_driver";
extern uint16_t sensor_endpoint_id;

DFRobot_C4001_UART c4001_sensor(4, 5, 9600);
#define SENSOR_UPDATE_INTERVAL_MS 1000
static esp_timer_handle_t sensor_timer;

static esp_err_t app_driver_set_occupancy(void *handle, esp_matter_attr_val_t *val)
{
    bool motion_detected = c4001_sensor.motionDetection();
    val->val.b = motion_detected;
    
    // Make sure we're setting a boolean value
    val->type = ESP_MATTER_VAL_TYPE_BOOLEAN;
    
    ESP_LOGI(TAG, "Occupancy: %d", val->val.b);
    return ESP_OK;
}

esp_err_t app_driver_attribute_update(app_driver_handle_t driver_handle, uint16_t endpoint_id, uint32_t cluster_id,
                                      uint32_t attribute_id, esp_matter_attr_val_t *val)
{
    esp_err_t err = ESP_OK;
    if (endpoint_id == sensor_endpoint_id)
    {
        if (cluster_id == OccupancySensing::Id)
        {
            if (attribute_id == OccupancySensing::Attributes::Occupancy::Id)
            {
                err = app_driver_set_occupancy(driver_handle, val);
                if (err == ESP_OK)
                {
                    // Update the attribute value in the Matter database
                    err = attribute::update(endpoint_id, cluster_id, attribute_id, val);
                    if (err != ESP_OK)
                    {
                        ESP_LOGE(TAG, "Failed to update occupancy attribute");
                    }
                }
            }
        }
    }
    return err;
}

esp_err_t app_driver_sensor_set_defaults(uint16_t endpoint_id)
{
    esp_err_t err = ESP_OK;
    esp_matter_attr_val_t val = esp_matter_bool(false);

    /* Setting occupancy */
    attribute_t *attribute = attribute::get(endpoint_id, OccupancySensing::Id, OccupancySensing::Attributes::Occupancy::Id);
    if (!attribute)
    {
        ESP_LOGE(TAG, "Could not get occupancy attribute");
        return ESP_FAIL;
    }

        err = app_driver_set_occupancy(NULL, &val);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to set occupancy defaults");
        return err;
    }

    // Update the attribute in the Matter database
    err = attribute::update(endpoint_id, OccupancySensing::Id, 
                          OccupancySensing::Attributes::Occupancy::Id, &val);
    
    return err;
}

// Timer callback to periodically update sensor reading
static void sensor_update_timer_cb(void* arg)
{
    esp_matter_attr_val_t val = esp_matter_bool(false);
    
    // Get the attribute handle
    attribute_t *attribute = attribute::get(sensor_endpoint_id, 
                                          OccupancySensing::Id,
                                          OccupancySensing::Attributes::Occupancy::Id);
    if (attribute) {
        // Update the attribute
        app_driver_attribute_update(NULL, sensor_endpoint_id, 
                                  OccupancySensing::Id,
                                  OccupancySensing::Attributes::Occupancy::Id,
                                  &val);
    }
}

app_driver_handle_t app_driver_sensor_init()
{
    // Initialize the C4001 sensor
    if (!c4001_sensor.begin()) {
        ESP_LOGE(TAG, "Failed to initialize C4001 sensor");
        return NULL;
    }
    ESP_LOGI(TAG, "C4001 sensor initialized successfully");
    // Initialize sensor timer for periodic updates
    const esp_timer_create_args_t timer_args = {
        .callback = sensor_update_timer_cb,
        .name = "sensor_update_timer"
    };
    
    ESP_ERROR_CHECK(esp_timer_create(&timer_args, &sensor_timer));
    ESP_ERROR_CHECK(esp_timer_start_periodic(sensor_timer, SENSOR_UPDATE_INTERVAL_MS * 1000));
    
    ESP_LOGI(TAG, "Sensor initialized with periodic updates");
    return NULL;
}

app_driver_handle_t app_driver_button_init()
{
    /* Initialize button */
    button_handle_t btns[BSP_BUTTON_NUM];
    ESP_ERROR_CHECK(bsp_iot_button_create(btns, NULL, BSP_BUTTON_NUM));
    // ESP_ERROR_CHECK(iot_button_register_cb(btns[0], BUTTON_PRESS_DOWN, app_driver_button_toggle_cb, NULL));

    return (app_driver_handle_t)btns[0];
}
