/PROG  _DPAL_SMAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal Main";
PROG_SIZE	= 443;
CREATE		= DATE 22-03-11  TIME 11:17:28;
MODIFIED	= DATE 22-03-11  TIME 16:59:16;
FILE_NAME	= _DPAL_SU;
VERSION		= 0;
LINE_COUNT	= 10;
MEMORY_SIZE	= 923;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  CALL _DPAL_MOVTO_PAL    ;
   2:  !---------------------- ;
   3:  LBL[10:Start Depal] ;
   2:  !---------------------- ;
   4:  IF (R[178:DpalLyrsComplete]<=1) THEN ;
   5:  CALL _DPAL_ARRAY    ;
   6:  JMP LBL[10] ;
   7:  ENDIF ;
   8:  !---------------------- ;
   9:  LBL[99:End] ;
   2:  !---------------------- ;
  10:  CALL _DPAL_MOVTO_PAL    ;
/POS
/END
