/PROG  _BG_CPC_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 865;
CREATE		= DATE 21-11-24  TIME 14:08:32;
MODIFIED	= DATE 21-11-24  TIME 14:08:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1269;
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
   1:  !***************************** ;
   2:  !    Monitor CPC Zone ;
   3:  !***************************** ;
   4:  ! 0 = Safe ;
   5:  ! 1 = Unsafe ;
   6:  ! 2 = Unused ;
   7:  ! 3 = Disabled by Input ;
   8:  !***************************** ;
   9:  !--Get DCS CPC Status-- ;
  10:  R[1:Zone3_Status]=($DCSS_PSTAT.$STATUS_CPC[3]) ;
  11:   ;
  12:  !--Zone is Safe-- ;
  13:  IF (R[1:Zone3_Status]=0) THEN ;
  14:  F[5:Zone3Safe]=(ON) ;
  15:  ELSE ;
  16:  F[5:Zone3Safe]=(OFF) ;
  17:  ENDIF ;
  18:   ;
  19:  !--Zone is Unsafe-- ;
  20:  IF (R[1:Zone3_Status]=1) THEN ;
  21:  F[6:Zone3Unsafe]=(ON) ;
  22:  ELSE ;
  23:  F[6:Zone3Unsafe]=(OFF) ;
  24:  ENDIF ;
  25:   ;
  26:  !--Zone is Disabled-- ;
  27:  IF (R[1:Zone3_Status]=3) THEN ;
  28:  F[7:Zone3Disabled]=(ON) ;
  29:  ELSE ;
  30:  F[7:Zone3Disabled]=(OFF) ;
  31:  ENDIF ;
  32:  !---------------------------- ;
/POS
/END
