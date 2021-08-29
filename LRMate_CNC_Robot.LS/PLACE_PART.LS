/PROG  PLACE_PART
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PROGRAM PLACE";
PROG_SIZE	= 359;
CREATE		= DATE 19-12-09  TIME 17:51:48;
MODIFIED	= DATE 20-01-11  TIME 13:27:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 683;
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
   1:  !PlacePart(AR1) ;
   2:  !AR1= Place Position Register ;
   3:   ;
   4:  R[90:TempCalcReg0]=AR[1]    ;
   5:   ;
   6:J PR[R[90]] 50% CNT10 Offset,PR[7:SAFE Z OFFSET]    ;
   7:   ;
   8:L PR[R[90]] 200mm/sec CNT30 Offset,PR[11:OFFSET Z]    ;
   9:   ;
  10:L PR[R[90]] 50mm/sec FINE AP_LDR[2]    ;
  11:   ;
  12:  WAIT    .20(sec) ;
/POS
/END
