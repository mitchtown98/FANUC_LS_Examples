/PROG  MON_OP40	  Cond
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR MACHINE";
PROG_SIZE	= 237;
CREATE		= DATE 20-02-06  TIME 06:34:48;
MODIFIED	= DATE 20-02-06  TIME 06:41:20;
FILE_NAME	= MON_OP20;
VERSION		= 0;
LINE_COUNT	= 1;
MEMORY_SIZE	= 613;
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
/MN
   1:  WHEN DO[210:OFF:OK2 ROBOT ALARM]=OFF,CALL MON_OP40ALM ;
/POS
/END
