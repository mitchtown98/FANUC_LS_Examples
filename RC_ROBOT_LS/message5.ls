/PROG  MESSAGE5	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USER MESSAGE";
PROG_SIZE	= 357;
CREATE		= DATE 21-06-30  TIME 14:48:42;
MODIFIED	= DATE 22-05-17  TIME 09:35:58;
FILE_NAME	= MESSAGE4;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 737;
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
   2:  CALL FAULT_MESSAGE('Cycle Stop is now active.','Robot will finish its current','operation and go to home','position then pause.') ;
/POS
/END
