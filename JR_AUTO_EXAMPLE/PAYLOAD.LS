/PROG  PAYLOAD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 417;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 741;
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
   1:  !----------------------------- ;
   2:  !Set/Confirm Payload ;
   3:  !If Vacuum Signals ON, Load Paylo ;
   4:  IF (DI[161:iTubGripLRetd]=ON) THEN ;
   5:  !EOAT has Tub ;
   6:  PAYLOAD[2:EOAT w Part] ;
   7:  ENDIF ;
   8:  IF (DI[161:iTubGripLRetd]=OFF) THEN ;
   9:  !EOAT Empty ;
  10:  PAYLOAD[1:EOAT no Part] ;
  11:  ENDIF ;
  12:   ;
/POS
/END
