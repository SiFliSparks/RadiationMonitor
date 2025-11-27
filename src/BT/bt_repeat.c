#include "cpu_tst_drv.h"
#include "bt_tst_drv.h"
#include "bt_repeat.h"
#include "rtthread.h"
#include "register.h"
#include "ble_rf_cal.h"
#include <rthw.h>
#include <math.h>
#include <stdlib.h>


//add extern "C" {
extern void write_field(uint32_t addr, uint32_t value, uint32_t mask);


extern void bt_em_cs_init(uint32_t base_addr);
extern void bt_em_cs_set_format(uint32_t base_addr, uint8_t format);

extern void bt_em_rx_descriptor_set(uint32_t base_addr, uint16_t nextptr, uint16_t rxaclbufptr, uint16_t rxlmbufptr);


extern void bt_start_act(uint8_t act_num);

extern void bt_irq_enable(uint32_t bt_irq);
extern void bt_irq_disable(uint32_t bt_irq);
extern void bt_irq_clear(uint32_t bt_irq);

extern void dm_irq_enable(uint32_t dm_irq);
extern void dm_irq_disable(uint32_t dm_irq);
extern void dm_irq_clear(uint32_t dm_irq);


extern void bt_set_currentrxdescptr(uint16_t value);
extern uint32_t bt_get_clkn(void);

extern int flag_key2_short;

#define CHANNEL_COUNT 79
#define MAX_DATA_QUEUE_SIZE 10  


uint8_t irq_result = BT_ERROR;
uint8_t irq_cnt=0;
//storage rssi value
int rssi_array1[79];
int rssi_array2[79];
int rssi_array[79];
int rssi_res[79];

// store rssi value for each channel
static int rssi_queue[CHANNEL_COUNT][MAX_DATA_QUEUE_SIZE];
int queue_size = 0;                 // current queue size
static int queue_front = 0;        // current queue front index
int queue_rear = 0;         // current queue rear index
int display_index = -1;             // current display index

//rssi thread
rt_thread_t bt_rssi_thread = RT_NULL;

void rssi_deal(void);
void bt_repeat_rx_rssi_ch0_79_auto(void);
double db_to_liner_ratio(double dB_value);
double liner_ratio_to_db(double liner_value);

/**
 * @brief  DMA interrupt handler function, used to handle RSSI reading interrupt
 * @param  None
 * @retval None
 */
void DM_MAC_Handler(void)
{
    irq_result = bt_irq_handler();
	  irq_cnt = irq_cnt + 1;
};
/**
 * @brief  Get the RSSI value for each channel
 * @param  None
 * @retval None
 */
void bt_repeat_rx_rssi_ch0_79_auto(void)
{
    uint8_t test_result = TEST_UNFINISHED;
    uint16_t tx_pld_len;
    uint16_t target_pld_len;
    uint8_t i=0;
	uint16_t j=0;
    uint64_t bdaddr=0x3003000cf00f;
    uint64_t bch=0x20838976e;
    uint8_t acledr = 1;
    uint32_t clkncnt;
    uint16_t finecnt;
    uint16_t dataptr;
    uint16_t packet_cnt=0;
	uint8_t channel_index = 76;
	uint16_t channel_loop = 1;
    uint16_t syncerr_cnt=0;
    uint16_t hecerr_cnt=0;
    uint16_t guarderr_cnt=0;
    uint16_t crcerr_cnt=0;
    uint16_t pass_cnt=0;
	uint8_t rssi=0;
	j=0;

	while(1){//inner loop
       /*************************  scan1  ***********************************/
      //scan1
      write_memory(0x400840AC, 0x0004A000);
	  j=0;
	  i=0;
	  channel_index = 0;
      packet_cnt = 0;	
      bt_init();//ok
      clkncnt = bt_get_clkn();//ok
      finecnt = (hwp_bt_mac->FINETIMECNT);
      //slot1->CS0  OK
      bt_em_extab_set (0x1,        //index
                     0x1,        //mode
                     0x0,        //status
                     0x0,        //iso
                     0x0,        //rsvd
                     0x0,        //ae_nps
                     0x0,        //isobufsel
                     0x0,        //spa
                     0x5,        //sch_prio1
                     clkncnt+0xa,        //rawstp
                     finecnt,        //finestp
                     BT_EM_CS0, //csptr
                     0x2,        //prio1d
                     0x1,        //prio1d_unit
                     0x2,        //sch_prio2
                     0x4,        //sch_prio3
                     0x0,        //ioschan
                     0x4         //pti_prio
                     );

      //build CS0
      bt_em_cs_init(BT_EM_CS0);//OK 
      bt_em_cs_set_format(BT_EM_CS0,BT_CS_FORMAT_SLAVE_CONNECT);//OK
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x14,0x1,0xe0000000); //cs_rxth
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x18,0x000a,0xffff); // wide window
      hwp_bt_mac->RWBTCNTL |= BT_MAC_RWBTCNTL_WHITDSB;
      hwp_bt_mac->RWBTCNTL |= BT_MAC_RWBTCNTL_SEQNDSB;
      hwp_bt_mac->BTSWPROFILING = 0x0;
      write_memory(BT_EM_BASE_ADDR+BT_EM_CS0+0x8,bdaddr);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0xc,bdaddr>>32,0xffff);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0xc,bch&0xffff,0xffff0000);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x10,bch>>16,0x3ffff);

      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x4,acledr,0x8000000);
      hwp_bt_mac->DMRADIOCNTL1 |= BT_MAC_DMRADIOCNTL1_FORCE_CHANNEL;
      hwp_bt_mac->DMRADIOCNTL1 &= ~BT_MAC_DMRADIOCNTL1_CHANNEL;
      hwp_bt_mac->DMRADIOCNTL1 |= (channel_index << BT_MAC_DMRADIOCNTL1_CHANNEL_Pos);
		

      //set_rx0
      bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR0, //base_addr
                             BT_EM_RXDESCRIPTOR1, //nextptr
                             BT_EM_RXDATABUFFER0,  //rxdataptr
                             BT_EM_RXDATABUFFER0
                            );
      //set_rx1
      bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR1, //base_addr
                             BT_EM_RXDESCRIPTOR0, //nextptr
                             BT_EM_RXDATABUFFER1,  //rxdataptr
                             BT_EM_RXDATABUFFER1
                            );                            
      //point to rx0
      bt_set_currentrxdescptr(BT_EM_RXDESCRIPTOR0);

      //turn on BLE core
      bt_enable();
      bt_start_act(1);

      //configure interrupt
      NVIC_EnableIRQ(DM_MAC_IRQn);
      dm_irq_enable(DM_IRQ_ERROR | DM_IRQ_FIFO);
      bt_irq_disable(BT_IRQ_ALL);
      bt_irq_clear(BT_IRQ_ALL);
	  dm_irq_clear(DM_IRQ_ALL);
      bt_irq_enable(BT_IRQ_ERROR | BT_IRQ_RX);

      while (1){
        while((hwp_bt_mac->ACTFIFOSTAT& BT_MAC_ACTFIFOSTAT_RXINTSTAT)==0);
        hwp_bt_mac->RWDMCNTL |= BT_MAC_RWDMCNTL_MASTER_SOFT_RST;
        clkncnt = bt_get_clkn();
        finecnt = (hwp_bt_mac->FINETIMECNT);
        bt_em_extab_set (0x1,        //index
                       0x1,        //mode
                       0x0,        //status
                       0x0,        //iso
                       0x0,        //rsvd
                       0x0,        //ae_nps
                       0x0,        //isobufsel
                       0x0,        //spa
                       0x5,        //sch_prio1
                       clkncnt+0x1,        //rawstp
                       finecnt,        //finestp
                       BT_EM_CS0, //csptr
                       0x2,        //prio1d
                       0x1,        //prio1d_unit
                       0x2,        //sch_prio2
                       0x4,        //sch_prio3
                       0x0,        //ioschan
                       0x4         //pti_prio
                       ); 

	    channel_index = channel_index + 1;
	    hwp_bt_mac->DMRADIOCNTL1 &= ~BT_MAC_DMRADIOCNTL1_CHANNEL;
        hwp_bt_mac->DMRADIOCNTL1 |= (channel_index << BT_MAC_DMRADIOCNTL1_CHANNEL_Pos);
	  
        if (i & 0x1) {
          //save rssi
          rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR1+0x8) & 0xff;
          rssi_array1[j] = rssi;
	      j=j+1;
          bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR1, //base_addr
                                 BT_EM_RXDESCRIPTOR0, //nextptr
                                 BT_EM_RXDATABUFFER1, //rxdataptr
                                 BT_EM_RXDATABUFFER1
                                );
        }
        else {
          //save rssi
		  rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR0+0x8) & 0xff;
          rssi_array1[j] = rssi;
          j=j+1;
		
          bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR0, //base_addr
                                 BT_EM_RXDESCRIPTOR1, //nextptr
                                 BT_EM_RXDATABUFFER0, //rxdataptr
                                 BT_EM_RXDATABUFFER0
                                );
        }
      
        packet_cnt = packet_cnt + 1;
        i = i + 1;
		if(channel_index == 79){
          //save rssi
          for(int i = 0;i<channel_index;i++){
            rssi_array1[i] = rssi_array1[i] - 256 -6;
          }
		  break;//break inner loop
	    }
      
        bt_start_act(1);
      }


      /*************************  scan2  ***********************************/
      //scan2
       write_memory(0x400840AC, 0x00048800);
	  j=0;
	  i=0;
	  channel_index = 0;
      packet_cnt = 0;	
      bt_init();//ok
      clkncnt = bt_get_clkn();//ok
      finecnt = (hwp_bt_mac->FINETIMECNT);

      //slot1->CS0  OK
      bt_em_extab_set (0x1,        //index
                     0x1,        //mode
                     0x0,        //status
                     0x0,        //iso
                     0x0,        //rsvd
                     0x0,        //ae_nps
                     0x0,        //isobufsel
                     0x0,        //spa
                     0x5,        //sch_prio1
                     clkncnt+0xa,        //rawstp
                     finecnt,        //finestp
                     BT_EM_CS0, //csptr
                     0x2,        //prio1d
                     0x1,        //prio1d_unit
                     0x2,        //sch_prio2
                     0x4,        //sch_prio3
                     0x0,        //ioschan
                     0x4         //pti_prio
                     );

      //build CS0
      bt_em_cs_init(BT_EM_CS0);//OK 
      bt_em_cs_set_format(BT_EM_CS0,BT_CS_FORMAT_SLAVE_CONNECT);//OK
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x14,0x1,0xe0000000); //cs_rxth
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x18,0x000a,0xffff); // wide window
      hwp_bt_mac->RWBTCNTL |= BT_MAC_RWBTCNTL_WHITDSB;
      hwp_bt_mac->RWBTCNTL |= BT_MAC_RWBTCNTL_SEQNDSB;
      hwp_bt_mac->BTSWPROFILING = 0x0;
      write_memory(BT_EM_BASE_ADDR+BT_EM_CS0+0x8,bdaddr);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0xc,bdaddr>>32,0xffff);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0xc,bch&0xffff,0xffff0000);
      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x10,bch>>16,0x3ffff);

      write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x4,acledr,0x8000000);
      hwp_bt_mac->DMRADIOCNTL1 |= BT_MAC_DMRADIOCNTL1_FORCE_CHANNEL;
      hwp_bt_mac->DMRADIOCNTL1 &= ~BT_MAC_DMRADIOCNTL1_CHANNEL;
      hwp_bt_mac->DMRADIOCNTL1 |= (channel_index << BT_MAC_DMRADIOCNTL1_CHANNEL_Pos);
		

      //set_rx0
      bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR0, //base_addr
                             BT_EM_RXDESCRIPTOR1, //nextptr
                             BT_EM_RXDATABUFFER0,  //rxdataptr
                             BT_EM_RXDATABUFFER0
                            );
      //set_rx1
      bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR1, //base_addr
                             BT_EM_RXDESCRIPTOR0, //nextptr
                             BT_EM_RXDATABUFFER1,  //rxdataptr
                             BT_EM_RXDATABUFFER1
                            );                            
      //point to rx0
      bt_set_currentrxdescptr(BT_EM_RXDESCRIPTOR0);

      //turn on BLE core
      bt_enable();
      bt_start_act(1);

      //configure interrupt
      NVIC_EnableIRQ(DM_MAC_IRQn);
      dm_irq_enable(DM_IRQ_ERROR | DM_IRQ_FIFO);
      bt_irq_disable(BT_IRQ_ALL);
      bt_irq_clear(BT_IRQ_ALL);
	  dm_irq_clear(DM_IRQ_ALL);
      bt_irq_enable(BT_IRQ_ERROR | BT_IRQ_RX);

      while (1){
        
        while((hwp_bt_mac->ACTFIFOSTAT& BT_MAC_ACTFIFOSTAT_RXINTSTAT)==0);
        hwp_bt_mac->RWDMCNTL |= BT_MAC_RWDMCNTL_MASTER_SOFT_RST;
        clkncnt = bt_get_clkn();
        finecnt = (hwp_bt_mac->FINETIMECNT);
        bt_em_extab_set (0x1,        //index
                       0x1,        //mode
                       0x0,        //status
                       0x0,        //iso
                       0x0,        //rsvd
                       0x0,        //ae_nps
                       0x0,        //isobufsel
                       0x0,        //spa
                       0x5,        //sch_prio1
                       clkncnt+0x1,        //rawstp
                       finecnt,        //finestp
                       BT_EM_CS0, //csptr
                       0x2,        //prio1d
                       0x1,        //prio1d_unit
                       0x2,        //sch_prio2
                       0x4,        //sch_prio3
                       0x0,        //ioschan
                       0x4         //pti_prio
                       ); 

	    channel_index = channel_index + 1;
	    hwp_bt_mac->DMRADIOCNTL1 &= ~BT_MAC_DMRADIOCNTL1_CHANNEL;
        hwp_bt_mac->DMRADIOCNTL1 |= (channel_index << BT_MAC_DMRADIOCNTL1_CHANNEL_Pos);
	  
        if (i & 0x1) {
          //save rssi
          rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR1+0x8) & 0xff;
          rssi_array2[j] = rssi;
	      j=j+1;
          bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR1, //base_addr
                                 BT_EM_RXDESCRIPTOR0, //nextptr
                                 BT_EM_RXDATABUFFER1, //rxdataptr
                                 BT_EM_RXDATABUFFER1
                                );
        }
        else {
          // save rssi
		  rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR0+0x8) & 0xff;
          rssi_array2[j] = rssi;
          j=j+1;
		
          bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR0, //base_addr
                                 BT_EM_RXDESCRIPTOR1, //nextptr
                                 BT_EM_RXDATABUFFER0, //rxdataptr
                                 BT_EM_RXDATABUFFER0
                                );
        }
      
        packet_cnt = packet_cnt + 1;
        i = i + 1;
		if(channel_index == 79){
          //save rssi
          for(int i = 0;i<channel_index;i++){
            rssi_array2[i] = rssi_array2[i] - 256 -6;
          }
		  break;//break inner loop
	    }
      
        bt_start_act(1);
      }
      break;//break outer loop
    }
    //deal rssi value
      for(int i = 0;i<channel_index;i++){
        if(rssi_array1[i] > -59)
          rssi_array[i] = rssi_array1[i];
        else
          rssi_array[i] = rssi_array2[i];
      }

      if(rssi_array[46] < -90){
        rssi_array[46] = -104;
      }

      //printf rssi value
        for(int i = 0;i<channel_index;i++){
            rt_kprintf("channel %d : rssi = %d dBm\r\n",i+1,rssi_array[i]);
        }

}

/**
 * @brief  Get data from queue function
 * @param  index: index of data in queue
 * @retval pointer to data buffer
 */
int* get_data_from_queue(int index) {     
    if(index < 0 || index >= queue_size) {        
        static int default_buffer[CHANNEL_COUNT] = {0};        
        return default_buffer;    }    
    
  
    int actual_index = (queue_front + index) % MAX_DATA_QUEUE_SIZE;    
     
    static int result_buffer[CHANNEL_COUNT];    
    for(int j = 0; j < CHANNEL_COUNT; j++) {        
        result_buffer[j] = rssi_queue[j][actual_index];    }    
    
    return result_buffer;  
}

/**
 * @brief  Enqueue RSSI data function, used to store RSSI data in queue
 * @param  None
 * @retval None
 */
static void enqueue_rssi_data(void) {    
  
    for(int j = 0; j < CHANNEL_COUNT; j++) {        
        rssi_queue[j][queue_rear] = rssi_res[j];    }    
    
   
    queue_rear = (queue_rear + 1) % MAX_DATA_QUEUE_SIZE;    
    
  
    if(queue_size >= MAX_DATA_QUEUE_SIZE) {        
        queue_front = (queue_front + 1) % MAX_DATA_QUEUE_SIZE;    } else {        
        queue_size++;    }    
 
    display_index = queue_size - 1;
}

/**
 * @brief  RSSI data processing function, used to update or display RSSI data
 * @param  None
 * @retval None
 */
void rssi_deal(void)
{ 
    static double last_dbm[CHANNEL_COUNT][10];

    static int last_dbm_count = 0;
    if(flag_key2_short == 1){//update data
            //get data
            for(int i = 0; i < 79; i++) {
                // rssi_res[i] = rssi_array[i];
                //save last  dbm value
                last_dbm[i][last_dbm_count % 10] = db_to_liner_ratio((double)rssi_array[i]);
                //calculate average dbm value
                double sum = 0.0;
                for(int j = 0; j < 10; j++) {
                    sum += last_dbm[i][j];
                }
                double avg_liner = sum / 10.0;
                rssi_res[i] = (int)liner_ratio_to_db(avg_liner);
                //printf dbm and mW value
                // rt_kprintf("channel = %d ,dbm =  %d,mW = %.15f\r\n",i+1,rssi_res[i],avg_liner);    
            }
            last_dbm_count++;
            enqueue_rssi_data();
        }
        else{//stop update data
            //display data and move display_index
            int* data = get_data_from_queue(display_index);
            if(data != NULL) {
                for(int j = 0; j < CHANNEL_COUNT; j++) {
                    if(data[j] == 0){
                        rssi_res[j] = -127;
                    }else{
                        rssi_res[j] = data[j];
                    }
                }
            }
        }
}
double db_to_liner_ratio(double dB_value){
    return pow(10.0, dB_value / 10.0);
}

double liner_ratio_to_db(double liner_value){
    return 10.0 * log10(liner_value);
}

/**
 * @brief  RSSI thread entry function, used to handle RSSI reading and processing
 * @param  parameter: NULL
 * @retval None
 */
static void rssi_rthread_entry(void *parameter)
{
    //ble rf cal
    rt_base_t int_save;
    hwp_pmuc->HXT_CR1 &= ~PMUC_HXT_CR1_LDO_VREF;
	hwp_pmuc->HXT_CR1 |= 5 << PMUC_HXT_CR1_LDO_VREF_Pos;
    bt_rf_cal();
    while (1)
    {   
        int_save = rt_hw_interrupt_disable();
        if(flag_key2_short == 1){
            bt_repeat_rx_rssi_ch0_79_auto();
        }
        rssi_deal();
        rt_hw_interrupt_enable(int_save);
        rt_thread_mdelay(500);
    }
}

/**
 * @brief  Create RSSI thread function, used to handle RSSI reading and processing
 * @param  None
 * @retval None
 */
void bt_rssi_rthread(void)
{
    //init rssi_res array
    for(int i=0;i<79;i++){
        rssi_res[i] = -127;
        rssi_array[i] = -127;
    }
    //create rssi thread
    bt_rssi_thread = rt_thread_create("bt_rssi", rssi_rthread_entry, RT_NULL, 1024*2, 10, 10);
    //start rssi thread

    if (bt_rssi_thread != RT_NULL){
        rt_thread_startup(bt_rssi_thread);
        rt_kprintf("bt_rssi_thread create success!\n");
    } else {
        rt_kprintf("bt_rssi_thread create failed!\n");
    }
}