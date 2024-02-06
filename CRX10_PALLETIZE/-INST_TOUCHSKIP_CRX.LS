/PROG  -INST_TOUCHSKIP_CRX
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1553;
CREATE		= DATE 21-09-24  TIME 14:00:40;
MODIFIED	= DATE 21-09-24  TIME 14:00:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 66;
MEMORY_SIZE	= 2097;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000001;
LOCAL_REGISTERS	= 2,1,0;
/APPL
/APPL
/MN
   1:  LBL[1000] ;
   2:  !check if Q-STOP can be used ;
   3:  IF $SRVQSTP_DSB[1]<>0,JMP LBL[999] ;
   4:   ;
   5:  PR[10001]=AR[2]    ;
   6:  R[10001]=AR[3]    ;
   7:  R[10002]=0    ;
   8:  CALL -INST_TOUCHSKIP_CRX_CFG(AR[4],AR[5]) ;
   9:  !for SKIP status ;
  10:  IF (AR[7]>0) THEN ;
  11:  R[AR[7]]=0    ;
  12:  ENDIF ;
  13:  !for FORCE status ;
  14:  IF (AR[8]>0) THEN ;
  15:  R[AR[8]]=0    ;
  16:  ENDIF ;
  17:   ;
  18:  !check Motion Format ;
  19:  IF (AR[6]=0) THEN ;
  20:  !Linear Motion ;
  21:  IF (AR[10]=0) THEN ;
  22:  !Joint Save Type ;
  23:L PR[10001] R[10001]mm/sec FINE Skip,LBL[1],PR[10001]=JPOS    ;
  24:  ELSE ;
  25:  !Cartesian Save Type ;
  26:L PR[10001] R[10001]mm/sec FINE Skip,LBL[1],PR[10001]=LPOS    ;
  27:  ENDIF ;
  28:  ELSE ;
  29:  !Joint Motion ;
  30:  IF (AR[10]=0) THEN ;
  31:  !Joint Save Type ;
  32:J PR[10001] R[10001]% FINE Skip,LBL[1],PR[10001]=JPOS    ;
  33:  ELSE ;
  34:  !Cartesian Save Type ;
  35:J PR[10001] R[10001]% FINE Skip,LBL[1],PR[10001]=LPOS    ;
  36:  ENDIF ;
  37:  ENDIF ;
  38:  !for SKIP status ;
  39:  IF (AR[7]>0) THEN ;
  40:  R[AR[7]]=1    ;
  41:  ENDIF ;
  42:  !for FORCE status ;
  43:  IF ((AR[8]>0) AND ($DCSS_CLLB[1].$CRX_FRCHIST<>0)) THEN ;
  44:  R[AR[8]]=1    ;
  45:  ENDIF ;
  46:  !for Stopping position ;
  47:  IF (AR[9]>0) THEN ;
  48:  PR[AR[9]]=PR[10001]    ;
  49:  R[10002]=1    ;
  50:  ENDIF ;
  51:  LBL[1] ;
  52:  IF ((AR[9]>0) AND (R[10002]=0)) THEN ;
  53:  IF (AR[10]=0) THEN ;
  54:  !Joint Save Type ;
  55:  PR[AR[9]]=JPOS    ;
  56:  ELSE ;
  57:  !Cartesian Save Type ;
  58:  PR[AR[9]]=LPOS    ;
  59:  ENDIF ;
  60:  ENDIF ;
  61:  END ;
  62:   ;
  63:  LBL[999] ;
  64:  !post the alarm ;
  65:  CALL IPL_FANUC_TOUCHSKIP_CRX_ERPOST    ;
  66:  JMP LBL[1000] ;
/POS
/END
