/PROG  T1_UNGRIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOOL UNGRIP";
PROG_SIZE	= 875;
CREATE		= DATE 21-02-22  TIME 09:56:30;
MODIFIED	= DATE 22-05-23  TIME 15:38:32;
FILE_NAME	= T1_OPEN;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1415;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  LBL[1:START] ;
   2:  MONITOR END MON_T1 ;
   3:  $WAITTMOUT=300 ;
   4:  IF DO[116:T1 OD GRIP]=ON AND DO[117:T1 ID GRIP]=OFF,JMP LBL[100] ;
   5:  IF DO[116:T1 OD GRIP]=OFF AND DO[117:T1 ID GRIP]=ON,JMP LBL[200] ;
   6:  JMP LBL[9990] ;
   7:   ;
   8:  LBL[100:OD GRIP] ;
   9:  RO[2:T1 CLOSE]=OFF ;
  10:  RO[1:T1 OPEN]=ON ;
  11:  WAIT RI[1:T1 FULLY OPENED]=ON TIMEOUT,LBL[9991] ;
  12:  JMP LBL[9999] ;
  13:   ;
  14:  LBL[200:ID GRIP] ;
  15:  RO[1:T1 OPEN]=OFF ;
  16:  RO[2:T1 CLOSE]=ON ;
  17:  WAIT RI[2:T1 FULLY CLOSED]=ON TIMEOUT,LBL[9992] ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[9990:GRIPPER FAULT] ;
  21:  CALL TOOL_MSG(1) ;
  22:  UALM[1] ;
  23:  JMP LBL[1] ;
  24:   ;
  25:  LBL[9991:GRIPPER FAULT] ;
  26:  CALL TOOL_MSG(2) ;
  27:  UALM[1] ;
  28:  JMP LBL[1] ;
  29:   ;
  30:  LBL[9992:GRIPPER FAULT] ;
  31:  CALL TOOL_MSG(3) ;
  32:  UALM[1] ;
  33:  JMP LBL[1] ;
  34:   ;
  35:  LBL[9999:END] ;
  36:  CALL PAYLOAD    ;
  37:  R[900:TOOL 1 COUNT]=R[900:TOOL 1 COUNT]-1    ;
/POS
/END