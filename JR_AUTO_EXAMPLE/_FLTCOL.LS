/PROG  _FLTCOL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Collision Alarm";
PROG_SIZE	= 294;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= _FLTPNR;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 658;
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
   2:  !Collision Alarm ;
   3:  !***************************** ;
   4:  CALL _FAULT(11) ;
/POS
/END
