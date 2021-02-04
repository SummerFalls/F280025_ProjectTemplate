MEMORY
{
   ADCA_RESULT   : origin = 0x000B00, length = 0x000020
   ADCC_RESULT   : origin = 0x000B40, length = 0x000020
   ADCA          : origin = 0x007400, length = 0x000080
   ADCC          : origin = 0x007500, length = 0x000080

   ANALOG_SUBSYS : origin = 0x05D700, length = 0x000100
   
   BGCRC         : origin = 0x006340, length = 0x000080

   CANA          : origin = 0x048000, length = 0x000800

   CLB_LOGIC_CONFIG1      : origin = 0x00003000, length = 0x00000100
   CLB_LOGIC_CONFIG2      : origin = 0x00003200, length = 0x00000100
   CLB_LOGIC_CONTROL1     : origin = 0x00003100, length = 0x00000080
   CLB_LOGIC_CONTROL2     : origin = 0x00003300, length = 0x00000080
   CLB_DATA_EXCHANGE1     : origin = 0x00003180, length = 0x00000080
   CLB_DATA_EXCHANGE2     : origin = 0x00003380, length = 0x00000080

   CLB_XBAR      : origin = 0x007A40, length = 0x000040

   CMPSS1        : origin = 0x005C80, length = 0x000020
   CMPSS2        : origin = 0x005CA0, length = 0x000020
   CMPSS3        : origin = 0x005CC0, length = 0x000020
   CMPSS4        : origin = 0x005CE0, length = 0x000020

   CPU_TIMER0    : origin = 0x000C00, length = 0x000008     /* CPU Timer0 registers */
   CPU_TIMER1    : origin = 0x000C08, length = 0x000008     /* CPU Timer1 registers */
   CPU_TIMER2    : origin = 0x000C10, length = 0x000008     /* CPU Timer2 registers */

   DCC0          : origin = 0x05E700, length = 0x000040
   DCC1          : origin = 0x05E740, length = 0x000040

   DCSM_BANK0_Z1    : origin = 0x05F000, length = 0x000030
   DCSM_BANK0_Z2    : origin = 0x05F040, length = 0x000030
   DCSM_BANK1_Z1    : origin = 0x05F100, length = 0x000030
   DCSM_BANK1_Z2    : origin = 0x05F140, length = 0x000030
   DCSM_COMMON      : origin = 0x05F070, length = 0x000010     /* Common Dual code security module registers */
   DCSM_COMMON2     : origin = 0x05F080, length = 0x000010     /* Common Dual code security module registers */

   DMA          : origin = 0x001000, length = 0x000200

   ECAP1        : origin = 0x005200, length = 0x000040     /* Enhanced Capture 1 registers */
   ECAP2        : origin = 0x005240, length = 0x000040     /* Enhanced Capture 2 registers */
   ECAP3        : origin = 0x005280, length = 0x000040     /* Enhanced Capture 3 registers */

   EPWM1        : origin = 0x004000, length = 0x000100     /* Enhanced PWM 1 registers */
   EPWM2        : origin = 0x004100, length = 0x000100     /* Enhanced PWM 2 registers */
   EPWM3        : origin = 0x004200, length = 0x000100     /* Enhanced PWM 3 registers */
   EPWM4        : origin = 0x004300, length = 0x000100     /* Enhanced PWM 4 registers */
   EPWM5        : origin = 0x004400, length = 0x000100     /* Enhanced PWM 5 registers */
   EPWM6        : origin = 0x004500, length = 0x000100     /* Enhanced PWM 6 registers */
   EPWM7        : origin = 0x004600, length = 0x000100     /* Enhanced PWM 7 registers */

   EPWM_XBAR    : origin = 0x007A00, length = 0x000040

   EQEP1        : origin = 0x005100, length = 0x000040     /* Enhanced QEP 1 registers */
   EQEP2        : origin = 0x005140, length = 0x000040     /* Enhanced QEP 2 registers */

   FLASH0_CTRL  : origin = 0x05F800, length = 0x000300
   FLASH0_ECC   : origin = 0x05FB00, length = 0x000040

   FSITXA       : origin = 0x006600, length = 0x000080
   FSIRXA       : origin = 0x006680, length = 0x000080

   GPIOCTRL     : origin = 0x007C00, length = 0x000200     /* GPIO control registers */
   GPIODAT      : origin = 0x007F00, length = 0x000040     /* GPIO data registers */
   
   HIC          : origin = 0x006500, length = 0x000100

   I2CA         : origin = 0x007300, length = 0x000040     /* I2C-A registers */
   I2CB         : origin = 0x007340, length = 0x000040     /* I2C-A registers */

   INPUT_XBAR   : origin = 0x007900, length = 0x000020

   LINA         : origin = 0x006A00, length = 0x000100
   LINB         : origin = 0x006B00, length = 0x000100

   MEMCFG       : origin = 0x05F400, length = 0x000080     /* Mem Config registers */
   ACCESSPROTECTION  : origin = 0x05F500, length = 0x000040     /* Access Protection registers */
   MEMORYERROR  : origin = 0x05F540, length = 0x000040     /* Access Protection registers */

   NMIINTRUPT   : origin = 0x007060, length = 0x000010     /* NMI Watchdog Interrupt Registers */

   OUTPUT_XBAR  : origin = 0x007A80, length = 0x000040

   PIE_CTRL     : origin = 0x000CE0, length = 0x000020     /* PIE control registers */

   PIE_VECT     : origin = 0x000D00, length = 0x000200     /* PIE Vector Table */

   PMBUSA       : origin = 0x006400, length = 0x000020

   SCIA         : origin = 0x007200, length = 0x000010     /* SCI-A registers */

   SPIA         : origin = 0x006100, length = 0x000010
   SPIB         : origin = 0x006110, length = 0x000010

   WD           : origin = 0x007000, length = 0x000040
   DMACLASRCSEL : origin = 0x007980, length = 0x000040
   DEV_CFG      : origin = 0x05D000, length = 0x0001A0
   CLK_CFG      : origin = 0x05D200, length = 0x000100
   CPU_SYS      : origin = 0x05D300, length = 0x000100
   PERIPH_AC    : origin = 0x05D500, length = 0x000200

   ERAD_GLOBAL  : origin = 0x05E800, length = 0x000014
   ERAD_HWBP1   : origin = 0x05E900, length = 0x000008
   ERAD_HWBP2   : origin = 0x05E908, length = 0x000008
   ERAD_HWBP3   : origin = 0x05E910, length = 0x000008
   ERAD_HWBP4   : origin = 0x05E918, length = 0x000008
   ERAD_HWBP5   : origin = 0x05E920, length = 0x000008
   ERAD_HWBP6   : origin = 0x05E928, length = 0x000008
   ERAD_HWBP7   : origin = 0x05E930, length = 0x000008
   ERAD_HWBP8   : origin = 0x05E938, length = 0x000008
   ERAD_CTR1    : origin = 0x05E980, length = 0x000010
   ERAD_CTR2    : origin = 0x05E990, length = 0x000010
   ERAD_CTR3    : origin = 0x05E9A0, length = 0x000010
   ERAD_CTR4    : origin = 0x05E9B0, length = 0x000010

   XBAR         : origin = 0x007920, length = 0x000020
   SYNC_SOC     : origin = 0x007940, length = 0x000010

   XINT         : origin = 0x007070, length = 0x000010
}

SECTIONS
{
/*** PIE Vect Table and Boot ROM Variables Structures ***/
  UNION run = PIE_VECT
   {
      PieVectTableFile
      GROUP
      {
         EmuKeyVar
         EmuBModeVar
         FlashCallbackVar
         FlashScalingVar
      }
   }

   AdcaResultFile        : > ADCA_RESULT,	type=NOINIT
   AdccResultFile        : > ADCC_RESULT,	type=NOINIT

   AdcaRegsFile          : > ADCA,	type=NOINIT
   AdccRegsFile          : > ADCC,	type=NOINIT

   AnalogSubsysRegsFile  : > ANALOG_SUBSYS,	type=NOINIT

   BgcrcRegsFile         : > BGCRC,	type=NOINIT
   
   CanaRegsFile          : > CANA,	type=NOINIT

   Clb1LogicCfgRegsFile       : > CLB_LOGIC_CONFIG1,	type=NOINIT
   Clb2LogicCfgRegsFile       : > CLB_LOGIC_CONFIG2,	type=NOINIT
   Clb1LogicCtrlRegsFile      : > CLB_LOGIC_CONTROL1,	type=NOINIT
   Clb2LogicCtrlRegsFile      : > CLB_LOGIC_CONTROL2,	type=NOINIT
   Clb1DataExchgRegsFile      : > CLB_DATA_EXCHANGE1,	type=NOINIT
   Clb2DataExchgRegsFile      : > CLB_DATA_EXCHANGE2,	type=NOINIT

   ClbXbarRegsFile       : > CLB_XBAR,	type=NOINIT

   Cmpss1RegsFile        : > CMPSS1,	type=NOINIT
   Cmpss2RegsFile        : > CMPSS2,	type=NOINIT
   Cmpss3RegsFile        : > CMPSS3,	type=NOINIT
   Cmpss4RegsFile        : > CMPSS4,	type=NOINIT

   CpuTimer0RegsFile     : > CPU_TIMER0,	type=NOINIT
   CpuTimer1RegsFile     : > CPU_TIMER1,	type=NOINIT
   CpuTimer2RegsFile     : > CPU_TIMER2,	type=NOINIT

   Dcc0RegsFile          : > DCC0,	type=NOINIT
   Dcc1RegsFile          : > DCC1,	type=NOINIT

   DcsmBank0Z1RegsFile        : > DCSM_BANK0_Z1,	type=NOINIT
   DcsmBank0Z2RegsFile        : > DCSM_BANK0_Z2,	type=NOINIT
   DcsmBank1Z1RegsFile        : > DCSM_BANK1_Z1,	type=NOINIT
   DcsmBank1Z2RegsFile        : > DCSM_BANK1_Z2,	type=NOINIT
   DcsmCommonRegsFile         : > DCSM_COMMON,	type=NOINIT
   DcsmCommon2RegsFile        : > DCSM_COMMON2,	type=NOINIT

   DmaRegsFile                : > DMA,	type=NOINIT

   ECap1RegsFile         : > ECAP1,	type=NOINIT
   ECap2RegsFile         : > ECAP2,	type=NOINIT
   ECap3RegsFile         : > ECAP3,	type=NOINIT

   EPwm1RegsFile         : > EPWM1,	type=NOINIT
   EPwm2RegsFile         : > EPWM2,	type=NOINIT
   EPwm3RegsFile         : > EPWM3,	type=NOINIT
   EPwm4RegsFile         : > EPWM4,	type=NOINIT
   EPwm5RegsFile         : > EPWM5,	type=NOINIT
   EPwm6RegsFile         : > EPWM6,	type=NOINIT
   EPwm7RegsFile         : > EPWM7,	type=NOINIT

   EPwmXbarRegsFile      : > EPWM_XBAR,	type=NOINIT

   EQep1RegsFile         : > EQEP1,	type=NOINIT
   EQep2RegsFile         : > EQEP2,	type=NOINIT

   EnhancedDebugGlobalRegsFile    : > ERAD_GLOBAL,	type=NOINIT
   EnhancedDebugHWBP1RegsFile     : > ERAD_HWBP1,	type=NOINIT
   EnhancedDebugHWBP2RegsFile     : > ERAD_HWBP2,	type=NOINIT
   EnhancedDebugHWBP3RegsFile     : > ERAD_HWBP3,	type=NOINIT
   EnhancedDebugHWBP4RegsFile     : > ERAD_HWBP4,	type=NOINIT
   EnhancedDebugHWBP5RegsFile     : > ERAD_HWBP5,	type=NOINIT
   EnhancedDebugHWBP6RegsFile     : > ERAD_HWBP6,	type=NOINIT
   EnhancedDebugHWBP7RegsFile     : > ERAD_HWBP7,	type=NOINIT
   EnhancedDebugHWBP8RegsFile     : > ERAD_HWBP8,	type=NOINIT
   EnhancedDebugCounter1RegsFile  : > ERAD_CTR1,	type=NOINIT
   EnhancedDebugCounter2RegsFile  : > ERAD_CTR2,	type=NOINIT
   EnhancedDebugCounter3RegsFile  : > ERAD_CTR3,	type=NOINIT
   EnhancedDebugCounter4RegsFile  : > ERAD_CTR4,	type=NOINIT

   Flash0CtrlRegsFile    : > FLASH0_CTRL,	type=NOINIT
   Flash0EccRegsFile     : > FLASH0_ECC,	type=NOINIT

   FsiTxaRegsFile        : > FSITXA,	type=NOINIT
   FsiRxaRegsFile        : > FSIRXA,	type=NOINIT

   GpioCtrlRegsFile      : > GPIOCTRL,	type=NOINIT
   GpioDataRegsFile      : > GPIODAT,	type=NOINIT

   HicRegsFile           : > HIC,	type=NOINIT

   I2caRegsFile          : > I2CA,	type=NOINIT
   I2cbRegsFile          : > I2CB,	type=NOINIT

   InputXbarRegsFile     : > INPUT_XBAR,	type=NOINIT
   XbarRegsFile          : > XBAR,	type=NOINIT

   LinaRegsFile          : > LINA,	type=NOINIT
   LinbRegsFile          : > LINB,	type=NOINIT

   MemCfgRegsFile            : > MEMCFG,	type=NOINIT
   AccessProtectionRegsFile  : > ACCESSPROTECTION,	type=NOINIT
   MemoryErrorRegsFile       : > MEMORYERROR,	type=NOINIT

   NmiIntruptRegsFile       : > NMIINTRUPT,	type=NOINIT

   OutputXbarRegsFile       : > OUTPUT_XBAR,	type=NOINIT

   PieCtrlRegsFile          : > PIE_CTRL,	type=NOINIT

   PmbusaRegsFile           : > PMBUSA,	type=NOINIT

   SciaRegsFile             : > SCIA,	type=NOINIT

   SpiaRegsFile             : > SPIA,	type=NOINIT
   SpibRegsFile             : > SPIB,	type=NOINIT

   WdRegsFile               : > WD,	type=NOINIT
   DmaClaSrcSelRegsFile     : > DMACLASRCSEL,	type=NOINIT
   DevCfgRegsFile           : > DEV_CFG,	type=NOINIT
   ClkCfgRegsFile           : > CLK_CFG,	type=NOINIT
   CpuSysRegsFile           : > CPU_SYS,	type=NOINIT
   SysPeriphAcRegsFile      : > PERIPH_AC,	type=NOINIT

   SyncSocRegsFile          : > SYNC_SOC,	type=NOINIT

   XintRegsFile             : > XINT,	type=NOINIT

}

/*
//===========================================================================
// End of file.
//===========================================================================
*/
