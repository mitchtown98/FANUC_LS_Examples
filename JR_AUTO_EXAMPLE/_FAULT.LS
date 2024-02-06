/PROG  _FAULT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CELLMON1 Faults";
PROG_SIZE	= 993;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1397;
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

LINE_TRACK;
  LINE_TRACK_SCHEDULE_NUMBER      : 0;
  LINE_TRACK_BOUNDARY_NUMBER      : 0;
  CONTINUE_TRACK_AT_PROG_END      : TRUE;

/MN
   1:  !*************************** ;
   2:  !Post Faults triggered in the ;
   3:  !monitor program "_CELLMON" ;
   4:  !*************************** ;
   5:  !--------------------------- ;
   6:  !---Arguments for Program ;
   7:  !AR[1]  = 10 Pos Not Reached ;
   8:  !AR[1]  = 11 Collision Detect ;
   9:  !AR[1]  = 12 Limit Error ;
  10:  !AR[1]  = 13 High Current ;
  11:  !AR[1]  = 14 Over Current ;
  12:  !AR[1]  = 15 Stop Error Excess ;
  13:  !AR[1]  = 16 Move Error Excess ;
  14:  !*************************** ;
  15:  !ALARM HANDLING ;
  16:  !*************************** ;
  17:  !--------------------------- ;
  18:  !----Set Fault Number ;
  19:  !--------------------------- ;
  20:  GO[2:Fault Number]=AR[1] ;
  21:  GO[6:Faulted State]=0 ;
  22:  WAIT   1.00(sec) ;
  23:  MONITOR _CELLMON ;
  24:  ABORT ;
  25:  !***************************** ;
  26:  LBL[9999:End] ;
  27:  !**************************** ;
/POS
/END
