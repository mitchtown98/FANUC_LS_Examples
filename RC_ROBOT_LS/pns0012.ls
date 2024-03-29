/PROG  PNS0012
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AUTO JOG JOINT";
PROG_SIZE	= 1531;
CREATE		= DATE 22-11-22  TIME 17:34:20;
MODIFIED	= DATE 22-11-22  TIME 17:42:52;
FILE_NAME	= PNS0011;
VERSION		= 0;
LINE_COUNT	= 67;
MEMORY_SIZE	= 2023;
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
   1:  UFRAME_NUM=5 ;
   2:  PR[7:NEAR SINGULARITY]=JPOS    ;
   3:J PR[7:NEAR SINGULARITY] 100% FINE    ;
   4:  LBL[1] ;
   5:  WAIT (DI[124:JOG X +]=ON OR DI[125:JOG X -]=ON OR DI[126:JOG Y +]=ON OR DI[127:JOG Y -]=ON OR DI[128:JOG Z +]=ON OR DI[129:JOG Z -]=ON OR DI[130:JOG RX +]=ON OR DI[131:JOG RX -]=ON OR 
    :  DI[132:JOG RY +]=ON OR DI[133:JOG RY -]=ON OR DI[134:JOG RZ +]=ON OR DI[135:JOG RZ -]=ON OR DI[143:END JOG]=ON)    ;
   6:  IF (DI[143:END JOG]=ON),JMP LBL[999] ;
   7:  IF (DI[124:JOG X +]=ON) THEN ;
   8:  PR[7,1:NEAR SINGULARITY]=PR[7,1:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
   9:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  10:  JMP LBL[1] ;
  11:  ENDIF ;
  12:  IF (DI[125:JOG X -]=ON) THEN ;
  13:  PR[7,1:NEAR SINGULARITY]=PR[7,1:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  14:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  15:  JMP LBL[1] ;
  16:  ENDIF ;
  17:  IF (DI[126:JOG Y +]=ON) THEN ;
  18:  PR[7,2:NEAR SINGULARITY]=PR[7,2:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
  19:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  20:  JMP LBL[1] ;
  21:  ENDIF ;
  22:  IF (DI[127:JOG Y -]=ON) THEN ;
  23:  PR[7,2:NEAR SINGULARITY]=PR[7,2:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  24:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  25:  JMP LBL[1] ;
  26:  ENDIF ;
  27:  IF (DI[128:JOG Z +]=ON) THEN ;
  28:  PR[7,3:NEAR SINGULARITY]=PR[7,3:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
  29:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  30:  JMP LBL[1] ;
  31:  ENDIF ;
  32:  IF (DI[129:JOG Z -]=ON) THEN ;
  33:  PR[7,3:NEAR SINGULARITY]=PR[7,3:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  34:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  35:  JMP LBL[1] ;
  36:  ENDIF ;
  37:  IF (DI[130:JOG RX +]=ON) THEN ;
  38:  PR[7,4:NEAR SINGULARITY]=PR[7,4:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
  39:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  40:  JMP LBL[1] ;
  41:  ENDIF ;
  42:  IF (DI[131:JOG RX -]=ON) THEN ;
  43:  PR[7,4:NEAR SINGULARITY]=PR[7,4:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  44:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  45:  JMP LBL[1] ;
  46:  ENDIF ;
  47:  IF (DI[132:JOG RY +]=ON) THEN ;
  48:  PR[7,5:NEAR SINGULARITY]=PR[7,5:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
  49:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  50:  JMP LBL[1] ;
  51:  ENDIF ;
  52:  IF (DI[133:JOG RY -]=ON) THEN ;
  53:  PR[7,5:NEAR SINGULARITY]=PR[7,5:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  54:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  55:  JMP LBL[1] ;
  56:  ENDIF ;
  57:  IF (DI[134:JOG RZ +]=ON) THEN ;
  58:  PR[7,6:NEAR SINGULARITY]=PR[7,6:NEAR SINGULARITY]+R[94:Z ADJUST]    ;
  59:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  60:  JMP LBL[1] ;
  61:  ENDIF ;
  62:  IF (DI[135:JOG RZ -]=ON) THEN ;
  63:  PR[7,6:NEAR SINGULARITY]=PR[7,6:NEAR SINGULARITY]-R[94:Z ADJUST]    ;
  64:J PR[7:NEAR SINGULARITY] 100% CNT100    ;
  65:  JMP LBL[1] ;
  66:  ENDIF ;
  67:  LBL[999] ;
/POS
/END
