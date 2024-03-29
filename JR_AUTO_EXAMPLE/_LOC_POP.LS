/PROG  _LOC_POP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 451;
CREATE		= DATE 21-05-20  TIME 11:48:08;
MODIFIED	= DATE 21-06-08  TIME 10:13:22;
FILE_NAME	= _LOC_PUS;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 795;
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
   1:  !!!Args ;
   2:  !1=Tub Number to pop ;
   3:  !  ARG1: -1=Pop all Tubs ;
   4:  !  ARG1: 1 to 144= Tub Pos ;
   5:  !2=Debug (1 On, 0 Off) ;
   6:   ;
   7:  !Call Karel Program ;
   8:  CALL KL_PAL_LOC_TUB_POP(R[68:popTub],1) ;
   9:   ;
/POS
/END
