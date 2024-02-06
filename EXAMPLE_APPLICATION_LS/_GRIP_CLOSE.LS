/PROG  _GRIP_CLOSE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Grip Macro";
PROG_SIZE	= 374;
CREATE		= DATE 22-11-26  TIME 16:37:12;
MODIFIED	= DATE 22-12-03  TIME 01:04:34;
FILE_NAME	= _GRIP_OP;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 718;
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
   2:  ! GripperClose Sub         ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  RO[1:gripperClose]=ON ;
   7:  WAIT R[19] ;
/POS
/END
