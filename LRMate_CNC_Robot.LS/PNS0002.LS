/PROG  PNS0002
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MainRobotUnload";
PROG_SIZE	= 465;
CREATE		= DATE 19-12-13  TIME 11:18:00;
MODIFIED	= DATE 20-01-07  TIME 18:45:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 913;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !UNLOAD CNC CHUCK AND ROBOT ;
   2:  !CREATED 12/13/19 ;
   3:   ;
   4:  CALL INIT    ;
   5:   ;
   6:  OpenChuck    ;
   7:   ;
   8:  IF DO[122:InMachine]=ON,CALL MOVE_SAFE ;
   9:   ;
  10:  GoPerch    ;
  11:   ;
  12:  Wait    ;
  13:   ;
  14:  CALL CHK_PART_PRES    ;
  15:   ;
  16:  IF R[11:PART PRES T1]=1,CALL LOAD ;
  17:   ;
  18:  GoPerch    ;
  19:   ;
  20:  OpenChuck    ;
  21:   ;
  22:  LBL[20] ;
/POS
/END
