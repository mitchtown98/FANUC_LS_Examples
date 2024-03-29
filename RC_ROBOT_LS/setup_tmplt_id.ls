/PROG  SETUP_TMPLT_ID
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TEMPLATE TYPE";
PROG_SIZE	= 2797;
CREATE		= DATE 22-07-25  TIME 15:34:22;
MODIFIED	= DATE 23-11-22  TIME 05:04:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 149;
MEMORY_SIZE	= 3241;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  --eg:SEARCH FOR HOLES WITH LASER. NUMBER OF HOLES FOUND IS THE TEMPLATE
    :  ID. ;
   2:   ;
   3:  LBL[1:START] ;
   4:   ;
   5:  CALL FAULT_MESSAGE('Robot is checking the template ','number.') ;
   6:  IF (DI[1:TABLE AT A POSITION]=ON) THEN ;
   7:  UFRAME_NUM=1 ;
   8:  ELSE ;
   9:  UFRAME_NUM=2 ;
  10:  ENDIF ;
  11:  UTOOL_NUM=9 ;
  12:J PR[16:TEMP ID POUNCE] 100% CNT75    ;
  13:  R[40:RECOVER START PR]=16    ;
  14:  RO[8:LASER ON]=ON ;
  15:  WAIT    .75(sec) ;
  16:  PR[34:APP Z TOOL OFF]=PR[30:CARTESIAN ZERO]    ;
  17:  PR[34,3:APP Z TOOL OFF]=R[66:TEMP Z TO TABLE]+50    ;
  18:J PR[97:TEMP SRCH START] 100% FINE Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  19:  R[40:RECOVER START PR]=97    ;
  20:  SKIP CONDITION RI[8:LASER INPUT]=ON+    ;
  21:L PR[98:TEMP SRCH END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[181],PR[47:LPOS 1]=LPOS    ;
  22:  R[40:RECOVER START PR]=98    ;
  23:  PR[150,3:HOLE 1]=PR[47,3:LPOS 1]-10    ;
  24:  PR[151,3:HOLE 2]=PR[47,3:LPOS 1]-10    ;
  25:  PR[152,3:HOLE 3]=PR[47,3:LPOS 1]-10    ;
  26:  PR[153,3:HOLE 4]=PR[47,3:LPOS 1]-10    ;
  27:  PR[154,3:HOLE 5]=PR[47,3:LPOS 1]-10    ;
  28:  PR[155,3:HOLE 6]=PR[47,3:LPOS 1]-10    ;
  29:  JMP LBL[99] ;
  30:  --eg:LASER FAULT ;
  31:  LBL[181] ;
  32:  IF (PR[98,3:TEMP SRCH END]>(-10)) THEN ;
  33:  PR[98,3:TEMP SRCH END]=(-10)    ;
  34:  JMP LBL[1] ;
  35:  ENDIF ;
  36:J PR[16:TEMP ID POUNCE] 100% CNT75    ;
  37:  R[40:RECOVER START PR]=16    ;
  38:  R[40:RECOVER START PR]=1    ;
  39:J PR[1:HOME POSITION] 100% CNT30    ;
  40:  CALL LASER_MSG(3) ;
  41:  UALM[12] ;
  42:  JMP LBL[1] ;
  43:   ;
  44:  LBL[99] ;
  45:  --eg:SPEED CONTROL FOR LASER SEARCH. SPEED IS CALCULATED TO ALWAYS MOVE
    :  AT SAME RATE BASED ON MODE AND OVERRIDE ;
  46:  R[88:NOM SLOW mm/sec]=10    ;
  47:  R[89:NOM FAST mm/sec]=30    ;
  48:   ;
  49:  LBL[100:HOLE 1 SEARCH] ;
  50:  R[1:ACTIVE TEMPLATE]=0    ;
  51:  RO[8:LASER ON]=ON ;
  52:  PR[34:APP Z TOOL OFF]=PR[30:CARTESIAN ZERO]    ;
  53:L PR[150:HOLE 1] 1000mm/sec FINE Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  54:  WAIT    .25(sec) ;
  55:   ;
  56:  IF (RI[8:LASER INPUT]=OFF) THEN ;
  57:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
  58:  JMP LBL[200] ;
  59:  ENDIF ;
  60:   ;
  61:  JMP LBL[180] ;
  62:   ;
  63:  LBL[180:LASER FAULT] ;
  64:  CALL LASER_MSG(4) ;
  65:  UALM[12] ;
  66:  JMP LBL[1] ;
  67:   ;
  68:  LBL[200:HOLE 2 SEARCH] ;
  69:  RO[8:LASER ON]=ON ;
  70:L PR[151:HOLE 2] 1000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  71:  WAIT    .25(sec) ;
  72:   ;
  73:  IF (RI[8:LASER INPUT]=OFF) THEN ;
  74:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
  75:  JMP LBL[300] ;
  76:  ENDIF ;
  77:  JMP LBL[280] ;
  78:   ;
  79:  LBL[280:LASER FAULT] ;
  80:  CALL LASER_MSG(4) ;
  81:  UALM[12] ;
  82:  JMP LBL[1] ;
  83:   ;
  84:  LBL[300:HOLE 3 SEARCH] ;
  85:  RO[8:LASER ON]=ON ;
  86:L PR[152:HOLE 3] 1000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  87:  WAIT    .25(sec) ;
  88:   ;
  89:  IF (RI[8:LASER INPUT]=OFF) THEN ;
  90:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
  91:  JMP LBL[400] ;
  92:  ENDIF ;
  93:   ;
  94:  JMP LBL[700] ;
  95:   ;
  96:  LBL[400:HOLE 4 SEARCH] ;
  97:  RO[8:LASER ON]=ON ;
  98:L PR[153:HOLE 4] 1000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  99:  WAIT    .25(sec) ;
 100:   ;
 101:  IF (RI[8:LASER INPUT]=OFF) THEN ;
 102:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
 103:  JMP LBL[500] ;
 104:  ENDIF ;
 105:   ;
 106:  JMP LBL[700] ;
 107:   ;
 108:  LBL[500:HOLE 5 SEARCH] ;
 109:  RO[8:LASER ON]=ON ;
 110:L PR[154:HOLE 5] 1000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF]    ;
 111:  WAIT    .25(sec) ;
 112:   ;
 113:  IF (RI[8:LASER INPUT]=OFF) THEN ;
 114:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
 115:  JMP LBL[600] ;
 116:  ENDIF ;
 117:   ;
 118:  JMP LBL[700] ;
 119:   ;
 120:  LBL[600:HOLE 6 SEARCH] ;
 121:  RO[8:LASER ON]=ON ;
 122:L PR[155:HOLE 6] 1000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF]    ;
 123:  WAIT    .25(sec) ;
 124:   ;
 125:  IF (RI[8:LASER INPUT]=OFF) THEN ;
 126:  R[1:ACTIVE TEMPLATE]=R[1:ACTIVE TEMPLATE]+1    ;
 127:  JMP LBL[700] ;
 128:  ENDIF ;
 129:   ;
 130:  JMP LBL[700] ;
 131:   ;
 132:  LBL[700:TEMPLATE CHECK] ;
 133:  IF (DO[104:NEW PART ACTIVE]=OFF AND R[1:ACTIVE TEMPLATE]<>R[49:LAST TEMPLATE]) THEN ;
 134:  R[40:RECOVER START PR]=1    ;
 135:J PR[1:HOME POSITION] 100% CNT30    ;
 136:  CALL TABLE_MSG(20) ;
 137:  UALM[11] ;
 138:  JMP LBL[1] ;
 139:  ENDIF ;
 140:   ;
 141:  IF (DO[104:NEW PART ACTIVE]=ON),R[49:LAST TEMPLATE]=(R[1:ACTIVE TEMPLATE]) ;
 142:  DO[51:PALLET TYPE FOUND]=ON ;
 143:  JMP LBL[9999] ;
 144:   ;
 145:  LBL[9999:END] ;
 146:  PR[34,4:APP Z TOOL OFF]=0    ;
 147:  R[40:RECOVER START PR]=1    ;
 148:J PR[1:HOME POSITION] 100% CNT30    ;
 149:  RO[8:LASER ON]=OFF ;
/POS
/END
