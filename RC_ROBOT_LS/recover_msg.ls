/PROG  RECOVER_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 899;
CREATE		= DATE 21-04-30  TIME 15:47:40;
MODIFIED	= DATE 22-06-02  TIME 08:53:44;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1391;
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
   5:  CALL FAULT_MESSAGE('Recovery not safe. Robot','has been manually jogged.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('Recovery not safe. Robot','and machine are both gripping','the part. Either ungrip the','machine or the robot.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL FAULT_MESSAGE('Recover not safe. Invalid','value in data register 40.') ;
  14:  JMP LBL[9999] ;
  15:   ;
  16:  LBL[4] ;
  17:  JMP LBL[9999] ;
  18:   ;
  19:  LBL[5] ;
  20:  JMP LBL[9999] ;
  21:   ;
  22:  LBL[6] ;
  23:  JMP LBL[9999] ;
  24:   ;
  25:  LBL[7] ;
  26:  JMP LBL[9999] ;
  27:   ;
  28:  LBL[8] ;
  29:  JMP LBL[9999] ;
  30:   ;
  31:  LBL[9] ;
  32:  JMP LBL[9999] ;
  33:   ;
  34:  LBL[10] ;
  35:  JMP LBL[9999] ;
  36:   ;
  37:  LBL[9999:END] ;
/POS
/END
