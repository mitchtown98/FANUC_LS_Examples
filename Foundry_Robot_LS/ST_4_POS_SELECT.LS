/PROG  ST_4_POS_SELECT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOUCH UP S1";
PROG_SIZE	= 13540;
CREATE		= DATE 19-04-10  TIME 21:43:22;
MODIFIED	= DATE 20-09-03  TIME 17:15:28;
FILE_NAME	= ST_1_POS;
VERSION		= 0;
LINE_COUNT	= 420;
MEMORY_SIZE	= 14160;
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
   2:  SELECT R[4:Station 4 PN]=1,JMP LBL[1] ;
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
  33:L P[3] 250mm/sec FINE    ;
  34:L P[4] 250mm/sec FINE    ;
  35:L P[5] 250mm/sec FINE    ;
  36:  LBL[1] ;
  37:  PR[29:S4 POS 1]=P[1]    ;
  38:  PR[30:S4 POS 2]=P[2]    ;
  39:  PR[31:S4 POS 3]=P[3]    ;
  40:  PR[32:S4 POS 4]=P[4]    ;
  41:  PR[33:S4 POS 5]=P[5]    ;
  42:  JMP LBL[99] ;
  43:  !******************************** ;
  44:   ;
  45:  !******************************** ;
  46:  !10020207 ;
  47:  !******************************** ;
  48:   ;
  49:L P[6] 250mm/sec FINE    ;
  50:L P[7] 250mm/sec FINE    ;
  51:L P[8] 250mm/sec FINE    ;
  52:L P[9] 250mm/sec FINE    ;
  53:L P[10] 250mm/sec FINE    ;
  54:  LBL[2] ;
  55:  PR[29:S4 POS 1]=P[6]    ;
  56:  PR[30:S4 POS 2]=P[7]    ;
  57:  PR[31:S4 POS 3]=P[8]    ;
  58:  PR[32:S4 POS 4]=P[9]    ;
  59:  PR[33:S4 POS 5]=P[10]    ;
  60:  JMP LBL[99] ;
  61:   ;
  62:   ;
  63:  !******************************** ;
  64:  !10036753 ;
  65:  !******************************** ;
  66:L P[11] 250mm/sec FINE    ;
  67:L P[12] 250mm/sec FINE    ;
  68:L P[13] 250mm/sec FINE    ;
  69:L P[14] 250mm/sec FINE    ;
  70:L P[15] 250mm/sec FINE    ;
  71:  LBL[3] ;
  72:  PR[29:S4 POS 1]=P[11]    ;
  73:  PR[30:S4 POS 2]=P[12]    ;
  74:  PR[31:S4 POS 3]=P[13]    ;
  75:  PR[32:S4 POS 4]=P[14]    ;
  76:  PR[33:S4 POS 5]=P[15]    ;
  77:  JMP LBL[99] ;
  78:   ;
  79:   ;
  80:  !******************************** ;
  81:  !10012829 ;
  82:  !******************************** ;
  83:L P[16] 250mm/sec FINE    ;
  84:L P[17] 250mm/sec FINE    ;
  85:L P[18] 250mm/sec FINE    ;
  86:L P[19] 250mm/sec FINE    ;
  87:L P[20] 250mm/sec FINE    ;
  88:  LBL[4] ;
  89:  PR[14:S1 POS 1]=P[16]    ;
  90:  PR[15:S1 POS 2]=P[17]    ;
  91:  PR[16:S1 POS 3]=P[18]    ;
  92:  PR[17:S1 POS 4]=P[19]    ;
  93:  PR[18:S1 POS 5]=P[20]    ;
  94:  JMP LBL[99] ;
  95:   ;
  96:   ;
  97:  !******************************** ;
  98:  !10018723 ;
  99:  !******************************** ;
 100:L P[21] 250mm/sec FINE    ;
 101:L P[22] 250mm/sec FINE    ;
 102:L P[23] 250mm/sec FINE    ;
 103:L P[24] 250mm/sec FINE    ;
 104:L P[25] 250mm/sec FINE    ;
 105:  LBL[5] ;
 106:  PR[14:S1 POS 1]=P[21]    ;
 107:  PR[15:S1 POS 2]=P[22]    ;
 108:  PR[16:S1 POS 3]=P[23]    ;
 109:  PR[17:S1 POS 4]=P[24]    ;
 110:  PR[18:S1 POS 5]=P[25]    ;
 111:  JMP LBL[99] ;
 112:   ;
 113:   ;
 114:  !******************************** ;
 115:  !10012731 ;
 116:  !******************************** ;
 117:L P[26] 250mm/sec FINE    ;
 118:L P[27] 250mm/sec FINE    ;
 119:L P[28] 250mm/sec FINE    ;
 120:L P[29] 250mm/sec FINE    ;
 121:L P[30] 250mm/sec FINE    ;
 122:  LBL[6] ;
 123:  PR[14:S1 POS 1]=P[26]    ;
 124:  PR[15:S1 POS 2]=P[27]    ;
 125:  PR[16:S1 POS 3]=P[28]    ;
 126:  PR[17:S1 POS 4]=P[29]    ;
 127:  PR[18:S1 POS 5]=P[30]    ;
 128:  JMP LBL[99] ;
 129:   ;
 130:   ;
 131:  !******************************** ;
 132:  !10016225 ;
 133:  !******************************** ;
 134:L P[31] 250mm/sec FINE    ;
 135:L P[32] 250mm/sec FINE    ;
 136:L P[33] 250mm/sec FINE    ;
 137:L P[34] 250mm/sec FINE    ;
 138:L P[35] 250mm/sec FINE    ;
 139:  LBL[7] ;
 140:  PR[14:S1 POS 1]=P[31]    ;
 141:  PR[15:S1 POS 2]=P[32]    ;
 142:  PR[16:S1 POS 3]=P[33]    ;
 143:  PR[17:S1 POS 4]=P[34]    ;
 144:  PR[18:S1 POS 5]=P[35]    ;
 145:  JMP LBL[99] ;
 146:   ;
 147:   ;
 148:  !******************************** ;
 149:  !10012265 ;
 150:  !******************************** ;
 151:L P[36] 250mm/sec FINE    ;
 152:L P[37] 250mm/sec FINE    ;
 153:L P[38] 250mm/sec FINE    ;
 154:L P[39] 250mm/sec FINE    ;
 155:L P[40] 250mm/sec FINE    ;
 156:  LBL[8] ;
 157:  PR[14:S1 POS 1]=P[36]    ;
 158:  PR[15:S1 POS 2]=P[37]    ;
 159:  PR[16:S1 POS 3]=P[38]    ;
 160:  PR[17:S1 POS 4]=P[39]    ;
 161:  PR[18:S1 POS 5]=P[40]    ;
 162:  JMP LBL[99] ;
 163:   ;
 164:   ;
 165:  !******************************** ;
 166:  !0 ;
 167:  !******************************** ;
 168:L P[41] 250mm/sec FINE    ;
 169:L P[42] 250mm/sec FINE    ;
 170:L P[43] 250mm/sec FINE    ;
 171:L P[44] 250mm/sec FINE    ;
 172:L P[45] 250mm/sec FINE    ;
 173:  LBL[9] ;
 174:  PR[14:S1 POS 1]=P[41]    ;
 175:  PR[15:S1 POS 2]=P[42]    ;
 176:  PR[16:S1 POS 3]=P[43]    ;
 177:  PR[17:S1 POS 4]=P[44]    ;
 178:  PR[18:S1 POS 5]=P[45]    ;
 179:  JMP LBL[99] ;
 180:   ;
 181:   ;
 182:  !******************************** ;
 183:  !10036715 ;
 184:  !******************************** ;
 185:L P[46] 250mm/sec FINE    ;
 186:L P[47] 250mm/sec FINE    ;
 187:L P[48] 250mm/sec FINE    ;
 188:L P[49] 250mm/sec FINE    ;
 189:L P[50] 250mm/sec FINE    ;
 190:  LBL[10] ;
 191:  PR[14:S1 POS 1]=P[46]    ;
 192:  PR[15:S1 POS 2]=P[47]    ;
 193:  PR[16:S1 POS 3]=P[48]    ;
 194:  PR[17:S1 POS 4]=P[49]    ;
 195:  PR[18:S1 POS 5]=P[50]    ;
 196:  JMP LBL[99] ;
 197:   ;
 198:   ;
 199:  !******************************** ;
 200:  !10016328 ;
 201:  !******************************** ;
 202:L P[51] 250mm/sec FINE    ;
 203:L P[52] 250mm/sec FINE    ;
 204:L P[53] 250mm/sec FINE    ;
 205:L P[54] 250mm/sec FINE    ;
 206:L P[55] 250mm/sec FINE    ;
 207:  LBL[11] ;
 208:  PR[14:S1 POS 1]=P[51]    ;
 209:  PR[15:S1 POS 2]=P[52]    ;
 210:  PR[16:S1 POS 3]=P[53]    ;
 211:  PR[17:S1 POS 4]=P[54]    ;
 212:  PR[18:S1 POS 5]=P[55]    ;
 213:  JMP LBL[99] ;
 214:   ;
 215:   ;
 216:  !******************************** ;
 217:  !10041525 ;
 218:  !******************************** ;
 219:L P[56] 250mm/sec FINE    ;
 220:L P[57] 250mm/sec FINE    ;
 221:L P[58] 250mm/sec FINE    ;
 222:L P[59] 250mm/sec FINE    ;
 223:L P[60] 250mm/sec FINE    ;
 224:  LBL[12] ;
 225:  PR[14:S1 POS 1]=P[56]    ;
 226:  PR[15:S1 POS 2]=P[57]    ;
 227:  PR[16:S1 POS 3]=P[58]    ;
 228:  PR[17:S1 POS 4]=P[59]    ;
 229:  PR[18:S1 POS 5]=P[60]    ;
 230:  JMP LBL[99] ;
 231:   ;
 232:   ;
 233:  !******************************** ;
 234:  !10001896 ;
 235:  !******************************** ;
 236:L P[61] 250mm/sec FINE    ;
 237:L P[62] 250mm/sec FINE    ;
 238:L P[63] 250mm/sec FINE    ;
 239:L P[64] 250mm/sec FINE    ;
 240:L P[65] 250mm/sec FINE    ;
 241:  LBL[13] ;
 242:  PR[14:S1 POS 1]=P[61]    ;
 243:  PR[15:S1 POS 2]=P[62]    ;
 244:  PR[16:S1 POS 3]=P[63]    ;
 245:  PR[17:S1 POS 4]=P[64]    ;
 246:  PR[18:S1 POS 5]=P[65]    ;
 247:  JMP LBL[99] ;
 248:   ;
 249:   ;
 250:  !******************************** ;
 251:  !10017979 ;
 252:  !******************************** ;
 253:L P[66] 250mm/sec FINE    ;
 254:L P[67] 250mm/sec FINE    ;
 255:L P[68] 250mm/sec FINE    ;
 256:L P[69] 250mm/sec FINE    ;
 257:L P[70] 250mm/sec FINE    ;
 258:  LBL[14] ;
 259:  PR[14:S1 POS 1]=P[66]    ;
 260:  PR[15:S1 POS 2]=P[67]    ;
 261:  PR[16:S1 POS 3]=P[68]    ;
 262:  PR[17:S1 POS 4]=P[69]    ;
 263:  PR[18:S1 POS 5]=P[70]    ;
 264:  JMP LBL[99] ;
 265:   ;
 266:   ;
 267:  !******************************** ;
 268:  !10034605 ;
 269:  !******************************** ;
 270:L P[71] 250mm/sec FINE    ;
 271:L P[72] 250mm/sec FINE    ;
 272:L P[73] 250mm/sec FINE    ;
 273:L P[74] 250mm/sec FINE    ;
 274:L P[75] 250mm/sec FINE    ;
 275:  LBL[15] ;
 276:  PR[14:S1 POS 1]=P[71]    ;
 277:  PR[15:S1 POS 2]=P[72]    ;
 278:  PR[16:S1 POS 3]=P[73]    ;
 279:  PR[17:S1 POS 4]=P[74]    ;
 280:  PR[18:S1 POS 5]=P[75]    ;
 281:  JMP LBL[99] ;
 282:   ;
 283:   ;
 284:  !******************************** ;
 285:  !10016331 ;
 286:  !******************************** ;
 287:L P[76] 250mm/sec FINE    ;
 288:L P[77] 250mm/sec FINE    ;
 289:L P[78] 250mm/sec FINE    ;
 290:L P[79] 250mm/sec FINE    ;
 291:L P[80] 250mm/sec FINE    ;
 292:  LBL[16] ;
 293:  PR[14:S1 POS 1]=P[76]    ;
 294:  PR[15:S1 POS 2]=P[77]    ;
 295:  PR[16:S1 POS 3]=P[78]    ;
 296:  PR[17:S1 POS 4]=P[79]    ;
 297:  PR[18:S1 POS 5]=P[80]    ;
 298:  JMP LBL[99] ;
 299:   ;
 300:   ;
 301:  !******************************** ;
 302:  !10037702 ;
 303:  !******************************** ;
 304:L P[81] 250mm/sec FINE    ;
 305:L P[82] 250mm/sec FINE    ;
 306:L P[83] 250mm/sec FINE    ;
 307:L P[84] 250mm/sec FINE    ;
 308:L P[85] 250mm/sec FINE    ;
 309:  LBL[17] ;
 310:  PR[14:S1 POS 1]=P[81]    ;
 311:  PR[15:S1 POS 2]=P[82]    ;
 312:  PR[16:S1 POS 3]=P[83]    ;
 313:  PR[17:S1 POS 4]=P[84]    ;
 314:  PR[18:S1 POS 5]=P[85]    ;
 315:  JMP LBL[99] ;
 316:   ;
 317:   ;
 318:  !******************************** ;
 319:  !10009779 ;
 320:  !******************************** ;
 321:L P[86] 250mm/sec FINE    ;
 322:L P[87] 250mm/sec FINE    ;
 323:L P[88] 250mm/sec FINE    ;
 324:L P[89] 250mm/sec FINE    ;
 325:L P[90] 250mm/sec FINE    ;
 326:  LBL[18] ;
 327:  PR[14:S1 POS 1]=P[86]    ;
 328:  PR[15:S1 POS 2]=P[87]    ;
 329:  PR[16:S1 POS 3]=P[88]    ;
 330:  PR[17:S1 POS 4]=P[89]    ;
 331:  PR[18:S1 POS 5]=P[90]    ;
 332:  JMP LBL[99] ;
 333:   ;
 334:   ;
 335:  !******************************** ;
 336:  !103133 ;
 337:  !******************************** ;
 338:L P[91] 250mm/sec FINE    ;
 339:L P[92] 250mm/sec FINE    ;
 340:L P[93] 250mm/sec FINE    ;
 341:L P[94] 250mm/sec FINE    ;
 342:L P[95] 250mm/sec FINE    ;
 343:  LBL[19] ;
 344:  PR[14:S1 POS 1]=P[91]    ;
 345:  PR[15:S1 POS 2]=P[92]    ;
 346:  PR[16:S1 POS 3]=P[93]    ;
 347:  PR[17:S1 POS 4]=P[94]    ;
 348:  PR[18:S1 POS 5]=P[95]    ;
 349:  JMP LBL[99] ;
 350:   ;
 351:   ;
 352:  !******************************** ;
 353:  !10030844 ;
 354:  !******************************** ;
 355:L P[96] 250mm/sec FINE    ;
 356:L P[97] 250mm/sec FINE    ;
 357:L P[98] 250mm/sec FINE    ;
 358:L P[99] 250mm/sec FINE    ;
 359:L P[100] 250mm/sec FINE    ;
 360:  LBL[20] ;
 361:  PR[14:S1 POS 1]=P[96]    ;
 362:  PR[15:S1 POS 2]=P[97]    ;
 363:  PR[16:S1 POS 3]=P[98]    ;
 364:  PR[17:S1 POS 4]=P[99]    ;
 365:  PR[18:S1 POS 5]=P[100]    ;
 366:  JMP LBL[99] ;
 367:   ;
 368:   ;
 369:  !******************************** ;
 370:  !102610 ;
 371:  !******************************** ;
 372:L P[101] 250mm/sec FINE    ;
 373:L P[102] 250mm/sec FINE    ;
 374:L P[103] 250mm/sec FINE    ;
 375:L P[104] 250mm/sec FINE    ;
 376:L P[105] 250mm/sec FINE    ;
 377:  LBL[21] ;
 378:  PR[14:S1 POS 1]=P[101]    ;
 379:  PR[15:S1 POS 2]=P[102]    ;
 380:  PR[16:S1 POS 3]=P[103]    ;
 381:  PR[17:S1 POS 4]=P[104]    ;
 382:  PR[18:S1 POS 5]=P[105]    ;
 383:  JMP LBL[99] ;
 384:   ;
 385:   ;
 386:  !******************************** ;
 387:  !102035 ;
 388:  !******************************** ;
 389:L P[106] 250mm/sec FINE    ;
 390:L P[107] 250mm/sec FINE    ;
 391:L P[108] 250mm/sec FINE    ;
 392:L P[109] 250mm/sec FINE    ;
 393:L P[110] 250mm/sec FINE    ;
 394:  LBL[22] ;
 395:  PR[14:S1 POS 1]=P[106]    ;
 396:  PR[15:S1 POS 2]=P[107]    ;
 397:  PR[16:S1 POS 3]=P[108]    ;
 398:  PR[17:S1 POS 4]=P[109]    ;
 399:  PR[18:S1 POS 5]=P[110]    ;
 400:  JMP LBL[99] ;
 401:   ;
 402:   ;
 403:  !******************************** ;
 404:  !1009908 ;
 405:  !******************************** ;
 406:L P[111] 250mm/sec FINE    ;
 407:L P[112] 250mm/sec FINE    ;
 408:L P[113] 250mm/sec FINE    ;
 409:L P[114] 250mm/sec FINE    ;
 410:L P[115] 250mm/sec FINE    ;
 411:  LBL[23] ;
 412:  PR[14:S1 POS 1]=P[111]    ;
 413:  PR[15:S1 POS 2]=P[112]    ;
 414:  PR[16:S1 POS 3]=P[113]    ;
 415:  PR[17:S1 POS 4]=P[114]    ;
 416:  PR[18:S1 POS 5]=P[115]    ;
 417:  JMP LBL[99] ;
 418:   ;
 419:   ;
 420:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.514  mm,	Y =  1341.744  mm,	Z =   660.804  mm,
	W =   132.394 deg,	P =   -41.337 deg,	R =  -173.106 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   294.837  mm,	Y =  1355.547  mm,	Z =   706.030  mm,
	W =   131.338 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   536.545  mm,	Y =  1377.897  mm,	Z =   588.195  mm,
	W =   -43.463 deg,	P =   -78.640 deg,	R =     1.379 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   294.837  mm,	Y =  1355.547  mm,	Z =   706.030  mm,
	W =   131.338 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[5:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.514  mm,	Y =  1341.744  mm,	Z =   965.604  mm,
	W =   132.394 deg,	P =   -41.337 deg,	R =  -173.106 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   149.253  mm,	Y =  1297.250  mm,	Z =   611.454  mm,
	W =   132.370 deg,	P =   -41.305 deg,	R =  -173.082 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   300.651  mm,	Y =  1323.214  mm,	Z =   619.800  mm,
	W =   131.337 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   526.258  mm,	Y =  1354.939  mm,	Z =   537.236  mm,
	W =   -43.465 deg,	P =   -78.640 deg,	R =     1.382 deg
};
P[9:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   294.837  mm,	Y =  1355.547  mm,	Z =   706.030  mm,
	W =   131.338 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.514  mm,	Y =  1341.744  mm,	Z =   965.605  mm,
	W =   132.394 deg,	P =   -41.337 deg,	R =  -173.106 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   143.594  mm,	Y =  1366.224  mm,	Z =   625.123  mm,
	W =   132.394 deg,	P =   -41.337 deg,	R =  -173.106 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   298.357  mm,	Y =  1382.427  mm,	Z =   642.509  mm,
	W =   131.338 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   563.745  mm,	Y =  1408.136  mm,	Z =   563.874  mm,
	W =   -43.463 deg,	P =   -78.640 deg,	R =     1.379 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   309.717  mm,	Y =  1392.505  mm,	Z =   706.029  mm,
	W =   131.338 deg,	P =   -63.315 deg,	R =  -172.584 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   157.514  mm,	Y =  1341.744  mm,	Z =   965.604  mm,
	W =   132.394 deg,	P =   -41.337 deg,	R =  -173.106 deg
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
	X =  1344.991  mm,	Y =   369.255  mm,	Z =   631.625  mm,
	W =    84.233 deg,	P =   -27.739 deg,	R =  -126.326 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1338.526  mm,	Y =   353.561  mm,	Z =   334.417  mm,
	W =    84.233 deg,	P =   -27.740 deg,	R =  -126.326 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1447.202  mm,	Y =   248.531  mm,	Z =   229.034  mm,
	W =    17.014 deg,	P =   -11.294 deg,	R =  -100.306 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1401.634  mm,	Y =   346.690  mm,	Z =   204.907  mm,
	W =    -3.455 deg,	P =      .331 deg,	R =   -97.888 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1344.991  mm,	Y =   369.255  mm,	Z =   631.625  mm,
	W =    84.233 deg,	P =   -27.739 deg,	R =  -126.326 deg
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
	X = -1989.333  mm,	Y =  -373.371  mm,	Z =   358.086  mm,
	W =    47.180 deg,	P =   -22.262 deg,	R =    73.160 deg
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.607  mm,	Y =  -403.850  mm,	Z =   579.642  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1903.608  mm,	Y =  -403.850  mm,	Z =   375.641  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
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
