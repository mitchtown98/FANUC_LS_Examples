/PROG  BINPICK_POP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 722;
CREATE		= DATE 14-01-21  TIME 19:29:28;
MODIFIED	= DATE 14-02-13  TIME 19:56:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1042;
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
   1:  !Pops a Part Data from the        ;
   2:  !specified Parts List.            ;
   3:   ;
   4:  !arg1:Parts List ID               ;
   5:  !arg2:Index number of R[] to set  ;
   6:  !     status                      ;
   7:  !   0:SUCCESS                     ;
   8:  !   1:FAIL                        ;
   9:  !arg3:Index number of R[] to set  ;
  10:  !     a model ID of a popped Part ;
  11:  !     Data                        ;
  12:  !arg4:Index number of R[] to set  ;
  13:  !     a popped Part Data ID       ;
  14:  !     (omissible)                 ;
  15:  CALL IMPOP(AR[1],AR[2],AR[3],AR[4]) ;
/POS
/END
