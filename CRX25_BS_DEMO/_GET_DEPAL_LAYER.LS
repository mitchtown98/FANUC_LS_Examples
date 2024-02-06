/PROG  _GET_DEPAL_LAYER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Layer SubRoutine";
PROG_SIZE	= 671;
CREATE		= DATE 23-09-06  TIME 11:40:30;
MODIFIED	= DATE 23-09-11  TIME 13:57:56;
FILE_NAME	= _MAIN;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 967;
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
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !    Layer SubRoutine         ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:   ;
   9:  IF (PR[61,3:DePalStackPt]>=1000) THEN ;
  10:  R[AR[1]]=3    ;
  11:  ENDIF ;
  12:   ;
  13:  IF (PR[61,3:DePalStackPt]>700 AND PR[61,3:DePalStackPt]<1000) THEN ;
  14:  R[AR[1]]=2    ;
  15:  ENDIF ;
  16:   ;
  17:  IF (PR[61,3:DePalStackPt]<=700) THEN ;
  18:  R[AR[1]]=1    ;
  19:  ENDIF ;
/POS
/END
