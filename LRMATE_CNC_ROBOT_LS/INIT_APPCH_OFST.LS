/PROG  INIT_APPCH_OFST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Initialize Offst";
PROG_SIZE	= 279;
CREATE		= DATE 19-11-15  TIME 13:34:40;
MODIFIED	= DATE 19-11-15  TIME 13:34:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 623;
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
   1:  PR[5,1:APP LOAD PT]=0    ;
   2:  PR[5,2:APP LOAD PT]=0    ;
   3:  PR[5,3:APP LOAD PT]=0    ;
   4:   ;
   5:  PR[6,1:APP PICK PT]=0    ;
   6:  PR[6,2:APP PICK PT]=0    ;
   7:  PR[6,3:APP PICK PT]=0    ;
/POS
/END
