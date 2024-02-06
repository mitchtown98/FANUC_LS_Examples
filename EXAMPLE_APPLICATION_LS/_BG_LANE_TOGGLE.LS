/PROG  _BG_LANE_TOGGLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 698;
CREATE		= DATE 22-12-22  TIME 08:52:52;
MODIFIED	= DATE 23-01-17  TIME 00:19:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 958;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

LINE_TRACK;
  LINE_TRACK_SCHEDULE_NUMBER      : 0;
  LINE_TRACK_BOUNDARY_NUMBER      : 0;
  CONTINUE_TRACK_AT_PROG_END      : TRUE;

/MN
   1:  !************************ ;
   2:  ! Toggle Lane For Outfeed ;
   3:  !    Date: 12/22/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:   ;
   7:  F[9:scanFlag]=(OFF) ;
   8:   ;
   9:  !  OneShot From PLC ;
  10:  IF (DO[307:toggleLane]=ON AND F[10:onsFlag]=OFF),F[9:scanFlag]=(ON) ;
  11:   ;
  12:  F[10:onsFlag]=(F[222]) ;
  13:   ;
  14:  !  Toggle Lane Side per ;
  15:  !   Request ;
  16:  IF (F[9:scanFlag]) THEN ;
  17:   ;
  18:  IF (F[11:laneToggle]=OFF) THEN ;
  19:   ;
  20:  F[11:laneToggle]=(ON) ;
  21:   ;
  22:  ELSE ;
  23:   ;
  24:  F[11:laneToggle]=(OFF) ;
  25:  ENDIF ;
  26:   ;
  27:  ENDIF ;
  28:   ;
/POS
/END
