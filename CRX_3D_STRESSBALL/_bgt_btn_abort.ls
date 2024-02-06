/PROG  _BGT_BTN_ABORT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 943;
CREATE		= DATE 23-05-01  TIME 14:23:38;
MODIFIED	= DATE 23-05-03  TIME 12:24:06;
FILE_NAME	= _BGT_BTN;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 1439;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !------------------- ;
   2:  LBL[1:init] ;
   3:  !------------------- ;
   4:  R[200:kill_bg_tasks]=0    ;
   5:   ;
   6:  !------------------- ;
   7:  LBL[10:loop] ;
   8:  !------------------- ;
   9:  IF DI[101:START/STOP]=ON AND DI[104:FREEBIE]=ON,JMP LBL[20] ;
  10:  WAIT    .10(sec) ;
  11:  IF R[200:kill_bg_tasks]<>1,JMP LBL[10] ;
  12:  END ;
  13:   ;
  14:  !------------------- ;
  15:  LBL[20:Abort] ;
  16:  !------------------- ;
  17:  TIMER[9]=RESET ;
  18:  TIMER[9]=START ;
  19:  $WAITTMOUT=300 ;
  20:  WAIT DI[101:START/STOP]=OFF OR DI[104:FREEBIE]=OFF TIMEOUT,LBL[21] ;
  21:  LBL[21] ;
  22:  TIMER[9]=STOP ;
  23:  R[177:tmrAbort]=TIMER[9]    ;
  24:  IF (R[177:tmrAbort]>=3) THEN ;
  25:  DO[101:PB_START_STOP]=OFF ;
  26:  DO[104:PB_FREEBIE]=OFF ;
  27:  F[1:UOP_ABORT]=(ON) ;
  28:  WAIT    .25(sec) ;
  29:  DO[101:PB_START_STOP]=ON ;
  30:  DO[104:PB_FREEBIE]=ON ;
  31:  F[1:UOP_ABORT]=(OFF) ;
  32:  WAIT    .25(sec) ;
  33:  DO[104:PB_FREEBIE]=OFF ;
  34:  F[2:UOP_RESET]=(ON) ;
  35:  WAIT    .25(sec) ;
  36:  DO[101:PB_START_STOP]=ON ;
  37:  DO[104:PB_FREEBIE]=ON ;
  38:  F[2:UOP_RESET]=(OFF) ;
  39:  WAIT    .25(sec) ;
  40:  ENDIF ;
  41:  JMP LBL[10] ;
  42:   ;
/POS
/END
