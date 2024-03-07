/PROG  SETUP_LENGTH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PART LENGTH";
PROG_SIZE	= 3341;
CREATE		= DATE 23-04-25  TIME 07:59:06;
MODIFIED	= DATE 23-04-25  TIME 07:59:06;
FILE_NAME	= PART_LEN;
VERSION		= 0;
LINE_COUNT	= 167;
MEMORY_SIZE	= 3973;
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
   1:  --eg:DETERMINE LENGTH OF THE PART USING THE ROBOT MOUNTED LASER. ;
   2:   ;
   3:  LBL[1:START] ;
   4:  CALL FAULT_MESSAGE('Robot is measuring the rough ','part length.') ;
   5:J PR[1:HOME POSITION] 100% CNT10    ;
   6:  R[40:RECOVER START PR]=1    ;
   7:  RO[8:LASER ON]=ON ;
   8:  IF (DI[1:TABLE AT A POSITION]=ON) THEN ;
   9:  UFRAME_NUM=1 ;
  10:  ELSE ;
  11:  UFRAME_NUM=2 ;
  12:  ENDIF ;
  13:   ;
  14:  --eg:CHECK FOR DIRECT ENTRY FROM HMI ;
  15:  IF (!DI[49:MEAS RAW LENGTH]) THEN ;
  16:  R[67:MEAS PART LENGTH]=R[802:RAW LENGTH]    ;
  17:  IF (R[67:MEAS PART LENGTH]=0),JMP LBL[9982] ;
  18:  DO[53:PART LENGTH FOUND]=ON ;
  19:  JMP LBL[9999] ;
  20:  ENDIF ;
  21:   ;
  22:  --eg:SPEED CONTROL FOR LASER SEARCH. SPEED IS CALCULATED TO ALWAYS MOVE
    :  AT SAME RATE BASED ON MODE AND OVERRIDE ;
  23:  R[88:NOM SLOW mm/sec]=15    ;
  24:  R[89:NOM FAST mm/sec]=50    ;
  25:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
  26:  R[40:RECOVER START PR]=15    ;
  27:   ;
  28:  LBL[10:CHOOSE TEMPLATE] ;
  29:  IF R[1:ACTIVE TEMPLATE]=2,JMP LBL[100] ;
  30:  IF R[1:ACTIVE TEMPLATE]=3,JMP LBL[200] ;
  31:  IF R[1:ACTIVE TEMPLATE]=4,JMP LBL[300] ;
  32:  IF R[1:ACTIVE TEMPLATE]=5,JMP LBL[400] ;
  33:  IF R[1:ACTIVE TEMPLATE]=6,JMP LBL[500] ;
  34:  JMP LBL[9980] ;
  35:   ;
  36:  LBL[100:2" SEARCH] ;
  37:  PR[161:LENGTH 2" END]=PR[160:LENGTH 2" START]    ;
  38:  PR[161,3:LENGTH 2" END]=0    ;
  39:J PR[160:LENGTH 2" START] 100% FINE    ;
  40:  WAIT    .25(sec) ;
  41:  IF RI[8:LASER INPUT]=ON,JMP LBL[180] ;
  42:  SKIP CONDITION RI[8:LASER INPUT]=ON+    ;
  43:L PR[161:LENGTH 2" END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[9981],PR[162:LENGTH 2" FOUND]=LPOS    ;
  44:  PR[162,3:LENGTH 2" FOUND]=PR[162,3:LENGTH 2" FOUND]+20    ;
  45:  SKIP CONDITION RI[8:LASER INPUT]=OFF-    ;
  46:L PR[162:LENGTH 2" FOUND] R[85:SEARCH SLOW SPD]mm/sec FINE Skip,LBL[9981],PR[162:LENGTH 2" FOUND]=LPOS    ;
  47:  R[67:MEAS PART LENGTH]=PR[162,3:LENGTH 2" FOUND]    ;
  48:  JMP LBL[9998] ;
  49:   ;
  50:  LBL[180:LASER FAULT] ;
  51:  CALL LASER_MSG(2) ;
  52:  UALM[12] ;
  53:  JMP LBL[100] ;
  54:   ;
  55:  LBL[200:3" SEARCH] ;
  56:  PR[166:LENGTH 3" END]=PR[165:LENGTH 3" START]    ;
  57:  PR[166,3:LENGTH 3" END]=0    ;
  58:J PR[165:LENGTH 3" START] 100% FINE    ;
  59:  WAIT    .25(sec) ;
  60:  IF RI[8:LASER INPUT]=ON,JMP LBL[280] ;
  61:  SKIP CONDITION RI[8:LASER INPUT]=ON+    ;
  62:L PR[166:LENGTH 3" END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[9981],PR[167:LENGTH 3" FOUND]=LPOS    ;
  63:  R[67:MEAS PART LENGTH]=PR[167,3:LENGTH 3" FOUND]    ;
  64:  JMP LBL[9998] ;
  65:   ;
  66:  LBL[280:LASER FAULT] ;
  67:  CALL LASER_MSG(2) ;
  68:  UALM[12] ;
  69:  JMP LBL[200] ;
  70:   ;
  71:  LBL[300:4" SEARCH] ;
  72:  PR[171:LENGTH 4" END]=PR[170:LENGTH 4" START]    ;
  73:  PR[171,3:LENGTH 4" END]=0    ;
  74:J PR[170:LENGTH 4" START] 100% FINE    ;
  75:  WAIT    .25(sec) ;
  76:  IF RI[8:LASER INPUT]=ON,JMP LBL[380] ;
  77:  SKIP CONDITION RI[8:LASER INPUT]=ON+    ;
  78:L PR[171:LENGTH 4" END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[9981],PR[172:LENGTH 4" FOUND]=LPOS    ;
  79:  R[67:MEAS PART LENGTH]=PR[172,3:LENGTH 4" FOUND]    ;
  80:  JMP LBL[9998] ;
  81:   ;
  82:  LBL[380:LASER FAULT] ;
  83:  CALL LASER_MSG(2) ;
  84:  UALM[12] ;
  85:  JMP LBL[300] ;
  86:   ;
  87:  LBL[400:5" SEARCH] ;
  88:  PR[176:LENGTH 5" END]=PR[175:LENGTH 5" START]    ;
  89:  PR[176,3:LENGTH 5" END]=0    ;
  90:J PR[175:LENGTH 5" START] 100% FINE    ;
  91:  WAIT    .25(sec) ;
  92:  IF RI[8:LASER INPUT]=ON,JMP LBL[480] ;
  93:  SKIP CONDITION RI[8:LASER INPUT]=ON    ;
  94:L PR[176:LENGTH 5" END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[9981],PR[177:LENGTH 5" FOUND]=LPOS    ;
  95:  R[67:MEAS PART LENGTH]=PR[177,3:LENGTH 5" FOUND]    ;
  96:  JMP LBL[9998] ;
  97:   ;
  98:  LBL[480:LASER FAULT] ;
  99:  CALL LASER_MSG(2) ;
 100:  UALM[12] ;
 101:  JMP LBL[400] ;
 102:   ;
 103:  LBL[500:6" SEARCH] ;
 104:  PR[197:LENGTH 6" END]=PR[196:LENGTH 6" START]    ;
 105:  PR[197,3:LENGTH 6" END]=0    ;
 106:J PR[196:LENGTH 6" START] 100% FINE    ;
 107:  WAIT    .25(sec) ;
 108:  IF RI[8:LASER INPUT]=ON,JMP LBL[580] ;
 109:  SKIP CONDITION RI[8:LASER INPUT]=ON+    ;
 110:L PR[197:LENGTH 6" END] R[86:SEARCH FAST SPD]mm/sec FINE Skip,LBL[9981],PR[198:LENGTH 6" FOUND]=LPOS    ;
 111:  R[67:MEAS PART LENGTH]=PR[198,3:LENGTH 6" FOUND]    ;
 112:  JMP LBL[9998] ;
 113:   ;
 114:  LBL[580:LASER FAULT] ;
 115:  CALL LASER_MSG(2) ;
 116:  UALM[12] ;
 117:  JMP LBL[400] ;
 118:   ;
 119:  LBL[9980:TEMPLATE NO ID] ;
 120:  R[40:RECOVER START PR]=15    ;
 121:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
 122:  R[40:RECOVER START PR]=1    ;
 123:J PR[1:HOME POSITION] 100% FINE    ;
 124:  CALL TABLE_MSG(1) ;
 125:  UALM[11] ;
 126:  JMP LBL[1] ;
 127:   ;
 128:  LBL[9981:PART NOT FOUND] ;
 129:  R[40:RECOVER START PR]=15    ;
 130:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
 131:  R[40:RECOVER START PR]=1    ;
 132:J PR[1:HOME POSITION] 100% FINE    ;
 133:  CALL TABLE_MSG(3) ;
 134:  UALM[11] ;
 135:  JMP LBL[1] ;
 136:   ;
 137:  LBL[9982:PART NOT FOUND] ;
 138:  R[40:RECOVER START PR]=15    ;
 139:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
 140:  R[40:RECOVER START PR]=1    ;
 141:J PR[1:HOME POSITION] 100% FINE    ;
 142:  CALL TABLE_MSG(22) ;
 143:  UALM[11] ;
 144:  JMP LBL[1] ;
 145:   ;
 146:  LBL[9998] ;
 147:  R[59:TEMP TO PART]=R[67:MEAS PART LENGTH]-R[66:TEMP Z TO TABLE]    ;
 148:  IF (R[59:TEMP TO PART]>175) THEN ;
 149:  R[40:RECOVER START PR]=15    ;
 150:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
 151:  R[40:RECOVER START PR]=1    ;
 152:J PR[1:HOME POSITION] 100% FINE    ;
 153:  CALL TABLE_MSG(26) ;
 154:  UALM[11] ;
 155:  DO[52:PALLET HEIGHT FOUND]=OFF ;
 156:  JMP LBL[9999] ;
 157:  ENDIF ;
 158:  LBL[9999:END] ;
 159:  RO[8:LASER ON]=OFF ;
 160:  R[40:RECOVER START PR]=15    ;
 161:J PR[15:LEN MEAS POUNCE] 100% CNT30    ;
 162:  R[40:RECOVER START PR]=1    ;
 163:  DO[53:PART LENGTH FOUND]=ON ;
 164:   ;
 165:  IF (DO[54:PART DIAMETER FOUND]) THEN ;
 166:J PR[1:HOME POSITION] 100% FINE    ;
 167:  ENDIF ;
/POS
/END
