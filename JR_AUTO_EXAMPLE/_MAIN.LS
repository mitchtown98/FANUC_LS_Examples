/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1937;
CREATE		= DATE 21-03-19  TIME 15:50:44;
MODIFIED	= DATE 21-04-14  TIME 15:19:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 89;
MEMORY_SIZE	= 2445;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************* ;
   2:  !262630 - Main ;
   3:  !JR Automation ;
   4:  !Created: March 2021 ;
   5:  ! ;
   6:  !************************* ;
   7:   ;
   8:  !Initialize Data ;
   9:  LBL[1:Initialize Robot] ;
  10:  CALL _INIT    ;
  11:  WAIT    .20(sec) ;
  12:  IF (F[1]=OFF) THEN ;
  13:  !BGLOGIC CHECK FAILED ;
  14:  GO[2:Fault Number]=90 ;
  15:  ABORT ;
  16:  ENDIF ;
  17:  IF (F[2]=OFF) THEN ;
  18:  !BGLOGIC CHECK FAILED ;
  19:  GO[2:Fault Number]=91 ;
  20:  ABORT ;
  21:  ENDIF ;
  22:   ;
  23:  !Auto Cycle Sequence ;
  24:  LBL[10:Auto Loop] ;
  25:  IF DI[33:Cycle Auto]=OFF,JMP LBL[500] ;
  26:   ;
  27:  !Set Cmd Registers ;
  28:   ;
  29:  !************************* ;
  30:  !Program Select ;
  31:  !************************* ;
  32:  IF (DI[36:Stop Request]=OFF) THEN ;
  33:  DO[41:Ok To Stop]=OFF ;
  34:  IF GI[1:Command]=1,CALL _PCK_TUB ;
  35:  IF GI[1:Command]=2,CALL _PRS_TUB ;
  36:  IF GI[1:Command]=3,CALL _PLC_TUB ;
  37:  IF GI[1:Command]=4,CALL _PCK_LID ;
  38:  IF GI[1:Command]=5,CALL _PCK_LID ;
  39:  //IF GI[1:Command]=6,CALL _SCAN ;
  40:  //IF GI[1:Command]=7,CALL _PALLETIZE ;
  41:  IF GI[1:Command]=8,CALL _DEPALLETIZE ;
  42:  IF GI[1:Command]=99,CALL _PARK ;
  43:  ELSE ;
  44:  IF (DO[22:Robot Moving]=OFF) THEN ;
  45:  DO[41:Ok To Stop]=ON ;
  46:  ELSE ;
  47:  DO[41:Ok To Stop]=OFF ;
  48:  ENDIF ;
  49:  ENDIF ;
  50:   ;
  51:  JMP LBL[1000] ;
  52:  !Reset Cycle Sequence ;
  53:  LBL[500:Reset] ;
  54:  IF DI[34:Cycle Reset]=OFF,JMP LBL[800] ;
  55:  !Execute on Reset Start ;
  56:  IF DI[43:Reset Start]=OFF,JMP LBL[1000] ;
  57:   ;
  58:  !Reset Sequence ;
  59:  !Do reset stuff here ;
  60:  CALL _SAFE_PARK    ;
  61:  !CALL _RESET ;
  62:  DO[45:Reset Done]=ON ;
  63:  WAIT DI[34:Cycle Reset]=OFF    ;
  64:  DO[45:Reset Done]=OFF ;
  65:   ;
  66:  JMP LBL[1000] ;
  67:  LBL[800:Idle] ;
  68:  !Out of cycle - idle ;
  69:   ;
  70:  ! ;
  71:  IF (DO[22:Robot Moving]=OFF) THEN ;
  72:  DO[41:Ok To Stop]=ON ;
  73:  ELSE ;
  74:  DO[41:Ok To Stop]=OFF ;
  75:  ENDIF ;
  76:   ;
  77:  IF (DI[40:Manual Move OK]=ON) THEN ;
  78:  IF (DI[84:Idle Move to Home]=ON),CALL _MOVE_HOME ;
  79:  IF (DI[85:Idle Move to Maint]=ON),CALL _MOVE_MAINT ;
  80:  IF (DI[86:Idle Move to Service]=ON),CALL _MOVE_SERVICE ;
  81:  ENDIF ;
  82:   ;
  83:  JMP LBL[1000] ;
  84:  LBL[1000:Return] ;
  85:  WAIT    .01(sec) ;
  86:  JMP LBL[10] ;
  87:  !************************* ;
  88:  LBL[9999] ;
  89:  !************************* ;
/POS
/END
