/PROG  T1_TOGGLE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "T1 TOGGLE";
PROG_SIZE	= 419;
CREATE		= DATE 22-03-29  TIME 22:01:38;
MODIFIED	= DATE 22-05-25  TIME 08:05:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 867;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !GRIPPER 1 TOGGLE ROUTINE ;
   2:   ;
   3:  MONITOR END MONITOR_GRIP_1 ;
   4:  IF (RO[1:T1 OPEN]=ON),JMP LBL[100] ;
   5:  RO[1:T1 OPEN]=ON ;
   6:  RO[2:T1 CLOSE]=OFF ;
   7:  WAIT    .50(sec) ;
   8:  R[900:TOOL 1 COUNT]=R[900:TOOL 1 COUNT]-1    ;
   9:  END ;
  10:   ;
  11:  LBL[100:CLOSE] ;
  12:  RO[1:T1 OPEN]=OFF ;
  13:  RO[2:T1 CLOSE]=ON ;
  14:  WAIT    .50(sec) ;
  15:  R[900:TOOL 1 COUNT]=R[900:TOOL 1 COUNT]-1    ;
  16:  END ;
/POS
/END
