#include "rtthread.h"
#include "bf0_hal.h"
#include "drv_io.h"
#include "board.h"

#include "bt_repeat.h"
#include "gui.h"

#define KEY2 34
#define KEY1 43

extern int display_index;
extern int queue_size;
extern int queue_rear;

int flag_key1 = 0;
int flag_key2 = 0;

/**
 * @brief  KEY2 callback function
 * @param  argv: NULL
 * @retval None
 */
void KEY2_BackCall(void *argv){
  flag_key2 = !flag_key2;
  //update display
  rt_kprintf("flag_key2 = %d\r\n",flag_key2);

}

/**
 * @brief  KEY1 callback function
 * @param  argv: NULL
 * @retval None
 */

void KEY1_BackCall(void *argv){
  flag_key1 = !flag_key1;
  //update display
  rt_kprintf("flag_key1 = %d\r\n",flag_key1);
      if(flag_key2 == 0) {
        //update index
        if(display_index <= 0) {
            display_index = queue_size - 1; 
        } else {
          display_index--;  
          }
      }
}

/**
 * @brief  Initialize the KEY1 and KEY2
 * @param  None
 * @retval None
 */
void KEY_init(void){
    //config gpio mode
    rt_pin_mode(KEY2,PIN_MODE_INPUT);
    //config gpio irq PIN_IRQ_MODE_RISING_FALLING
    rt_pin_attach_irq(KEY2,PIN_IRQ_MODE_FALLING,KEY2_BackCall,RT_NULL);
    //enable gpio irq
    rt_pin_irq_enable(KEY2,PIN_IRQ_ENABLE);

    //config gpio mode
    rt_pin_mode(KEY1,PIN_MODE_INPUT);
    //config gpio irq 
    rt_pin_attach_irq(KEY1,PIN_IRQ_MODE_FALLING,KEY1_BackCall,RT_NULL);
    //enable gpio irq
    rt_pin_irq_enable(KEY1,PIN_IRQ_ENABLE);

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
    bt_rssi_rthread();//set bt_rssi_rthread sampling time to 500ms
    while (1)
    {
        //rt_kprintf("main thread is running\n");
        rt_thread_delay(1000);

    }
    return RT_EOK;

}


