/PROG  ROBOT_SHIPPING
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "SHIPPING POS";
PROG_SIZE	= 181;
CREATE		= DATE 21-03-26  TIME 09:14:04;
MODIFIED	= DATE 21-03-26  TIME 09:14:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 1;
MEMORY_SIZE	= 549;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:J PR[250] 100% FINE    ;
/POS
/END
