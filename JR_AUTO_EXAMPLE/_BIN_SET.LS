/PROG  _BIN_SET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 505;
CREATE		= DATE 21-06-08  TIME 11:32:36;
MODIFIED	= DATE 21-06-08  TIME 13:06:24;
FILE_NAME	= _LOC_SET;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 841;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  !Args ;
   2:  !1 = Num of Tubs in X ;
   3:  !2 = Num of Tubs in Y ;
   4:  !3 = Num of Tubs in Z ;
   5:  !4 = Bin Length in X ;
   6:  !5 = Bin Length in Y ;
   7:  !6 = Debug ;
   8:   ;
   9:  !!! Call Karel Init !!! ;
  10:  CALL KL_PAL_BIN_SET(R[59:xCnt],R[60:yCnt],R[61:zCnt],R[62:binX],R[63:binY],1) ;
  11:   ;
/POS
/END
