#include "cpu_tst_drv.h"
#include "bt_tst_drv.h"
#include "ble_rf_cal.h"
#include "rtthread.h"

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

static uint32_t mySeed;
static uint32_t rccal_result;



uint32_t read_field(uint32_t addr, uint32_t mask)
{
    uint32_t read_value;
    uint8_t  i;
    uint32_t shift_value;
    uint32_t return_value;

    read_value = read_memory(addr);
    i = 0;
    shift_value = 0x1;
    return_value = 0;
    //search field position
    while (i<32) {
        if (shift_value & mask) {
            return_value = (read_value & mask) >> i;
            break;
        }
        shift_value = shift_value << 1;
        i++;
    }
    return return_value;
}

void bt_init_clk(void)
{
    hwp_lpsys_aon->ACR |= LPSYS_AON_ACR_HXT48_REQ;
    hwp_lpsys_rcc->CSR = 1 << LPSYS_RCC_CSR_SEL_SYS_Pos; //select hxt48
    hwp_lpsys_rcc->CFGR = (0x2 << LPSYS_RCC_CFGR_HDIV1_Pos)|
                          (0x0 << LPSYS_RCC_CFGR_PDIV1_Pos)|
                          (0x3 << LPSYS_RCC_CFGR_PDIV2_Pos)|
                          (0x3 << LPSYS_RCC_CFGR_MACDIV_Pos)|
                          (0x8 << LPSYS_RCC_CFGR_MACFREQ_Pos);
    //hwp_bt_mac->CLKNCNTCORR = 0;
    //hwp_bt_mac->FINECNTCORR = 624;
    //hwp_bt_mac->DEEPSLCNTL |= BT_MAC_DEEPSLCNTL_DEEP_SLEEP_CORR_EN;
#ifdef __LCPU
    //hwp_pmuc->CR |= PMUC_CR_SEL_LPCLK; //select lxt32
#endif
}

void bt_init_phy(void)
{
    //hwp_bt_phy->TX_CTRL |= BT_PHY_TX_CTRL_TX_LOOPBACK_MODE;
    hwp_bt_phy->TX_CTRL |= BT_PHY_TX_CTRL_MOD_METHOD_BR;
    hwp_bt_phy->TX_CTRL |= BT_PHY_TX_CTRL_MOD_METHOD_BLE;
    //hwp_bt_phy->RX_CTRL1 |= BT_PHY_RX_CTRL1_DEMOD_METHOD;
    //hwp_bt_phy->DEMOD_CFG8 = 0x0180c120;
    //hwp_bt_phy->TX_GAUSSFLT_CFG = 0x002000a1;
    //enable q path
    hwp_bt_phy->RX_CTRL1 |= BT_PHY_RX_CTRL1_ADC_Q_EN_1;
    //hwp_bt_phy->RX_CTRL2 |= BT_PHY_RX_CTRL2_ADC_Q_EN_2;
    //hwp_bt_phy->RX_CTRL2 |= BT_PHY_RX_CTRL2_ADC_Q_EN_C;
    hwp_bt_phy->RX_CTRL2 |= BT_PHY_RX_CTRL2_ADC_Q_EN_BR;
    hwp_bt_phy->RX_CTRL2 |= BT_PHY_RX_CTRL2_ADC_Q_EN_FRC_EN;
    //zero if 
    //hwp_bt_phy->TX_IF_MOD_CFG  &= ~BT_PHY_TX_IF_MOD_CFG_TX_IF_PHASE_BLE_Msk ;
    //hwp_bt_phy->MIXER_CFG1 = 0;

    //hwp_bt_phy->EDRDEMOD_CFG1 = (0x40 << BT_PHY_EDRDEMOD_CFG1_EDR2_MU_DC_Pos) | 0x100;
    //hwp_bt_phy->EDRDEMOD_CFG2 = (0x40 << BT_PHY_EDRDEMOD_CFG2_EDR3_MU_DC_Pos) | 0x140;
    //hwp_bt_phy->EDRSYNC_CFG1 |= BT_PHY_EDRSYNC_CFG1_EDRSYNC_METHOD;
#ifdef __SIM_FPGA
    //hwp_bt_phy->MIXER_CFG1 = 0 ;//set rx mixer if freq 0
    //hwp_bt_phy->TX_IF_MOD_CFG  &= ~BT_PHY_TX_IF_MOD_CFG_TX_IF_PHASE_BLE_Msk ;//set tx mixer if freq 0
    //hwp_bt_phy->RX_CTRL1 |= BT_PHY_RX_CTRL1_ADC_Q_EN; //enable adc_q
    hwp_bt_phy->RX_CTRL1 |= BT_PHY_RX_CTRL1_FRC_ADC_24M;
    hwp_bt_phy->AGC_CTRL = 0; //disable agc
#endif
}

void bt_init_rf(void)
{
    bt_init_rf_table();//OK
    //bt_rfc_init();
}

void bt_init_rf_table(void)
{
    uint32_t addr;
    addr = BT_EM_BASE_ADDR + 0x100;
    write_memory(addr+0x00,0x06040200);
    write_memory(addr+0x04,0x0e0c0a08);
    write_memory(addr+0x08,0x16141210);
    write_memory(addr+0x0c,0x1e1c1a18);
    write_memory(addr+0x10,0x26242220);
    write_memory(addr+0x14,0x2e2c2a28);
    write_memory(addr+0x18,0x36343230);
    write_memory(addr+0x1c,0x3e3c3a38);
    write_memory(addr+0x20,0x46444240);
    write_memory(addr+0x24,0x4e4c4a48);
    write_memory(addr+0x28,0x07050301);
    write_memory(addr+0x2c,0x0f0d0b09);
    write_memory(addr+0x30,0x17151311);
    write_memory(addr+0x34,0x1f1d1b19);
    write_memory(addr+0x38,0x27252321);
    write_memory(addr+0x3c,0x2f2d2b29);
    write_memory(addr+0x40,0x37353331);
    write_memory(addr+0x44,0x3f3d3b39);
    write_memory(addr+0x48,0x47454341);
    write_memory(addr+0x4c,0x4f4d4b49);
    //hwp_bt_mac->RADIOCNTL2 = BT_EM_OFFSET_ADDR + 0x100;
}

void bt_init_em_extab(void)
{
    uint8_t i,j;
    uint32_t offset;
    for (i=0;i<16;i++) {
        for (j=0;j<4;j++) {
            offset = BT_EM_BASE_ADDR + (i << 4) + (j << 2);
            write_memory(offset,0x0000);
        }
    }
}

void bt_init(void)
{
    bt_init_clk();//OK
    bt_init_rf();//ok
    bt_init_phy();//ok
    bt_init_em_extab();//ok
    mySeed = 0;

    hwp_bt_mac->ETPTR = BT_EM_OFFSET_ADDR >> 2;
    hwp_bt_mac->BTRADIOCNTL2 |= (BT_EM_FREQTABLE+BT_EM_OFFSET_ADDR)>>2;
    hwp_bt_mac->DMTIMGENCNTL = 0x01df00fa; //prefetch time
    hwp_bt_mac->BLERADIOCNTL2 = (0x3 << BT_MAC_BLERADIOCNTL2_PHYMSK_Pos) | 
                                (BLE_EM_FREQTABLE+BLE_EM_OFFSET_ADDR)>>2;
    hwp_bt_mac->ADVTIM &= ~BT_MAC_ADVTIM_TX_AUXPTR_THR;
    hwp_bt_mac->ADVTIM |= 0xff << BT_MAC_ADVTIM_TX_AUXPTR_THR_Pos;
    hwp_bt_mac->ADVTIM &= ~BT_MAC_ADVTIM_RX_AUXPTR_THR;
    hwp_bt_mac->ADVTIM |= 0xff << BT_MAC_ADVTIM_RX_AUXPTR_THR_Pos;
    hwp_bt_mac->RCCAL_CTRL |= (0x1 << BT_MAC_RCCAL_CTRL_RCCAL_AUTO_Pos);
    hwp_bt_mac->RCCAL_CTRL &= ~BT_MAC_RCCAL_CTRL_RCCAL_LENGTH;
    hwp_bt_mac->RCCAL_CTRL |= (0x8 << BT_MAC_RCCAL_CTRL_RCCAL_LENGTH_Pos);
    hwp_bt_mac->RCCAL_CTRL |= (0x1 << BT_MAC_RCCAL_CTRL_RCCAL_START_Pos);
    while(!(hwp_bt_mac->RCCAL_RESULT & BT_MAC_RCCAL_RESULT_RCCAL_DONE_Msk));
    rccal_result = (hwp_bt_mac->RCCAL_RESULT & BT_MAC_RCCAL_RESULT_RCCAL_RESULT_Msk);
}

void bt_em_extab_set(uint8_t index, uint8_t mode, uint8_t status, uint8_t esco,
                     uint8_t rsvd, uint8_t sniff, uint8_t csb, uint8_t spa,
                     uint8_t sch_prio1, uint32_t rawstp, uint16_t finestp, uint16_t csptr,
                     uint8_t prio1d, uint8_t prio1d_unit, uint8_t sch_prio2,
                     uint8_t sch_prio3, uint8_t vxchan, uint8_t pti_prio)
{
    uint32_t addr;
    uint32_t write_value;
    addr = BT_EM_BASE_ADDR + (index << 4);
    write_value = (uint32_t)mode         | ((uint32_t)status<<3)     |
                 ((uint32_t)esco<<6)     | ((uint32_t)rsvd<<7)       |
                 ((uint32_t)sniff<<8)    | ((uint32_t)csb<<9)        |
                 ((uint32_t)spa<<10)     | ((uint32_t)sch_prio1<<11) |
                 ((uint32_t)rawstp<<16);
    write_memory(addr,write_value);  //0x0
    write_value = (uint32_t)rawstp>>16   | ((uint32_t)finestp<<16);
    write_memory(addr+0x4,write_value);  //0x4
    write_value = (uint32_t)(csptr+BT_EM_OFFSET_ADDR)>>2 | ((uint32_t)prio1d<<16) |
                 ((uint32_t)prio1d_unit<<31);
    write_memory(addr+0x8,write_value);  //0x8
    write_value = (uint32_t)sch_prio2    | ((uint32_t)sch_prio3<<8)  |
                 ((uint32_t)vxchan<<16)  | ((uint32_t)pti_prio<<24);
    write_memory(addr+0xc,write_value);  //0xc
}





void bt_em_cs_set_tx_power(uint32_t base_addr, uint8_t tx_power)
{
    uint32_t addr;
    uint32_t mask;
    addr = BT_EM_BASE_ADDR + base_addr + 0x14;
    mask = 0x000000ff;
    write_field(addr,tx_power,mask);
}

void bt_em_tx_descriptor_set(uint32_t base_addr, uint16_t nextptr,
                             uint8_t txltaddr, uint8_t txtype, uint8_t txflow,uint8_t txarqn,
                             uint8_t txseqn,uint8_t txllid, uint8_t txpflow, uint16_t txlength,
                             uint8_t txlindef,uint16_t txaclbufptr, uint16_t txlmbufptr)
{
    uint32_t addr;
    uint32_t mask;
    uint32_t write_value;
    addr = BT_EM_BASE_ADDR + base_addr;
    write_value = (uint32_t)((nextptr + BT_EM_OFFSET_ADDR)>>2)| ((uint32_t)txltaddr<<16) |
                 ((uint32_t)txtype<<19)                       | ((uint32_t)txflow<<23)   |
                 ((uint32_t)txarqn<<24)                       | ((uint32_t)txseqn<<25);
    write_memory(addr,write_value);
    write_value = (uint32_t)txllid                            | ((uint32_t)txpflow<<1)   |
                  ((uint32_t)txlength<<3)                     | ((uint32_t)txlindef<<13) |
                  ((uint32_t)(txaclbufptr + BT_EM_OFFSET_ADDR) << 16);



    write_memory(addr+0x04,write_value);
    write_value = (uint32_t)(txlmbufptr + BT_EM_OFFSET_ADDR);
    mask = 0x0000ffff;
    write_field(addr+0x08,write_value,mask);
}


void bt_enable(void)
{
    hwp_bt_mac->RWBTCNTL |= BT_MAC_RWBTCNTL_RWBTEN;
}

uint8_t bt_irq_handler(void)
{    
    uint32_t irq_stat;

    if (hwp_bt_mac->DMINTSTAT0) {
      return BT_ERROR;
    }
    irq_stat = hwp_bt_mac->ACTFIFOSTAT;
    if (irq_stat & BT_MAC_ACTFIFOSTAT_ENDACTINTSTAT) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
		else if(irq_stat & BT_MAC_ACTFIFOSTAT_RXINTSTAT){
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
}

/*
uint8_t bt_irq_handler(void)
{
    uint32_t bt_irq_stat;
    bt_irq_stat = hwp_bt_mac->BTINTSTAT0;
    if(bt_irq_stat & BT_IRQ_ERROR) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_ERROR;
    }
    else if (bt_irq_stat & BT_IRQ_ENDFRM) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (bt_irq_stat & BT_IRQ_RX) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (bt_irq_stat & BT_IRQ_AUDIOINT2) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (bt_irq_stat & BT_IRQ_AUDIOINT1) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (bt_irq_stat & BT_IRQ_AUDIOINT0) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (bt_irq_stat & BT_IRQ_SKPFRM) {
        bt_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_SUCCESS;
    }
    else{
        NVIC_ClearPendingIRQ(BT_MAC_IRQn);
        return BT_ERROR;
    }
}*/

uint8_t dm_irq_handler(void)
{
    uint32_t irq_stat;
    irq_stat = (hwp_bt_mac->DMINTSTAT0);
    if(irq_stat & DM_IRQ_ERROR) {
        bt_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_ERROR;
    }
    irq_stat = (hwp_bt_mac->DMINTSTAT1);
    if (irq_stat & DM_IRQ_SLP) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (irq_stat & DM_IRQ_CLKN) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (irq_stat & DM_IRQ_RCCAL) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    irq_stat = hwp_bt_mac->ACTFIFOSTAT;
    if (irq_stat & BT_MAC_ACTFIFOSTAT_ENDACTINTSTAT) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (irq_stat & BT_MAC_ACTFIFOSTAT_RXINTSTAT) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
}
/*
uint8_t dm_irq_handler(void)
{
    uint32_t dm_irq_stat;
    dm_irq_stat = (hwp_bt_mac->DMINTSTAT0) | (hwp_bt_mac->DMINTSTAT1);
    if(dm_irq_stat & DM_IRQ_ERROR) {
        bt_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_ERROR;
    }
    else if (dm_irq_stat & DM_IRQ_SW) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_TIMESTAMP) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_FINETGTIM) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_GROSSTGTIM) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_CRYPT) {
        dm_irq_clear(BT_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_SLP) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else if (dm_irq_stat & DM_IRQ_CLKN) {
        dm_irq_clear(DM_IRQ_ALL);
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_SUCCESS;
    }
    else{
        NVIC_ClearPendingIRQ(DM_MAC_IRQn);
        return BT_ERROR;
    }
}
*/

void bt_esco0_config(uint8_t escochanswen0,uint8_t escochanen0,uint8_t tesco0, uint16_t esco0ptrtx0, uint16_t esco0ptrtx1, uint16_t esco0ptrrx0, uint16_t esco0ptrrx1, uint8_t retxnb0,uint8_t syncltaddr0, uint8_t txtype0, uint16_t txlen0, uint8_t rxtype0, uint16_t rxlen0)
{
  hwp_bt_mac->ESCOCHANCNTL0 &= ~BT_MAC_ESCOCHANCNTL0_ESCOCHANSWEN0;
  hwp_bt_mac->ESCOCHANCNTL0 |= (escochanswen0 << BT_MAC_ESCOCHANCNTL0_ESCOCHANSWEN0_Pos);
  //write_field(0x500505d0,escochanen0,0x4000);
  hwp_bt_mac->ESCOCHANCNTL0 &= ~BT_MAC_ESCOCHANCNTL0_ESCOCHANEN0;
  hwp_bt_mac->ESCOCHANCNTL0 |= (escochanen0 << BT_MAC_ESCOCHANCNTL0_ESCOCHANEN0_Pos);
  //write_field(0x500505d0,tesco0,0xff);
  hwp_bt_mac->ESCOCHANCNTL0 &= ~BT_MAC_ESCOCHANCNTL0_TESCO0;
  hwp_bt_mac->ESCOCHANCNTL0 |= (tesco0 << BT_MAC_ESCOCHANCNTL0_TESCO0_Pos);
  //write_field(0x500505d8,esco0ptrtx0+BLE_EM_OFFSET_ADDR,0xffff);
  //write_field(0x500505d8,esco0ptrtx1+BLE_EM_OFFSET_ADDR,0xffff0000);
  hwp_bt_mac->ESCOCURRENTTXPTR0 = (((esco0ptrtx0+BT_EM_OFFSET_ADDR)>>2) << BT_MAC_ESCOCURRENTTXPTR0_ESCO0PTRTX0_Pos) |
                                  (((esco0ptrtx1+BT_EM_OFFSET_ADDR)>>2) << BT_MAC_ESCOCURRENTTXPTR0_ESCO0PTRTX1_Pos);
  //write_field(0x500505dc,esco0ptrrx0+BLE_EM_OFFSET_ADDR,0xffff);
  //write_field(0x500505dc,esco0ptrrx1+BLE_EM_OFFSET_ADDR,0xffff0000);
  hwp_bt_mac->ESCOCURRENTRXPTR0 = (((esco0ptrrx0+BT_EM_OFFSET_ADDR)>>2) << BT_MAC_ESCOCURRENTRXPTR0_ESCO0PTRRX0_Pos) |
                                  (((esco0ptrrx1+BT_EM_OFFSET_ADDR)>>2) << BT_MAC_ESCOCURRENTRXPTR0_ESCO0PTRRX1_Pos);
  //write_field(0x500505e0,retxnb0,0xff0000);
  hwp_bt_mac->ESCOLTCNTL0 &= ~BT_MAC_ESCOLTCNTL0_RETXNB0;
  hwp_bt_mac->ESCOLTCNTL0 |= (retxnb0 << BT_MAC_ESCOLTCNTL0_RETXNB0_Pos);
  //write_field(0x500505e0,syncltaddr0,0x7);
  hwp_bt_mac->ESCOLTCNTL0 &= ~BT_MAC_ESCOLTCNTL0_SYNLTADDR0;
  hwp_bt_mac->ESCOLTCNTL0 |= (syncltaddr0 << BT_MAC_ESCOLTCNTL0_SYNLTADDR0_Pos);
  //write_field(0x500505e4,txlen0,0x3ff00000);
  hwp_bt_mac->ESCOTRCNTL0 &= ~BT_MAC_ESCOTRCNTL0_TXLEN0;
  hwp_bt_mac->ESCOTRCNTL0 |= (txlen0 << BT_MAC_ESCOTRCNTL0_TXLEN0_Pos);
  //write_field(0x500505e4,txtype0,0xf0000);
  hwp_bt_mac->ESCOTRCNTL0 &= ~BT_MAC_ESCOTRCNTL0_TXTYPE0;
  hwp_bt_mac->ESCOTRCNTL0 |= (txtype0 << BT_MAC_ESCOTRCNTL0_TXTYPE0_Pos);
  //write_field(0x500505e4,rxlen0,0x3ff0);
  hwp_bt_mac->ESCOTRCNTL0 &= ~BT_MAC_ESCOTRCNTL0_RXLEN0;
  hwp_bt_mac->ESCOTRCNTL0 |= (rxlen0 << BT_MAC_ESCOTRCNTL0_RXLEN0_Pos);
  //write_field(0x500505e4,rxtype0,0xf);
  hwp_bt_mac->ESCOTRCNTL0 &= ~BT_MAC_ESCOTRCNTL0_RXTYPE0;
  hwp_bt_mac->ESCOTRCNTL0 |= (rxtype0 << BT_MAC_ESCOTRCNTL0_RXTYPE0_Pos);
}


void bt_set_clkn(uint32_t clkn)
{
    hwp_bt_mac->SLOTCLK = clkn;
    hwp_bt_mac->SLOTCLK |= BT_MAC_SLOTCLK_CLKN_UPD;
}

void bt_aes_start(void)
{
    hwp_bt_mac->AESCNTL |= 0x1 << BT_MAC_AESCNTL_AES_START_Pos;
}

void bt_set_aesptr(uint16_t aesptr)
{ 
    hwp_bt_mac->DMAESPTR &= ~BT_MAC_DMAESPTR_AESPTR;
    hwp_bt_mac->DMAESPTR |= aesptr << BT_MAC_DMAESPTR_AESPTR_Pos;
}

void bt_set_aeskey(uint32_t key3, uint32_t key2, uint32_t key1, uint32_t key0)
{
    hwp_bt_mac->AESKEY31_0 = key0;
    hwp_bt_mac->AESKEY63_32 = key1;
    hwp_bt_mac->AESKEY95_64 = key2;
    hwp_bt_mac->AESKEY127_96 = key3;
}

//void ble_set_grosstarget(uint16_t grosstarget)
//{
//    hwp_bt_mac->GROSSTIMTGT = grosstarget;
//}

void bt_set_finetarget(uint16_t finetarget)
{
    hwp_bt_mac->FINETIMTGT = finetarget;
}

void bt_pm_ls(void)
{
    uint8_t i;
    //may optional set PRIMASK here
    __disable_irq();
    hwp_lpsys_aon->WER |= LPSYS_AON_WER_BT; 
    hwp_lpsys_aon->PMR = PM_LIGHTSLEEP;
    hwp_lpsys_aon->ISSR &= ~LPSYS_AON_ISSR_LP_ACTIVE;
    __WFI();
    for (i=0;i<5;i++) {;}
    //cpu is gated during delay loop and will not continue running until subsys woken up
    
    //subsys woken up, clear power mode
    hwp_lpsys_aon->PMR = PM_ACTIVE;
    hwp_lpsys_aon->ISSR |= LPSYS_AON_ISSR_LP_ACTIVE;
    //may optional clear PRIMASK here, then process aon_irq
    __enable_irq();
}

void bt_pm_ds(void)
{
    uint8_t i;
    //may optional set PRIMASK here
    //__disable_irq();
    hwp_lpsys_aon->WER |= LPSYS_AON_WER_BT; 
    hwp_lpsys_aon->PMR = PM_DEEPSLEEP;
    hwp_lpsys_aon->ISSR &= ~LPSYS_AON_ISSR_LP_ACTIVE;
    hwp_lpsys_aon->ANACR |= LPSYS_AON_ANACR_PB_ISO;
    __WFI();
    for (i=0;i<5;i++) {;}
    //cpu is gated during delay loop and will not continue running until subsys woken up
    
    //subsys woken up, clear power mode
    hwp_lpsys_aon->PMR = PM_ACTIVE;
    hwp_lpsys_aon->ANACR &= ~LPSYS_AON_ANACR_PB_ISO;
    hwp_lpsys_aon->ISSR |= LPSYS_AON_ISSR_LP_ACTIVE;
    //may optional clear PRIMASK here, then process aon_irq
    //__enable_irq();
}

void bt_pm_sb(void)
{
    uint8_t i;
    //may optional set PRIMASK here
    //hwp_ble_rcc->ENR &= ~BLE_RCC_ENR_PATCH;
    hwp_lpsys_aon->WER |= LPSYS_AON_WER_BT; 
    hwp_lpsys_aon->PMR = PM_STANDBY;
    hwp_lpsys_aon->ISSR &= ~LPSYS_AON_ISSR_LP_ACTIVE;
    hwp_lpsys_aon->ANACR |= LPSYS_AON_ANACR_PB_ISO;
    //printf("wait aon_irq\n");
    __WFI();
    for (i=0;i<5;i++) {;}
    //cpu will reset if no reg retention, or will continue if reg retention
    
    //recover from pm_sb
    //printf("aon irq came\n");
    hwp_lpsys_aon->PMR = PM_ACTIVE;
    hwp_lpsys_aon->ANACR &= ~LPSYS_AON_ANACR_PB_ISO;
    hwp_lpsys_aon->ISSR |= LPSYS_AON_ISSR_LP_ACTIVE;
    //may optional clear PRIMASK here, then process aon_irq
}

void bt_sleep(uint32_t sleep_cycle)
{
    hwp_lpsys_aon->PRE_WKUP = 0x00340034;
    hwp_lpsys_aon->TARGET = sleep_cycle;
    hwp_lpsys_aon->SLP_CTRL |= LPSYS_AON_SLP_CTRL_SLEEP_REQ;
    //wait for bt_wkup deassert
    while(hwp_lpsys_aon->SLP_CTRL & LPSYS_AON_SLP_CTRL_BT_WKUP_Msk);
    //if calibration done then update calibration result, or use saved value
    if(hwp_bt_mac->RCCAL_RESULT & BT_MAC_RCCAL_RESULT_RCCAL_DONE_Msk)
      rccal_result = (hwp_bt_mac->RCCAL_RESULT & BT_MAC_RCCAL_RESULT_RCCAL_RESULT_Msk);
}

void bt_wakeup(void)
{
    bt_wakeup_cntcorr();
}

void bt_wakeup_cntcorr(void)
{
    uint32_t sleep_cnt;
    uint32_t clkncntcorr;
    uint32_t finecntcorr;
    uint32_t mul;
    uint32_t res;
    uint32_t div;
    sleep_cnt = hwp_lpsys_aon->ACTUAL;
    //while(!(hwp_ble_mac->RCCAL_RESULT & BLE_MAC_RCCAL_RESULT_RCCAL_DONE_Msk));
    //rccal_result = (hwp_ble_mac->RCCAL_RESULT & BLE_MAC_RCCAL_RESULT_RCCAL_RESULT_Msk);
#ifdef BT_RC_32K
    //32kHz compensation
    //clkncntcorr = (sleep_cnt / 20);
    //finecntcorr = 624 - ((deepsldur % 20) * 31) - ((sleep_cnt % 20) >> 2);
#endif
#ifdef BT_RC_32K768
    //32.768kHz compensation
    mul = sleep_cnt * 25;
    res = mul % 256;
    clkncntcorr = (mul >> 8);
    finecntcorr = 624 - ((res * 625) >> 8);
#endif
#ifdef BT_RC_CAL
    //rc calibration compensation with 48MHz reference
    mul = sleep_cnt * rccal_result;
    div = (mul / 48) >> 2;
    clkncntcorr = (div / 625);
    res = div % 625;
    if (res == 624) {
        finecntcorr = 1;
    } else {
        finecntcorr = 624 - res;
    }
#endif
    hwp_bt_mac->CLKNCNTCORR = clkncntcorr;
    hwp_bt_mac->FINECNTCORR = finecntcorr & 0x3ff;
    hwp_bt_mac->DEEPSLCNTL |= BT_MAC_DEEPSLCNTL_DEEP_SLEEP_CORR_EN;
}

void bt_save(uint32_t base_addr)
{
    uint32_t clkncnt;
    uint16_t finecnt;
    uint8_t i = 0;
    clkncnt = bt_get_clkn();
    finecnt = hwp_bt_mac->FINETIMECNT;
    write_memory(base_addr+4*(i++),(uint32_t)clkncnt);
    write_memory(base_addr+4*(i++),(uint32_t)finecnt);
    //write_memory(base_addr+4*(i++),(uint32_t)isocnt);
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->BTCURRENTRXDESCPTR));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->BLECURRENTRXDESCPTR));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->RCCAL_CTRL));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->BTRADIOCNTL2));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->BLERADIOCNTL2));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->ADVTIM));
    write_memory(base_addr+4*(i++),rccal_result);
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->ETPTR));
    write_memory(base_addr+4*(i++),(uint32_t)(hwp_bt_mac->DMTIMGENCNTL));
    bt_save_rf(base_addr+4*(i++));
    //bt_save_patch();
}

void bt_restore(uint32_t base_addr)
{
    uint32_t clkncnt;
    uint16_t finecnt;
    uint8_t i = 0;
    bt_init_clk(); 
    bt_init_phy();
    clkncnt = read_memory(base_addr+4*(i++));
    finecnt = read_memory(base_addr+4*(i++)) & 0x3ff;
    //isocnt = read_memory(base_addr+4*(i++));
    hwp_bt_mac->CLKNCNTCORR = clkncnt;
    hwp_bt_mac->FINECNTCORR = finecnt;
    //hwp_bt_mac->ISOCNTCORR = isocnt;
    hwp_bt_mac->DEEPSLCNTL |= BT_MAC_DEEPSLCNTL_DEEP_SLEEP_CORR_EN;
    hwp_bt_mac->BTCURRENTRXDESCPTR = read_memory(base_addr+4*(i++));
    hwp_bt_mac->BLECURRENTRXDESCPTR = read_memory(base_addr+4*(i++));
    hwp_bt_mac->RCCAL_CTRL = read_memory(base_addr+4*(i++));
    hwp_bt_mac->BTRADIOCNTL2 = read_memory(base_addr+4*(i++));
    hwp_bt_mac->BLERADIOCNTL2 = read_memory(base_addr+4*(i++));
    hwp_bt_mac->ADVTIM = read_memory(base_addr+4*(i++));
    rccal_result = read_memory(base_addr+4*(i++));
    hwp_bt_mac->ETPTR = read_memory(base_addr+4*(i++));
    hwp_bt_mac->DMTIMGENCNTL = read_memory(base_addr+4*(i++));
    bt_restore_rf(base_addr+4*(i++));
    bt_enable();
    //ble_enable();
}

// void bt_save_rf(uint32_t base_addr)
// {
//       hwp_dmac3->CPAR2 = base_addr;
//       hwp_dmac3->CM0AR2 = BT_RFC_MEM_BASE;
//       hwp_dmac3->CNDTR2 = 569;
//       hwp_dmac3->CCR2 = DMAC_CCR2_MEM2MEM | DMAC_CCR2_DIR;
//       hwp_dmac3->CCR2 |= DMAC_CCR2_TCIE | DMAC_CCR2_TEIE;// | DMAC_CCR2_HTIE;
//       hwp_dmac3->CCR2 |= DMAC_CCR2_MINC | (0x2 << DMAC_CCR2_MSIZE_Pos);
//       hwp_dmac3->CCR2 |= DMAC_CCR2_PINC | (0x2 << DMAC_CCR2_PSIZE_Pos);
//     //NVIC_EnableIRQ(BLE_DMAC_IRQn);
//       hwp_dmac3->CCR2 |= DMAC_CCR2_EN;
//     while((  hwp_dmac3->ISR & DMAC_ISR_TCIF2) == 0);
// }

// void bt_restore_rf(uint32_t base_addr)
// {
//       hwp_dmac3->CPAR2 = base_addr;
//       hwp_dmac3->CM0AR2 = BT_RFC_MEM_BASE;
//       hwp_dmac3->CNDTR2 = 569;
//       hwp_dmac3->CCR2 = DMAC_CCR2_MEM2MEM;
//       hwp_dmac3->CCR2 |= DMAC_CCR2_TCIE | DMAC_CCR2_TEIE;// | DMAC_CCR2_HTIE;
//       hwp_dmac3->CCR2 |= DMAC_CCR2_MINC | (0x2 << DMAC_CCR2_MSIZE_Pos);
//       hwp_dmac3->CCR2 |= DMAC_CCR2_PINC | (0x2 << DMAC_CCR2_PSIZE_Pos);
//     //NVIC_EnableIRQ(BLE_DMAC_IRQn);
//       hwp_dmac3->CCR2 |= DMAC_CCR2_EN;
//     while((  hwp_dmac3->ISR & DMAC_ISR_TCIF2) == 0);
// }

void bt_em_build_fhs(uint32_t base_addr)
{
    uint32_t addr;
    addr = BT_EM_BASE_ADDR + base_addr;
    write_memory(addr+0x00,0xabcdef00);
    write_memory(addr+0x04,0x14345678);//EIR enable
    write_memory(addr+0x08,0xab2d5610);
    write_memory(addr+0x0c,0x67efb201);
    write_memory(addr+0x10,0x00001f12);
}

void bt_em_buffer_random(uint32_t base_addr, uint16_t length)
{
    uint32_t ran_data;
    uint16_t i;
    uint32_t mask;
    uint32_t addr;
    addr = BT_EM_BASE_ADDR + base_addr;
    for (i=0; i+4<=length; i+=4)
    {
        rt_kprintf("addr: %x, random data: %x\n",addr+i,ran_data);
        //printf("addr: %x, random data: %x\n",addr+i,ran_data);
        ran_data = bt_rand();
        write_memory(addr+i,ran_data);
    }
    ran_data = bt_rand();
    switch (length-i) {
        case 1: mask = 0x000000ff;
                write_field(addr+i,ran_data,mask);
                break;
        case 2: mask = 0x0000ffff;
                write_field(addr+i,ran_data,mask);
                break;
        case 3: mask = 0x00ffffff;
                write_field(addr+i,ran_data,mask);
                break;
        case 0: 
        default:mask = 0x00000000;
                break;
    }
    //printf("addr: %x, random data: %x, mask: %x\n",addr+i,ran_data,mask);
}

void bt_seed(uint32_t seed)
{
    mySeed = seed;
}

uint32_t bt_rand(void)
{
    mySeed = mySeed * 214013 + 2531011;
    return mySeed;
}

uint8_t bt_check_rx(uint32_t base_addr)
{
    uint8_t rx_done;
    uint16_t rx_error;
    uint32_t addr;

    addr = BT_EM_BASE_ADDR + base_addr;
    rx_done = (uint8_t)read_field(addr,0x8000);
    if (rx_done != 1) {
        return BT_ERROR;
    }
    rx_error = (uint16_t)read_field(addr,0x00ff0000);
    if (rx_error != 0) {
        return BT_ERROR;
    }
    return BT_SUCCESS;
}

uint8_t bt_check_tx(uint32_t base_addr)
{
    uint8_t tx_done;
    uint32_t addr;

    addr = BT_EM_BASE_ADDR + base_addr;
    tx_done = (uint8_t)read_field(addr,0x8000);
    if (tx_done) {
        return BT_SUCCESS;
    }
    else {
        return BT_ERROR;
    }
}

uint8_t bt_compare_data(uint32_t base_addr1, uint32_t base_addr2, uint16_t length)
{
    uint16_t i;
    uint32_t mask;
    uint32_t addr1;
    uint32_t addr2;
    uint32_t data1;
    uint32_t data2;
    addr1 = BT_EM_BASE_ADDR + base_addr1;
    addr2 = BT_EM_BASE_ADDR + base_addr2;
    for (i=0; i+4<=length; i+=4)
    {
        data1 = read_memory(addr1+i);
        data2 = read_memory(addr2+i);
        if (data1 != data2) {

            rt_kprintf("Mismatch! Addr:%x,data1:%x,data2:%x\n",i,data1,data2);
            return BT_ERROR;
        }
        rt_kprintf("Addr:%x,data1:%x,data2:%x\n",i,data1,data2);
    }
    switch (length-i) {
        case 1: mask = 0x000000ff;
                break;
        case 2: mask = 0x0000ffff;
                break;
        case 3: mask = 0x00ffffff;
                break;
        case 0: 
        default:mask = 0x00000000;
                break;
    }
    if (mask != 0x0) {
        data1 = read_memory(addr1+i) & mask;
        data2 = read_memory(addr2+i) & mask;
        if (data1 != data2) {
            rt_kprintf("Mismatch! Addr:%x,data1:%x,data2:%x\n",i,data1,data2);
            return BT_ERROR;
        }
        rt_kprintf("Addr:%x,data1:%x,data2:%x\n",i,data1,data2);  
    }
    return BT_SUCCESS;
}

void bt_wait(uint8_t time)
{
    uint32_t cnt;
    uint8_t time_cnt;
    for(time_cnt=0; time_cnt<time; time_cnt++)
        for(cnt=0;cnt<113;cnt++);
}
//-----------------------------------------------------------------------------
// End Of File
