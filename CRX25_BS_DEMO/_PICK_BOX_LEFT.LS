/PROG  _PICK_BOX_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Get Depal Box";
PROG_SIZE	= 1679;
CREATE		= DATE 23-09-11  TIME 12:47:32;
MODIFIED	= DATE 23-09-15  TIME 11:37:04;
FILE_NAME	= _PICK_BO;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 2207;
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
   7:  PR[92:TempPick]=PR[4:LeftPickRef]    ;
   8:  PR[92,3:TempPick]=PR[92,3:TempPick]+R[285:PICK_COMPRESSION]    ;
   9:   ;
  10:  CALL _PICK_BOX_LEFT_EXCEPTIONS    ;
  11:   ;
  12:  DO[102:BLOW_OFF]=OFF ;
  13:   ;
  14:  RUN _BGT_MON_15018 ;
  15:   ;
  16:  SKIP CONDITION ERR_NUM=15018    ;
  17:   ;
  18:J PR[4:LeftPickRef] 100% CNT55 VOFFSET,VR[2] Offset,PR[13:pkBoxApp1] SkipJump,LBL[5]    ;
  19:  JMP LBL[10] ;
  20:   ;
  21:  LBL[5] ;
  22:L PR[4:LeftPickRef] 1000mm/sec CNT55 VOFFSET,VR[2] Offset,PR[13:pkBoxApp1]    ;
  23:   ;
  24:  LBL[10] ;
  25:  R[101:kill_15018_mon]=1    ;
  26:  DO[101:VAC_ON]=ON ;
  27:   ;
  28:  !  Temp Disable Collab ;
  29:  CALL -INST_PAUSE_CTSTP(1,0,0,0,0) ;
  30:   ;
  31:  SKIP CONDITION R[30:ResultantForce]>60 OR DI[101:VacSetPointOk]=ON    ;
  32:   ;
  33:L PR[92:TempPick] 15mm/sec FINE VOFFSET,VR[2] Skip,LBL[990],PR[10:skipLPOS]=LPOS    ;
  34:   ;
  35:  WAIT (DI[101:VacSetPointOk]) TIMEOUT,LBL[999] ;
  36:   ;
  37:  ! Get Position & Set Retreat ;
  38:  PR[10,3:skipLPOS]=PR[10,3:skipLPOS]+50    ;
  39:  PR[10,4:skipLPOS]=180    ;
  40:  PR[10,5:skipLPOS]=0    ;
  41:  //IF (R[5:LeftPalIndex]=22 OR R[5:LeftPalIndex]=23 OR R[5:LeftPalIndex]=38 OR R[5:LeftPalIndex]=39) THEN ;
  42:  //PR[10,1:skipLPOS]=PR[10,1:skipLPOS]+30    ;
  43:  //PR[10,2:skipLPOS]=PR[10,2:skipLPOS]+30    ;
  44:  //PR[10,3:skipLPOS]=PR[10,3:skipLPOS]+100    ;
  45:  //ENDIF ;
  46:L PR[10:skipLPOS] 150mm/sec CNT100 ACC60    ;
  47:   ;
  48:  !  Get Part ;
  49:  CALL -INST_PAYLOAD(2,0,2,.3) ;
  50:   ;
  51:  PR[10,3:skipLPOS]=PR[10,3:skipLPOS]+200    ;
  52:L PR[10:skipLPOS] 200mm/sec CNT5    ;
  53:   ;
  54:  CALL _TRANS_L_TO_R    ;
  55:   ;
  56:  END ;
  57:   ;
  58:  !------------------- ;
  59:  LBL[990:NoBox] ;
  60:  !------------------- ;
  61:  UALM[7] ;
  62:  END ;
  63:   ;
  64:  !------------------- ;
  65:  LBL[999:VacTimeout] ;
  66:  !------------------- ;
  67:  UALM[5] ;
  68:  JMP LBL[10] ;
  69:   ;
  70:  !********************** ;
  71:  !  Touchup ;
  72:  !********************** ;
  73:  UFRAME_NUM=2 ;
  74:  UTOOL_NUM=1 ;
  75:J PR[4:LeftPickRef] 100% FINE VOFFSET,VR[2]    ;
  76:   ;
/POS
/END
