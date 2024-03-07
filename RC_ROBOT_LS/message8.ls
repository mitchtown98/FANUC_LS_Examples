/PROG  MESSAGE8	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USER MESSAGE";
PROG_SIZE	= 421;
CREATE		= DATE 21-07-15  TIME 15:23:12;
MODIFIED	= DATE 22-05-17  TIME 09:36:28;
FILE_NAME	= MESSAGE7;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 801;
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
   2:  CALL FAULT_MESSAGE('A part setup button was','pressed while the machine','side is being serviced. Make','sure all parts on machine','side of the table have been','processed prior to changeover.') ;
/POS
/END
