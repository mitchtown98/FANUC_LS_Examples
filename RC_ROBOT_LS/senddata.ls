/PROG  SENDDATA	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Send PC Data";
PROG_SIZE	= 288;
CREATE		= DATE 10-10-09  TIME 13:30:34;
MODIFIED	= DATE 99-06-01  TIME 14:22:28;
FILE_NAME	= SENDEVNT;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 660;
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
/APPL
/MN
   1:  !Send Data Macro ;
   2:  CALL GESNDDAT(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],AR[7],AR[8],AR[9],AR[10]) ;
/POS
/END