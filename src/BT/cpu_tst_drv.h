//======================================================================
//         COPYRIGHT (C) 2019 Sifli Technology
// SIFLI TECHNOLOGY CONFIDENTIAL & ALL RIGHTS RESERVED
//----------------------------------------------------------------------
// File name      : cpu_tst_drv.h
// Date of created: 2019-03-16 03:36:51
// Last modified  : 2019-03-16 03:36:51
//----------------------------------------------------------------------
// Functional Description:
// N/A
//======================================================================
#ifndef __CPU_TST_DRV_H
#define __CPU_TST_DRV_H

#include "bf0_hal_hlp.h"
#include "bt_mac.h"
#include "register.h"


#define read_byte(addr)          (*(volatile unsigned char *)((addr)))
#define write_byte(addr,value)   (*(volatile unsigned char *)((addr))) = (value)
#define read_hword(addr)         (*(volatile unsigned short *)((addr)))
#define write_hword(addr,value)  (*(volatile unsigned short *)((addr))) = (value)

// MCU Test Status Definition
#define TEST_FAIL       0x0
#define TEST_PASS       0x1
#define TEST_UNFINISHED 0x2

// Power Mode Definition
#define PM_ACTIVE       0x0
#define PM_LIGHTSLEEP   0x1
#define PM_DEEPSLEEP    0x2
#define PM_STANDBY      0x3

// MCU Pinntf Address
#if defined (__HCPU)
  #define PRINT_ADDR  0x4002FFFC
#elif defined (__ACPU)
  #define PRINT_ADDR  0x4002FFF8
#elif defined (__LCPU)
  #define PRINT_ADDR  0x5002FFFC
#elif defined (__TCPU)
  #define PRINT_ADDR  0x5002FFFC
#endif

#define read_byte(addr)          (*(volatile unsigned char *)((addr)))
#define write_byte(addr,value)   (*(volatile unsigned char *)((addr))) = (value)
#define read_hword(addr)         (*(volatile unsigned short *)((addr)))
#define write_hword(addr,value)  (*(volatile unsigned short *)((addr))) = (value)

uint32_t _write( int fd, char *str, int len);
uint32_t end_test(uint8_t result);
uint32_t release_lcpu(void);
uint32_t reset_lcpu(void);
uint32_t assert_lcpu_wait(void);
uint32_t deassert_lcpu_wait(void);
uint32_t release_acpu(void);
uint32_t reset_acpu(void);
unsigned int RAND(unsigned int hdata, unsigned int ldata);
void lpsys_initial(void);
void blesys_initial(void);
void common(void);

#endif
