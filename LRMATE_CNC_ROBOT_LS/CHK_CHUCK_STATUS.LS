/PROG  CHK_CHUCK_STATUS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "check cnc chuck";
PROG_SIZE	= 519;
CREATE		= DATE 19-12-09  TIME 17:50:10;
MODIFIED	= DATE 20-01-10  TIME 16:48:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 955;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !Chuck_Status(AR1,AR2,AR3) ;
   2:  ! ;
   3:  !AR1=Expected Prox1 State ;
   4:  !AR2=Expected Prox2 State ;
   5:  !AR3=Error Code ;
   6:   ;
   7:  R[90:TempCalcReg0]=DI[124:ChuckIsOpen]    ;
   8:  R[91:TempCalcReg1]=DI[125:ChuckIsClosed]    ;
   9:  R[92:TempCalcReg2]=AR[1]    ;
  10:  R[93:TempCalcReg3]=AR[2]    ;
  11:  R[94:TempCalcReg4]=AR[3]    ;
  12:   ;
  13:  IF (R[90:TempCalcReg0]=R[92:TempCalcReg2] AND R[91:TempCalcReg1]=R[93:TempCalcReg3]),JMP LBL[10] ;
  14:   ;
  15:  R[40:debug]=1    ;
  16:  CALL ERROR(R[94:TempCalcReg4]) ;
  17:  END ;
  18:  R[40:debug]=R[40:debug]+1    ;
  19:  LBL[10] ;
/POS
/END
