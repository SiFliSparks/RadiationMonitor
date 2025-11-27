#ifndef _BT_REPEAT_H_
#define _BT_REPEAT_H_

extern int rssi_res[79];
// Data queue operation functions
extern int* get_data_from_queue(int index);
void bt_rssi_rthread(void);

#endif