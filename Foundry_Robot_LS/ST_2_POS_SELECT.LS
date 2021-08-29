/PROG  ST_2_POS_SELECT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOUCH UP S1";
PROG_SIZE	= 13486;
CREATE		= DATE 19-04-10  TIME 21:43:08;
MODIFIED	= DATE 20-05-17  TIME 19:37:48;
FILE_NAME	= ST_1_POS;
VERSION		= 0;
LINE_COUNT	= 416;
MEMORY_SIZE	= 14122;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  LBL[100] ;
   2:  SELECT R[2:Station 2 PN]=1,JMP LBL[1] ;
   3:         =2,JMP LBL[2] ;
   4:         =3,JMP LBL[3] ;
   5:         =4,JMP LBL[4] ;
   6:         =5,JMP LBL[5] ;
   7:         =6,JMP LBL[6] ;
   8:         =7,JMP LBL[7] ;
   9:         =8,JMP LBL[8] ;
  10:         =9,JMP LBL[9] ;
  11:         =10,JMP LBL[10] ;
  12:         =11,JMP LBL[11] ;
  13:         =12,JMP LBL[12] ;
  14:         =13,JMP LBL[13] ;
  15:         =14,JMP LBL[14] ;
  16:         =15,JMP LBL[15] ;
  17:         =16,JMP LBL[16] ;
  18:         =17,JMP LBL[17] ;
  19:         =18,JMP LBL[18] ;
  20:         =19,JMP LBL[19] ;
  21:         =20,JMP LBL[20] ;
  22:         =21,JMP LBL[21] ;
  23:         =22,JMP LBL[22] ;
  24:         =23,JMP LBL[23] ;
  25:  JMP LBL[100] ;
  26:   ;
  27:  !******************************** ;
  28:  !10005661 ;
  29:  !******************************** ;
  30:   ;
  31:L P[1] 250mm/sec FINE    ;
  32:L P[2] 250mm/sec FINE    ;
  33:L P[3] 240mm/sec FINE    ;
  34:L P[4] 250mm/sec FINE    ;
  35:L P[5] 250mm/sec FINE    ;
  36:  LBL[1] ;
  37:  PR[19:S2 POS 1]=P[1]    ;
  38:  PR[20:S2 POS 2]=P[2]    ;
  39:  PR[21:S2 POS 3]=P[3]    ;
  40:  PR[22:S2 POS 4]=P[4]    ;
  41:  PR[23:S2 POS 5]=P[5]    ;
  42:  JMP LBL[99] ;
  43:  !******************************** ;
  44:   ;
  45:  !******************************** ;
  46:  !10020207 ;
  47:  !******************************** ;
  48:L P[6] 250mm/sec FINE    ;
  49:L P[7] 250mm/sec FINE    ;
  50:L P[8] 250mm/sec FINE    ;
  51:L P[9] 250mm/sec FINE    ;
  52:L P[10] 250mm/sec FINE    ;
  53:  LBL[2] ;
  54:  PR[14:S1 POS 1]=P[6]    ;
  55:  PR[15:S1 POS 2]=P[7]    ;
  56:  PR[16:S1 POS 3]=P[8]    ;
  57:  PR[17:S1 POS 4]=P[9]    ;
  58:  PR[18:S1 POS 5]=P[10]    ;
  59:  JMP LBL[99] ;
  60:   ;
  61:   ;
  62:  !******************************** ;
  63:  !******************************** ;
  64:L P[11] 250mm/sec FINE    ;
  65:L P[12] 250mm/sec FINE    ;
  66:L P[13] 250mm/sec FINE    ;
  67:L P[14] 250mm/sec FINE    ;
  68:L P[15] 250mm/sec FINE    ;
  69:  LBL[3] ;
  70:  PR[14:S1 POS 1]=P[11]    ;
  71:  PR[15:S1 POS 2]=P[12]    ;
  72:  PR[16:S1 POS 3]=P[13]    ;
  73:  PR[17:S1 POS 4]=P[14]    ;
  74:  PR[18:S1 POS 5]=P[15]    ;
  75:  JMP LBL[99] ;
  76:   ;
  77:   ;
  78:  !******************************** ;
  79:  !******************************** ;
  80:L P[16] 250mm/sec FINE    ;
  81:L P[17] 250mm/sec FINE    ;
  82:L P[18] 250mm/sec FINE    ;
  83:L P[19] 250mm/sec FINE    ;
  84:L P[20] 250mm/sec FINE    ;
  85:  LBL[4] ;
  86:  PR[14:S1 POS 1]=P[16]    ;
  87:  PR[15:S1 POS 2]=P[17]    ;
  88:  PR[16:S1 POS 3]=P[18]    ;
  89:  PR[17:S1 POS 4]=P[19]    ;
  90:  PR[18:S1 POS 5]=P[20]    ;
  91:  JMP LBL[99] ;
  92:   ;
  93:   ;
  94:  !******************************** ;
  95:  !******************************** ;
  96:L P[21] 250mm/sec FINE    ;
  97:L P[22] 250mm/sec FINE    ;
  98:L P[23] 250mm/sec FINE    ;
  99:L P[24] 250mm/sec FINE    ;
 100:L P[25] 250mm/sec FINE    ;
 101:  LBL[5] ;
 102:  PR[14:S1 POS 1]=P[21]    ;
 103:  PR[15:S1 POS 2]=P[22]    ;
 104:  PR[16:S1 POS 3]=P[23]    ;
 105:  PR[17:S1 POS 4]=P[24]    ;
 106:  PR[18:S1 POS 5]=P[25]    ;
 107:  JMP LBL[99] ;
 108:   ;
 109:   ;
 110:  !******************************** ;
 111:  !10012731 ;
 112:  !******************************** ;
 113:L P[26] 250mm/sec FINE    ;
 114:L P[27] 250mm/sec FINE    ;
 115:L P[28] 250mm/sec FINE    ;
 116:L P[29] 250mm/sec FINE    ;
 117:L P[30] 250mm/sec FINE    ;
 118:  LBL[6] ;
 119:  PR[14:S1 POS 1]=P[26]    ;
 120:  PR[15:S1 POS 2]=P[27]    ;
 121:  PR[16:S1 POS 3]=P[28]    ;
 122:  PR[17:S1 POS 4]=P[29]    ;
 123:  PR[18:S1 POS 5]=P[30]    ;
 124:  JMP LBL[99] ;
 125:   ;
 126:   ;
 127:  !******************************** ;
 128:  !10016225 ;
 129:  !******************************** ;
 130:L P[31] 250mm/sec FINE    ;
 131:L P[32] 250mm/sec FINE    ;
 132:L P[33] 250mm/sec FINE    ;
 133:L P[34] 250mm/sec FINE    ;
 134:L P[35] 250mm/sec FINE    ;
 135:  LBL[7] ;
 136:  PR[14:S1 POS 1]=P[31]    ;
 137:  PR[15:S1 POS 2]=P[32]    ;
 138:  PR[16:S1 POS 3]=P[33]    ;
 139:  PR[17:S1 POS 4]=P[34]    ;
 140:  PR[18:S1 POS 5]=P[35]    ;
 141:  JMP LBL[99] ;
 142:   ;
 143:   ;
 144:  !******************************** ;
 145:  !10012265 ;
 146:  !******************************** ;
 147:L P[36] 250mm/sec FINE    ;
 148:L P[37] 250mm/sec FINE    ;
 149:L P[38] 250mm/sec FINE    ;
 150:L P[39] 250mm/sec FINE    ;
 151:L P[40] 250mm/sec FINE    ;
 152:  LBL[8] ;
 153:  PR[14:S1 POS 1]=P[36]    ;
 154:  PR[15:S1 POS 2]=P[37]    ;
 155:  PR[16:S1 POS 3]=P[38]    ;
 156:  PR[17:S1 POS 4]=P[39]    ;
 157:  PR[18:S1 POS 5]=P[40]    ;
 158:  JMP LBL[99] ;
 159:   ;
 160:   ;
 161:  !******************************** ;
 162:  !10036753 ;
 163:  !******************************** ;
 164:L P[41] 250mm/sec FINE    ;
 165:L P[42] 250mm/sec FINE    ;
 166:L P[43] 250mm/sec FINE    ;
 167:L P[44] 250mm/sec FINE    ;
 168:L P[45] 250mm/sec FINE    ;
 169:  LBL[9] ;
 170:  PR[14:S1 POS 1]=P[41]    ;
 171:  PR[15:S1 POS 2]=P[42]    ;
 172:  PR[16:S1 POS 3]=P[43]    ;
 173:  PR[17:S1 POS 4]=P[44]    ;
 174:  PR[18:S1 POS 5]=P[45]    ;
 175:  JMP LBL[99] ;
 176:   ;
 177:   ;
 178:  !******************************** ;
 179:  !10036715 ;
 180:  !******************************** ;
 181:L P[46] 250mm/sec FINE    ;
 182:L P[47] 250mm/sec FINE    ;
 183:L P[48] 250mm/sec FINE    ;
 184:L P[49] 250mm/sec FINE    ;
 185:L P[50] 250mm/sec FINE    ;
 186:  LBL[10] ;
 187:  PR[14:S1 POS 1]=P[46]    ;
 188:  PR[15:S1 POS 2]=P[47]    ;
 189:  PR[16:S1 POS 3]=P[48]    ;
 190:  PR[17:S1 POS 4]=P[49]    ;
 191:  PR[18:S1 POS 5]=P[50]    ;
 192:  JMP LBL[99] ;
 193:   ;
 194:   ;
 195:  !******************************** ;
 196:  !10016328 ;
 197:  !******************************** ;
 198:L P[51] 250mm/sec FINE    ;
 199:L P[52] 250mm/sec FINE    ;
 200:L P[53] 250mm/sec FINE    ;
 201:L P[54] 250mm/sec FINE    ;
 202:L P[55] 250mm/sec FINE    ;
 203:  LBL[11] ;
 204:  PR[14:S1 POS 1]=P[51]    ;
 205:  PR[15:S1 POS 2]=P[52]    ;
 206:  PR[16:S1 POS 3]=P[53]    ;
 207:  PR[17:S1 POS 4]=P[54]    ;
 208:  PR[18:S1 POS 5]=P[55]    ;
 209:  JMP LBL[99] ;
 210:   ;
 211:   ;
 212:  !******************************** ;
 213:  !10041525 ;
 214:  !******************************** ;
 215:L P[56] 250mm/sec FINE    ;
 216:L P[57] 250mm/sec FINE    ;
 217:L P[58] 250mm/sec FINE    ;
 218:L P[59] 250mm/sec FINE    ;
 219:L P[60] 250mm/sec FINE    ;
 220:  LBL[12] ;
 221:  PR[14:S1 POS 1]=P[56]    ;
 222:  PR[15:S1 POS 2]=P[57]    ;
 223:  PR[16:S1 POS 3]=P[58]    ;
 224:  PR[17:S1 POS 4]=P[59]    ;
 225:  PR[18:S1 POS 5]=P[60]    ;
 226:  JMP LBL[99] ;
 227:   ;
 228:   ;
 229:  !******************************** ;
 230:  !10001896 ;
 231:  !******************************** ;
 232:L P[61] 250mm/sec FINE    ;
 233:L P[62] 250mm/sec FINE    ;
 234:L P[63] 250mm/sec FINE    ;
 235:L P[64] 250mm/sec FINE    ;
 236:L P[65] 250mm/sec FINE    ;
 237:  LBL[13] ;
 238:  PR[14:S1 POS 1]=P[61]    ;
 239:  PR[15:S1 POS 2]=P[62]    ;
 240:  PR[16:S1 POS 3]=P[63]    ;
 241:  PR[17:S1 POS 4]=P[64]    ;
 242:  PR[18:S1 POS 5]=P[65]    ;
 243:  JMP LBL[99] ;
 244:   ;
 245:   ;
 246:  !******************************** ;
 247:  !10017979 ;
 248:  !******************************** ;
 249:L P[66] 250mm/sec FINE    ;
 250:L P[67] 250mm/sec FINE    ;
 251:L P[68] 250mm/sec FINE    ;
 252:L P[69] 250mm/sec FINE    ;
 253:L P[70] 250mm/sec FINE    ;
 254:  LBL[14] ;
 255:  PR[14:S1 POS 1]=P[66]    ;
 256:  PR[15:S1 POS 2]=P[67]    ;
 257:  PR[16:S1 POS 3]=P[68]    ;
 258:  PR[17:S1 POS 4]=P[69]    ;
 259:  PR[18:S1 POS 5]=P[70]    ;
 260:  JMP LBL[99] ;
 261:   ;
 262:   ;
 263:  !******************************** ;
 264:  !10034605 ;
 265:  !******************************** ;
 266:L P[71] 250mm/sec FINE    ;
 267:L P[72] 250mm/sec FINE    ;
 268:L P[73] 250mm/sec FINE    ;
 269:L P[74] 250mm/sec FINE    ;
 270:L P[75] 250mm/sec FINE    ;
 271:  LBL[15] ;
 272:  PR[14:S1 POS 1]=P[71]    ;
 273:  PR[15:S1 POS 2]=P[72]    ;
 274:  PR[16:S1 POS 3]=P[73]    ;
 275:  PR[17:S1 POS 4]=P[74]    ;
 276:  PR[18:S1 POS 5]=P[75]    ;
 277:  JMP LBL[99] ;
 278:   ;
 279:   ;
 280:  !******************************** ;
 281:  !10016331 ;
 282:  !******************************** ;
 283:L P[76] 250mm/sec FINE    ;
 284:L P[77] 250mm/sec FINE    ;
 285:L P[78] 250mm/sec FINE    ;
 286:L P[79] 250mm/sec FINE    ;
 287:L P[80] 250mm/sec FINE    ;
 288:  LBL[16] ;
 289:  PR[14:S1 POS 1]=P[76]    ;
 290:  PR[15:S1 POS 2]=P[77]    ;
 291:  PR[16:S1 POS 3]=P[78]    ;
 292:  PR[17:S1 POS 4]=P[79]    ;
 293:  PR[18:S1 POS 5]=P[80]    ;
 294:  JMP LBL[99] ;
 295:   ;
 296:   ;
 297:  !******************************** ;
 298:  !10037702 ;
 299:  !******************************** ;
 300:L P[81] 250mm/sec FINE    ;
 301:L P[82] 250mm/sec FINE    ;
 302:L P[83] 250mm/sec FINE    ;
 303:L P[84] 250mm/sec FINE    ;
 304:L P[85] 250mm/sec FINE    ;
 305:  LBL[17] ;
 306:  PR[14:S1 POS 1]=P[81]    ;
 307:  PR[15:S1 POS 2]=P[82]    ;
 308:  PR[16:S1 POS 3]=P[83]    ;
 309:  PR[17:S1 POS 4]=P[84]    ;
 310:  PR[18:S1 POS 5]=P[85]    ;
 311:  JMP LBL[99] ;
 312:   ;
 313:   ;
 314:  !******************************** ;
 315:  !10009779 ;
 316:  !******************************** ;
 317:L P[86] 250mm/sec FINE    ;
 318:L P[87] 250mm/sec FINE    ;
 319:L P[88] 250mm/sec FINE    ;
 320:L P[89] 250mm/sec FINE    ;
 321:L P[90] 250mm/sec FINE    ;
 322:  LBL[18] ;
 323:  PR[14:S1 POS 1]=P[86]    ;
 324:  PR[15:S1 POS 2]=P[87]    ;
 325:  PR[16:S1 POS 3]=P[88]    ;
 326:  PR[17:S1 POS 4]=P[89]    ;
 327:  PR[18:S1 POS 5]=P[90]    ;
 328:  JMP LBL[99] ;
 329:   ;
 330:   ;
 331:  !******************************** ;
 332:  !103133 ;
 333:  !******************************** ;
 334:L P[91] 250mm/sec FINE    ;
 335:L P[92] 250mm/sec FINE    ;
 336:L P[93] 250mm/sec FINE    ;
 337:L P[94] 250mm/sec FINE    ;
 338:L P[95] 250mm/sec FINE    ;
 339:  LBL[19] ;
 340:  PR[14:S1 POS 1]=P[91]    ;
 341:  PR[15:S1 POS 2]=P[92]    ;
 342:  PR[16:S1 POS 3]=P[93]    ;
 343:  PR[17:S1 POS 4]=P[94]    ;
 344:  PR[18:S1 POS 5]=P[95]    ;
 345:  JMP LBL[99] ;
 346:   ;
 347:   ;
 348:  !******************************** ;
 349:  !10030844 ;
 350:  !******************************** ;
 351:L P[96] 250mm/sec FINE    ;
 352:L P[97] 250mm/sec FINE    ;
 353:L P[98] 250mm/sec FINE    ;
 354:L P[99] 250mm/sec FINE    ;
 355:L P[100] 250mm/sec FINE    ;
 356:  LBL[20] ;
 357:  PR[14:S1 POS 1]=P[96]    ;
 358:  PR[15:S1 POS 2]=P[97]    ;
 359:  PR[16:S1 POS 3]=P[98]    ;
 360:  PR[17:S1 POS 4]=P[99]    ;
 361:  PR[18:S1 POS 5]=P[100]    ;
 362:  JMP LBL[99] ;
 363:   ;
 364:   ;
 365:  !******************************** ;
 366:  !102610 ;
 367:  !******************************** ;
 368:L P[101] 250mm/sec FINE    ;
 369:L P[102] 250mm/sec FINE    ;
 370:L P[103] 250mm/sec FINE    ;
 371:L P[104] 250mm/sec FINE    ;
 372:L P[105] 250mm/sec FINE    ;
 373:  LBL[21] ;
 374:  PR[14:S1 POS 1]=P[101]    ;
 375:  PR[15:S1 POS 2]=P[102]    ;
 376:  PR[16:S1 POS 3]=P[103]    ;
 377:  PR[17:S1 POS 4]=P[104]    ;
 378:  PR[18:S1 POS 5]=P[105]    ;
 379:  JMP LBL[99] ;
 380:   ;
 381:   ;
 382:  !******************************** ;
 383:  !102035 ;
 384:  !******************************** ;
 385:L P[106] 250mm/sec FINE    ;
 386:L P[107] 250mm/sec FINE    ;
 387:L P[108] 250mm/sec FINE    ;
 388:L P[109] 250mm/sec FINE    ;
 389:L P[110] 250mm/sec FINE    ;
 390:  LBL[22] ;
 391:  PR[14:S1 POS 1]=P[106]    ;
 392:  PR[15:S1 POS 2]=P[107]    ;
 393:  PR[16:S1 POS 3]=P[108]    ;
 394:  PR[17:S1 POS 4]=P[109]    ;
 395:  PR[18:S1 POS 5]=P[110]    ;
 396:  JMP LBL[99] ;
 397:   ;
 398:   ;
 399:  !******************************** ;
 400:  !1009908 ;
 401:  !******************************** ;
 402:L P[111] 250mm/sec FINE    ;
 403:L P[112] 250mm/sec FINE    ;
 404:L P[113] 250mm/sec FINE    ;
 405:L P[114] 250mm/sec FINE    ;
 406:L P[115] 250mm/sec FINE    ;
 407:  LBL[23] ;
 408:  PR[14:S1 POS 1]=P[111]    ;
 409:  PR[15:S1 POS 2]=P[112]    ;
 410:  PR[16:S1 POS 3]=P[113]    ;
 411:  PR[17:S1 POS 4]=P[114]    ;
 412:  PR[18:S1 POS 5]=P[115]    ;
 413:  JMP LBL[99] ;
 414:   ;
 415:   ;
 416:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -976.213  mm,	Y = -1160.234  mm,	Z =   927.419  mm,
	W =   129.926 deg,	P =   -40.740 deg,	R =     7.260 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1170.924  mm,	Y = -1191.289  mm,	Z =   718.757  mm,
	W =   125.365 deg,	P =   -55.079 deg,	R =     2.619 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1529.289  mm,	Y = -1205.181  mm,	Z =   605.281  mm,
	W =   -50.574 deg,	P =   -79.355 deg,	R =  -173.458 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1158.178  mm,	Y = -1185.986  mm,	Z =   818.416  mm,
	W =   132.385 deg,	P =   -54.610 deg,	R =     3.152 deg
};
P[5:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -976.213  mm,	Y = -1160.234  mm,	Z =   927.419  mm,
	W =   129.926 deg,	P =   -40.740 deg,	R =     7.260 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -494.122  mm,	Y = -1158.955  mm,	Z =   384.918  mm,
	W =    83.618 deg,	P =   -29.775 deg,	R =    98.986 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -524.749  mm,	Y = -1177.170  mm,	Z =   348.353  mm,
	W =    59.891 deg,	P =   -23.748 deg,	R =   110.577 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -570.468  mm,	Y = -1222.179  mm,	Z =   234.829  mm,
	W =    14.657 deg,	P =    -1.606 deg,	R =   120.919 deg
};
P[9:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -525.431  mm,	Y = -1202.904  mm,	Z =   224.039  mm,
	W =     1.380 deg,	P =     5.092 deg,	R =   120.222 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -376.908  mm,	Y = -1217.234  mm,	Z =   375.419  mm,
	W =    83.687 deg,	P =   -29.580 deg,	R =    98.242 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[18:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[48:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -552.887  mm,	Y = -1239.625  mm,	Z =   353.486  mm,
	W =    83.687 deg,	P =   -29.580 deg,	R =    98.242 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -619.125  mm,	Y = -1258.951  mm,	Z =   263.697  mm,
	W =    49.628 deg,	P =   -19.403 deg,	R =   114.407 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -619.843  mm,	Y = -1272.844  mm,	Z =   215.049  mm,
	W =    14.330 deg,	P =    -1.434 deg,	R =   120.919 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -620.110  mm,	Y = -1278.015  mm,	Z =   204.889  mm,
	W =     1.380 deg,	P =     5.091 deg,	R =   120.222 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -552.887  mm,	Y = -1239.625  mm,	Z =   353.486  mm,
	W =    83.687 deg,	P =   -29.580 deg,	R =    98.242 deg
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
/END
