/PROG  _BG_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Conveyor logic";
PROG_SIZE	= 1843;
CREATE		= DATE 22-03-15  TIME 12:52:00;
MODIFIED	= DATE 23-01-18  TIME 15:52:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 99;
MEMORY_SIZE	= 2367;
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
   1:  !---Conveyor Logic---! ;
   2:  R[198:runConv]=0    ;
   3:  R[200:killConv]=0    ;
   4:  R[201:convState]=(-99)    ;
   5:  !------------------------ ;
   6:  LBL[1] ;
   7:  !------------------------ ;
   8:  !  State 0 ;
   9:  WAIT    .10(sec) ;
  10:  R[201:convState]=0    ;
  11:   ;
  12:  IF R[200:killConv]=1,JMP LBL[100] ;
  13:  IF R[198:runConv]<>1,JMP LBL[1] ;
  14:   ;
  15:  !  State 1 ;
  16:  IF (DI[200:@Infeed]) THEN ;
  17:  DO[105:ConveyorOn]=OFF ;
  18:  R[201:convState]=1    ;
  19:  ENDIF ;
  20:   ;
  21:  !  State 2 ;
  22:  IF (DI[119:OutfeedPresent]=ON AND DI[117:InfeedPresent]=OFF AND DI[200:@Infeed]=OFF) THEN ;
  23:   ;
  24:  R[201:convState]=2    ;
  25:  F[33:cvLatch]=(OFF) ;
  26:   ;
  27:  DO[105:ConveyorOn]=ON ;
  28:  WAIT (DI[117:InfeedPresent]=ON)    ;
  29:  ENDIF ;
  30:   ;
  31:  !  State 3 ;
  32:  IF (DI[119:OutfeedPresent]=ON AND DI[117:InfeedPresent]=ON AND DI[200:@Infeed]=OFF AND F[33:cvLatch]=OFF) THEN ;
  33:  R[201:convState]=3    ;
  34:   ;
  35:  DO[105:ConveyorOn]=ON ;
  36:  !!!! ;
  37:  WAIT   4.00(sec) ;
  38:  WAIT R[199] ;
  39:  DO[105:ConveyorOn]=OFF ;
  40:   ;
  41:  IF (DI[117:InfeedPresent]=ON AND DI[119:OutfeedPresent]=ON) THEN ;
  42:   ;
  43:  !  State 4 ;
  44:  R[201:convState]=4    ;
  45:  F[33:cvLatch]=(ON) ;
  46:  ENDIF ;
  47:   ;
  48:  ENDIF ;
  49:   ;
  50:  !  State 5 ;
  51:  IF (DI[117:InfeedPresent]=OFF AND DO[105:ConveyorOn]=OFF AND DI[200:@Infeed]=OFF) THEN ;
  52:   ;
  53:  R[201:convState]=5    ;
  54:   ;
  55:  WAIT R[199] ;
  56:  DO[105:ConveyorOn]=ON ;
  57:   ;
  58:  $WAITTMOUT=R[205:cvTimeoutTime] ;
  59:  WAIT (DI[117:InfeedPresent]=ON) TIMEOUT,LBL[98] ;
  60:   ;
  61:  ENDIF ;
  62:   ;
  63:  !  State 6 ;
  64:  LBL[20] ;
  65:  IF (DI[117:InfeedPresent]=ON AND DI[119:OutfeedPresent]=OFF AND DO[105:ConveyorOn]=ON AND DI[200:@Infeed]=OFF) THEN ;
  66:   ;
  67:  R[201:convState]=6    ;
  68:   ;
  69:  WAIT R[199] ;
  70:  DO[105:ConveyorOn]=OFF ;
  71:  ENDIF ;
  72:   ;
  73:  ! State 7 ;
  74:  //IF (DI[117:InfeedPresent]=OFF AND DI[119:OutfeedPresent]=OFF AND DO[105:ConveyorOn]=ON) THEN ;
  75:  //    ;
  76:  //R[201:convState]=7    ;
  77:  //    ;
  78:  //$WAITTMOUT=R[205:cvTimeoutTime] ;
  79:  //WAIT (DI[117:InfeedPresent]) TIMEOUT,LBL[98] ;
  80:  //ENDIF ;
  81:   ;
  82:  IF R[200:killConv]<>1,JMP LBL[1] ;
  83:  JMP LBL[100] ;
  84:  !------------------------ ;
  85:  LBL[98:Timeout] ;
  86:  !------------------------ ;
  87:  R[201:convState]=8    ;
  88:  DO[105:ConveyorOn]=OFF ;
  89:  WAIT DI[119:OutfeedPresent]=ON+    ;
  90:  JMP LBL[1] ;
  91:   ;
  92:  !------------------------ ;
  93:  LBL[100] ;
  94:  !------------------------ ;
  95:  R[198:runConv]=0    ;
  96:  R[200:killConv]=0    ;
  97:  DO[105:ConveyorOn]=OFF ;
  98:  R[201:convState]=(-1)    ;
  99:  JMP LBL[1] ;
/POS
/END
