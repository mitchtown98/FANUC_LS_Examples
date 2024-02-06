/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Main Routine";
PROG_SIZE	= 1440;
CREATE		= DATE 22-11-23  TIME 10:19:40;
MODIFIED	= DATE 23-01-17  TIME 01:33:32;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 1956;
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
/MN
   1:  !************************ ;
   2:  !  Main Routine           ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  CALL _INIT    ;
   7:   ;
   8:  !------------------------ ;
   9:  LBL[10:Start] ;
  10:  !------------------------ ;
  11:   ;
  12:  !  Home Request ;
  13:  IF (DI[223:goHomeReq]=ON) THEN ;
  14:   ;
  15:  DO[223:goHomeRecv]=ON ;
  16:   ;
  17:  CALL _GET_HOME    ;
  18:   ;
  19:  DO[223:goHomeRecv]=OFF ;
  20:  ENDIF ;
  21:   ;
  22:  !  Pick Infeed Request ;
  23:  IF (DI[216:pkinfreq]=ON) THEN ;
  24:   ;
  25:  DO[216:pkInfRecv]=ON ;
  26:   ;
  27:  R[17:pkInfCntr]=R[17:pkInfCntr]+1    ;
  28:   ;
  29:  TIMER[1]=START ;
  30:   ;
  31:  CALL _VISION_CB    ;
  32:   ;
  33:  IF R[80:numberFound]<>1,JMP LBL[999] ;
  34:   ;
  35:  CALL _PK_INF    ;
  36:   ;
  37:  DO[210:okToIndex]=ON ;
  38:   ;
  39:  CALL _PL_TESTER    ;
  40:   ;
  41:  TIMER[1]=STOP ;
  42:  R[15:pkPlTimer]=TIMER[1]    ;
  43:  TIMER[1]=RESET ;
  44:   ;
  45:  DO[210:okToIndex]=OFF ;
  46:  DO[216:pkInfRecv]=OFF ;
  47:   ;
  48:  ENDIF ;
  49:   ;
  50:  !  Place Outfeed Request ;
  51:  IF (DI[222:plOutfeedReq]=ON) THEN ;
  52:   ;
  53:  CALL _PK_TESTER    ;
  54:   ;
  55:  CALL _PL_OUTFEED    ;
  56:   ;
  57:  DO[222:plOutfeedRecv]=OFF ;
  58:   ;
  59:  ENDIF ;
  60:   ;
  61:  JMP LBL[10] ;
  62:  !------------------------ ;
  63:  LBL[998:VizError] ;
  64:  !------------------------ ;
  65:  MESSAGE[VizNoFind] ;
  66:   ;
  67:  !------------------------ ;
  68:  LBL[999:End] ;
  69:  !------------------------ ;
  70:  DO[210:okToIndex]=OFF ;
  71:  DO[216:pkInfRecv]=OFF ;
  72:  DO[223:goHomeRecv]=OFF ;
  73:  DO[224:plTesterRecv]=OFF ;
  74:   ;
  75:  ABORT ;
/POS
/END
