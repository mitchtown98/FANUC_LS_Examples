/PROG  PNS0011
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "AUTO JOG LINEAR";
PROG_SIZE	= 1577;
CREATE		= DATE 22-11-17  TIME 18:15:04;
MODIFIED	= DATE 22-11-22  TIME 17:43:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2061;
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
   2:  PR[31:APP Z OFFS]=PR[30:CARTESIAN ZERO]    ;
   3:  PR[7:NEAR SINGULARITY]=JPOS    ;
   4:L PR[7:NEAR SINGULARITY] 2000mm/sec FINE    ;
   5:  LBL[1] ;
   6:  WAIT (DI[124:JOG X +]=ON OR DI[125:JOG X -]=ON OR DI[126:JOG Y +]=ON OR DI[127:JOG Y -]=ON OR DI[128:JOG Z +]=ON OR DI[129:JOG Z -]=ON OR DI[130:JOG RX +]=ON OR DI[131:JOG RX -]=ON OR 
    :  DI[132:JOG RY +]=ON OR DI[133:JOG RY -]=ON OR DI[134:JOG RZ +]=ON OR DI[135:JOG RZ -]=ON OR DI[143:END JOG]=ON)    ;
   7:  IF (DI[143:END JOG]=ON),JMP LBL[999] ;
   8:  IF (DI[124:JOG X +]=ON) THEN ;
   9:  PR[33,1:APP X OFFS]=PR[33,1:APP X OFFS]+R[58:LOAD Y DROP]    ;
  10:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  11:  JMP LBL[1] ;
  12:  ENDIF ;
  13:  IF (DI[125:JOG X -]=ON) THEN ;
  14:  PR[33,1:APP X OFFS]=PR[33,1:APP X OFFS]-R[58:LOAD Y DROP]    ;
  15:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  16:  JMP LBL[1] ;
  17:  ENDIF ;
  18:  IF (DI[126:JOG Y +]=ON) THEN ;
  19:  PR[33,2:APP X OFFS]=PR[33,2:APP X OFFS]+R[58:LOAD Y DROP]    ;
  20:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  21:  JMP LBL[1] ;
  22:  ENDIF ;
  23:  IF (DI[127:JOG Y -]=ON) THEN ;
  24:  PR[33,2:APP X OFFS]=PR[33,2:APP X OFFS]-R[58:LOAD Y DROP]    ;
  25:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  26:  JMP LBL[1] ;
  27:  ENDIF ;
  28:  IF (DI[128:JOG Z +]=ON) THEN ;
  29:  PR[33,3:APP X OFFS]=PR[33,3:APP X OFFS]+R[58:LOAD Y DROP]    ;
  30:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  31:  JMP LBL[1] ;
  32:  ENDIF ;
  33:  IF (DI[129:JOG Z -]=ON) THEN ;
  34:  PR[33,3:APP X OFFS]=PR[33,3:APP X OFFS]-R[58:LOAD Y DROP]    ;
  35:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  36:  JMP LBL[1] ;
  37:  ENDIF ;
  38:  IF (DI[130:JOG RX +]=ON) THEN ;
  39:  PR[33,4:APP X OFFS]=PR[33,4:APP X OFFS]+R[94:Z ADJUST]    ;
  40:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  41:  JMP LBL[1] ;
  42:  ENDIF ;
  43:  IF (DI[131:JOG RX -]=ON) THEN ;
  44:  PR[33,4:APP X OFFS]=PR[33,4:APP X OFFS]-R[94:Z ADJUST]    ;
  45:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  46:  JMP LBL[1] ;
  47:  ENDIF ;
  48:  IF (DI[132:JOG RY +]=ON) THEN ;
  49:  PR[33,5:APP X OFFS]=PR[33,5:APP X OFFS]+R[94:Z ADJUST]    ;
  50:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  51:  JMP LBL[1] ;
  52:  ENDIF ;
  53:  IF (DI[133:JOG RY -]=ON) THEN ;
  54:  PR[33,5:APP X OFFS]=PR[33,5:APP X OFFS]-R[94:Z ADJUST]    ;
  55:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  56:  JMP LBL[1] ;
  57:  ENDIF ;
  58:  IF (DI[134:JOG RZ +]=ON) THEN ;
  59:  PR[33,6:APP X OFFS]=PR[33,6:APP X OFFS]+R[94:Z ADJUST]    ;
  60:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  61:  JMP LBL[1] ;
  62:  ENDIF ;
  63:  IF (DI[135:JOG RZ -]=ON) THEN ;
  64:  PR[33,6:APP X OFFS]=PR[33,6:APP X OFFS]-R[94:Z ADJUST]    ;
  65:L PR[7:NEAR SINGULARITY] 2000mm/sec CNT100 Offset,PR[33:APP X OFFS]    ;
  66:  JMP LBL[1] ;
  67:  ENDIF ;
  68:  LBL[999] ;
  69:  PR[31:APP Z OFFS]=PR[30:CARTESIAN ZERO]    ;
/POS
/END
