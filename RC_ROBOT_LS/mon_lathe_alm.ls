/PROG  MON_LATHE_ALM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR ALARM";
PROG_SIZE	= 269;
CREATE		= DATE 22-07-07  TIME 14:29:40;
MODIFIED	= DATE 23-04-25  TIME 06:09:06;
FILE_NAME	= MON_OKUM;
VERSION		= 0;
LINE_COUNT	= 3;
MEMORY_SIZE	= 645;
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
   1:  CALL MACH_MSG(2) ;
   2:  UALM[5] ;
   3:  MONITOR MON_LATHE ;
/POS
/END