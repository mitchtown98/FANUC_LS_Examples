/PROG  _AXISMON
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Position Monitor";
PROG_SIZE	= 1068;
CREATE		= DATE 21-03-19  TIME 11:14:44;
MODIFIED	= DATE 21-03-19  TIME 11:14:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1476;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/MN
   1:  !***************************** ;
   2:  !Monitor Current Robot Position ;
   3:  !***************************** ;
   4:  !---------------------------- ;
   5:  !Turn On Machine Angles Outfeed ;
   6:  $SCR_GRP[1].$M_POS_ENB=(ON) ;
   7:  !Get Joint Angles ;
   8:  R[101:Jnt 1 Mach Angle]=$SCR_GRP[1].$MCH_ANG[1] ;
   9:  R[102:Jnt 2 Mach Angle]=$SCR_GRP[1].$MCH_ANG[2] ;
  10:  R[103:Jnt 3 Mach Angle]=$SCR_GRP[1].$MCH_ANG[3] ;
  11:  R[104:Jnt 4 Mach Angle]=$SCR_GRP[1].$MCH_ANG[4] ;
  12:  R[105:Jnt 5 Mach Angle]=$SCR_GRP[1].$MCH_ANG[5] ;
  13:  R[106:Jnt 6 Mach Angle]=$SCR_GRP[1].$MCH_ANG[6] ;
  14:  !---------------------------- ;
  15:  !Get Axis Positions ;
  16:  R[111:Axis1 X Position]=$DIAG_GRP[1].$CUR_TCP_X ;
  17:  R[112:Axis2 Y Position]=$DIAG_GRP[1].$CUR_TCP_Y ;
  18:  R[113:Axis3 Z Position]=$DIAG_GRP[1].$CUR_TCP_Z ;
  19:  R[114:Axis4 W Position]=$DIAG_GRP[1].$CUR_TCP_W ;
  20:  R[115:Axis5 P Position]=$DIAG_GRP[1].$CUR_TCP_P ;
  21:  R[116:Axis6 R Position]=$DIAG_GRP[1].$CUR_TCP_R ;
  22:  !---------------------------- ;
  23:  F[2]=(ON) ;
/POS
/END
