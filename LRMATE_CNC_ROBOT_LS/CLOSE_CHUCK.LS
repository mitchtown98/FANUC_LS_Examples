/PROG  CLOSE_CHUCK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "macroCNC chuck";
PROG_SIZE	= 189;
CREATE		= DATE 19-11-15  TIME 13:23:02;
MODIFIED	= DATE 19-11-15  TIME 13:23:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 553;
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
   1:  DO[124:CloseChuck]=PULSE,0.1sec ;
   2:  WAIT R[15] ;
/POS
/END
