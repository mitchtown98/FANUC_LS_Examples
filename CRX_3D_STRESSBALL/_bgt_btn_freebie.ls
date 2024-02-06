/PROG  _BGT_BTN_FREEBIE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 837;
CREATE		= DATE 00-01-12  TIME 20:09:16;
MODIFIED	= DATE 23-05-03  TIME 12:24:14;
FILE_NAME	= _BGT_BTN;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1357;
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
   9:  DO[104:PB_FREEBIE]=ON ;
  10:  IF DI[104:FREEBIE]=ON AND DI[101:START/STOP]=OFF,JMP LBL[20] ;
  11:  WAIT    .10(sec) ;
  12:  IF R[200:kill_bg_tasks]<>1,JMP LBL[10] ;
  13:  DO[104:PB_FREEBIE]=OFF ;
  14:  END ;
  15:   ;
  16:  !------------------- ;
  17:  LBL[20:Freebie] ;
  18:  !------------------- ;
  19:  TIMER[6]=RESET ;
  20:  TIMER[6]=START ;
  21:  $WAITTMOUT=300 ;
  22:  WAIT DI[104:FREEBIE]=OFF TIMEOUT,LBL[21] ;
  23:  LBL[21] ;
  24:  TIMER[6]=STOP ;
  25:  R[182:tmrFreebieDuratn]=TIMER[6]    ;
  26:  IF (R[182:tmrFreebieDuratn]>=3) THEN ;
  27:  DO[104:PB_FREEBIE]=OFF ;
  28:  F[11:FREEBIE_REQUEST]=(!F[11:FREEBIE_REQUEST]) ;
  29:  WAIT    .25(sec) ;
  30:  DO[104:PB_FREEBIE]=ON ;
  31:  WAIT    .25(sec) ;
  32:  DO[104:PB_FREEBIE]=OFF ;
  33:  WAIT    .25(sec) ;
  34:  ENDIF ;
  35:  JMP LBL[10] ;
  36:   ;
/POS
/END
