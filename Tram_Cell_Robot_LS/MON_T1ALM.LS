/PROG  MON_T1ALM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR ALARM";
PROG_SIZE	= 239;
CREATE		= DATE 17-03-16  TIME 14:32:38;
MODIFIED	= DATE 17-04-05  TIME 14:16:08;
FILE_NAME	= MON_ALAR;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 611;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  CALL GRIP_MSG(26) ;
   2:  UALM[R[111]] ;
/POS
/END
