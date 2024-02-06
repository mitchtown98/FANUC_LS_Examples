/PROG  _PLACE_BOX_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Set Pal Box";
PROG_SIZE	= 1685;
CREATE		= DATE 23-09-13  TIME 15:43:38;
MODIFIED	= DATE 23-09-15  TIME 11:39:04;
FILE_NAME	= _PLACE_B;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2221;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 3,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : TRUE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !         Pal Box             ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:   ;
   9:  !set approach ;
  10:  !rt pal ;
  11:  PR[74,1:PlPalApp1]=40    ;
  12:  PR[74,2:PlPalApp1]=(-40)    ;
  13:   ;
  14:  !set tool rotate ;
  15:  !rt pal ;
  16:  PR[72,6:PalToolOffset]=0    ;
  17:  IF (PR[70,1:PalApproach]>R[282:MID_PAL_X_RIGHT]),PR[72,6:PalToolOffset]=(180) ;
  18:   ;
  19:   ;
  20:  JMP LBL[20] ;
  21:  R[25:CheckPosRetry]=0    ;
  22:  LBL[10] ;
  23:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  24:  IF (R[26:CheckPos]<>0) THEN ;
  25:  CALL MATRIX(69,70,70) ;
  26:  ENDIF ;
  27:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  28:  IF (R[26:CheckPos]<>0) THEN ;
  29:  CALL MATRIX(68,70,70) ;
  30:  ENDIF ;
  31:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  32:  IF (R[26:CheckPos]<>0) THEN ;
  33:  R[25:CheckPosRetry]=R[25:CheckPosRetry]+1    ;
  34:  //IF (R[25:CheckPosRetry]<2) THEN ;
  35:  IF (PR[72,6:PalToolOffset]=0) THEN ;
  36:  PR[72,6:PalToolOffset]=(180) ;
  37:  ELSE ;
  38:  PR[72,6:PalToolOffset]=(0) ;
  39:  ENDIF ;
  40:  JMP LBL[10] ;
  41:  ENDIF ;
  42:   ;
  43:  LBL[20] ;
  44:  PR[70,3:PalApproach]=PR[70,3:PalApproach]+50    ;
  45:J PR[70:PalApproach] 75% CNT25 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  46:L PR[71:PalStackPt] 200mm/sec CNT35 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  47:L PR[71:PalStackPt] 150mm/sec FINE Tool_Offset,PR[72:PalToolOffset] DB   10.0mm,CALL _VAC_OFF    ;
  48:   ;
  49:  !  Relase Part ;
  50:  CALL -INST_PAYLOAD(2,0,2,.5) ;
  51:   ;
  52:  PR[71,3:PalStackPt]=PR[71,3:PalStackPt]+20    ;
  53:L PR[71:PalStackPt] 20mm/sec CNT5 Tool_Offset,PR[72:PalToolOffset]    ;
  54:   ;
  55:  !NO LESS THAN 0.75 ;
  56:  WAIT    .75(sec) ;
  57:  !NO LESS THAN 0.75 ;
  58:  DO[102:BLOW_OFF]=OFF ;
  59:   ;
  60:  ! Get Position & Set Retreat ;
  61:  PR[94:TempRetreat]=LPOS    ;
  62:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+65    ;
  63:L PR[94:TempRetreat] 375mm/sec CNT100 ACC50    ;
  64:   ;
/POS
/END
