/PROG  BGLOGIC_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 387;
CREATE		= DATE 22-05-20  TIME 08:59:38;
MODIFIED	= DATE 22-06-02  TIME 09:10:22;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 867;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  R[44:ALARM NUMBER]=AR[1]    ;
   2:  JMP LBL[R[44]] ;
   3:   ;
   4:  LBL[1] ;
   5:  CALL FAULT_MESSAGE('Bglogic is not running.','Turn on all Bglogic programs','to continue.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[9999:END] ;
/POS
/END
