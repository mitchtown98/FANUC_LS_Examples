/PROG  OPERMENU	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Entry Menu Macro";
PROG_SIZE	= 266;
CREATE		= DATE 97-09-09  TIME 10:45:18;
MODIFIED	= DATE 99-06-01  TIME 12:55:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 630;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !Op. Entry Menu ;
   2:  !AR[1] menu no ;
   3:  !AR[2] answer reg ;
   4:  CALL MHOPERMN(AR[1],AR[2]) ;
/POS
/END
