/PROG  BINPICK_SEARCH	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Binpick Macro";
PROG_SIZE	= 638;
CREATE		= DATE 14-01-21  TIME 18:49:50;
MODIFIED	= DATE 17-01-25  TIME 17:43:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 966;
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
   1:  !Executes a SEARCH Vision         ;
   2:  !Process. And Part Data are added ;
   3:  !to the Parts List according to   ;
   4:  !the Vision Process.              ;
   5:   ;
   6:  !arg1:Parts List ID               ;
   7:  !arg2:Index number of the SEARCH  ;
   8:  !     VP in SEARCH VP LIST        ;
   9:  !arg3:Index number of R[] to set  ;
  10:  !     the SEARCH status           ;
  11:  !   0:Part Data are added         ;
  12:  !   1:No Part Data is added       ;
  13:  CALL IMSEARCH(AR[1],AR[2],AR[3]) ;
/POS
/END
