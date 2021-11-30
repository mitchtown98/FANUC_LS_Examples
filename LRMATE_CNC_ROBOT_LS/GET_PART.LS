/PROG  GET_PART
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 459;
CREATE		= DATE 20-01-10  TIME 16:03:10;
MODIFIED	= DATE 20-01-14  TIME 08:34:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 763;
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
   1:  !GET_PART(AR1,AR2) ;
   2:  !AR1=Approach Point Register ;
   3:  !AR2=Pick/Place Register ;
   4:   ;
   5:  R[91:TempCalcReg1]=AR[1]    ;
   6:  R[90:TempCalcReg0]=AR[2]    ;
   7:   ;
   8:  !MOVE TO APPCH PT ;
   9:J PR[R[91]] 100% CNT30    ;
  10:   ;
  11:L PR[R[90]] 400mm/sec CNT30 Offset,PR[10:OFFSET Y Z]    ;
  12:   ;
  13:L PR[R[90]] 200mm/sec CNT30 Offset,PR[11:OFFSET Z]    ;
  14:   ;
  15:L PR[R[90]] 75mm/sec FINE AP_LDR[2]    ;
  16:   ;
  17:  WAIT    .20(sec) ;
/POS
/END
