/*
 * @ 名称: User_Device.h
 * @ 描述:
 * @ 作者: Tomy
 * @ 日期: 2020年12月15日
 * @ 版本: V1.0
 * @ 历史: V1.0 2020年12月15日 Summary
 *
 * MIT License. Copyright (c) 2021 SummerFalls.
 */

#ifndef USER_SRC_USER_DEVICE_H_
#define USER_SRC_USER_DEVICE_H_

#include "driverlib.h"

//*****************************************************************************
//
// Defines related to clock configuration
//
//*****************************************************************************
//
// 20MHz XTAL on controlCARD. For use with SysCtl_getClock().
//
#define DEVICE_OSCSRC_FREQ          20000000U

//
// Define to pass to SysCtl_setClock(). Will configure the clock as follows:
// PLLSYSCLK = 20MHz (XTAL_OSC) * 30 (IMULT) / (2 (REFDIV) * 3 (ODIV) * 1(SYSDIV))
// PLLSYSCLK = 10MHz (INT_OSC2) * 60 (IMULT) / (2 (REFDIV) * 3 (ODIV) * 1(SYSDIV))
//

#define DEVICE_SETCLOCK_CFG_USER      (SYSCTL_OSCSRC_OSC2 | SYSCTL_IMULT(60) | \
                                      SYSCTL_REFDIV(2) | SYSCTL_ODIV(3) | \
                                      SYSCTL_SYSDIV(1) | SYSCTL_PLL_ENABLE | \
                                      SYSCTL_DCC_BASE_0)

//
// 100MHz SYSCLK frequency based on the above DEVICE_SETCLOCK_CFG. Update the
// code below if a different clock configuration is used!
//
#define DEVICE_SYSCLK_FREQ          ((DEVICE_OSCSRC_FREQ * 30) / (2 * 3 * 1))


//
// 25MHz LSPCLK frequency based on the above DEVICE_SYSCLK_FREQ and a default
// low speed peripheral clock divider of 4. Update the code below if a
// different LSPCLK divider is used!
//
#define DEVICE_LSPCLK_FREQ          (DEVICE_SYSCLK_FREQ / 4)

//*****************************************************************************
//
// Macro to call SysCtl_delay() to achieve a delay in microseconds. The macro
// will convert the desired delay in microseconds to the count value expected
// by the function. \b x is the number of microseconds to delay.
//
//*****************************************************************************
#define DEVICE_DELAY_US(x) SysCtl_delay(((((long double)(x)) / (1000000.0L /  \
                              (long double)DEVICE_SYSCLK_FREQ)) - 9.0L) / 5.0L)

//
//  Defines for setting FSI clock speeds
//
#define FSI_PRESCALE_50MHZ          1U
#define FSI_PRESCALE_25MHZ          2U
#define FSI_PRESCALE_10MHZ          5U
#define FSI_PRESCALE_5MHZ           10U

//*****************************************************************************
//
// Defines, Globals, and Header Includes related to Flash Support
//
//*****************************************************************************
#ifdef _FLASH
#include <stddef.h>

extern uint16_t RamfuncsLoadStart;
extern uint16_t RamfuncsLoadEnd;
extern uint16_t RamfuncsLoadSize;
extern uint16_t RamfuncsRunStart;
extern uint16_t RamfuncsRunEnd;
extern uint16_t RamfuncsRunSize;
#endif

#define DEVICE_FLASH_WAITSTATES 4

/* For rts2800_fpu32_fast_supplement_eabi.lib LUT */
#ifdef _FLASH
extern uint16_t FPUmathTablesLoadStart;
extern uint16_t FPUmathTablesLoadSize;
extern uint16_t FPUmathTablesRunStart;
#endif

//*****************************************************************************
//
// Function Prototypes
//
//*****************************************************************************
void User_Device_Init(void);
void User_Device_enableAllPeripherals(void);
void User_Device_initGPIO(void);

#endif /* USER_SRC_USER_DEVICE_H_ */

/* -------------------------------------------- END OF FILE -------------------------------------------- */
