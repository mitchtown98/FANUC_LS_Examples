/PROG  BG_GRIPPERS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BG GRIP CONTROL";
PROG_SIZE	= 3871;
CREATE		= DATE 22-08-17  TIME 14:25:52;
MODIFIED	= DATE 24-03-05  TIME 13:10:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 192;
MEMORY_SIZE	= 4243;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  --eg:CONTROLS ALL GRIPPER RELATED LOGIC. MONITORS PART DESTITION OF WHATS
    :  IN THE GRIPPERS, SENDS STATUS BITS FOR HMI DISPLAY, AND CONTAINS
    :  CONTROLS FOR HMI MANUAL OPERATION. ;
   2:   ;
   3:  --eg:SET ID/OD GRIPPING BASED ON INPUTS FROM HMI PB. ALLOW CHANGES ONLY
    :  WHEN NO SIDES ARE IN OPERATION.   ;
   4:   ;
   5:  IF (DO[145:AT HOME]=ON AND UO[3:Prg running]=OFF) THEN ;
   6:  DO[112:ROBOT OK TO CHANGEOVER]=ON ;
   7:  ELSE ;
   8:  DO[112:ROBOT OK TO CHANGEOVER]=OFF ;
   9:  ENDIF ;
  10:   ;
  11:  ! Changeover ;
  12:  IF (DO[112:ROBOT OK TO CHANGEOVER]) THEN ;
  13:   ;
  14:  ! Changeover T1 Open ;
  15:  IF (DO[63:NO LOAD ON]=ON) THEN ;
  16:  DO[117:T1 ID GRIP]=OFF ;
  17:  DO[116:T1 OD GRIP]=ON ;
  18:  RO[2:T1 CLOSE]=OFF ;
  19:  RO[1:T1 OPEN]=ON ;
  20:  ENDIF ;
  21:  ! Changeover  T2 Open ;
  22:  IF (DO[68:NO UNLOAD ON]=ON) THEN ;
  23:  DO[119:T2 ID GRIP]=OFF ;
  24:  DO[118:T2 OD GRIP]=ON ;
  25:  RO[4:T2 CLOSE]=OFF ;
  26:  RO[3:T2 OPEN]=ON ;
  27:  ENDIF ;
  28:   ;
  29:  ! OD T1 Open ;
  30:  IF (DI[116:T1 OD GRIP] AND !DO[116:T1 OD GRIP]) THEN ;
  31:  DO[117:T1 ID GRIP]=OFF ;
  32:  DO[116:T1 OD GRIP]=ON ;
  33:  RO[2:T1 CLOSE]=OFF ;
  34:  RO[1:T1 OPEN]=ON ;
  35:  ENDIF ;
  36:   ;
  37:  ! ID T1 Close ;
  38:  IF (DI[117:T1 ID GRIP] AND !DO[117:T1 ID GRIP]) THEN ;
  39:  DO[116:T1 OD GRIP]=OFF ;
  40:  DO[117:T1 ID GRIP]=ON ;
  41:  RO[1:T1 OPEN]=OFF ;
  42:  RO[2:T1 CLOSE]=ON ;
  43:  ENDIF ;
  44:   ;
  45:  ! OD T2 Open ;
  46:  IF (DI[118:T2 OD GRIP] AND !DO[118:T2 OD GRIP]) THEN ;
  47:  DO[119:T2 ID GRIP]=OFF ;
  48:  DO[118:T2 OD GRIP]=ON ;
  49:  RO[4:T2 CLOSE]=OFF ;
  50:  RO[3:T2 OPEN]=ON ;
  51:  ENDIF ;
  52:   ;
  53:  ! ID T2 Close ;
  54:  IF (DI[119:T2 ID GRIP] AND !DO[119:T2 ID GRIP]) THEN ;
  55:  DO[118:T2 OD GRIP]=OFF ;
  56:  DO[119:T2 ID GRIP]=ON ;
  57:  RO[3:T2 OPEN]=OFF ;
  58:  RO[4:T2 CLOSE]=ON ;
  59:  ENDIF ;
  60:  ENDIF ;
  61:   ;
  62:  --eg:SET GRIPPER STATUS BASED ON ID/OD GRIPPING ;
  63:  IF ((DO[116:T1 OD GRIP] AND !DO[117:T1 ID GRIP] AND !RO[1:T1 OPEN] AND RO[2:T1 CLOSE] AND !RI[1:T1 FULLY OPENED] AND !RI[2:T1 FULLY CLOSED]) OR (!DO[116:T1 OD GRIP] AND DO[117:T1 ID GRIP] AND RO[1:T1 OPEN] AND !RO[2:T1 CLOSE] 
    :  AND !RI[1:T1 FULLY OPENED] AND !RI[2:T1 FULLY CLOSED])) THEN ;
  64:  DO[174:PART IN T1]=ON ;
  65:  ELSE ;
  66:  DO[174:PART IN T1]=OFF ;
  67:  ENDIF ;
  68:   ;
  69:  IF ((DO[118:T2 OD GRIP] AND !DO[119:T2 ID GRIP] AND !RO[3:T2 OPEN] AND RO[4:T2 CLOSE] AND !RI[3:T2 FULLY OPENED] AND !RI[4:T2 FULLY CLOSED]) OR (!DO[118:T2 OD GRIP] AND DO[119:T2 ID GRIP] AND RO[3:T2 OPEN] AND !RO[4:T2 CLOSE] 
    :  AND !RI[3:T2 FULLY OPENED] AND !RI[4:T2 FULLY CLOSED])) THEN ;
  70:  DO[175:PART IN T2]=ON ;
  71:  ELSE ;
  72:  DO[175:PART IN T2]=OFF ;
  73:  ENDIF ;
  74:   ;
  75:  IF ((DO[116:T1 OD GRIP] AND !DO[117:T1 ID GRIP] AND !RO[1:T1 OPEN] AND RO[2:T1 CLOSE] AND !RI[1:T1 FULLY OPENED] AND RI[2:T1 FULLY CLOSED]) OR (!DO[116:T1 OD GRIP] AND DO[117:T1 ID GRIP] AND RO[1:T1 OPEN] AND !RO[2:T1 CLOSE] 
    :  AND RI[1:T1 FULLY OPENED] AND !RI[2:T1 FULLY CLOSED])) THEN ;
  76:  DO[170:T1 OVERTRAVEL]=ON ;
  77:  ELSE ;
  78:  DO[170:T1 OVERTRAVEL]=OFF ;
  79:  ENDIF ;
  80:   ;
  81:  IF ((DO[116:T1 OD GRIP] AND !DO[117:T1 ID GRIP] AND RO[1:T1 OPEN] AND !RO[2:T1 CLOSE] AND RI[1:T1 FULLY OPENED] AND !RI[2:T1 FULLY CLOSED]) OR (!DO[116:T1 OD GRIP] AND DO[117:T1 ID GRIP] AND !RO[1:T1 OPEN] AND RO[2:T1 CLOSE] 
    :  AND !RI[1:T1 FULLY OPENED] AND RI[2:T1 FULLY CLOSED])) THEN ;
  82:  DO[171:T1 UNGRIPPED]=ON ;
  83:  ELSE ;
  84:  DO[171:T1 UNGRIPPED]=OFF ;
  85:  ENDIF ;
  86:   ;
  87:  IF ((DO[118:T2 OD GRIP] AND !DO[119:T2 ID GRIP] AND !RO[3:T2 OPEN] AND RO[4:T2 CLOSE] AND !RI[3:T2 FULLY OPENED] AND RI[4:T2 FULLY CLOSED]) OR (!DO[118:T2 OD GRIP] AND DO[119:T2 ID GRIP] AND RO[3:T2 OPEN] AND !RO[4:T2 CLOSE] 
    :  AND RI[3:T2 FULLY OPENED] AND !RI[4:T2 FULLY CLOSED])) THEN ;
  88:  DO[172:T2 OVERTRAVEL]=ON ;
  89:  ELSE ;
  90:  DO[172:T2 OVERTRAVEL]=OFF ;
  91:  ENDIF ;
  92:   ;
  93:  IF ((DO[118:T2 OD GRIP] AND !DO[119:T2 ID GRIP] AND RO[3:T2 OPEN] AND !RO[4:T2 CLOSE] AND RI[3:T2 FULLY OPENED] AND !RI[4:T2 FULLY CLOSED]) OR (!DO[118:T2 OD GRIP] AND DO[119:T2 ID GRIP] AND !RO[3:T2 OPEN] AND RO[4:T2 CLOSE] 
    :  AND !RI[3:T2 FULLY OPENED] AND RI[4:T2 FULLY CLOSED])) THEN ;
  94:  DO[173:T2 UNGRIPPED]=ON ;
  95:  ELSE ;
  96:  DO[173:T2 UNGRIPPED]=OFF ;
  97:  ENDIF ;
  98:   ;
  99:  IF (DO[171:T1 UNGRIPPED] AND DO[173:T2 UNGRIPPED]) THEN ;
 100:  DO[176:ALL TOOLS UNGRIPPED]=ON ;
 101:  ELSE ;
 102:  DO[176:ALL TOOLS UNGRIPPED]=OFF ;
 103:  ENDIF ;
 104:   ;
 105:  --eg:CLEAR PART TRACKING BITS WHEN TOOL IS UNGRIPPED. ;
 106:  IF (UO[10:Busy]) THEN ;
 107:  IF (DO[171:T1 UNGRIPPED]) THEN ;
 108:  GO[10:PART TRACK TOOL 1]=0 ;
 109:  ENDIF ;
 110:   ;
 111:  IF (DO[173:T2 UNGRIPPED]) THEN ;
 112:  GO[11:PART TRACK TOOL 2]=0 ;
 113:  ENDIF ;
 114:  ENDIF ;
 115:   ;
 116:  --eg:MANUAL HMI CONTROLS ;
 117:  IF (DI[120:T1 OPEN HMI PB] OR DI[121:T1 CLOSE HMI PB] OR DI[122:T2 OPEN HMI PB] OR DI[123:T2 CLOSE HMI PB]),F[2:I/O ONE SHOT]=PULSE   ;
 118:   ;
 119:  IF (DI[120:T1 OPEN HMI PB] AND !UO[10:Busy] AND F[2:I/O ONE SHOT]) THEN ;
 120:  RO[2:T1 CLOSE]=OFF ;
 121:  RO[1:T1 OPEN]=ON ;
 122:  ENDIF ;
 123:   ;
 124:  IF (DI[121:T1 CLOSE HMI PB] AND !UO[10:Busy] AND !DO[174:PART IN T1] AND F[2:I/O ONE SHOT]) THEN ;
 125:  RO[1:T1 OPEN]=OFF ;
 126:  RO[2:T1 CLOSE]=ON ;
 127:  ENDIF ;
 128:   ;
 129:  IF (DI[122:T2 OPEN HMI PB] AND !UO[10:Busy] AND F[2:I/O ONE SHOT]) THEN ;
 130:  RO[4:T2 CLOSE]=OFF ;
 131:  RO[3:T2 OPEN]=ON ;
 132:  ENDIF ;
 133:   ;
 134:  IF (DI[123:T2 CLOSE HMI PB] AND !UO[10:Busy] AND F[2:I/O ONE SHOT] AND !DO[175:PART IN T2]) THEN ;
 135:  RO[3:T2 OPEN]=OFF ;
 136:  RO[4:T2 CLOSE]=ON ;
 137:  ENDIF ;
 138:   ;
 139:  --eg:STATUS BITS FOR HMI DISPLAY ;
 140:  DO[161:T1 OPEN SOL STATUS]=(RO[1:T1 OPEN]) ;
 141:  DO[162:T1 CLOSE SOL STATUS]=(RO[2:T1 CLOSE]) ;
 142:  DO[163:T2 OPEN SOL STATUS]=(RO[3:T2 OPEN]) ;
 143:  DO[164:T2 CLOSE SOL STATUS]=(RO[4:T2 CLOSE]) ;
 144:  DO[165:T1 OPEN SENSOR STATUS]=(RI[1:T1 FULLY OPENED]) ;
 145:  DO[166:T1 CLOSE SENSOR STATUS]=(RI[2:T1 FULLY CLOSED]) ;
 146:  DO[167:T2 OPEN SENSOR STATUS]=(RI[3:T2 FULLY OPENED]) ;
 147:  DO[168:T2 CLOSE SENSOR STATUS]=(RI[4:T2 FULLY CLOSED]) ;
 148:   ;
 149:  --eg:MANUAL PB LOGIC TO OPEN/CLOSE GRIPPERS AT MAINT POSITION. ;
 150:  IF (DO[152:AT MAINTENANCE]) THEN ;
 151:   ;
 152:  IF (RI[1:T1 FULLY OPENED] AND RI[5:MAN TOOL 1 PB]) THEN ;
 153:  RO[1:T1 OPEN]=OFF ;
 154:  RO[2:T1 CLOSE]=ON ;
 155:  ENDIF ;
 156:   ;
 157:  IF (DO[174:PART IN T1] AND RI[5:MAN TOOL 1 PB] AND DO[116:T1 OD GRIP]) THEN ;
 158:  RO[2:T1 CLOSE]=OFF ;
 159:  RO[1:T1 OPEN]=ON ;
 160:  ENDIF ;
 161:   ;
 162:  IF (DO[174:PART IN T1] AND RI[5:MAN TOOL 1 PB] AND DO[117:T1 ID GRIP]) THEN ;
 163:  RO[1:T1 OPEN]=OFF ;
 164:  RO[2:T1 CLOSE]=ON ;
 165:  ENDIF ;
 166:   ;
 167:  IF (RI[2:T1 FULLY CLOSED] AND RI[5:MAN TOOL 1 PB]) THEN ;
 168:  RO[2:T1 CLOSE]=OFF ;
 169:  RO[1:T1 OPEN]=ON ;
 170:  ENDIF ;
 171:   ;
 172:  IF (RI[3:T2 FULLY OPENED] AND RI[6:MAN TOOL 2 PB]) THEN ;
 173:  RO[3:T2 OPEN]=OFF ;
 174:  RO[4:T2 CLOSE]=ON ;
 175:  ENDIF ;
 176:   ;
 177:  IF (DO[175:PART IN T2] AND RI[6:MAN TOOL 2 PB] AND DO[118:T2 OD GRIP]) THEN ;
 178:  RO[4:T2 CLOSE]=OFF ;
 179:  RO[3:T2 OPEN]=ON ;
 180:  ENDIF ;
 181:   ;
 182:  IF (DO[175:PART IN T2] AND RI[6:MAN TOOL 2 PB] AND DO[119:T2 ID GRIP]) THEN ;
 183:  RO[3:T2 OPEN]=OFF ;
 184:  RO[4:T2 CLOSE]=ON ;
 185:  ENDIF ;
 186:   ;
 187:  IF (RI[4:T2 FULLY CLOSED] AND RI[6:MAN TOOL 2 PB]) THEN ;
 188:  RO[4:T2 CLOSE]=OFF ;
 189:  RO[3:T2 OPEN]=ON ;
 190:  ENDIF ;
 191:  ENDIF ;
 192:   ;
/POS
/END
