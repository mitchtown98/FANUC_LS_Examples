/PROG  MAINT_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 695;
CREATE		= DATE 21-09-14  TIME 13:15:48;
MODIFIED	= DATE 22-06-02  TIME 09:18:24;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1195;
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
   5:  CALL FAULT_MESSAGE('Robot not safe to move to','Shipping Position.','Grippers must be empty.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  JMP LBL[9999] ;
  10:   ;
  11:  LBL[3] ;
  12:  JMP LBL[9999] ;
  13:   ;
  14:  LBL[4] ;
  15:  JMP LBL[9999] ;
  16:   ;
  17:  LBL[5] ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[6] ;
  21:  JMP LBL[9999] ;
  22:   ;
  23:  LBL[7] ;
  24:  JMP LBL[9999] ;
  25:   ;
  26:  LBL[8] ;
  27:  JMP LBL[9999] ;
  28:   ;
  29:  LBL[9] ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[10] ;
  33:  JMP LBL[9999] ;
  34:   ;
  35:  LBL[9999:END] ;
/POS
/END
