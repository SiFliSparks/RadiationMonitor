#ifndef _GUI_H_
#define _GUI_H_

#include "rtthread.h"
#include "bf0_hal.h"
#include "drv_io.h"
#include "littlevgl2rtt.h"
#include "lv_ex_data.h"
#include "bt_repeat.h"
//GUI guider
#include "gui_guider.h"

extern rt_thread_t gui_display_thread;

void gui_thread(void);

#endif