/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Main Demo Prg";
PROG_SIZE	= 2070;
CREATE		= DATE 23-08-30  TIME 17:41:06;
MODIFIED	= DATE 23-09-13  TIME 16:40:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 87;
MEMORY_SIZE	= 2546;
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

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !      Main Routine           ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:  CALL _MOVE_TO_HOME    ;
   9:   ;
  10:  CALL _INIT    ;
  11:   ;
  12:  IF (F[9:RUN_BOX_SCAN]=ON),CALL _BOX_SCAN ;
  13:  !------------------- ;
  14:  LBL[10:MainLoop] ;
  15:  !------------------- ;
  16:  !chk for cycle stop ;
  17:  IF (F[7:CYCLE_STOP] AND DO[101:VAC_ON]=OFF),JMP LBL[100] ;
  18:  IF (F[13:PALLET_COMPLETE]),JMP LBL[60] ;
  19:  IF (DO[101:VAC_ON]=OFF AND F[11:DEPAL_RIGHT]),JMP LBL[20] ;
  20:  IF (DO[101:VAC_ON]=ON AND F[11:DEPAL_RIGHT]),JMP LBL[30] ;
  21:  //PAUSE ;
  22:  IF (DO[101:VAC_ON]=OFF AND F[12:DEPAL_LEFT]),JMP LBL[40] ;
  23:  IF (DO[101:VAC_ON]=ON AND F[12:DEPAL_LEFT]),JMP LBL[50] ;
  24:  JMP LBL[10] ;
  25:   ;
  26:  !------------------- ;
  27:  LBL[20:Depal Right] ;
  28:  !------------------- ;
  29:  CALL _DEPAL_RIGHT    ;
  30:  JMP LBL[10] ;
  31:   ;
  32:  !------------------- ;
  33:  LBL[30:Pal Left] ;
  34:  !------------------- ;
  35:  CALL _PAL_LEFT    ;
  36:  CALL _CHK_PAL_COMPLETE    ;
  37:  JMP LBL[10] ;
  38:   ;
  39:  !------------------- ;
  40:  LBL[40:Depal Left] ;
  41:  !------------------- ;
  42:  CALL _DEPAL_LEFT    ;
  43:  JMP LBL[10] ;
  44:   ;
  45:  !------------------- ;
  46:  LBL[50:Pal Right] ;
  47:  !------------------- ;
  48:  CALL _PAL_RIGHT    ;
  49:  CALL _CHK_PAL_COMPLETE    ;
  50:  JMP LBL[10] ;
  51:   ;
  52:  !------------------- ;
  53:  LBL[60:Pallet Complete] ;
  54:  !------------------- ;
  55:  //PAUSE ;
  56:  CALL _MOVE_TO_HOME    ;
  57:  WAIT   2.00(sec) ;
  58:  F[13:PALLET_COMPLETE]=(OFF) ;
  59:  F[11:DEPAL_RIGHT]=(!F[11:DEPAL_RIGHT]) ;
  60:  F[12:DEPAL_LEFT]=(!F[12:DEPAL_LEFT]) ;
  61:  IF (F[14:PAL_COMPLETE_STOP]),JMP LBL[100] ;
  62:  JMP LBL[10] ;
  63:   ;
  64:  !------------------- ;
  65:  LBL[70] ;
  66:  !------------------- ;
  67:  PAUSE ;
  68:  JMP LBL[10] ;
  69:   ;
  70:  !------------------- ;
  71:  LBL[80] ;
  72:  !------------------- ;
  73:  PAUSE ;
  74:  JMP LBL[10] ;
  75:   ;
  76:  !------------------- ;
  77:  LBL[90] ;
  78:  !------------------- ;
  79:  PAUSE ;
  80:  JMP LBL[10] ;
  81:   ;
  82:  !------------------- ;
  83:  LBL[100:CYCLE_STOP] ;
  84:  !------------------- ;
  85:  CALL _MOVE_TO_HOME    ;
  86:  F[7:CYCLE_STOP]=(OFF) ;
  87:  F[14:PAL_COMPLETE_STOP]=(OFF) ;
/POS
/END
