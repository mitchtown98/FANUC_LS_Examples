/PROG  MESSAGE12	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USER MESSAGE";
PROG_SIZE	= 325;
CREATE		= DATE 22-05-12  TIME 09:39:56;
MODIFIED	= DATE 22-05-24  TIME 09:09:44;
FILE_NAME	= MESSAGE1;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 705;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  CALL MESSAGE20    ;
   2:  CALL FAULT_MESSAGE('New part active is on for','the B side pallet. Cycle','start to continue.') ;
/POS
/END