/PROG  STATPAGE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "StatusMenu Macro";
PROG_SIZE	= 232;
CREATE		= DATE 97-09-09  TIME 10:45:18;
MODIFIED	= DATE 99-06-01  TIME 13:04:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 3;
MEMORY_SIZE	= 600;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL
/MN
   1:  !Status Menu ;
   2:  !AR[1] menu no ;
   3:  CALL MHSTATPG(AR[1]) ;
/POS
/END
