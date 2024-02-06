/PROG  _INIT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Initialization";
PROG_SIZE	= 1356;
CREATE		= DATE 21-03-29  TIME 16:56:06;
MODIFIED	= DATE 21-03-29  TIME 18:59:02;
FILE_NAME	= HV_MAIN;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1844;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL
/MN
   1:  R[170:killVision]=1    ;
   2:  WAIT    .30(sec) ;
   3:  !***************************** ;
   4:  !Main Initialize Program ;
   5:  !***************************** ;
   6:  !---------------------------- ;
   7:  LBL[1:Start] ;
   8:  !---------------------------- ;
   9:  UTOOL_NUM=0 ;
  10:  UFRAME_NUM=0 ;
  11:  !--------------------------- ;
  12:  CALL _IOMAP    ;
  13:  !--------------------------- ;
  14:  !--Set Constants ;
  15:  ! R[120:cGripper1Open]=10 ;
  16:  ! R[121:cGripper1Close]=11 ;
  17:  ! R[122:cGripper2Open]=20 ;
  18:  ! R[123:cGripper2Close]=21 ;
  19:  !--Monitor Robot Jogged ;
  20:  !--If Jogged Reset State ;
  21:  IF (DO[26:Robot Jogged]=ON) THEN ;
  22:  R[1:State]=0    ;
  23:  ENDIF ;
  24:  //DO[26:Robot Jogged]=OFF ;
  25:  !---------------------------- ;
  26:  !--Reset Internal Outputs ;
  27:  DO[40]=OFF ;
  28:  DO[42:Robot Needs Attention]=OFF ;
  29:  DO[45:Reset Done]=OFF ;
  30:  GO[1:Response]=0 ;
  31:  GO[2:Fault Number]=0 ;
  32:  GO[3:Robot Speed]=0 ;
  33:  !---------------------------- ;
  34:  !--Reset Final Destination ;
  35:  R[100:FinalDestination]=0    ;
  36:   ;
  37:  !--Set Collision Guard ;
  38:  COL DETECT ON ;
  39:  $HSCDMNGRP[1].$AUTO_RESET=0 ;
  40:  COL GUARD ADJUST 100 ;
  41:  !---------------------------- ;
  42:  !**************************** ;
  43:  LBL[9999:End] ;
  44:  !**************************** ;
  45:  F[1]=(OFF) ;
  46:  F[2]=(OFF) ;
  47:   ;
  48:  RUN _VISIONTASK ;
/POS
/END
