/PROG  CAM_CAL
/ATTR
OWNER		= KAREL;
COMMENT		= "CCRG grp:1";
PROG_SIZE	= 11368;
CREATE		= DATE 19-11-09  TIME 06:46:18;
MODIFIED	= DATE 19-11-09  TIME 06:46:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 300;
MEMORY_SIZE	= 11700;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UFRAME_NUM=5 ;
   2:  UTOOL_NUM=5 ;
   3:L P[1] 1000mm/sec FINE    ;
   4:  VISION CAMERA_CALIB 'CAM_CAL' Request=1 ;
   5:L P[1001] 1000mm/sec FINE    ;
   6:  CALL IRVBKLSH(1) ;
   7:  VISION CAMERA_CALIB 'CAM_CAL' Request=1001 ;
   8:L P[1002] 1000mm/sec FINE    ;
   9:  CALL IRVBKLSH(1) ;
  10:  VISION CAMERA_CALIB 'CAM_CAL' Request=1002 ;
  11:L P[1003] 1000mm/sec FINE    ;
  12:  CALL IRVBKLSH(1) ;
  13:  VISION CAMERA_CALIB 'CAM_CAL' Request=1003 ;
  14:L P[1004] 1000mm/sec FINE    ;
  15:  CALL IRVBKLSH(1) ;
  16:  VISION CAMERA_CALIB 'CAM_CAL' Request=1004 ;
  17:L P[1005] 1000mm/sec FINE    ;
  18:  CALL IRVBKLSH(1) ;
  19:  VISION CAMERA_CALIB 'CAM_CAL' Request=1005 ;
  20:L P[1006] 1000mm/sec FINE    ;
  21:  CALL IRVBKLSH(1) ;
  22:  VISION CAMERA_CALIB 'CAM_CAL' Request=1006 ;
  23:L P[1007] 1000mm/sec FINE    ;
  24:  CALL IRVBKLSH(1) ;
  25:  VISION CAMERA_CALIB 'CAM_CAL' Request=1007 ;
  26:L P[1008] 1000mm/sec FINE    ;
  27:  CALL IRVBKLSH(1) ;
  28:  VISION CAMERA_CALIB 'CAM_CAL' Request=1008 ;
  29:L P[1009] 1000mm/sec FINE    ;
  30:  CALL IRVBKLSH(1) ;
  31:  VISION CAMERA_CALIB 'CAM_CAL' Request=1009 ;
  32:L P[1010] 1000mm/sec FINE    ;
  33:  CALL IRVBKLSH(1) ;
  34:  VISION CAMERA_CALIB 'CAM_CAL' Request=1010 ;
  35:L P[1011] 1000mm/sec FINE    ;
  36:  CALL IRVBKLSH(1) ;
  37:  VISION CAMERA_CALIB 'CAM_CAL' Request=1011 ;
  38:L P[1012] 1000mm/sec FINE    ;
  39:  CALL IRVBKLSH(1) ;
  40:  VISION CAMERA_CALIB 'CAM_CAL' Request=1012 ;
  41:L P[1013] 1000mm/sec FINE    ;
  42:  CALL IRVBKLSH(1) ;
  43:  VISION CAMERA_CALIB 'CAM_CAL' Request=1013 ;
  44:L P[1014] 1000mm/sec FINE    ;
  45:  CALL IRVBKLSH(1) ;
  46:  VISION CAMERA_CALIB 'CAM_CAL' Request=1014 ;
  47:L P[1015] 1000mm/sec FINE    ;
  48:  CALL IRVBKLSH(1) ;
  49:  VISION CAMERA_CALIB 'CAM_CAL' Request=1015 ;
  50:L P[1016] 1000mm/sec FINE    ;
  51:  CALL IRVBKLSH(1) ;
  52:  VISION CAMERA_CALIB 'CAM_CAL' Request=1016 ;
  53:L P[1017] 1000mm/sec FINE    ;
  54:  CALL IRVBKLSH(1) ;
  55:  VISION CAMERA_CALIB 'CAM_CAL' Request=1017 ;
  56:L P[1018] 1000mm/sec FINE    ;
  57:  CALL IRVBKLSH(1) ;
  58:  VISION CAMERA_CALIB 'CAM_CAL' Request=1018 ;
  59:L P[1019] 1000mm/sec FINE    ;
  60:  CALL IRVBKLSH(1) ;
  61:  VISION CAMERA_CALIB 'CAM_CAL' Request=1019 ;
  62:L P[1020] 1000mm/sec FINE    ;
  63:  CALL IRVBKLSH(1) ;
  64:  VISION CAMERA_CALIB 'CAM_CAL' Request=1020 ;
  65:L P[1021] 1000mm/sec FINE    ;
  66:  CALL IRVBKLSH(1) ;
  67:  VISION CAMERA_CALIB 'CAM_CAL' Request=1021 ;
  68:L P[1022] 1000mm/sec FINE    ;
  69:  CALL IRVBKLSH(1) ;
  70:  VISION CAMERA_CALIB 'CAM_CAL' Request=1022 ;
  71:L P[1023] 1000mm/sec FINE    ;
  72:  CALL IRVBKLSH(1) ;
  73:  VISION CAMERA_CALIB 'CAM_CAL' Request=1023 ;
  74:L P[1024] 1000mm/sec FINE    ;
  75:  CALL IRVBKLSH(1) ;
  76:  VISION CAMERA_CALIB 'CAM_CAL' Request=1024 ;
  77:L P[1025] 1000mm/sec FINE    ;
  78:  CALL IRVBKLSH(1) ;
  79:  VISION CAMERA_CALIB 'CAM_CAL' Request=1025 ;
  80:L P[1026] 1000mm/sec FINE    ;
  81:  CALL IRVBKLSH(1) ;
  82:  VISION CAMERA_CALIB 'CAM_CAL' Request=1026 ;
  83:L P[1027] 1000mm/sec FINE    ;
  84:  CALL IRVBKLSH(1) ;
  85:  VISION CAMERA_CALIB 'CAM_CAL' Request=1027 ;
  86:L P[1028] 1000mm/sec FINE    ;
  87:  CALL IRVBKLSH(1) ;
  88:  VISION CAMERA_CALIB 'CAM_CAL' Request=1028 ;
  89:L P[1029] 1000mm/sec FINE    ;
  90:  CALL IRVBKLSH(1) ;
  91:  VISION CAMERA_CALIB 'CAM_CAL' Request=1029 ;
  92:L P[1030] 1000mm/sec FINE    ;
  93:  CALL IRVBKLSH(1) ;
  94:  VISION CAMERA_CALIB 'CAM_CAL' Request=1030 ;
  95:L P[1031] 1000mm/sec FINE    ;
  96:  CALL IRVBKLSH(1) ;
  97:  VISION CAMERA_CALIB 'CAM_CAL' Request=1031 ;
  98:L P[1032] 1000mm/sec FINE    ;
  99:  CALL IRVBKLSH(1) ;
 100:  VISION CAMERA_CALIB 'CAM_CAL' Request=1032 ;
 101:L P[1033] 1000mm/sec FINE    ;
 102:  CALL IRVBKLSH(1) ;
 103:  VISION CAMERA_CALIB 'CAM_CAL' Request=1033 ;
 104:L P[1034] 1000mm/sec FINE    ;
 105:  CALL IRVBKLSH(1) ;
 106:  VISION CAMERA_CALIB 'CAM_CAL' Request=1034 ;
 107:L P[1035] 1000mm/sec FINE    ;
 108:  CALL IRVBKLSH(1) ;
 109:  VISION CAMERA_CALIB 'CAM_CAL' Request=1035 ;
 110:L P[1036] 1000mm/sec FINE    ;
 111:  CALL IRVBKLSH(1) ;
 112:  VISION CAMERA_CALIB 'CAM_CAL' Request=1036 ;
 113:L P[1037] 1000mm/sec FINE    ;
 114:  CALL IRVBKLSH(1) ;
 115:  VISION CAMERA_CALIB 'CAM_CAL' Request=1037 ;
 116:L P[1038] 1000mm/sec FINE    ;
 117:  CALL IRVBKLSH(1) ;
 118:  VISION CAMERA_CALIB 'CAM_CAL' Request=1038 ;
 119:L P[1039] 1000mm/sec FINE    ;
 120:  CALL IRVBKLSH(1) ;
 121:  VISION CAMERA_CALIB 'CAM_CAL' Request=1039 ;
 122:L P[1040] 1000mm/sec FINE    ;
 123:  CALL IRVBKLSH(1) ;
 124:  VISION CAMERA_CALIB 'CAM_CAL' Request=1040 ;
 125:L P[1041] 1000mm/sec FINE    ;
 126:  CALL IRVBKLSH(1) ;
 127:  VISION CAMERA_CALIB 'CAM_CAL' Request=1041 ;
 128:L P[1042] 1000mm/sec FINE    ;
 129:  CALL IRVBKLSH(1) ;
 130:  VISION CAMERA_CALIB 'CAM_CAL' Request=1042 ;
 131:L P[1043] 1000mm/sec FINE    ;
 132:  CALL IRVBKLSH(1) ;
 133:  VISION CAMERA_CALIB 'CAM_CAL' Request=1043 ;
 134:L P[1044] 1000mm/sec FINE    ;
 135:  CALL IRVBKLSH(1) ;
 136:  VISION CAMERA_CALIB 'CAM_CAL' Request=1044 ;
 137:L P[1045] 1000mm/sec FINE    ;
 138:  CALL IRVBKLSH(1) ;
 139:  VISION CAMERA_CALIB 'CAM_CAL' Request=1045 ;
 140:L P[1046] 1000mm/sec FINE    ;
 141:  CALL IRVBKLSH(1) ;
 142:  VISION CAMERA_CALIB 'CAM_CAL' Request=1046 ;
 143:L P[1047] 1000mm/sec FINE    ;
 144:  CALL IRVBKLSH(1) ;
 145:  VISION CAMERA_CALIB 'CAM_CAL' Request=1047 ;
 146:L P[1048] 1000mm/sec FINE    ;
 147:  CALL IRVBKLSH(1) ;
 148:  VISION CAMERA_CALIB 'CAM_CAL' Request=1048 ;
 149:L P[1049] 1000mm/sec FINE    ;
 150:  CALL IRVBKLSH(1) ;
 151:  VISION CAMERA_CALIB 'CAM_CAL' Request=1049 ;
 152:L P[2001] 1000mm/sec FINE    ;
 153:  CALL IRVBKLSH(1) ;
 154:  VISION CAMERA_CALIB 'CAM_CAL' Request=2001 ;
 155:L P[2002] 1000mm/sec FINE    ;
 156:  CALL IRVBKLSH(1) ;
 157:  VISION CAMERA_CALIB 'CAM_CAL' Request=2002 ;
 158:L P[2003] 1000mm/sec FINE    ;
 159:  CALL IRVBKLSH(1) ;
 160:  VISION CAMERA_CALIB 'CAM_CAL' Request=2003 ;
 161:L P[2004] 1000mm/sec FINE    ;
 162:  CALL IRVBKLSH(1) ;
 163:  VISION CAMERA_CALIB 'CAM_CAL' Request=2004 ;
 164:L P[2005] 1000mm/sec FINE    ;
 165:  CALL IRVBKLSH(1) ;
 166:  VISION CAMERA_CALIB 'CAM_CAL' Request=2005 ;
 167:L P[2006] 1000mm/sec FINE    ;
 168:  CALL IRVBKLSH(1) ;
 169:  VISION CAMERA_CALIB 'CAM_CAL' Request=2006 ;
 170:L P[2007] 1000mm/sec FINE    ;
 171:  CALL IRVBKLSH(1) ;
 172:  VISION CAMERA_CALIB 'CAM_CAL' Request=2007 ;
 173:L P[2008] 1000mm/sec FINE    ;
 174:  CALL IRVBKLSH(1) ;
 175:  VISION CAMERA_CALIB 'CAM_CAL' Request=2008 ;
 176:L P[2009] 1000mm/sec FINE    ;
 177:  CALL IRVBKLSH(1) ;
 178:  VISION CAMERA_CALIB 'CAM_CAL' Request=2009 ;
 179:L P[2010] 1000mm/sec FINE    ;
 180:  CALL IRVBKLSH(1) ;
 181:  VISION CAMERA_CALIB 'CAM_CAL' Request=2010 ;
 182:L P[2011] 1000mm/sec FINE    ;
 183:  CALL IRVBKLSH(1) ;
 184:  VISION CAMERA_CALIB 'CAM_CAL' Request=2011 ;
 185:L P[2012] 1000mm/sec FINE    ;
 186:  CALL IRVBKLSH(1) ;
 187:  VISION CAMERA_CALIB 'CAM_CAL' Request=2012 ;
 188:L P[2013] 1000mm/sec FINE    ;
 189:  CALL IRVBKLSH(1) ;
 190:  VISION CAMERA_CALIB 'CAM_CAL' Request=2013 ;
 191:L P[2014] 1000mm/sec FINE    ;
 192:  CALL IRVBKLSH(1) ;
 193:  VISION CAMERA_CALIB 'CAM_CAL' Request=2014 ;
 194:L P[2015] 1000mm/sec FINE    ;
 195:  CALL IRVBKLSH(1) ;
 196:  VISION CAMERA_CALIB 'CAM_CAL' Request=2015 ;
 197:L P[2016] 1000mm/sec FINE    ;
 198:  CALL IRVBKLSH(1) ;
 199:  VISION CAMERA_CALIB 'CAM_CAL' Request=2016 ;
 200:L P[2017] 1000mm/sec FINE    ;
 201:  CALL IRVBKLSH(1) ;
 202:  VISION CAMERA_CALIB 'CAM_CAL' Request=2017 ;
 203:L P[2018] 1000mm/sec FINE    ;
 204:  CALL IRVBKLSH(1) ;
 205:  VISION CAMERA_CALIB 'CAM_CAL' Request=2018 ;
 206:L P[2019] 1000mm/sec FINE    ;
 207:  CALL IRVBKLSH(1) ;
 208:  VISION CAMERA_CALIB 'CAM_CAL' Request=2019 ;
 209:L P[2020] 1000mm/sec FINE    ;
 210:  CALL IRVBKLSH(1) ;
 211:  VISION CAMERA_CALIB 'CAM_CAL' Request=2020 ;
 212:L P[2021] 1000mm/sec FINE    ;
 213:  CALL IRVBKLSH(1) ;
 214:  VISION CAMERA_CALIB 'CAM_CAL' Request=2021 ;
 215:L P[2022] 1000mm/sec FINE    ;
 216:  CALL IRVBKLSH(1) ;
 217:  VISION CAMERA_CALIB 'CAM_CAL' Request=2022 ;
 218:L P[2023] 1000mm/sec FINE    ;
 219:  CALL IRVBKLSH(1) ;
 220:  VISION CAMERA_CALIB 'CAM_CAL' Request=2023 ;
 221:L P[2024] 1000mm/sec FINE    ;
 222:  CALL IRVBKLSH(1) ;
 223:  VISION CAMERA_CALIB 'CAM_CAL' Request=2024 ;
 224:L P[2025] 1000mm/sec FINE    ;
 225:  CALL IRVBKLSH(1) ;
 226:  VISION CAMERA_CALIB 'CAM_CAL' Request=2025 ;
 227:L P[2026] 1000mm/sec FINE    ;
 228:  CALL IRVBKLSH(1) ;
 229:  VISION CAMERA_CALIB 'CAM_CAL' Request=2026 ;
 230:L P[2027] 1000mm/sec FINE    ;
 231:  CALL IRVBKLSH(1) ;
 232:  VISION CAMERA_CALIB 'CAM_CAL' Request=2027 ;
 233:L P[2028] 1000mm/sec FINE    ;
 234:  CALL IRVBKLSH(1) ;
 235:  VISION CAMERA_CALIB 'CAM_CAL' Request=2028 ;
 236:L P[2029] 1000mm/sec FINE    ;
 237:  CALL IRVBKLSH(1) ;
 238:  VISION CAMERA_CALIB 'CAM_CAL' Request=2029 ;
 239:L P[2030] 1000mm/sec FINE    ;
 240:  CALL IRVBKLSH(1) ;
 241:  VISION CAMERA_CALIB 'CAM_CAL' Request=2030 ;
 242:L P[2031] 1000mm/sec FINE    ;
 243:  CALL IRVBKLSH(1) ;
 244:  VISION CAMERA_CALIB 'CAM_CAL' Request=2031 ;
 245:L P[2032] 1000mm/sec FINE    ;
 246:  CALL IRVBKLSH(1) ;
 247:  VISION CAMERA_CALIB 'CAM_CAL' Request=2032 ;
 248:L P[2033] 1000mm/sec FINE    ;
 249:  CALL IRVBKLSH(1) ;
 250:  VISION CAMERA_CALIB 'CAM_CAL' Request=2033 ;
 251:L P[2034] 1000mm/sec FINE    ;
 252:  CALL IRVBKLSH(1) ;
 253:  VISION CAMERA_CALIB 'CAM_CAL' Request=2034 ;
 254:L P[2035] 1000mm/sec FINE    ;
 255:  CALL IRVBKLSH(1) ;
 256:  VISION CAMERA_CALIB 'CAM_CAL' Request=2035 ;
 257:L P[2036] 1000mm/sec FINE    ;
 258:  CALL IRVBKLSH(1) ;
 259:  VISION CAMERA_CALIB 'CAM_CAL' Request=2036 ;
 260:L P[2037] 1000mm/sec FINE    ;
 261:  CALL IRVBKLSH(1) ;
 262:  VISION CAMERA_CALIB 'CAM_CAL' Request=2037 ;
 263:L P[2038] 1000mm/sec FINE    ;
 264:  CALL IRVBKLSH(1) ;
 265:  VISION CAMERA_CALIB 'CAM_CAL' Request=2038 ;
 266:L P[2039] 1000mm/sec FINE    ;
 267:  CALL IRVBKLSH(1) ;
 268:  VISION CAMERA_CALIB 'CAM_CAL' Request=2039 ;
 269:L P[2040] 1000mm/sec FINE    ;
 270:  CALL IRVBKLSH(1) ;
 271:  VISION CAMERA_CALIB 'CAM_CAL' Request=2040 ;
 272:L P[2041] 1000mm/sec FINE    ;
 273:  CALL IRVBKLSH(1) ;
 274:  VISION CAMERA_CALIB 'CAM_CAL' Request=2041 ;
 275:L P[2042] 1000mm/sec FINE    ;
 276:  CALL IRVBKLSH(1) ;
 277:  VISION CAMERA_CALIB 'CAM_CAL' Request=2042 ;
 278:L P[2043] 1000mm/sec FINE    ;
 279:  CALL IRVBKLSH(1) ;
 280:  VISION CAMERA_CALIB 'CAM_CAL' Request=2043 ;
 281:L P[2044] 1000mm/sec FINE    ;
 282:  CALL IRVBKLSH(1) ;
 283:  VISION CAMERA_CALIB 'CAM_CAL' Request=2044 ;
 284:L P[2045] 1000mm/sec FINE    ;
 285:  CALL IRVBKLSH(1) ;
 286:  VISION CAMERA_CALIB 'CAM_CAL' Request=2045 ;
 287:L P[2046] 1000mm/sec FINE    ;
 288:  CALL IRVBKLSH(1) ;
 289:  VISION CAMERA_CALIB 'CAM_CAL' Request=2046 ;
 290:L P[2047] 1000mm/sec FINE    ;
 291:  CALL IRVBKLSH(1) ;
 292:  VISION CAMERA_CALIB 'CAM_CAL' Request=2047 ;
 293:L P[2048] 1000mm/sec FINE    ;
 294:  CALL IRVBKLSH(1) ;
 295:  VISION CAMERA_CALIB 'CAM_CAL' Request=2048 ;
 296:L P[2049] 1000mm/sec FINE    ;
 297:  CALL IRVBKLSH(1) ;
 298:  VISION CAMERA_CALIB 'CAM_CAL' Request=2049 ;
 299:L P[2] 1000mm/sec FINE    ;
 300:  VISION CAMERA_CALIB 'CAM_CAL' Request=2 ;
/POS
P[1]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.807 deg,	J2=   -27.186 deg,	J3=   -32.861 deg,
	J4=      .790 deg,	J5=   -57.163 deg,	J6=   132.786 deg
};
P[2]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.807 deg,	J2=   -27.186 deg,	J3=   -32.861 deg,
	J4=      .790 deg,	J5=   -57.163 deg,	J6=   132.786 deg
};
P[1001]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.307 deg,	J2=   -30.484 deg,	J3=   -29.231 deg,
	J4=      .760 deg,	J5=   -60.810 deg,	J6=   131.345 deg
};
P[1002]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.343 deg,	J2=   -30.037 deg,	J3=   -30.105 deg,
	J4=      .766 deg,	J5=   -59.935 deg,	J6=   131.367 deg
};
P[1003]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.379 deg,	J2=   -29.568 deg,	J3=   -30.990 deg,
	J4=      .773 deg,	J5=   -59.050 deg,	J6=   131.389 deg
};
P[1004]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.415 deg,	J2=   -29.078 deg,	J3=   -31.887 deg,
	J4=      .781 deg,	J5=   -58.152 deg,	J6=   131.411 deg
};
P[1005]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.451 deg,	J2=   -28.566 deg,	J3=   -32.796 deg,
	J4=      .789 deg,	J5=   -57.243 deg,	J6=   131.432 deg
};
P[1006]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.487 deg,	J2=   -28.032 deg,	J3=   -33.717 deg,
	J4=      .797 deg,	J5=   -56.322 deg,	J6=   131.453 deg
};
P[1007]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.523 deg,	J2=   -27.475 deg,	J3=   -34.650 deg,
	J4=      .806 deg,	J5=   -55.389 deg,	J6=   131.473 deg
};
P[1008]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.924 deg,	J2=   -26.722 deg,	J3=   -35.287 deg,
	J4=      .813 deg,	J5=   -54.748 deg,	J6=   131.863 deg
};
P[1009]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.889 deg,	J2=   -27.290 deg,	J3=   -34.350 deg,
	J4=      .804 deg,	J5=   -55.684 deg,	J6=   131.844 deg
};
P[1010]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.853 deg,	J2=   -27.836 deg,	J3=   -33.426 deg,
	J4=      .795 deg,	J5=   -56.609 deg,	J6=   131.824 deg
};
P[1011]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.817 deg,	J2=   -28.360 deg,	J3=   -32.513 deg,
	J4=      .787 deg,	J5=   -57.522 deg,	J6=   131.803 deg
};
P[1012]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.781 deg,	J2=   -28.862 deg,	J3=   -31.612 deg,
	J4=      .779 deg,	J5=   -58.423 deg,	J6=   131.782 deg
};
P[1013]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.746 deg,	J2=   -29.342 deg,	J3=   -30.723 deg,
	J4=      .772 deg,	J5=   -59.313 deg,	J6=   131.760 deg
};
P[1014]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -42.710 deg,	J2=   -29.801 deg,	J3=   -29.845 deg,
	J4=      .765 deg,	J5=   -60.191 deg,	J6=   131.738 deg
};
P[1015]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.072 deg,	J2=   -29.561 deg,	J3=   -29.587 deg,
	J4=      .763 deg,	J5=   -60.445 deg,	J6=   132.104 deg
};
P[1016]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.108 deg,	J2=   -29.111 deg,	J3=   -30.458 deg,
	J4=      .770 deg,	J5=   -59.574 deg,	J6=   132.126 deg
};
P[1017]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.143 deg,	J2=   -28.641 deg,	J3=   -31.340 deg,
	J4=      .777 deg,	J5=   -58.692 deg,	J6=   132.148 deg
};
P[1018]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.179 deg,	J2=   -28.149 deg,	J3=   -32.233 deg,
	J4=      .784 deg,	J5=   -57.798 deg,	J6=   132.169 deg
};
P[1019]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.214 deg,	J2=   -27.636 deg,	J3=   -33.137 deg,
	J4=      .792 deg,	J5=   -56.893 deg,	J6=   132.190 deg
};
P[1020]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.250 deg,	J2=   -27.101 deg,	J3=   -34.053 deg,
	J4=      .801 deg,	J5=   -55.977 deg,	J6=   132.210 deg
};
P[1021]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.285 deg,	J2=   -26.543 deg,	J3=   -34.981 deg,
	J4=      .810 deg,	J5=   -55.049 deg,	J6=   132.230 deg
};
P[1022]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.677 deg,	J2=   -25.791 deg,	J3=   -35.609 deg,
	J4=      .817 deg,	J5=   -54.417 deg,	J6=   132.610 deg
};
P[1023]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.642 deg,	J2=   -26.360 deg,	J3=   -34.678 deg,
	J4=      .807 deg,	J5=   -55.348 deg,	J6=   132.591 deg
};
P[1024]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.607 deg,	J2=   -26.906 deg,	J3=   -33.759 deg,
	J4=      .798 deg,	J5=   -56.267 deg,	J6=   132.572 deg
};
P[1025]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.571 deg,	J2=   -27.430 deg,	J3=   -32.851 deg,
	J4=      .790 deg,	J5=   -57.175 deg,	J6=   132.551 deg
};
P[1026]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.536 deg,	J2=   -27.933 deg,	J3=   -31.954 deg,
	J4=      .782 deg,	J5=   -58.072 deg,	J6=   132.530 deg
};
P[1027]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.500 deg,	J2=   -28.415 deg,	J3=   -31.069 deg,
	J4=      .775 deg,	J5=   -58.959 deg,	J6=   132.509 deg
};
P[1028]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.465 deg,	J2=   -28.877 deg,	J3=   -30.194 deg,
	J4=      .768 deg,	J5=   -59.834 deg,	J6=   132.487 deg
};
P[1029]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.818 deg,	J2=   -28.638 deg,	J3=   -29.931 deg,
	J4=      .766 deg,	J5=   -60.092 deg,	J6=   132.844 deg
};
P[1030]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.853 deg,	J2=   -28.186 deg,	J3=   -30.799 deg,
	J4=      .773 deg,	J5=   -59.224 deg,	J6=   132.866 deg
};
P[1031]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.889 deg,	J2=   -27.713 deg,	J3=   -31.678 deg,
	J4=      .780 deg,	J5=   -58.345 deg,	J6=   132.887 deg
};
P[1032]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.924 deg,	J2=   -27.220 deg,	J3=   -32.567 deg,
	J4=      .788 deg,	J5=   -57.455 deg,	J6=   132.908 deg
};
P[1033]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.959 deg,	J2=   -26.706 deg,	J3=   -33.467 deg,
	J4=      .796 deg,	J5=   -56.555 deg,	J6=   132.929 deg
};
P[1034]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -43.994 deg,	J2=   -26.171 deg,	J3=   -34.378 deg,
	J4=      .804 deg,	J5=   -55.644 deg,	J6=   132.949 deg
};
P[1035]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.030 deg,	J2=   -25.614 deg,	J3=   -35.300 deg,
	J4=      .814 deg,	J5=   -54.721 deg,	J6=   132.968 deg
};
P[1036]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.412 deg,	J2=   -24.863 deg,	J3=   -35.919 deg,
	J4=      .820 deg,	J5=   -54.098 deg,	J6=   133.340 deg
};
P[1037]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.377 deg,	J2=   -25.431 deg,	J3=   -34.994 deg,
	J4=      .811 deg,	J5=   -55.023 deg,	J6=   133.321 deg
};
P[1038]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.342 deg,	J2=   -25.977 deg,	J3=   -34.080 deg,
	J4=      .802 deg,	J5=   -55.937 deg,	J6=   133.301 deg
};
P[1039]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.307 deg,	J2=   -26.502 deg,	J3=   -33.177 deg,
	J4=      .793 deg,	J5=   -56.841 deg,	J6=   133.281 deg
};
P[1040]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.272 deg,	J2=   -27.006 deg,	J3=   -32.285 deg,
	J4=      .786 deg,	J5=   -57.734 deg,	J6=   133.261 deg
};
P[1041]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.237 deg,	J2=   -27.489 deg,	J3=   -31.403 deg,
	J4=      .778 deg,	J5=   -58.616 deg,	J6=   133.240 deg
};
P[1042]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.202 deg,	J2=   -27.953 deg,	J3=   -30.532 deg,
	J4=      .771 deg,	J5=   -59.487 deg,	J6=   133.218 deg
};
P[1043]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.546 deg,	J2=   -27.716 deg,	J3=   -30.265 deg,
	J4=      .769 deg,	J5=   -59.750 deg,	J6=   133.567 deg
};
P[1044]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.581 deg,	J2=   -27.262 deg,	J3=   -31.130 deg,
	J4=      .776 deg,	J5=   -58.885 deg,	J6=   133.588 deg
};
P[1045]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.616 deg,	J2=   -26.787 deg,	J3=   -32.004 deg,
	J4=      .783 deg,	J5=   -58.010 deg,	J6=   133.609 deg
};
P[1046]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.651 deg,	J2=   -26.293 deg,	J3=   -32.889 deg,
	J4=      .791 deg,	J5=   -57.125 deg,	J6=   133.630 deg
};
P[1047]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.686 deg,	J2=   -25.779 deg,	J3=   -33.785 deg,
	J4=      .799 deg,	J5=   -56.229 deg,	J6=   133.650 deg
};
P[1048]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.721 deg,	J2=   -25.243 deg,	J3=   -34.690 deg,
	J4=      .808 deg,	J5=   -55.323 deg,	J6=   133.669 deg
};
P[1049]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -44.755 deg,	J2=   -24.686 deg,	J3=   -35.607 deg,
	J4=      .817 deg,	J5=   -54.406 deg,	J6=   133.688 deg
};
P[2001]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.597 deg,	J2=   -20.435 deg,	J3=   -36.507 deg,
	J4=      .823 deg,	J5=   -53.555 deg,	J6=   129.517 deg
};
P[2002]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.575 deg,	J2=   -20.770 deg,	J3=   -35.956 deg,
	J4=      .817 deg,	J5=   -54.106 deg,	J6=   129.504 deg
};
P[2003]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.553 deg,	J2=   -21.098 deg,	J3=   -35.408 deg,
	J4=      .811 deg,	J5=   -54.654 deg,	J6=   129.492 deg
};
P[2004]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.531 deg,	J2=   -21.419 deg,	J3=   -34.864 deg,
	J4=      .806 deg,	J5=   -55.198 deg,	J6=   129.479 deg
};
P[2005]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.509 deg,	J2=   -21.733 deg,	J3=   -34.323 deg,
	J4=      .801 deg,	J5=   -55.739 deg,	J6=   129.467 deg
};
P[2006]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.487 deg,	J2=   -22.039 deg,	J3=   -33.785 deg,
	J4=      .796 deg,	J5=   -56.277 deg,	J6=   129.454 deg
};
P[2007]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.465 deg,	J2=   -22.339 deg,	J3=   -33.250 deg,
	J4=      .791 deg,	J5=   -56.812 deg,	J6=   129.441 deg
};
P[2008]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.264 deg,	J2=   -22.695 deg,	J3=   -32.925 deg,
	J4=      .787 deg,	J5=   -57.140 deg,	J6=   129.244 deg
};
P[2009]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.286 deg,	J2=   -22.399 deg,	J3=   -33.458 deg,
	J4=      .792 deg,	J5=   -56.606 deg,	J6=   129.258 deg
};
P[2010]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.308 deg,	J2=   -22.096 deg,	J3=   -33.996 deg,
	J4=      .797 deg,	J5=   -56.069 deg,	J6=   129.271 deg
};
P[2011]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.330 deg,	J2=   -21.786 deg,	J3=   -34.536 deg,
	J4=      .802 deg,	J5=   -55.528 deg,	J6=   129.283 deg
};
P[2012]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.352 deg,	J2=   -21.468 deg,	J3=   -35.080 deg,
	J4=      .808 deg,	J5=   -54.984 deg,	J6=   129.296 deg
};
P[2013]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.374 deg,	J2=   -21.144 deg,	J3=   -35.627 deg,
	J4=      .813 deg,	J5=   -54.437 deg,	J6=   129.308 deg
};
P[2014]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.395 deg,	J2=   -20.812 deg,	J3=   -36.178 deg,
	J4=      .819 deg,	J5=   -53.886 deg,	J6=   129.321 deg
};
P[2015]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.214 deg,	J2=   -20.851 deg,	J3=   -36.401 deg,
	J4=      .821 deg,	J5=   -53.665 deg,	J6=   129.136 deg
};
P[2016]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.192 deg,	J2=   -21.187 deg,	J3=   -35.848 deg,
	J4=      .815 deg,	J5=   -54.218 deg,	J6=   129.124 deg
};
P[2017]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.171 deg,	J2=   -21.515 deg,	J3=   -35.298 deg,
	J4=      .810 deg,	J5=   -54.768 deg,	J6=   129.111 deg
};
P[2018]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.149 deg,	J2=   -21.837 deg,	J3=   -34.751 deg,
	J4=      .804 deg,	J5=   -55.315 deg,	J6=   129.099 deg
};
P[2019]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.127 deg,	J2=   -22.151 deg,	J3=   -34.208 deg,
	J4=      .799 deg,	J5=   -55.859 deg,	J6=   129.086 deg
};
P[2020]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.105 deg,	J2=   -22.458 deg,	J3=   -33.668 deg,
	J4=      .794 deg,	J5=   -56.399 deg,	J6=   129.074 deg
};
P[2021]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.083 deg,	J2=   -22.757 deg,	J3=   -33.131 deg,
	J4=      .789 deg,	J5=   -56.936 deg,	J6=   129.061 deg
};
P[2022]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.879 deg,	J2=   -23.113 deg,	J3=   -32.803 deg,
	J4=      .786 deg,	J5=   -57.266 deg,	J6=   128.862 deg
};
P[2023]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.901 deg,	J2=   -22.817 deg,	J3=   -33.339 deg,
	J4=      .791 deg,	J5=   -56.730 deg,	J6=   128.875 deg
};
P[2024]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.923 deg,	J2=   -22.514 deg,	J3=   -33.879 deg,
	J4=      .796 deg,	J5=   -56.190 deg,	J6=   128.888 deg
};
P[2025]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.945 deg,	J2=   -22.203 deg,	J3=   -34.421 deg,
	J4=      .801 deg,	J5=   -55.647 deg,	J6=   128.901 deg
};
P[2026]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.967 deg,	J2=   -21.886 deg,	J3=   -34.967 deg,
	J4=      .806 deg,	J5=   -55.101 deg,	J6=   128.913 deg
};
P[2027]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.988 deg,	J2=   -21.560 deg,	J3=   -35.517 deg,
	J4=      .812 deg,	J5=   -54.551 deg,	J6=   128.925 deg
};
P[2028]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -40.010 deg,	J2=   -21.228 deg,	J3=   -36.070 deg,
	J4=      .817 deg,	J5=   -53.998 deg,	J6=   128.937 deg
};
P[2029]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.827 deg,	J2=   -21.267 deg,	J3=   -36.293 deg,
	J4=      .819 deg,	J5=   -53.777 deg,	J6=   128.750 deg
};
P[2030]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.805 deg,	J2=   -21.603 deg,	J3=   -35.738 deg,
	J4=      .814 deg,	J5=   -54.333 deg,	J6=   128.738 deg
};
P[2031]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.783 deg,	J2=   -21.932 deg,	J3=   -35.185 deg,
	J4=      .808 deg,	J5=   -54.885 deg,	J6=   128.726 deg
};
P[2032]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.762 deg,	J2=   -22.254 deg,	J3=   -34.636 deg,
	J4=      .803 deg,	J5=   -55.435 deg,	J6=   128.714 deg
};
P[2033]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.740 deg,	J2=   -22.568 deg,	J3=   -34.091 deg,
	J4=      .797 deg,	J5=   -55.980 deg,	J6=   128.702 deg
};
P[2034]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.718 deg,	J2=   -22.875 deg,	J3=   -33.549 deg,
	J4=      .792 deg,	J5=   -56.523 deg,	J6=   128.689 deg
};
P[2035]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.696 deg,	J2=   -23.175 deg,	J3=   -33.010 deg,
	J4=      .787 deg,	J5=   -57.061 deg,	J6=   128.676 deg
};
P[2036]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.491 deg,	J2=   -23.531 deg,	J3=   -32.680 deg,
	J4=      .784 deg,	J5=   -57.394 deg,	J6=   128.476 deg
};
P[2037]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.512 deg,	J2=   -23.235 deg,	J3=   -33.218 deg,
	J4=      .789 deg,	J5=   -56.856 deg,	J6=   128.489 deg
};
P[2038]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.534 deg,	J2=   -22.931 deg,	J3=   -33.759 deg,
	J4=      .794 deg,	J5=   -56.314 deg,	J6=   128.501 deg
};
P[2039]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.555 deg,	J2=   -22.620 deg,	J3=   -34.304 deg,
	J4=      .799 deg,	J5=   -55.769 deg,	J6=   128.514 deg
};
P[2040]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.577 deg,	J2=   -22.302 deg,	J3=   -34.852 deg,
	J4=      .804 deg,	J5=   -55.220 deg,	J6=   128.526 deg
};
P[2041]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.599 deg,	J2=   -21.977 deg,	J3=   -35.404 deg,
	J4=      .810 deg,	J5=   -54.668 deg,	J6=   128.538 deg
};
P[2042]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.620 deg,	J2=   -21.644 deg,	J3=   -35.960 deg,
	J4=      .816 deg,	J5=   -54.113 deg,	J6=   128.550 deg
};
P[2043]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.434 deg,	J2=   -21.682 deg,	J3=   -36.183 deg,
	J4=      .818 deg,	J5=   -53.891 deg,	J6=   128.360 deg
};
P[2044]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.413 deg,	J2=   -22.019 deg,	J3=   -35.625 deg,
	J4=      .812 deg,	J5=   -54.450 deg,	J6=   128.349 deg
};
P[2045]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.391 deg,	J2=   -22.348 deg,	J3=   -35.070 deg,
	J4=      .806 deg,	J5=   -55.005 deg,	J6=   128.337 deg
};
P[2046]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.370 deg,	J2=   -22.670 deg,	J3=   -34.519 deg,
	J4=      .801 deg,	J5=   -55.556 deg,	J6=   128.325 deg
};
P[2047]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.348 deg,	J2=   -22.985 deg,	J3=   -33.971 deg,
	J4=      .796 deg,	J5=   -56.104 deg,	J6=   128.313 deg
};
P[2048]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.327 deg,	J2=   -23.292 deg,	J3=   -33.427 deg,
	J4=      .791 deg,	J5=   -56.648 deg,	J6=   128.300 deg
};
P[2049]{
   GP1:
	UF : 5, UT : 5,	
	J1=   -39.305 deg,	J2=   -23.592 deg,	J3=   -32.887 deg,
	J4=      .786 deg,	J5=   -57.189 deg,	J6=   128.287 deg
};
/END
