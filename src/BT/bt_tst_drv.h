#ifndef BT_TST_DRV_H
#define BT_TST_DRV_H

#include "bf0_hal_hlp.h"
#include <stdint.h>
#include "register.h"
#include "ble_rf_cal.h"


//#define BT_RC_32K768
#define BT_RC_CAL

#define BT_SUCCESS 1
#define BT_ERROR   0

//add ble define
#define BLE_EM_OFFSET_ADDR       0x0000
#define BLE_EM_BASE_ADDR         BT_EM_BASE_ADDR
#define BLE_EM_FREQTABLE         0x100


#define BT_EM_OFFSET_ADDR       0x0000
#define BT_EM_BASE_ADDR         (0x20408000+BT_EM_OFFSET_ADDR)
#define BT_EM_FREQTABLE         0x100

#define BT_EM_CS0               0x2E14
#define BT_EM_RXDESCRIPTOR0     0x30b4
#define BT_EM_RXDESCRIPTOR1     0x30c4
#define BT_EM_RXDATABUFFER0     0x3468 //+ 5
#define BT_EM_RXDATABUFFER1     0x386c
#define BT_EM_TXDESCRIPTOR0     0x30d4
#define BT_BER_DEBUG_EN    0

#define BT_EM_SPI               0x128  
#define BT_EM_TXDESCRIPTOR1     0x22b0
#define BT_EM_RXDESCRIPTOR2     0x2300
#define BT_EM_RXDESCRIPTOR3     0x2320
#define BT_EM_TXDATABUFFER0     0x2380
#define BT_EM_TXDATABUFFER1     0x2780
#define BT_EM_RXDATABUFFER2     0x3380
#define BT_EM_RXDATABUFFER3     0x3780
#define BT_EM_TARGETBUFFER0     0x3b00
#define BT_EM_TARGETBUFFER1     0x3f00
#define BT_EM_TXDATABUFFER2     0x4300
#define BT_EM_TXDATABUFFER3     0x4700
#define BT_EM_CS1               0x5000
#define BT_EM_NULL              0xFFFF

#define BT_AON_ACTIVE           0x0
#define BT_AON_LIGHTSLEEP       0x1
#define BT_AON_DEEPSLEEP        0x2
#define BT_AON_STANDBY          0x3

enum bt_cs_format
{
    BT_CS_FORMAT_MASTER_CONNECT       = 0x2,
    BT_CS_FORMAT_SLAVE_CONNECT        = 0x3,
    BT_CS_FORMAT_PAGE                 = 0x4,
    BT_CS_FORMAT_PAGE_SCAN            = 0x5,
    BT_CS_FORMAT_MASTER_PAGE_RESPONSE = 0x6,
    BT_CS_FORMAT_SLAVE_PAGE_RESPONSE  = 0x7,
    BT_CS_FORMAT_INQUIRY              = 0x8,
    BT_CS_FORMAT_INQUIRY_RESPONSE     = 0x9,
    BT_CS_FORMAT_BROADCAST            = 0x18,
    BT_CS_FORMAT_BROADCAST_SCAN       = 0x19,
    BT_CS_FORMAT_TX_DIRECT_MODE       = 0x1E,
    BT_CS_FORMAT_RX_DIRECT_MODE       = 0x1F
};
typedef enum bt_cs_format bt_cs_format_t;

enum bt_tx_type
{
    BT_TX_TYPE_NULL  = 0x0,
    BT_TX_TYPE_POLL  = 0x1,
    BT_TX_TYPE_FHS   = 0x2,
    BT_TX_TYPE_DM1   = 0x3,
    BT_TX_TYPE_DH1   = 0x4,
    BT_TX_TYPE_2DH1  = 0x4,
    BT_TX_TYPE_HV1   = 0x5,
    BT_TX_TYPE_HV2   = 0x6,
    BT_TX_TYPE_2EV3  = 0x6,
    BT_TX_TYPE_HV3   = 0x7,
    BT_TX_TYPE_EV3   = 0x7,
    BT_TX_TYPE_3EV3  = 0x7,
    BT_TX_TYPE_DV    = 0x8,
    BT_TX_TYPE_3DH1  = 0x8,
    BT_TX_TYPE_AUX1  = 0x9,
    BT_TX_TYPE_DM3   = 0xa,
    BT_TX_TYPE_2DH3  = 0xa,
    BT_TX_TYPE_DH3   = 0xb,
    BT_TX_TYPE_3DH3  = 0xb,
    BT_TX_TYPE_EV4   = 0xc,
    BT_TX_TYPE_2EV5  = 0xc,
    BT_TX_TYPE_EV5   = 0xd,
    BT_TX_TYPE_3EV5  = 0xd,
    BT_TX_TYPE_DM5   = 0xe,
    BT_TX_TYPE_2DH5  = 0xe,
    BT_TX_TYPE_DH5   = 0xf,
    BT_TX_TYPE_3DH5  = 0xf
};
typedef enum bt_tx_type bt_tx_type_t;

enum bt_irq
{
    BT_IRQ_ALL        = 0x1ff17,
    BT_IRQ_ERROR      = 0x10000,
    BT_IRQ_AUDIO2     = 0x08000,
    BT_IRQ_AUDIO1     = 0x04000,
    BT_IRQ_AUDIO0     = 0x02000,
    BT_IRQ_MWSWCIRX   = 0x01000,
    BT_IRQ_MWSWCITX   = 0x00800,
    BT_IRQ_MTOFF1     = 0x00400,
    BT_IRQ_MTOFF0     = 0x00200,
    BT_IRQ_FRSYNC     = 0x00100,
    BT_IRQ_RX         = 0x00010,
    BT_IRQ_SKIP       = 0x00004,
    BT_IRQ_END        = 0x00002,
    BT_IRQ_START      = 0x00001
};
typedef enum bt_irq bt_irq_t;

enum dm_irq
{
    DM_IRQ_ALL        = 0x181ff,
    DM_IRQ_ERROR      = 0x10000,
    DM_IRQ_FIFO       = 0x08000,
    DM_IRQ_RCCAL      = 0x00100,
    DM_IRQ_TIMESTAMP3 = 0x00080,
    DM_IRQ_TIMESTAMP2 = 0x00040,
    DM_IRQ_TIMESTAMP1 = 0x00020,
    DM_IRQ_FINETGTIM  = 0x00010,
    DM_IRQ_SW         = 0x00008,
    DM_IRQ_CRYPT      = 0x00004,
    DM_IRQ_SLP        = 0x00002,
    DM_IRQ_CLKN       = 0x00001
};
typedef enum dm_irq dm_irq_t;

uint32_t read_field(uint32_t addr, uint32_t mask);
void bt_init_clk(void);
void bt_init_phy(void);
void bt_init_rf(void);
void bt_init_rf_table(void);
void bt_init_em_extab(void);
void bt_init(void);
void bt_em_extab_set(uint8_t index, uint8_t mode, uint8_t status, uint8_t esco,
                     uint8_t rsvd, uint8_t sniff, uint8_t csb, uint8_t spa,
                     uint8_t sch_prio1, uint32_t rawstp, uint16_t finestp, uint16_t csptr,
                     uint8_t priobw, uint8_t priobw_unit, uint8_t sch_prio2,
                     uint8_t sch_prio3, uint8_t vxchan, uint8_t pti_prio);
void bt_em_cs_set_rxthr(uint32_t base_addr, uint8_t rxthr);
void bt_em_cs_set_tx_power(uint32_t base_addr, uint8_t tx_power);
void bt_em_tx_descriptor_set(uint32_t base_addr, uint16_t nextptr,
                             uint8_t txltaddr, uint8_t txtype, uint8_t txflow,uint8_t txarqn,
                             uint8_t txseqn,uint8_t txllid, uint8_t txpflow, uint16_t txlength,
                             uint8_t txlindef,uint16_t txaclbufptr, uint16_t txlmbufptr);

void bt_enable(void);

uint8_t bt_irq_handler(void);


uint8_t dm_irq_handler(void);

void bt_esco0_config(uint8_t escochanensw0,uint8_t escochanen0,uint8_t tesco0, uint16_t esco0ptrtx0, uint16_t esco0ptrtx1, uint16_t esco0ptrrx0,
                     uint16_t esco0ptrrx1, uint8_t retxnb0,uint8_t syncltaddr0, uint8_t txtype0,
                     uint16_t txlen0, uint8_t rxtype0, uint16_t rxlen0);

void bt_set_clkn(uint32_t clkn);
void bt_aes_start(void);
void bt_set_aesptr(uint16_t aesptr);
void bt_set_aeskey(uint32_t key3, uint32_t key2, uint32_t key1, uint32_t key0);
void bt_set_finetarget(uint16_t finetarget);
void bt_pm_ls(void);
void bt_pm_ds(void);
void bt_pm_sb(void);
void bt_sleep(uint32_t sleep_cycle);
void bt_wakeup(void);
void bt_wakeup_cntcorr(void);
void bt_save(uint32_t base_addr);
void bt_restore(uint32_t base_addr);
void bt_save_rf(uint32_t base_addr);
void bt_restore_rf(uint32_t base_addr);
void bt_em_build_fhs(uint32_t base_addr);
void bt_em_buffer_random(uint32_t base_addr, uint16_t length);
void bt_seed(uint32_t seed);
uint32_t bt_rand(void);
uint8_t bt_check_rx(uint32_t base_addr);
uint8_t bt_check_tx(uint32_t base_addr);
uint8_t bt_compare_data(uint32_t base_addr1, uint32_t base_addr2, uint16_t length);
void bt_wait(uint8_t time);

#define bt_rf_rfc_init() bt_rfc_init()

#endif
