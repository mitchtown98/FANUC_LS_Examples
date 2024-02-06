/PROG  _MOVE_TO_HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move SubRoutine";
PROG_SIZE	= 670;
CREATE		= DATE 23-09-05  TIME 15:10:54;
MODIFIED	= DATE 23-09-14  TIME 12:58:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 954;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : TRUE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !      Home Routine           ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:  UTOOL_NUM=1 ;
   9:  UFRAME_NUM=0 ;
  10:   ;
  11:  PR[99]=LPOS    ;
  12:   ;
  13:  IF (PR[99,3]<(-67)) THEN ;
  14:  PR[99,3]=(-67)    ;
  15:  PR[99,4]=180    ;
  16:  PR[99,5]=0    ;
  17:  WAIT   1.00(sec) ;
  18:L PR[99] 300mm/sec CNT55 Wjnt    ;
  19:   ;
  20:  ENDIF ;
  21:   ;
  22:J PR[100:Home] 100% CNT5    ;
/POS
/END
