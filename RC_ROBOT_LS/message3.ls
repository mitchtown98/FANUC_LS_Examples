/PROG  MESSAGE3	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USER MESSAGE";
PROG_SIZE	= 345;
CREATE		= DATE 21-04-28  TIME 14:02:16;
MODIFIED	= DATE 22-05-17  TIME 09:35:32;
FILE_NAME	= MESSAGE2;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 725;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  CALL MESSAGE20    ;
   2:  CALL FAULT_MESSAGE('Table can't be locked','while robot is not at home.','Send robot to Home Position','then retry.') ;
/POS
/END