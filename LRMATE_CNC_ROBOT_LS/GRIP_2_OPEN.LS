/PROG  GRIP_2_OPEN	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Grip2Open";
PROG_SIZE	= 240;
CREATE		= DATE 20-01-10  TIME 11:06:42;
MODIFIED	= DATE 20-01-10  TIME 11:06:42;
FILE_NAME	= T_GRIPOP;
VERSION		= 0;
LINE_COUNT	= 5;
MEMORY_SIZE	= 592;
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
/MN
   1:  --dn:pgri[3] ;
   2:  RO[3]=ON ;
   3:  WAIT R[15] ;
   4:   ;
   5:   ;
/POS
/END
