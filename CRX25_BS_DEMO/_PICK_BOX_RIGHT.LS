/PROG  _PICK_BOX_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Get Depal Box";
PROG_SIZE	= 1670;
CREATE		= DATE 23-09-11  TIME 20:39:32;
MODIFIED	= DATE 23-09-13  TIME 16:38:12;
FILE_NAME	= _PICK_BO;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2126;
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
   4:  UFRAME_NUM=1 ;
   5:   ;
   6:  ! Get Pick Reference ;
   7:  PR[92:TempPick]=PR[3:RightPickRef]    ;
   8:  PR[92,3:TempPick]=PR[92,3:TempPick]+R[285:PICK_COMPRESSION]    ;
   9:   ;
  10:  DO[102:BLOW_OFF]=OFF ;
  11:  ! Approach and Pick ;
  12:J PR[92:TempPick] 100% CNT50 VOFFSET,VR[1] Offset,PR[13:pkBoxApp1] TA    .30sec,DO[101:VAC_ON]=ON    ;
  13:   ;
  14:  LBL[10] ;
  15:  !  Temp Disable Collab ;
  16:  CALL -INST_PAUSE_CTSTP(1,0,0,0,0) ;
  17:  SKIP CONDITION R[30:ResultantForce]>60 OR DI[101:VacSetPointOk]=ON    ;
  18:   ;
  19:L PR[92:TempPick] R[298:SEARCH_VAC_SPEED]mm/sec CNT1 VOFFSET,VR[1] Skip,LBL[990],PR[10:skipLPOS]=LPOS    ;
  20:   ;
  21:  WAIT (DI[101:VacSetPointOk]) TIMEOUT,LBL[999] ;
  22:   ;
  23:  ! Get Position & Set Retreat ;
  24:  PR[94:TempRetreat]=LPOS    ;
  25:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+50    ;
  26:  PR[94,4:TempRetreat]=180    ;
  27:  PR[94,5:TempRetreat]=0    ;
  28:L PR[94:TempRetreat] 200mm/sec CNT100    ;
  29:   ;
  30:  !  Get Part ;
  31:  CALL -INST_PAYLOAD(2,0,2,.3) ;
  32:   ;
  33:  PR[94,3:TempRetreat]=PR[94,3:TempRetreat]+200    ;
  34:L PR[94:TempRetreat] 200mm/sec CNT5    ;
  35:   ;
  36:  CALL _TRANS_R_TO_L    ;
  37:  END ;
  38:   ;
  39:  !------------------- ;
  40:  LBL[990:NoBox] ;
  41:  !------------------- ;
  42:  UALM[7] ;
  43:  END ;
  44:   ;
  45:  !------------------- ;
  46:  LBL[999:VacTimeout] ;
  47:  !------------------- ;
  48:  UALM[5] ;
  49:  JMP LBL[10] ;
  50:   ;
  51:  !********************** ;
  52:  !  Touchup ;
  53:  !********************** ;
  54:  UFRAME_NUM=1 ;
  55:  UTOOL_NUM=1 ;
  56:J P[1] 100% FINE    ;
  57:J P[1] 100% FINE VOFFSET,VR[1]    ;
  58:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -62.039001  mm,	Y =    54.597534  mm,	Z =   676.834534  mm,
	W =  -180.000000 deg,	P =     -.000004 deg,	R =    90.209839 deg
};
/END
