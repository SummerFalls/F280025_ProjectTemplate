/*
 * @ 名称: User_HAL.c
 * @ 描述:
 * @ 作者: Tomy
 * @ 日期: 2020年12月15日
 * @ 版本: V1.0
 * @ 历史: V1.0 2020年12月15日 Summary
 *
 * MIT License. Copyright (c) 2021 SummerFalls.
 */

#include "User_HAL.h"
#include "device.h"

/*******************************************************************************
* @name   : HAL_setupCpuTimer
* @brief  : setup CPU Timer
* @param  : void
* @retval : void
*******************************************************************************/
void HAL_setupCpuTimer(uint32_t base, uint32_t periodCount)
{
    CPUTimer_setPreScaler(base, 0);         // divide by 1 (SYSCLKOUT)
    CPUTimer_setPeriod(base, periodCount);
    CPUTimer_stopTimer(base);               // Stop timer / reload / restart
    CPUTimer_setEmulationMode(base, CPUTIMER_EMULATIONMODE_STOPAFTERNEXTDECREMENT);
    CPUTimer_reloadTimerCounter(base);      // Reload counter with period value
    CPUTimer_resumeTimer(base);

    return;
}

/* -------------------------------------------- END OF FILE -------------------------------------------- */
