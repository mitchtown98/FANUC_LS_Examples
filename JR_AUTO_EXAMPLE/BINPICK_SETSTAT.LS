/PROG  BINPICK_SETSTAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 764;
CREATE		= DATE 14-01-21  TIME 20:16:24;
MODIFIED	= DATE 14-03-04  TIME 16:15:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 1080;
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
   1:  !Sets a status to a popped Part   ;
   2:  !Data.                            ;
   3:   ;
   4:  !arg1:Parts List ID               ;
   5:  !arg2:Status to be set            ;
   6:  !  10:FINE SUCCESS                ;
   7:  !  11:FINE FAIL                   ;
   8:  !  12:FINE IA FAIL                ;
   9:  !  13:FINE CL FAIL                ;
  10:  !  20:PICK SUCCESS                ;
  11:  !  21:PICK FAIL                   ;
  12:  !  22:PICK IA FAIL                ;
  13:  !  23:PICK CL FAIL                ;
  14:  !arg3:Part Data ID to set a       ;
  15:  !     status (omissible)          ;
  16:  CALL IMSETSTAT(AR[1],AR[2],AR[3]) ;
/POS
/END
