/PROG  _GRIP_OPEN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Grip Macro";
PROG_SIZE	= 370;
CREATE		= DATE 22-11-19  TIME 16:56:28;
MODIFIED	= DATE 22-12-03  TIME 01:04:24;
FILE_NAME	= _GO_HOME;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 714;
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
/MN
   1:  !************************ ;
   2:  ! GripperOpen Sub         ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  RO[2:gripperOpen]=ON ;
   7:  WAIT R[19] ;
/POS
/END
