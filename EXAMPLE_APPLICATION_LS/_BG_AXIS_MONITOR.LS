/PROG  _BG_AXIS_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Background Logic";
PROG_SIZE	= 1599;
CREATE		= DATE 22-11-27  TIME 20:05:20;
MODIFIED	= DATE 23-01-07  TIME 05:48:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2039;
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
   7:   ;
   8:  !Get Joint Angles ;
   9:  R[20:J1]=$SCR_GRP[1].$MCH_ANG[1] ;
  10:  R[21:J2]=$SCR_GRP[1].$MCH_ANG[2] ;
  11:  R[22:J3]=$SCR_GRP[1].$MCH_ANG[3] ;
  12:  R[23:J4]=$SCR_GRP[1].$MCH_ANG[4] ;
  13:  R[24:J5]=$SCR_GRP[1].$MCH_ANG[5] ;
  14:  R[25:J6]=$SCR_GRP[1].$MCH_ANG[6] ;
  15:   ;
  16:  !---------------------------- ;
  17:  !Get Axis Positions ;
  18:  R[26:X]=$DIAG_GRP[1].$CUR_TCP_X ;
  19:  R[27:Y]=$DIAG_GRP[1].$CUR_TCP_Y ;
  20:  R[28:Z]=$DIAG_GRP[1].$CUR_TCP_Z ;
  21:  R[29:W]=$DIAG_GRP[1].$CUR_TCP_W ;
  22:  R[30:P]=$DIAG_GRP[1].$CUR_TCP_P ;
  23:  R[31:R]=$DIAG_GRP[1].$CUR_TCP_R ;
  24:   ;
  25:  !  Display OVR at 100% ;
  26:  !   OVR speed set by R[] ;
  27:  //IF (!SO[7:TP enabled]) THEN ;
  28:  //$MCR.$GENOVERRIDE=100 ;
  29:  //ENDIF ;
  30:  //    ;
  31:  //$MCR_GRP[1].$PRGOVERRIDE=R[10:prgOvr] ;
  32:   ;
  33:  $SCR.$SFJOGOVLIM=R[8:sfJog] ;
  34:  $SCR.$SFRUNOVLIM=R[9:sfRun] ;
  35:   ;
  36:  !  Monitor CPC ;
  37:  IF (DI[270:transient] AND !DO[300:refHome]) THEN ;
  38:   ;
  39:  DO[237:transient->plc]=ON ;
  40:   ;
  41:  ELSE ;
  42:   ;
  43:  DO[237:transient->plc]=OFF ;
  44:   ;
  45:  ENDIF ;
  46:   ;
  47:  IF (DO[300:refHome]) THEN ;
  48:   ;
  49:  DO[232:atHome->plc]=ON ;
  50:   ;
  51:  ELSE ;
  52:   ;
  53:  DO[232:atHome->plc]=OFF ;
  54:   ;
  55:  ENDIF ;
/POS
/END
