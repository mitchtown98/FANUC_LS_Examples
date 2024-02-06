/PROG  BINPICK_CLEAR	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 290;
CREATE		= DATE 14-01-21  TIME 18:13:52;
MODIFIED	= DATE 14-04-17  TIME 11:56:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 650;
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
   1:  !Clears part data in a Parts      ;
   2:  !List.                            ;
   3:   ;
   4:  !arg1:Parts List ID               ;
   5:  CALL IPCLR(AR[1]) ;
/POS
/END
