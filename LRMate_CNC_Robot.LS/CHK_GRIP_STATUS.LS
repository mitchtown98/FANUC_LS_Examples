/PROG  CHK_GRIP_STATUS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "get gripper stas";
PROG_SIZE	= 745;
CREATE		= DATE 19-12-09  TIME 17:50:14;
MODIFIED	= DATE 20-01-10  TIME 11:54:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1257;
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
   1:  !CheckGripStatus(AR1,AR2,AR3,AR4) ;
   2:  ! ;
   3:  !AR1=Expected Prox1 State ;
   4:  !AR2=Expected Prox2 State ;
   5:  !AR3=Tool Number ;
   6:  !AR4=Error Code ;
   7:   ;
   8:  !SET LOCAL VARIABLES ;
   9:  R[90:TempCalcReg0]=AR[1]    ;
  10:  R[91:TempCalcReg1]=AR[2]    ;
  11:  R[94:TempCalcReg4]=AR[3]    ;
  12:  R[96:TempCalcReg6]=AR[4]    ;
  13:   ;
  14:  SELECT R[94:TempCalcReg4]=1,JMP LBL[10] ;
  15:         =2,JMP LBL[20] ;
  16:   ;
  17:  !TOOL 1 ;
  18:  LBL[10] ;
  19:  R[92:TempCalcReg2]=RI[1:GripperOPENED]    ;
  20:  R[93:TempCalcReg3]=RI[2:GripperCLOSED]    ;
  21:  JMP LBL[30] ;
  22:   ;
  23:  !TOOL 2 ;
  24:  LBL[20] ;
  25:  R[92:TempCalcReg2]=RI[3]    ;
  26:  R[93:TempCalcReg3]=RI[4]    ;
  27:   ;
  28:  LBL[30] ;
  29:   ;
  30:  !DOES EXPECTED = ACTUAL ;
  31:   ;
  32:  IF (R[90:TempCalcReg0]<>R[92:TempCalcReg2] OR R[91:TempCalcReg1]<>R[93:TempCalcReg3]),CALL ERROR(R[96:TempCalcReg6]) ;
/POS
/END
