/PROG  _BLK_LIST_CLEAR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 319;
CREATE		= DATE 23-04-27  TIME 11:23:50;
MODIFIED	= DATE 23-04-27  TIME 14:27:48;
FILE_NAME	= _BLK_LIS;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 663;
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
/MN
   1:  FOR R[70:blackListRdIndex]=71 TO 75 ;
   2:  PR[R[70]]=LPOS-LPOS    ;
   3:  ENDFOR ;
   4:   ;
   5:  R[69:BlackListWrIndex]=71    ;
   6:  R[70:blackListRdIndex]=71    ;
   7:  R[74:BlackLstChkOkCnt]=0    ;
/POS
/END
