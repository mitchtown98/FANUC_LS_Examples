/PROG  _FLTPNR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Posn Not Reached";
PROG_SIZE	= 304;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= _SETFAUL;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 668;
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
   2:  !Position Not Reached ;
   3:  !***************************** ;
   4:  CALL _FAULT(10) ;
/POS
/END
