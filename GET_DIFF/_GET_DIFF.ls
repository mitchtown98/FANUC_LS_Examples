/PROG  _GET_DIFF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sub Routine";
PROG_SIZE	= 1163;
CREATE		= DATE 23-08-14  TIME 10:22:22;
MODIFIED	= DATE 23-08-14  TIME 12:33:42;
FILE_NAME	= ;
VERSION		= 1;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1603;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 5,2,0;
/APPL
/MN
   1:  !------------------------ ;
   2:  !  This program will get ;
   3:  !   the difference from ;
   4:  !   start to end position ;
   5:  !   AR 1=R for X ;
   6:  !   AR 2=R for Y ;
   7:  !   AR 3=PR to Store ;
   8:  !------------------------ ;
   9:   ;
  10:  R[10001]=AR[1]    ;
  11:  R[10002]=AR[2]    ;
  12:  R[10003]=AR[3]    ;
  13:   ;
  14:  !************************ ;
  15:  LBL[10:Start] ;
  16:  !************************ ;
  17:  !  Get Starting Pos ;
  18:  PR[10001]=LPOS    ;
  19:   ;
  20:  PAUSE ;
  21:   ;
  22:  !  Get Ending Pos ;
  23:  PR[10002]=LPOS    ;
  24:   ;
  25:  !  Get half of the ;
  26:  !   ending - start pos ;
  27:  R[R[10001]]=((PR[10002,1]-PR[10001,1])/2) ;
  28:   ;
  29:  R[R[10002]]=((PR[10002,2]-PR[10001,2])/2) ;
  30:   ;
  31:  !  Zero a PR & set X Y ;
  32:  PR[R[10003]]=LPOS-LPOS    ;
  33:   ;
  34:  PR[R[10003],1]=R[R[10001]]    ;
  35:  PR[R[10003],2]=R[R[10002]]    ;
  36:   ;
  37:  ! Move Back ;
  38:   ;
  39:L PR[10001] 100mm/sec FINE    ;
  40:  !************************ ;
  41:  LBL[999:Error] ;
  42:  !************************ ;
  43:   ;
  44:  END ;
  45:   ;
  46:  !------------------------ ;
  47:  !  Local P TouchUps ;
  48:  !------------------------ ;
/POS
/END
