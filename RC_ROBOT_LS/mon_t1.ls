/PROG  MON_T1	  Cond
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MONITOR TOOL";
PROG_SIZE	= 293;
CREATE		= DATE 21-02-22  TIME 09:56:30;
MODIFIED	= DATE 21-02-22  TIME 09:56:30;
FILE_NAME	= MON_PRES;
VERSION		= 0;
LINE_COUNT	= 2;
MEMORY_SIZE	= 665;
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
   1:  WHEN DO[116:T1 OD GRIP]=ON AND DO[117:T1 ID GRIP]=OFF AND RI[2:T1 FULLY CLOSED]=ON,CALL MON_T1ALM ;
   2:  WHEN DO[116:T1 OD GRIP]=OFF AND DO[117:T1 ID GRIP]=ON AND RI[1:T1 FULLY OPENED]=ON,CALL MON_T1ALM ;
/POS
/END
