/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2063;
CREATE		= DATE 00-01-12  TIME 20:29:12;
MODIFIED	= DATE 23-05-04  TIME 13:20:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 98;
MEMORY_SIZE	= 2655;
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
   1:  !------------------- ;
   2:  !Stress Ball Demo ;
   3:  !------------------- ;
   4:   ;
   5:  CALL _INIT    ;
   6:   ;
   7:  CALL _HOME    ;
   8:   ;
   9:  !------------------- ;
  10:  LBL[10:loop] ;
  11:  !------------------- ;
  12:   ;
  13:  IF (RI[2:VACUUM_PRESENT]=ON AND (F[10:WINNER_WINNER]=ON OR F[11:FREEBIE_REQUEST]=ON)),JMP LBL[60] ;
  14:  //IF RI[2:VACUUM_PRESENT]=ON AND R[160:DROP_IN_BASKET]=1,JMP LBL[80] ;
  15:  IF RI[2:VACUUM_PRESENT]=ON,JMP LBL[80] ;
  16:   ;
  17:  IF (F[7:CYCLE_STOP]),JMP LBL[100] ;
  18:   ;
  19:  IF (F[12:HOLDER_FULL]=ON AND RI[2:VACUUM_PRESENT]=OFF),JMP LBL[90] ;
  20:   ;
  21:  IF R[184:btnPlayPressed]=1,JMP LBL[20] ;
  22:  DO[102:PB_PLAY]=ON ;
  23:   ;
  24:  IF R[21:visBallFound]=1,JMP LBL[40] ;
  25:   ;
  26:  R[179:tmrLastCranePlay]=TIMER[7]    ;
  27:  IF (R[179:tmrLastCranePlay]>R[178:tmrCraneTMOUT]) THEN ;
  28:  JMP LBL[30] ;
  29:  ELSE ;
  30:  CALL _CRANE_CENTER_POS    ;
  31:  ENDIF ;
  32:   ;
  33:  WAIT    .10(sec) ;
  34:  JMP LBL[10] ;
  35:   ;
  36:  !------------------- ;
  37:  LBL[20:game] ;
  38:  !------------------- ;
  39:  CALL _CRANE    ;
  40:  IF (RI[2:VACUUM_PRESENT]=OFF) THEN ;
  41:  RO[1:Vacuum Off]=ON ;
  42:  WAIT    .02(sec) ;
  43:  CALL _CRANE_CENTER_POS    ;
  44:  ENDIF ;
  45:  JMP LBL[10] ;
  46:   ;
  47:  !------------------- ;
  48:  LBL[30:find ball] ;
  49:  !------------------- ;
  50:  CALL _OOW    ;
  51:  CALL _V_FIND_BALL    ;
  52:  JMP LBL[10] ;
  53:   ;
  54:  !------------------- ;
  55:  LBL[40:pick from bin] ;
  56:  !------------------- ;
  57:  CALL _BIN_PK_BALL    ;
  58:  JMP LBL[10] ;
  59:   ;
  60:  !------------------- ;
  61:  LBL[50:drop in bin] ;
  62:  !------------------- ;
  63:  CALL _DROP_IN_BIN    ;
  64:  CALL _OOW    ;
  65:  JMP LBL[10] ;
  66:   ;
  67:  !------------------- ;
  68:  LBL[60:drop in holder] ;
  69:  !------------------- ;
  70:  CALL _DROP_IN_HOLDER    ;
  71:  CALL _OOW    ;
  72:  JMP LBL[10] ;
  73:   ;
  74:  !------------------- ;
  75:  LBL[70:oow] ;
  76:  !------------------- ;
  77:  CALL _OOW    ;
  78:  JMP LBL[10] ;
  79:   ;
  80:  !------------------- ;
  81:  LBL[80:drop in basket] ;
  82:  !------------------- ;
  83:  CALL _DROP_IN_BASKET    ;
  84:  JMP LBL[10] ;
  85:   ;
  86:  !------------------- ;
  87:  LBL[90:Pick from holder] ;
  88:  !------------------- ;
  89:  CALL _PICK_FROM_HOLDER    ;
  90:  JMP LBL[10] ;
  91:   ;
  92:   ;
  93:  !------------------- ;
  94:  LBL[100:cycle stop] ;
  95:  !------------------- ;
  96:  CALL _HOME    ;
  97:  CALL _SHIP    ;
  98:  F[7:CYCLE_STOP]=(OFF) ;
/POS
/END
