/PROG  _INIT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 437;
CREATE		= DATE 23-05-04  TIME 13:22:34;
MODIFIED	= DATE 23-05-04  TIME 13:22:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 737;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  OVERRIDE=100% ;
   2:   ;
   3:  F[7:CYCLE_STOP]=(OFF) ;
   4:  F[10:WINNER_WINNER]=(OFF) ;
   5:  F[11:FREEBIE_REQUEST]=(OFF) ;
   6:  F[12:HOLDER_FULL]=(OFF) ;
   7:   ;
   8:  DO[102:PB_PLAY]=OFF ;
   9:  DO[103:PB_PICK]=OFF ;
  10:   ;
  11:  R[159:dropInBasketPntr]=1    ;
  12:  R[160:DROP_IN_BASKET]=1    ;
  13:  R[184:btnPlayPressed]=0    ;
  14:  R[185:btnPickPressed]=0    ;
  15:   ;
  16:  CALL _BLK_LIST_CLEAR    ;
  17:   ;
  18:  WAIT    .50(sec) ;
  19:   ;
  20:  TIMER[8]=RESET ;
/POS
/END
