/PROG  BG_AXIS_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Background Logic";
PROG_SIZE	= 1633;
CREATE		= DATE 21-09-09  TIME 19:17:46;
MODIFIED	= DATE 21-10-05  TIME 13:38:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
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
/POS
/END
