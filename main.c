/*
 * @ 名称: main.c
 * @ 描述:
 * @ 作者: Tomy
 * @ 日期: 2020年12月15日
 * @ 版本: V1.0
 * @ 历史: V1.0 2020年12月15日 Summary
 *
 * MIT License. Copyright (c) 2021 SummerFalls.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <float.h>
#include <math.h>

/* LIB_0: driverlib */
#include "device.h"

/* LIB_1: Bit-field */
#include "f28x_project.h"

/* C2000Ware_X_XX_XX_XX_Software\libraries\math\FPUfastRTS\c28\lib\rts2800_fpu32_fast_supplement_eabi.lib */
#include "fastrts.h"
#include "fpu32/C28x_FPU_FastRTS.h"

/* C2000Ware_X_XX_XX_XX_Software\libraries\math\IQmath\c28\lib\IQmath_fpu32_eabi.lib */
/* Properties -> Build -> C2000 Compiler -> Predefined Symbols: MATH_TYPE=FLOAT_MATH */
#include "IQmathLib.h"

/* User Include Header Files */
#include "User_Device.h"
#include "User_HAL.h"

//
// State Machine function prototypes
//

// Alpha states
void A0(void);  //state A0
void B0(void);  //state B0

// A branch states
void A1(void);  //state A1
void A2(void);  //state A2
void A3(void);  //state A3

// B branch states
void B1(void);  //state B1
void B2(void);  //state B2
void B3(void);  //state B3

//
// Global variables used in this system
//

// Variable declarations
void (*Alpha_State_Ptr)(void);  // Base States pointer
void (*A_Task_Ptr)(void);       // State pointer A branch
void (*B_Task_Ptr)(void);       // State pointer B branch

uint16_t vTimer0[4];        // Virtual Timers slaved off CPU Timer 0 (A events)
uint16_t vTimer1[4];        // Virtual Timers slaved off CPU Timer 1 (B events)


/* For Math Library Test */
float fa = 55.55232f;
float fb = 123.44f;
float fc = 0.0f;
_iq testIQ = _IQ(0.15);
float64_t v64 = 0.0;
float32u_t in, out_s, out_c;
int32_t vint32 = 0;

void main(void)
{
    /* Device_init() replaced by User_Device_Init() for the macro DEVICE_SETCLOCK_CFG */
    User_Device_Init();

    //
    // Timing sync for background loops
    //
    HAL_setupCpuTimer(CPUTIMER0_BASE, MICROSEC_50);    // A tasks
    HAL_setupCpuTimer(CPUTIMER1_BASE, MICROSEC_100);   // B tasks

    // Tasks State-machine init
    Alpha_State_Ptr = &A0;
    A_Task_Ptr = &A1;
    B_Task_Ptr = &B1;

    //
    // Initializations COMPLETE
    //  - IDLE loop. Just loop forever
    //
    for(;;)  //infinite loop
    {
        // State machine entry & exit point
        //===========================================================
        (*Alpha_State_Ptr)();   // jump to an Alpha state (A0,B0,...)
        //===========================================================
    }
}

//=============================================================================
//  STATE-MACHINE SEQUENCING AND SYNCRONIZATION FOR SLOW BACKGROUND TASKS
//=============================================================================

//--------------------------------- FRAMEWORK ---------------------------------
void A0(void)
{
    // loop rate synchronizer for A-tasks
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER0_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER0_BASE);  // clear flag

        //-----------------------------------------------------------
        (*A_Task_Ptr)();        // jump to an A Task (A1,A2,A3,...)
        //-----------------------------------------------------------

        vTimer0[0]++;           // virtual timer 0, instance 0 (spare)
    }

    Alpha_State_Ptr = &B0;      // Comment out to allow only A tasks
}

void B0(void)
{
    // loop rate synchronizer for B-tasks
    if(CPUTimer_getTimerOverflowStatus(CPUTIMER1_BASE))
    {
        CPUTimer_clearOverflowFlag(CPUTIMER1_BASE);  // clear flag

        //-----------------------------------------------------------
        (*B_Task_Ptr)();        // jump to a B Task (B1,B2,B3,...)
        //-----------------------------------------------------------

        vTimer1[0]++;           // virtual timer 1, instance 0 (spare)
    }

    Alpha_State_Ptr = &A0;      // Allow A state tasks
}

//==============================================================================
//  A - TASKS (executed in every 50 usec)
//==============================================================================

//--------------------------------------------------------
void A1(void) // SPARE (not used)
//--------------------------------------------------------
{
    //-------------------
    //the next time CpuTimer0 'counter' reaches Period value go to A2
    A_Task_Ptr = &A2;
    //-------------------
}

//-----------------------------------------------------------------
void A2(void) // SPARE (not used)
//-----------------------------------------------------------------
{
    //-------------------
    //the next time CpuTimer0 'counter' reaches Period value go to A3
    A_Task_Ptr = &A3;
    //-------------------
}

//-----------------------------------------
void A3(void) // SPARE (not used)
//-----------------------------------------
{
    //-----------------
    //the next time CpuTimer0 'counter' reaches Period value go to A1
    A_Task_Ptr = &A1;
    //-----------------
}

//==============================================================================
//  B - TASKS (executed in every 100 usec)
//==============================================================================

//----------------------------------- USER -------------------------------------

//----------------------------------------
void B1(void) // Toggle GPIO-00
//----------------------------------------
{
    //-----------------
    //the next time CpuTimer1 'counter' reaches Period value go to B2
    B_Task_Ptr = &B2;
    //-----------------

    //
    // Run the test for rts2800_fpu32_fast_supplement_eabi.lib、IQmath_fpu32_eabi.lib、TMU
    //
    fc = fa + fb * 2;
    testIQ = _IQ(1.9) * _IQ(3.8);
    testIQ = 1.9 * 3.8;
    testIQ = 1.9f * 3.8f;
    v64 = 1.9 * 3.8;
    vint32 = 1.9 * v64;
    vint32 = 1.9f * v64;
    testIQ = testIQ * _IQsin(30.0);
    testIQ = cos(testIQ);
    testIQ = sinf(testIQ);


    testIQ = fabsf(-32947.223F);
    testIQ = isqrtf(2.718281828459e+00F);
    testIQ = sqrtf(3.120923179706e+00F);
    testIQ = sinf(3.067961575771F);
    testIQ = cosf(46.33178F);
    testIQ = atanf(0.695312500000F);
    testIQ = atan2f(7.0F, -7.0F);

    /* Runs the sincos routine ---------------------------------------- */
    out_s.f32  = FLT_MAX;
    out_c.f32  = FLT_MAX;
    in.f32     = -2.589359569951F;
    sincosf(in.f32, (float32_t *)&out_s, (float32_t *)&out_c);

    /* Runs the FD$$DIV routine in the ASM file: fs_div28.asm ---------------------------------------- */
    fa = 2.718281828459e+00F;
    fb = -2.000000000000e+00F;
    fc = fa / fb;
    fc = testIQ / fc;

    /* ---------------------------------------- */
    testIQ = expf(3.06796157577F);
    testIQ = logf(63.06835937500F);
    testIQ = powf(1.44337660406F, -1.84077694546F);
}

//----------------------------------------
void B2(void) // SPARE
//----------------------------------------
{
    //-----------------
    //the next time CpuTimer1 'counter' reaches Period value go to B3
    B_Task_Ptr = &B3;
    //-----------------
}

//----------------------------------------
void B3(void) // SPARE
//----------------------------------------
{
    //-----------------
    //the next time CpuTimer1 'counter' reaches Period value go to B1
    B_Task_Ptr = &B1;
    //-----------------
}
