/PROG  _GET_JOINT_ANGLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 243;
CREATE		= DATE 16-11-29  TIME 10:58:58;
MODIFIED	= DATE 16-11-29  TIME 10:59:12;
FILE_NAME	= _GET_J3_;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 607;
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
   1:  PR[6]=JPOS    ;
   2:  R[AR[2]]=PR[6,AR[1]]    ;
/POS
/END
