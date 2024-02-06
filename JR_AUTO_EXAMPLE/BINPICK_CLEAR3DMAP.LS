/PROG  BINPICK_CLEAR3DMAP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 294;
CREATE		= DATE 14-01-21  TIME 18:37:50;
MODIFIED	= DATE 14-04-18  TIME 13:25:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 654;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !Clears a 3D map of the specified ;
   2:  ![3D Area Sensor].                ;
   3:   ;
   4:  !arg1:Name of [3D Area Sensor]    ;
   5:  CALL CLRVAMAP(AR[1]) ;
/POS
/END
