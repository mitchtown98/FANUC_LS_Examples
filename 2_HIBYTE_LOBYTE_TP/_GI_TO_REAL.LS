/PROG  _GI_TO_REAL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sub Routine";
PROG_SIZE	= 376;
CREATE		= DATE 23-08-14  TIME 14:02:50;
MODIFIED	= DATE 23-08-14  TIME 14:05:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 692;
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
/MN
   1:  !------------------------ ;
   2:  !  GI SINT to REAL ;
   3:  !------------------------ ;
   4:   ;
   5:  IF (DI[1048]=OFF) THEN ;
   6:   ;
   7:  R[80]=((65536-GI[7:SINT])*((-1)/10)) ;
   8:   ;
   9:  ELSE ;
  10:   ;
  11:  R[80]=GI[7:SINT]/10    ;
  12:   ;
  13:  ENDIF ;
  14:   ;
/POS
/END
