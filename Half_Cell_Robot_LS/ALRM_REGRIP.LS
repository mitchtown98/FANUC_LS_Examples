/PROG  ALRM_REGRIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 329;
CREATE		= DATE 18-05-17  TIME 10:54:04;
MODIFIED	= DATE 18-05-17  TIME 10:55:46;
FILE_NAME	= ALRM_GRI;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 677;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  DO[80:OFF:RAW UP IN T1]=PULSE,1.0sec ;
   2:  MESSAGE[...] ;
   3:  MESSAGE[PRESS CYCLE START TO] ;
   4:  MESSAGE[CONTINUE.] ;
   5:  MESSAGE[...] ;
   6:  UALM[6] ;
/POS
/END
