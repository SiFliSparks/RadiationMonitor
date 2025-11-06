#ifndef _BT_REPEAT_H_
#define _BT_REPEAT_H_

extern int rssi_res[79];

void bt_repeat_rx_rssi_ch0_79_auto(void);
void bt_rssi_rthread(void);

// time window statistics function
void analyze_rssi_time_window(void);
void get_channel_rssi_trend(int channel, int *trend_data, int *data_count);

// Data queue operation functions
extern int* get_data_from_queue(int index);

// Time window statistics function
void analyze_rssi_time_window(void);
void get_channel_rssi_trend(int channel, int *trend_data, int *data_count);

#endif