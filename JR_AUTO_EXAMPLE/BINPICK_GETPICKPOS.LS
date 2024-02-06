/PROG  BINPICK_GETPICKPOS	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 912;
CREATE		= DATE 14-01-21  TIME 20:22:16;
MODIFIED	= DATE 14-03-04  TIME 16:13:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1216;
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
   1:  !Calculates a PICK position.      ;
   2:   ;
   3:  !arg1:Parts List ID               ;
   4:  !arg2:PICK POS ID in the PICK     ;
   5:  !     POSITION LIST               ;
   6:  !arg3:Index number of R[] to set  ;
   7:  !     IA Status                   ;
   8:  !   0:SUCCESS                     ;
   9:  !  12:Fail to calc PICK POS       ;
  10:  !  13:Fail to calc APPROACH POS   ;
  11:  !arg4:Index number of PR[] to set ;
  12:  !     PICK POS                    ;
  13:  !arg5:Index number of PR[] to set ;
  14:  !     IA offset value at PICK POS ;
  15:  !arg6:Index number of PR[] to set ;
  16:  !     APPROACH POS                ;
  17:  !arg7:Part Data ID to obtain the  ;
  18:  !     PICK POS (omissible)        ;
  19:  CALL IMGETPICKPOS(AR[1],AR[2],AR[3],AR[4],AR[5],AR[6],0,AR[7]) ;
/POS
/END
