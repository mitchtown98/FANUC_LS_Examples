/PROG  BINPICK_FINE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 686;
CREATE		= DATE 14-01-21  TIME 20:29:54;
MODIFIED	= DATE 14-04-17  TIME 15:59:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1010;
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
   1:  !Executes a FINE Vision Process.  ;
   2:   ;
   3:  !arg1:Parts List ID               ;
   4:  !arg2:Index number of the FINE VP ;
   5:  !     in FINE VP LIST             ;
   6:  !arg3:Index number of R[] to set  ;
   7:  !     FINE Status                 ;
   8:  !   0:SUCCESS                     ;
   9:  !   1:FAIL                        ;
  10:  !arg4:Index number of R[] to set  ;
  11:  !     Model ID of FINE VP result  ;
  12:  !arg5:Part Data ID to set FINE    ;
  13:  !     result (omissible)          ;
  14:  CALL IMFINE(AR[1],AR[2],AR[3],AR[4],AR[5]) ;
/POS
/END
