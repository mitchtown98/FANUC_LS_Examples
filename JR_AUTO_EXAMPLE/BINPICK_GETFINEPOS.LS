/PROG  BINPICK_GETFINEPOS	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 780;
CREATE		= DATE 14-01-21  TIME 20:43:12;
MODIFIED	= DATE 14-03-04  TIME 16:12:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 1096;
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
   1:  !Calculates a FINE Position.      ;
   2:   ;
   3:  !arg1:Parts List ID               ;
   4:  !arg2:Index number of FINE POS in ;
   5:  !     FINE POSITION LIST          ;
   6:  !arg3:Index number of R[] to set  ;
   7:  !     IA status                   ;
   8:  !   0:SUCCESS                     ;
   9:  !  11:FAIL                        ;
  10:  !arg4:Index number of PR[] to set ;
  11:  !     FINE POS                    ;
  12:  !arg5:Index number of PR[] to set ;
  13:  !     IA offset value at FINE POS ;
  14:  !arg6:Part Data ID to obtain the  ;
  15:  !     FINE POS (omissible)        ;
  16:  CALL IMGETFINEPOS(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6]) ;
/POS
/END
