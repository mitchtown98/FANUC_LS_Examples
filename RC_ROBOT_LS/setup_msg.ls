/PROG  SETUP_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 933;
CREATE		= DATE 21-08-26  TIME 08:01:28;
MODIFIED	= DATE 21-08-26  TIME 14:45:48;
FILE_NAME	= RECOVER_;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1397;
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
   5:  CALL FAULT_MESSAGE('Part length has a value of zero.','Part setup must be run or','a value for part length must','be put into HMI.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('No door type has been selected.','Select door type from HMI.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  JMP LBL[9999] ;
  14:   ;
  15:  LBL[4] ;
  16:  JMP LBL[9999] ;
  17:   ;
  18:  LBL[5] ;
  19:  JMP LBL[9999] ;
  20:   ;
  21:  LBL[6] ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[7] ;
  25:  JMP LBL[9999] ;
  26:   ;
  27:  LBL[8] ;
  28:  JMP LBL[9999] ;
  29:   ;
  30:  LBL[9] ;
  31:  JMP LBL[9999] ;
  32:   ;
  33:  LBL[10] ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[9999:END] ;
  37:   ;
  38:  IF (DO[29:UALM MESSAGE ACTIVE]) THEN ;
  39:  DO[29:UALM MESSAGE ACTIVE]=OFF ;
  40:  WAIT    .50(sec) ;
  41:  DO[29:UALM MESSAGE ACTIVE]=ON ;
  42:  ELSE ;
  43:  DO[29:UALM MESSAGE ACTIVE]=ON ;
  44:  ENDIF ;
/POS
/END
