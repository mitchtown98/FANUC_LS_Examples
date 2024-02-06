/PROG  _PLACE_BOX_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Set Pal Box";
PROG_SIZE	= 1613;
CREATE		= DATE 23-09-13  TIME 15:41:54;
MODIFIED	= DATE 23-09-13  TIME 15:42:58;
FILE_NAME	= _PLACE_B;
VERSION		= 0;
LINE_COUNT	= 60;
MEMORY_SIZE	= 2037;
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
   9:  PR[74,1:PlPalApp1]=(-40)    ;
  10:  PR[74,2:PlPalApp1]=(-40)    ;
  11:   ;
  12:  !set tool rotate ;
  13:  PR[72,6:PalToolOffset]=0    ;
  14:  IF (PR[70,1:PalApproach]<R[281:MID_PAL_X_LEFT]),PR[72,6:PalToolOffset]=(180) ;
  15:  IF (R[5:LeftPalIndex]=30),PR[72,6:PalToolOffset]=(180) ;
  16:   ;
  17:   ;
  18:  JMP LBL[20] ;
  19:  R[25:CheckPosRetry]=0    ;
  20:  LBL[10] ;
  21:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  22:  IF (R[26:CheckPos]<>0) THEN ;
  23:  CALL MATRIX(69,70,70) ;
  24:  ENDIF ;
  25:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  26:  IF (R[26:CheckPos]<>0) THEN ;
  27:  CALL MATRIX(68,70,70) ;
  28:  ENDIF ;
  29:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  30:  IF (R[26:CheckPos]<>0) THEN ;
  31:  R[25:CheckPosRetry]=R[25:CheckPosRetry]+1    ;
  32:  //IF (R[25:CheckPosRetry]<2) THEN ;
  33:  IF (PR[72,6:PalToolOffset]=0) THEN ;
  34:  PR[72,6:PalToolOffset]=(180) ;
  35:  ELSE ;
  36:  PR[72,6:PalToolOffset]=(0) ;
  37:  ENDIF ;
  38:  JMP LBL[10] ;
  39:  ENDIF ;
  40:   ;
  41:  LBL[20] ;
  42:  PR[70,3:PalApproach]=PR[70,3:PalApproach]+50    ;
  43:J PR[70:PalApproach] 75% CNT25 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  44:L PR[71:PalStackPt] 200mm/sec CNT35 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  45:L PR[71:PalStackPt] 150mm/sec FINE Tool_Offset,PR[72:PalToolOffset] DB   10.0mm,CALL _VAC_OFF    ;
  46:   ;
  47:  !  Relase Part ;
  48:  CALL -INST_PAYLOAD(2,0,2,.5) ;
  49:   ;
  50:  PR[71,3:PalStackPt]=PR[71,3:PalStackPt]+20    ;
  51:L PR[71:PalStackPt] 20mm/sec CNT5 Tool_Offset,PR[72:PalToolOffset]    ;
  52:   ;
  53:  WAIT R[299] ;
  54:  DO[102:BLOW_OFF]=OFF ;
  55:   ;
  56:  ! Get Position & Set Retreat ;
  57:  PR[94:TempRetreat]=LPOS    ;
  58:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+65    ;
  59:L PR[94:TempRetreat] 375mm/sec CNT100 ACC50    ;
  60:   ;
/POS
/END
