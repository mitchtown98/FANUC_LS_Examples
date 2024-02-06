/PROG  _FLTMEE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move Err Excess";
PROG_SIZE	= 296;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= _FLTSEE;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 660;
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
/MN
   1:  !***************************** ;
   2:  !Move Error Excess ;
   3:  !***************************** ;
   4:  CALL _FAULT(16) ;
/POS
/END
