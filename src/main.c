#include "rtthread.h"
#include "bf0_hal.h"
#include "drv_io.h"
#include "board.h"

#include "bt_repeat.h"
#include "gui.h"

#define KEY2 43

extern int display_index;
extern int queue_size;
extern int queue_rear;

int flag_key2_short = 0;

typedef struct{
  int flag;
  int state;
}user_key;

user_key key2;
static rt_timer_t key_timer;

void key_timer_timeout(void *parameter)
{

    static int count = 0;

    switch (key2.state)
    {
    case 0:
      if(rt_pin_read(KEY2) == PIN_HIGH) {
        key2.state = 1;
      }
      /* code */
      break;
    case 1:
      if(rt_pin_read(KEY2) == PIN_HIGH) {
        key2.state = 2;
      } else {
        key2.state = 0;

      }
    case 2:
      if(rt_pin_read(KEY2) == PIN_HIGH){
          count++;
      }else if(rt_pin_read(KEY2) == PIN_LOW){
          key2.state = 0;
          //short pressed
          if(count < 10){
            flag_key2_short = !flag_key2_short;
            count = 0;
          }else{
            //long pressed
            //update index

            if(flag_key2_short == 0) {
              //update index
              if(display_index <= 0) {
                  display_index = queue_size - 1; 
              } else {
                display_index--;  
                }
            }
            count = 0;            
          }
          //long pressed

      }
      break;
    default:
      break;
    }
}


/**
 * @brief  Initialize the KEY1 and KEY2
 * @param  None
 * @retval None
 */
void KEY_init(void){

    key_timer = rt_timer_create("key_timer", key_timer_timeout, RT_NULL, 50,  RT_TIMER_FLAG_PERIODIC);
    rt_timer_start(key_timer);
    //config gpio mode
    rt_pin_mode(KEY2,PIN_MODE_INPUT);

}

/**
  * @brief  Main program
  * @param  None
  * @retval 0 if success, otherwise failure number
  */
int main(void)
{
    KEY_init();
    gui_thread();
    bt_rssi_rthread();
    while (1)
    {
        //rt_kprintf("main thread is running\n");
        rt_thread_delay(1000);

    }
    return RT_EOK;

}


