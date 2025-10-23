//----------------------------------------------------------------------
//         COPYRIGHT (C) 2019 ***.

//                    
//----------------------------------------------------------------------
// File name      : cpu_tst_drv.c
// Date of created: 2019-03-09 00:57:54
// Last modified  : 2019-03-09 00:57:54
//----------------------------------------------------------------------
// Functional Description:
// N/A
//----------------------------------------------------------------------
// Other information:
// N/A
//----------------------------------------------------------------------
// Number of flip flops:
// N/A
//----------------------------------------------------------------------
// Library used:
// N/A
//----------------------------------------------------------------------
// Reversion History:
//----------------------------------------------------------------------

#include "cpu_tst_drv.h"
#include "register.h"

// uint32_t _write(int fd, char *str, int len) {
  
//   for ( uint32_t i =0; i < len; i++ ) {
      
//     *((volatile uint32_t *)PRINT_ADDR) = str[i];
//   }

//   return len;
// }

// uint32_t end_test(uint8_t result) {

//    *((volatile uint32_t *)PRINT_ADDR) = result;
//    while(1) {
//     __WFE();
//    }
// }




uint32_t release_lcpu(void) {
  hwp_lpsys_rcc->RSTR1 &= ~LPSYS_RCC_RSTR1_LCPU;
}

uint32_t reset_lcpu(void) {
  hwp_lpsys_rcc->RSTR1 |= LPSYS_RCC_RSTR1_LCPU;
}

uint32_t assert_lcpu_wait(void) {
  hwp_lpsys_aon->PMR |= LPSYS_AON_PMR_CPUWAIT;
}

uint32_t deassert_lcpu_wait(void) {
  hwp_lpsys_aon->SPR = 0x20400000;
  hwp_lpsys_aon->PCR = 0x003fc875;
  hwp_lpsys_aon->PMR = 0;
}

uint32_t release_acpu(void) {
  hwp_hpsys_rcc->RSTR2 &= ~LPSYS_RCC_RSTR1_LCPU;
}

uint32_t reset_acpu(void) {
  hwp_hpsys_rcc->RSTR2 |=  LPSYS_RCC_RSTR1_LCPU;
}

#if defined (__HCPU)
unsigned int RAND(unsigned int hdata, unsigned int ldata) {
  volatile unsigned int ret;
  hwp_rtc->BKP1R = hdata;
  __DSB();
  __ISB();
  hwp_rtc->BKP0R = ldata;
  __DSB();
  __ISB();
  ret = hwp_rtc->BKP2R;
  __DSB();
  __ISB();
  return ret;
}
#elif defined (__LCPU)
unsigned int RAND(unsigned int hdata, unsigned int ldata) {
  //TODO
  return 0;
}
#elif defined (__TCPU)
unsigned int RAND(unsigned int hdata, unsigned int ldata) {
  //TODO
  return 0;
}
#endif


//==============================================================================
void common(void){
  //check rc status and wait xtal ready
  //while((hwp_hpsys_aon->ACR & HPSYS_AON_ACR_HRC48_RDY) != HPSYS_AON_ACR_HRC48_RDY);
  //while((hwp_hpsys_aon->ACR & HPSYS_AON_ACR_HXT48_RDY) != HPSYS_AON_ACR_HXT48_RDY);

#if defined (__HCPU)
  hwp_hpsys_rcc->ENR1 |= HPSYS_RCC_ENR1_PTC1 | 
                         HPSYS_RCC_ENR1_DSIPHY |
                         HPSYS_RCC_ENR1_DSIHOST |
                         HPSYS_RCC_ENR1_PDM2 |
                         HPSYS_RCC_ENR1_PDM1 |
                         HPSYS_RCC_ENR1_NNACC1 |
                         HPSYS_RCC_ENR1_I2S2 |
                         HPSYS_RCC_ENR1_I2S1 |
                         HPSYS_RCC_ENR1_EPIC |
                         HPSYS_RCC_ENR1_EZIP1;

  hwp_hpsys_rcc->ENR2 |= HPSYS_RCC_ENR2_JDEC |
                         HPSYS_RCC_ENR2_JENC |
                         HPSYS_RCC_ENR2_AUDPRC |
                         HPSYS_RCC_ENR2_AUDCODEC |
                         HPSYS_RCC_ENR2_CAN2 |
                         HPSYS_RCC_ENR2_CAN1 |
                         HPSYS_RCC_ENR2_SCI |
                         HPSYS_RCC_ENR2_FACC1 |
                         HPSYS_RCC_ENR2_FFT1 |
                         HPSYS_RCC_ENR2_EZIP2 |
                         HPSYS_RCC_ENR2_ATIM2 |
                         HPSYS_RCC_ENR2_ATIM1 |
                         HPSYS_RCC_ENR2_BUSMON1 |
                         HPSYS_RCC_ENR2_BUSMON2 |
                         //HPSYS_RCC_ENR2_USBC |
                         HPSYS_RCC_ENR2_SDMMC2 |
                         HPSYS_RCC_ENR2_SDMMC1;
#endif

#if defined (__LCPU)
  hwp_lpsys_rcc->ENR1 |= LPSYS_RCC_ENR1_FACC2 |
                         LPSYS_RCC_ENR1_FFT2 |
                         LPSYS_RCC_ENR1_BUSMON3 |
                         LPSYS_RCC_ENR1_LCDC2 |
                         LPSYS_RCC_ENR1_I2S3 |
                         LPSYS_RCC_ENR1_PTC2 |
                         LPSYS_RCC_ENR1_NNACC2;

  hwp_lpsys_rcc->ENR2 |= LPSYS_RCC_ENR2_CRC2;
#endif

}
//==============================================================================
void lpsys_initial(void){
  common();
  // AHB/APB SRC SEL
  hwp_lpsys_rcc->CSR = (hwp_lpsys_rcc->CSR & (~LPSYS_RCC_CSR_SEL_SYS_Msk)) |
                       (RAND(1, 0)<<LPSYS_RCC_CSR_SEL_SYS_Pos);

  // USART4/5/6 SRC SEL
  hwp_lpsys_rcc->CSR = (hwp_lpsys_rcc->CSR & (~LPSYS_RCC_CSR_SEL_PERI_Msk)) |
                       (RAND(1, 0)<<LPSYS_RCC_CSR_SEL_PERI_Pos);

  //AHB DIV
  hwp_lpsys_rcc->CFGR = (hwp_lpsys_rcc->CFGR & (~LPSYS_RCC_CFGR_HDIV1_Msk)) |
                        (RAND(0xf, 1)<<LPSYS_RCC_CFGR_HDIV1_Pos); //TODO
  //APB1 DIV
  hwp_lpsys_rcc->CFGR = (hwp_lpsys_rcc->CFGR & (~LPSYS_RCC_CFGR_PDIV1_Msk)) |
                        (RAND(0x7, 1)<<LPSYS_RCC_CFGR_PDIV1_Pos); //TODO
  //APB2 DIV
  hwp_lpsys_rcc->CFGR = (hwp_lpsys_rcc->CFGR & (~LPSYS_RCC_CFGR_PDIV2_Msk)) |
                        (RAND(0x7, 1)<<LPSYS_RCC_CFGR_PDIV2_Pos); //TODO

}


