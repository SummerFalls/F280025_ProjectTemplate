/*
 * @ ����: User_HAL.c
 * @ ����:
 * @ ����: Tomy
 * @ ����: 2020��12��15��
 * @ �汾: V1.0
 * @ ��ʷ: V1.0 2020��12��15�� Summary
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
