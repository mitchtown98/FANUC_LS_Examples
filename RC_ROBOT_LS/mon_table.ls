/PROG  MON_TABLE	  Cond
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MON MACH SAFE IO";
PROG_SIZE	= 243;
CREATE		= DATE 21-10-29  TIME 12:51:34;
MODIFIED	= DATE 21-10-29  TIME 13:40:20;
FILE_NAME	= MON_OKUM;
VERSION		= 0;
LINE_COUNT	= 1;
MEMORY_SIZE	= 619;
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
   1:  WHEN DO[177:COLLISION]=ON AND DO[137:T2 FINISHED PART]=ON,CALL MON_TABLE_ALM ;
/POS
/END