/PROG  MON_T1ALM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR ALARM";
PROG_SIZE	= 239;
CREATE		= DATE 17-03-16  TIME 14:32:38;
MODIFIED	= DATE 21-01-25  TIME 10:54:52;
FILE_NAME	= MON_ALAR;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 611;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  CALL TOOL_MSG(20) ;
   2:  UALM[1] ;
/POS
/END
