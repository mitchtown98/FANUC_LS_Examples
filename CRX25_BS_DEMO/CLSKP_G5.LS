/PROG  CLSKP_G5
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "set skip cond g5";
PROG_SIZE	= 292;
CREATE		= DATE 08-10-17  TIME 22:35:46;
MODIFIED	= DATE 08-10-17  TIME 22:39:52;
FILE_NAME	= CLSKP_G4;
VERSION		= 0;
LINE_COUNT	= 6;
MEMORY_SIZE	= 640;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL
/MN
   1:  !Program CLSKP_g5 ;
   2:   ;
   3:  SKIP CONDITION $MISC[5].$DSTB_EXCESS=1    ;
   4:  END ;
   5:   ;
   6:  !End of CLSKP_g5 ;
/POS
/END
