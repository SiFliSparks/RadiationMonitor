#include "gui.h"

extern int flag_key2_short;

rt_thread_t gui_display_thread = RT_NULL;

static void gui_thread_entery(void *arg){

    int i = 0;
    int value = 10;
    rt_err_t ret = RT_EOK;
    rt_uint32_t ms;
    /* init littlevGL */
    ret = littlevgl2rtt_init("lcd");
    if (ret != RT_EOK)
    {
        return ;
    }
    lv_ex_data_pool_init();

    setup_ui(&guider_ui);
    
    while(1){
        //update display data
        update_bar_rects(&guider_ui, rssi_res);
        if(flag_key2_short){
            lv_label_set_text(guider_ui.label_switch, "ON");
        }else{
            lv_label_set_text(guider_ui.label_switch, "OFF");
        }
        lv_task_handler();
        rt_thread_mdelay(30);
    }
}

void gui_thread(void){
    gui_display_thread = rt_thread_create("gui_task",gui_thread_entery,RT_NULL,1024*8,25,10);
    if(gui_display_thread != RT_NULL){
        rt_thread_startup(gui_display_thread);
    }
}
