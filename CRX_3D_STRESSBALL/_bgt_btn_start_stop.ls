/PROG  _BGT_BTN_START_STOP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1381;
CREATE		= DATE 00-01-12  TIME 20:09:18;
MODIFIED	= DATE 23-05-03  TIME 12:24:18;
FILE_NAME	= _BGT_BUT;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 1905;
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
   9:  DO[101:PB_START_STOP]=ON ;
  10:  IF DI[101:START/STOP]=ON AND UO[3:Prg running]=OFF AND DI[104:FREEBIE]=OFF,JMP LBL[20] ;
  11:  IF DI[101:START/STOP]=ON AND UO[3:Prg running]=ON AND DI[104:FREEBIE]=OFF,JMP LBL[30] ;
  12:  WAIT    .10(sec) ;
  13:  IF R[200:kill_bg_tasks]<>1,JMP LBL[10] ;
  14:  DO[101:PB_START_STOP]=OFF ;
  15:  END ;
  16:   ;
  17:  !------------------- ;
  18:  LBL[20:Start] ;
  19:  !------------------- ;
  20:  TIMER[5]=RESET ;
  21:  TIMER[5]=START ;
  22:  $WAITTMOUT=300 ;
  23:  WAIT DI[101:START/STOP]=OFF TIMEOUT,LBL[21] ;
  24:  LBL[21] ;
  25:  TIMER[5]=STOP ;
  26:  R[181:tmrStartDuration]=TIMER[5]    ;
  27:  IF (R[181:tmrStartDuration]>=3) THEN ;
  28:  DO[101:PB_START_STOP]=OFF ;
  29:  F[7:CYCLE_STOP]=(OFF) ;
  30:  IF (UO[6:Fault]) THEN ;
  31:  F[2:UOP_RESET]=(ON) ;
  32:  WAIT    .50(sec) ;
  33:  F[2:UOP_RESET]=(OFF) ;
  34:  WAIT   1.00(sec) ;
  35:  DO[101:PB_START_STOP]=ON ;
  36:  ENDIF ;
  37:  IF (!UO[6:Fault]) THEN ;
  38:  F[3:UOP_START]=(ON) ;
  39:  WAIT    .25(sec) ;
  40:  F[3:UOP_START]=(OFF) ;
  41:  WAIT    .25(sec) ;
  42:  ENDIF ;
  43:  ENDIF ;
  44:  JMP LBL[10] ;
  45:   ;
  46:  !------------------- ;
  47:  LBL[30:Stop] ;
  48:  !------------------- ;
  49:  TIMER[5]=RESET ;
  50:  TIMER[5]=START ;
  51:  $WAITTMOUT=500 ;
  52:  WAIT DI[101:START/STOP]=OFF TIMEOUT,LBL[31] ;
  53:  LBL[31] ;
  54:  TIMER[5]=STOP ;
  55:  R[181:tmrStartDuration]=TIMER[5]    ;
  56:  IF (R[181:tmrStartDuration]>=5),F[7:CYCLE_STOP]=(ON) ;
  57:  IF (R[181:tmrStartDuration]>=5) THEN ;
  58:  F[7:CYCLE_STOP]=(ON) ;
  59:  DO[101:PB_START_STOP]=OFF ;
  60:  WAIT    .25(sec) ;
  61:  DO[101:PB_START_STOP]=ON ;
  62:  WAIT    .25(sec) ;
  63:  DO[101:PB_START_STOP]=OFF ;
  64:  WAIT    .25(sec) ;
  65:  ENDIF ;
  66:  JMP LBL[10] ;
  67:   ;
/POS
/END
