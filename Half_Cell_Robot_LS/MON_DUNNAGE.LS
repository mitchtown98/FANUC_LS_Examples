/PROG  MON_DUNNAGE	  Cond
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR MAGNET";
PROG_SIZE	= 221;
CREATE		= DATE 18-02-27  TIME 01:31:48;
MODIFIED	= DATE 18-02-27  TIME 03:28:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 1;
MEMORY_SIZE	= 597;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  WHEN RI[1:OFF:TOOL 1 OPENED]=OFF,CALL ALRM_DUNNAGE ;
/POS
/END
