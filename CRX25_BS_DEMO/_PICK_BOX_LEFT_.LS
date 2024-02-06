/PROG  _PICK_BOX_LEFT_
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Get Depal Box";
PROG_SIZE	= 1988;
CREATE		= DATE 23-09-13  TIME 15:29:34;
MODIFIED	= DATE 23-09-13  TIME 15:29:34;
FILE_NAME	= _PICK_BO;
VERSION		= 0;
LINE_COUNT	= 77;
MEMORY_SIZE	= 2512;
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
   1:  $WAITTMOUT=500 ;
   2:   ;
   3:  UTOOL_NUM=1 ;
   4:  UFRAME_NUM=2 ;
   5:   ;
   6:  ! Get Pick Reference ;
   7:  PR[92:TempPick]=P[1]    ;
   8:   ;
   9:  CALL _PICK_BOX_LEFT_EXCEPTIONS    ;
  10:   ;
  11:  DO[102:BLOW_OFF]=OFF ;
  12:   ;
  13:  RUN _BGT_MON_15018 ;
  14:   ;
  15:  SKIP CONDITION ERR_NUM=15018    ;
  16:   ;
  17:J PR[92:TempPick] 100% CNT50 VOFFSET,VR[2] Offset,PR[13:pkBoxApp1] SkipJump,LBL[5]    ;
  18:  JMP LBL[10] ;
  19:   ;
  20:  LBL[5] ;
  21:L PR[92:TempPick] 1000mm/sec CNT50 VOFFSET,VR[2] Offset,PR[13:pkBoxApp1]    ;
  22:   ;
  23:  LBL[10] ;
  24:  R[101:kill_15018_mon]=1    ;
  25:  DO[101:VAC_ON]=ON ;
  26:   ;
  27:  !  Temp Disable Collab ;
  28:  CALL -INST_PAUSE_CTSTP(1,0,0,0,0) ;
  29:  SKIP CONDITION R[30:ResultantForce]>60 OR DI[101:VacSetPointOk]=ON    ;
  30:   ;
  31:L PR[92:TempPick] 15mm/sec FINE VOFFSET,VR[2] Skip,LBL[990],PR[10:skipLPOS]=LPOS    ;
  32:   ;
  33:  WAIT (DI[101:VacSetPointOk]) TIMEOUT,LBL[999] ;
  34:   ;
  35:  ! Get Position & Set Retreat ;
  36:  PR[94:TempRetreat]=LPOS    ;
  37:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+50    ;
  38:  PR[94,4:TempRetreat]=180    ;
  39:  PR[94,5:TempRetreat]=0    ;
  40:  IF (R[5:LeftPalIndex]=22 OR R[5:LeftPalIndex]=23 OR R[5:LeftPalIndex]=38 OR R[5:LeftPalIndex]=39) THEN ;
  41:  PR[94,1:TempRetreat]=PR[94,1:TempRetreat]+30    ;
  42:  PR[94,2:TempRetreat]=PR[94,2:TempRetreat]+30    ;
  43:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+100    ;
  44:  ENDIF ;
  45:L PR[94:TempRetreat] 200mm/sec CNT100    ;
  46:   ;
  47:  !  Get Part ;
  48:  CALL -INST_PAYLOAD(2,0,2,.3) ;
  49:   ;
  50:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+200    ;
  51:L PR[94:TempRetreat] 200mm/sec CNT5    ;
  52:   ;
  53:  CALL _TRANS_L_TO_R    ;
  54:   ;
  55:  END ;
  56:   ;
  57:  !------------------- ;
  58:  LBL[990:NoBox] ;
  59:  !------------------- ;
  60:  UALM[7] ;
  61:  END ;
  62:   ;
  63:  !------------------- ;
  64:  LBL[999:VacTimeout] ;
  65:  !------------------- ;
  66:  UALM[5] ;
  67:  JMP LBL[10] ;
  68:   ;
  69:  !********************** ;
  70:  !  Touchup ;
  71:  !********************** ;
  72:  UFRAME_NUM=2 ;
  73:  UTOOL_NUM=1 ;
  74:J P[1] 100% FINE    ;
  75:   ;
  76:J P[1] 100% FINE VOFFSET,VR[2]    ;
  77:   ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   687.362183  mm,	Y =   704.607849  mm,	Z =   615.000000  mm,
	W =   180.000000 deg,	P =     0.000000 deg,	R =   -90.654701 deg
};
/END
