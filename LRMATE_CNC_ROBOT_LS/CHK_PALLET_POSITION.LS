/PROG  CHK_PALLET_POSITION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "calc pallet pos";
PROG_SIZE	= 275;
CREATE		= DATE 19-12-09  TIME 17:50:18;
MODIFIED	= DATE 19-12-09  TIME 17:50:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 639;
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
   1:  !CheckPosition(AR1) ;
   2:  !AR1=Position ;
   3:   ;
   4:  IF (AR[1]<0 OR AR[1]>R[13:MAX ROWS]*R[14:MAX COLUMNS]-1),CALL ERROR(4) ;
/POS
/END
