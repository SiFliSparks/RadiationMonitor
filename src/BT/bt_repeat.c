#include "cpu_tst_drv.h"
#include "bt_tst_drv.h"
#include "bt_repeat.h"
#include "rtthread.h"
#include "register.h"
#include "ble_rf_cal.h"


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

// record rssi value for each channel
#define TIME_WINDOW_SIZE 60  
#define CHANNEL_COUNT 79

#define MAX_DATA_QUEUE_SIZE 10  

extern int flag_key1;
extern int flag_key2;
extern int flag_screen;

uint8_t error;
uint8_t irq_result = BT_ERROR;
uint8_t irq_cnt=0;
int rate_res[79] = {0};
//storage rssi value
int rssi_array[79];
int record_rssi[79];
int rssi_res[79];
int record_cnt = 0;

//record rssi value
static int rssi_history[TIME_WINDOW_SIZE][CHANNEL_COUNT];
static int history_index = 0;  // current write index

// store rssi value for each channel
static int rssi_queue[CHANNEL_COUNT][MAX_DATA_QUEUE_SIZE];
int queue_size = 0;                 // current queue size
static int queue_front = 0;        // current queue front index
int queue_rear = 0;         // current queue rear index
int display_index = -1;             // current display index
static int history_count = 0;   // current history count
static rt_tick_t last_collect_time = 0;  // last collect time

//rssi thread
rt_thread_t bt_rssi_thread = RT_NULL;
//rssi value seamphore
rt_sem_t rssi_read = RT_NULL;
//get rssi timer
rt_timer_t rssi_timer = RT_NULL;


/**
 * @brief  Timer callback function, used to trigger RSSI reading once per second
 * @param  parameter: NULL
 * @retval None
 */
static void rssi_timer_callback(void *parameter)
{
    // release the semaphore to trigger the RSSI reading thread execution
    rt_sem_release(rssi_read);
}
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
  uint64_t bdaddr=0x3003000cf00f;
  uint64_t bch=0x20838976e;
  uint8_t acledr = 1;
  uint32_t clkncnt;
  uint16_t finecnt;
  uint16_t dataptr;
  uint16_t packet_cnt=0;
	uint8_t channel_index = 0;
	uint16_t channel_loop = 1;
  uint16_t syncerr_cnt=0;
  uint16_t hecerr_cnt=0;
  uint16_t guarderr_cnt=0;
  uint16_t crcerr_cnt=0;
  uint16_t pass_cnt=0;
	uint8_t rssi=0;
    //initialization
    hwp_lpsys_cfg->DBGR = 0xff07;
		hwp_bt_phy->EDRDEMOD_CFG1 = 0x2020;//EDR2_MU_DC/ERR
		
		
    bt_init();
    clkncnt = bt_get_clkn();
    finecnt = (hwp_bt_mac->FINETIMECNT);

    //slot1->CS0
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
    bt_em_cs_init(BT_EM_CS0);
    bt_em_cs_set_format(BT_EM_CS0,BT_CS_FORMAT_SLAVE_CONNECT);
    write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x14,0x1,0xe0000000); //cs_rxth
    write_field(BT_EM_BASE_ADDR+BT_EM_CS0+0x18,0x0064,0xffff); // wide window
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

    //wait interrupt
    while (1){
      __WFI();
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
	  //read rssi value from rxdesc and store in rssi_array
      if (i & 0x1) {
        rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR1+0x8) & 0xff;
        rssi_array[channel_index-1] = rssi; 
        bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR1, //base_addr
                                 BT_EM_RXDESCRIPTOR0, //nextptr
                                 BT_EM_RXDATABUFFER1, //rxdataptr
                                 BT_EM_RXDATABUFFER1
                                );
      }
      else {
				rssi = read_memory(BT_EM_BASE_ADDR+BT_EM_RXDESCRIPTOR0+0x8) & 0xff;
				rssi_array[channel_index-1] = rssi; 
        bt_em_rx_descriptor_set( BT_EM_RXDESCRIPTOR0, //base_addr
                                 BT_EM_RXDESCRIPTOR1, //nextptr
                                 BT_EM_RXDATABUFFER0, //rxdataptr
                                 BT_EM_RXDATABUFFER0
                                );
      }
      packet_cnt = packet_cnt + 1;
      i = i + 1;
	  if(channel_index == 79){
			for(int c=0;c<79;c++){
                rssi_array[c] = rssi_array[c] - 256-6;
          }
        //exit while loop
        break;
	    }
      bt_start_act(1);
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
    if(flag_key2 == 1){//update data
            //get data
            for(int i = 0; i < 79; i++) {
                rssi_res[i] = rssi_array[i];
            }
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


/**
 * @brief  RSSI thread entry function, used to handle RSSI reading and processing
 * @param  parameter: NULL
 * @retval None
 */
static void rssi_rthread_entry(void *parameter)
{
    bt_rf_cal();
    write_memory(0x4008409c,0x00000001);
    write_memory(0x400840AC,0x00048800);
    hwp_bt_phy->RSSI_CFG1 &= ~BT_PHY_RSSI_CFG1_RSSI_MU;
	hwp_bt_phy->RSSI_CFG1 |= (7 << BT_PHY_RSSI_CFG1_RSSI_MU_Pos);
    while (1)
    {
        rt_sem_take(rssi_read, RT_WAITING_FOREVER);
        if(flag_key2 == 1){
            bt_repeat_rx_rssi_ch0_79_auto();
        }
        rssi_deal();
    }
}

/**
 * @brief  Create RSSI thread function, used to handle RSSI reading and processing
 * @param  None
 * @retval None
 */
void bt_rssi_rthread(int sampling_time)
{
    //init rssi_res array
    for(int i=0;i<79;i++){
        rssi_res[i] = -127;
        rssi_array[i] = -127;
    }
    //create rssi thread
    bt_rssi_thread = rt_thread_create("bt_rssi", rssi_rthread_entry, RT_NULL, 1024*2, 26, 10);
    //create rssi_read semaphore
    rssi_read = rt_sem_create("rssi_read", 0, RT_IPC_FLAG_FIFO);
    if (rssi_read == RT_NULL){
        rt_kprintf("rssi_read create failed!\n");
        return;
    }
    
    //create rssi_timer timer
    rssi_timer = rt_timer_create("rssi_timer",
                                 rssi_timer_callback,
                                 RT_NULL,
                                 sampling_time, //sampling time
                                 RT_TIMER_FLAG_PERIODIC | RT_TIMER_FLAG_SOFT_TIMER);
    
    if (rssi_timer != RT_NULL){
        rt_timer_start(rssi_timer);
        rt_kprintf("rssi_timer create and start success!\n");
    } else {
        rt_kprintf("rssi_timer create failed!\n");
    }
    //start rssi thread

    if (bt_rssi_thread != RT_NULL){
        rt_thread_startup(bt_rssi_thread);
        rt_kprintf("bt_rssi_thread create success!\n");
    } else {
        rt_kprintf("bt_rssi_thread create failed!\n");
    }
}