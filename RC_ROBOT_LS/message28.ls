/PROG  MESSAGE28	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USER MESSAGE";
PROG_SIZE	= 281;
CREATE		= DATE 23-11-17  TIME 07:20:06;
MODIFIED	= DATE 23-11-17  TIME 07:23:52;
FILE_NAME	= MESSAGE2;
VERSION		= 0;
LINE_COUNT	= 3;
MEMORY_SIZE	= 657;
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
   2:  CALL FAULT_MESSAGE('Machine not in auto') ;
   3:   ;
/POS
/END
