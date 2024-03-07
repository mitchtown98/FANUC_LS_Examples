/PROG  CHUCK_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 1107;
CREATE		= DATE 21-09-14  TIME 13:09:28;
MODIFIED	= DATE 22-06-02  TIME 09:11:40;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1507;
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
   5:  CALL FAULT_MESSAGE('Main spindle chuck status fault.','Chuck open and close signals','are off. Inspect chuck sensors.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('Main spindle chuck status fault.','Chuck open sensor did not','come on.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL FAULT_MESSAGE('Main spindle chuck status fault.','Chuck close sensor did not','come on.') ;
  14:  JMP LBL[9999] ;
  15:   ;
  16:  LBL[4] ;
  17:  CALL FAULT_MESSAGE('Sub spindle chuck status fault.','Chuck open and close signals','are off. Inspect chuck sensors.') ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[5] ;
  21:  CALL FAULT_MESSAGE('Sub spindle chuck status fault.','Chuck open sensor did not','come on.') ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[6] ;
  25:  CALL FAULT_MESSAGE('Sub spindle chuck status fault.','Chuck close sensor did not','come on.') ;
  26:  JMP LBL[9999] ;
  27:   ;
  28:  LBL[9999:END] ;
/POS
/END
