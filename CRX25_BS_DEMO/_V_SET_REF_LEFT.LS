/PROG  _V_SET_REF_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 818;
CREATE		= DATE 23-09-13  TIME 14:25:02;
MODIFIED	= DATE 23-09-13  TIME 14:59:28;
FILE_NAME	= _V_CAL;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1326;
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

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  PR[4,4:LeftPickRef]=180    ;
   5:  PR[4,5:LeftPickRef]=0    ;
   6:J PR[4:LeftPickRef] 100% FINE    ;
   7:  PAUSE ;
   8:  !align box center to cups ;
   9:   ;
  10:  UTOOL_NUM=9 ;
  11:  PR[90:TempCamPos]=LPOS-LPOS    ;
  12:  PR[90,1:TempCamPos]=310    ;
  13:  PR[90,2:TempCamPos]=570    ;
  14:  PR[90,3:TempCamPos]=240    ;
  15:  PR[90,4:TempCamPos]=0    ;
  16:  PR[90,5:TempCamPos]=0    ;
  17:  PR[90,6:TempCamPos]=0    ;
  18:J PR[90:TempCamPos] 50% FINE    ;
  19:  CALL IRVBKLSH(1) ;
  20:  WAIT    .50(sec) ;
  21:  VISION RUN_FIND 'FINDLEFTBOX'    ;
  22:  VISION SET_REFERENCE 'FINDLEFTBOX' ;
  23:   ;
  24:  LBL[99] ;
  25:  PAUSE ;
  26:  UTOOL_NUM=1 ;
  27:  !bump and test pick ;
  28:  VISION RUN_FIND 'FINDLEFTBOX'    ;
  29:  VISION GET_OFFSET 'FINDLEFTBOX' VR[2] JMP LBL[99] ;
  30:J PR[4:LeftPickRef] 50% CNT5 Offset,PR[13:pkBoxApp1] VOFFSET,VR[2]    ;
  31:L PR[4:LeftPickRef] 250mm/sec FINE VOFFSET,VR[2]    ;
  32:  PAUSE ;
  33:L PR[4:LeftPickRef] 500mm/sec CNT5 Offset,PR[13:pkBoxApp1] VOFFSET,VR[2]    ;
/POS
/END
