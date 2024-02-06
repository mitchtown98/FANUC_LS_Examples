/PROG  _BG_CPC_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 808;
CREATE		= DATE 22-12-04  TIME 15:46:44;
MODIFIED	= DATE 22-12-04  TIME 16:04:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 1152;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

LINE_TRACK;
  LINE_TRACK_SCHEDULE_NUMBER      : 0;
  LINE_TRACK_BOUNDARY_NUMBER      : 0;
  CONTINUE_TRACK_AT_PROG_END      : TRUE;

/MN
   1:  !  CPC1 at infeed ;
   2:  IF (DI[332]=OFF AND DI[333]=ON AND DI[334]=ON) THEN ;
   3:   ;
   4:  DO[233:atInf->plc]=ON ;
   5:  DO[234:atTester->plc]=OFF ;
   6:  DO[235:atTestWait->plc]=OFF ;
   7:  DO[236:atOutFeed->plc]=OFF ;
   8:   ;
   9:  ENDIF ;
  10:   ;
  11:  !  CPC2 at tester ;
  12:  IF (DI[332]=ON AND DI[333]=OFF AND DI[334]=ON) THEN ;
  13:   ;
  14:  DO[233:atInf->plc]=OFF ;
  15:  DO[234:atTester->plc]=ON ;
  16:  DO[235:atTestWait->plc]=OFF ;
  17:  DO[236:atOutFeed->plc]=OFF ;
  18:   ;
  19:  ENDIF ;
  20:   ;
  21:  !  CPC3 at outfeed ;
  22:  IF (DI[332]=ON AND DI[333]=ON AND DI[334]=OFF) THEN ;
  23:   ;
  24:  DO[233:atInf->plc]=OFF ;
  25:  DO[234:atTester->plc]=OFF ;
  26:  DO[235:atTestWait->plc]=ON ;
  27:  DO[236:atOutFeed->plc]=OFF ;
  28:   ;
  29:  ENDIF ;
  30:   ;
  31:  !  Robot In Transit ;
  32:  IF (DI[332]=ON AND DI[333]=ON AND DI[334]=ON) THEN ;
  33:   ;
  34:  DO[236:atOutFeed->plc]=ON ;
  35:  DO[232:atHome->plc]=OFF ;
  36:  DO[233:atInf->plc]=OFF ;
  37:  DO[234:atTester->plc]=OFF ;
  38:   ;
  39:  ENDIF ;
/POS
/END
