/PROG  _INIT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sub Routine";
PROG_SIZE	= 590;
CREATE		= DATE 22-12-01  TIME 22:22:58;
MODIFIED	= DATE 23-01-17  TIME 01:33:20;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 938;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 6,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************ ;
   2:  !  InitSubRoutine         ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:   ;
   7:  $VR[1].$OFFSET.$X=0 ;
   8:  $VR[1].$OFFSET.$Y=0 ;
   9:  $VR[1].$OFFSET.$R=0 ;
  10:  R[17:pkInfCntr]=0    ;
  11:  DO[210:okToIndex]=OFF ;
  12:  DO[216:pkInfRecv]=OFF ;
  13:  DO[223:goHomeRecv]=OFF ;
  14:  DO[224:plTesterRecv]=OFF ;
/POS
/END
