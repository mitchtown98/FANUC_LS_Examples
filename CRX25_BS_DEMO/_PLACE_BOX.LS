/PROG  _PLACE_BOX
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Set Pal Box";
PROG_SIZE	= 1869;
CREATE		= DATE 23-09-06  TIME 13:30:18;
MODIFIED	= DATE 23-09-13  TIME 09:54:58;
FILE_NAME	= _PICK_BO;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2365;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
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
   9:  R[81:Arg1]=AR[1]    ;
  10:  !set approach ;
  11:  IF (R[81:Arg1]=1) THEN ;
  12:  !rt pal ;
  13:  PR[74,1:PlPalApp1]=40    ;
  14:  PR[74,2:PlPalApp1]=(-40)    ;
  15:  ELSE ;
  16:  PR[74,1:PlPalApp1]=(-40)    ;
  17:  PR[74,2:PlPalApp1]=(-40)    ;
  18:  ENDIF ;
  19:   ;
  20:  !set tool rotate ;
  21:  IF (R[81:Arg1]=1) THEN ;
  22:  !rt pal ;
  23:  PR[72,6:PalToolOffset]=0    ;
  24:  IF (PR[70,1:PalApproach]>R[282:MID_PAL_X_RIGHT]),PR[72,6:PalToolOffset]=(180) ;
  25:  ELSE ;
  26:  PR[72,6:PalToolOffset]=0    ;
  27:  IF (PR[70,1:PalApproach]<R[281:MID_PAL_X_LEFT]),PR[72,6:PalToolOffset]=(180) ;
  28:  IF (R[5:LeftPalIndex]=30),PR[72,6:PalToolOffset]=(180) ;
  29:  ENDIF ;
  30:   ;
  31:   ;
  32:  //JMP LBL[20] ;
  33:  R[25:CheckPosRetry]=0    ;
  34:  LBL[10] ;
  35:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  36:  IF (R[26:CheckPos]<>0) THEN ;
  37:  CALL MATRIX(69,70,70) ;
  38:  ENDIF ;
  39:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  40:  IF (R[26:CheckPos]<>0) THEN ;
  41:  CALL MATRIX(68,70,70) ;
  42:  ENDIF ;
  43:  CALL CHK_POS(1,1,1,70,74,72,26) ;
  44:  IF (R[26:CheckPos]<>0) THEN ;
  45:  R[25:CheckPosRetry]=R[25:CheckPosRetry]+1    ;
  46:  //IF (R[25:CheckPosRetry]<2) THEN ;
  47:  IF (PR[72,6:PalToolOffset]=0) THEN ;
  48:  PR[72,6:PalToolOffset]=(180) ;
  49:  ELSE ;
  50:  PR[72,6:PalToolOffset]=(0) ;
  51:  ENDIF ;
  52:  JMP LBL[10] ;
  53:  ENDIF ;
  54:   ;
  55:  LBL[20] ;
  56:  PR[70,3:PalApproach]=PR[70,3:PalApproach]+50    ;
  57:J PR[70:PalApproach] 75% CNT25 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  58:L PR[71:PalStackPt] 200mm/sec CNT35 Tool_Offset,PR[72:PalToolOffset] Offset,PR[74:PlPalApp1]    ;
  59:L PR[71:PalStackPt] 150mm/sec FINE Tool_Offset,PR[72:PalToolOffset] DB   10.0mm,CALL _VAC_OFF    ;
  60:   ;
  61:  !  Relase Part ;
  62:  CALL -INST_PAYLOAD(2,0,2,.5) ;
  63:   ;
  64:  PR[71,3:PalStackPt]=PR[71,3:PalStackPt]+20    ;
  65:L PR[71:PalStackPt] 20mm/sec CNT5 Tool_Offset,PR[72:PalToolOffset]    ;
  66:   ;
  67:  WAIT R[299] ;
  68:  DO[102:BLOW_OFF]=OFF ;
  69:   ;
  70:  ! Get Position & Set Retreat ;
  71:  PR[94:TempRetreat]=LPOS    ;
  72:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+65    ;
  73:L PR[94:TempRetreat] 375mm/sec CNT100 ACC50    ;
  74:   ;
/POS
/END
