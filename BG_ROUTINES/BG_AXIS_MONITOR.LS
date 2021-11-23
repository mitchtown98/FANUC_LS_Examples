/PROG  BG_AXIS_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Background Logic";
PROG_SIZE	= 1633;
CREATE		= DATE 21-09-09  TIME 19:17:46;
MODIFIED	= DATE 21-10-05  TIME 13:38:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 63;
MEMORY_SIZE	= 2009;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !***************************** ;
   2:  !Monitor Current Robot Position ;
   3:  !***************************** ;
   4:  !---------------------------- ;
   5:  !Turn On Machine Angles Outfeed ;
   6:  $SCR_GRP[1].$M_POS_ENB=(ON) ;
   7:  !Get Joint Angles ;
   8:  R[171:J1]=$SCR_GRP[1].$MCH_ANG[1] ;
   9:  R[172:J2]=$SCR_GRP[1].$MCH_ANG[2] ;
  10:  R[173:J3]=$SCR_GRP[1].$MCH_ANG[3] ;
  11:  R[174:J4]=$SCR_GRP[1].$MCH_ANG[4] ;
  12:  R[175:J5]=$SCR_GRP[1].$MCH_ANG[5] ;
  13:  R[176:J6]=$SCR_GRP[1].$MCH_ANG[6] ;
  14:  !---------------------------- ;
  15:  !Get Axis Positions ;
  16:  R[181:X_Pos]=$DIAG_GRP[1].$CUR_TCP_X ;
  17:  R[182:Y_Pos]=$DIAG_GRP[1].$CUR_TCP_Y ;
  18:  R[183:Z_Pos]=$DIAG_GRP[1].$CUR_TCP_Z ;
  19:  R[184:W_Pos]=$DIAG_GRP[1].$CUR_TCP_W ;
  20:  R[185:P_Pos]=$DIAG_GRP[1].$CUR_TCP_P ;
  21:  R[186:R_Pos]=$DIAG_GRP[1].$CUR_TCP_R ;
  22:  !---------------------------- ;
  23:   ;
  23:   ;
  23:  !***************************** ;
  23:  !    Monitor CPC Zone          ;
  23:  !***************************** ;
  23:  ! 0 = Safe                     ;
  23:  ! 1 = Unsafe                   ;
  23:  ! 2 = Unused                   ;
  23:  ! 3 = Disabled by Input        ;
  23:  !***************************** ;
  23:  ;
  24:  R[1:Zone3_Status]=($DCSS_PSTAT.$STATUS_CPC[3]) ;
  25:  !--Zone is Safe-- ;
  26:  IF (R[1:Zone3_Status]=0) THEN ;
  27:  F[5:Zone3Safe]=(ON) ;
  28:  ELSE ;
  29:  F[5:Zone3Safe]=(OFF) ;
  30:  ENDIF ;
  31:   ; 
  32:  !--Zone is Unsafe-- ;
  33:  IF (R[1:Zone3_Status]=1) THEN ;
  34:  F[6:Zone3Unsafe]=(ON) ;
  35:  ELSE ;
  36:  F[6:Zone3Unsafe]=(OFF) ;
  37:  ENDIF ;
  38:   ;
  39:  !--Zone is Disabled-- ;
  40:  IF (R[1:Zone3_Status]=3) THEN ;
  41:  F[7:Zone3Disabled]=(ON) ;
  42:  ELSE ;
  43:  F[7:Zone3Disabled]=(OFF) ;
  44:  ENDIF ;
  22:  !---------------------------- ;
  45:   ;
  46:   ;
  47:   ;
  48:   ;
  49:   ;
  50:   ;
  51:   ;
  52:   ;
  53:   ;
  54:   ;
  55:   ;
  56:   ;
  57:   ;
  58:   ;
  59:   ;
  60:   ;
  61:   ;
  62:   ;
  63:   ;
/POS
/END
