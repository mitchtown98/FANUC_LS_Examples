/PROG  SPILL_OFF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 12713;
CREATE		= DATE 19-03-29  TIME 02:08:50;
MODIFIED	= DATE 19-11-09  TIME 00:42:02;
FILE_NAME	= PROD_SEL;
VERSION		= 0;
LINE_COUNT	= 422;
MEMORY_SIZE	= 13457;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:   ;
   4:  LBL[98] ;
   5:  SELECT R[13:Cur Spill off An]=0,JMP LBL[100] ;
   6:         =1,JMP LBL[1] ;
   7:         =2,JMP LBL[2] ;
   8:         =3,JMP LBL[3] ;
   9:         =4,JMP LBL[4] ;
  10:         =5,JMP LBL[5] ;
  11:         =6,JMP LBL[6] ;
  12:         =7,JMP LBL[7] ;
  13:         =8,JMP LBL[8] ;
  14:         =9,JMP LBL[9] ;
  15:         =10,JMP LBL[10] ;
  16:         =11,JMP LBL[11] ;
  17:         =12,JMP LBL[12] ;
  18:         =13,JMP LBL[13] ;
  19:         =14,JMP LBL[14] ;
  20:         =15,JMP LBL[15] ;
  21:         =16,JMP LBL[16] ;
  22:         =17,JMP LBL[17] ;
  23:         =18,JMP LBL[18] ;
  24:         =19,JMP LBL[19] ;
  25:         =20,JMP LBL[20] ;
  26:         =21,JMP LBL[21] ;
  27:         =22,JMP LBL[22] ;
  28:         =23,JMP LBL[23] ;
  29:         =24,JMP LBL[24] ;
  30:         =25,JMP LBL[25] ;
  31:         =26,JMP LBL[26] ;
  32:         =27,JMP LBL[27] ;
  33:         =28,JMP LBL[28] ;
  34:         =29,JMP LBL[29] ;
  35:         =30,JMP LBL[30] ;
  36:         =31,JMP LBL[31] ;
  37:         =32,JMP LBL[32] ;
  38:         =33,JMP LBL[33] ;
  39:         =34,JMP LBL[34] ;
  40:         =35,JMP LBL[38] ;
  41:         =36,JMP LBL[36] ;
  42:         =37,JMP LBL[37] ;
  43:         =38,JMP LBL[38] ;
  44:         =39,JMP LBL[39] ;
  45:         =40,JMP LBL[40] ;
  46:         =41,JMP LBL[41] ;
  47:         =42,JMP LBL[42] ;
  48:         =43,JMP LBL[43] ;
  49:         =44,JMP LBL[44] ;
  50:         =45,JMP LBL[45] ;
  51:         ELSE,JMP LBL[98] ;
  52:   ;
  53:  !******************************** ;
  54:  !0 Degrees ;
  55:  !******************************** ;
  56:  LBL[100] ;
  57:L P[100] R[19:L SPEED W ALUM]mm/sec FINE    ;
  58:  JMP LBL[99] ;
  59:  !******************************** ;
  60:   ;
  61:  !******************************** ;
  62:  !1 Degrees ;
  63:  !******************************** ;
  64:  LBL[1] ;
  65:L P[1] R[19:L SPEED W ALUM]mm/sec FINE    ;
  66:  JMP LBL[99] ;
  67:  !******************************** ;
  68:   ;
  69:  !******************************** ;
  70:  !2 Degrees ;
  71:  !******************************** ;
  72:  LBL[2] ;
  73:L P[2] R[19:L SPEED W ALUM]mm/sec FINE    ;
  74:  JMP LBL[99] ;
  75:  !******************************** ;
  76:   ;
  77:  !******************************** ;
  78:  !3 Degrees ;
  79:  !******************************** ;
  80:  LBL[3] ;
  81:L P[3] R[19:L SPEED W ALUM]mm/sec FINE    ;
  82:  JMP LBL[99] ;
  83:  !******************************** ;
  84:   ;
  85:  !******************************** ;
  86:  !4 Degrees ;
  87:  !******************************** ;
  88:  LBL[4] ;
  89:L P[4] R[19:L SPEED W ALUM]mm/sec FINE    ;
  90:  JMP LBL[99] ;
  91:  !******************************** ;
  92:   ;
  93:  !******************************** ;
  94:  !5 Degrees ;
  95:  !******************************** ;
  96:  LBL[5] ;
  97:L P[5] R[19:L SPEED W ALUM]mm/sec FINE    ;
  98:  JMP LBL[99] ;
  99:  !******************************** ;
 100:   ;
 101:  !******************************** ;
 102:  !6 Degrees ;
 103:  !******************************** ;
 104:  LBL[6] ;
 105:L P[6] R[19:L SPEED W ALUM]mm/sec FINE    ;
 106:  JMP LBL[99] ;
 107:  !******************************** ;
 108:   ;
 109:  !******************************** ;
 110:  !7 Degrees ;
 111:  !******************************** ;
 112:  LBL[7] ;
 113:L P[7] R[19:L SPEED W ALUM]mm/sec FINE    ;
 114:  JMP LBL[99] ;
 115:  !******************************** ;
 116:   ;
 117:  !******************************** ;
 118:  !8 Degrees ;
 119:  !******************************** ;
 120:  LBL[8] ;
 121:L P[8] R[19:L SPEED W ALUM]mm/sec FINE    ;
 122:  JMP LBL[99] ;
 123:  !******************************** ;
 124:   ;
 125:  !******************************** ;
 126:  !9 Degrees ;
 127:  !******************************** ;
 128:  LBL[9] ;
 129:L P[9] R[19:L SPEED W ALUM]mm/sec FINE    ;
 130:  JMP LBL[99] ;
 131:  !******************************** ;
 132:   ;
 133:  !******************************** ;
 134:  !10 Degrees ;
 135:  !******************************** ;
 136:  LBL[10] ;
 137:L P[10] R[19:L SPEED W ALUM]mm/sec FINE    ;
 138:  JMP LBL[99] ;
 139:  !******************************** ;
 140:   ;
 141:  !******************************** ;
 142:  !11 Degrees ;
 143:  !******************************** ;
 144:  LBL[11] ;
 145:L P[11] R[19:L SPEED W ALUM]mm/sec FINE    ;
 146:  JMP LBL[99] ;
 147:  !******************************** ;
 148:   ;
 149:  !******************************** ;
 150:  !12 Degrees ;
 151:  !******************************** ;
 152:  LBL[12] ;
 153:L P[12] R[19:L SPEED W ALUM]mm/sec FINE    ;
 154:  JMP LBL[99] ;
 155:  !******************************** ;
 156:   ;
 157:  !******************************** ;
 158:  !13 Degrees ;
 159:  !******************************** ;
 160:  LBL[13] ;
 161:L P[13] R[19:L SPEED W ALUM]mm/sec FINE    ;
 162:  JMP LBL[99] ;
 163:  !******************************** ;
 164:   ;
 165:  !******************************** ;
 166:  !14 Degrees ;
 167:  !******************************** ;
 168:  LBL[14] ;
 169:L P[14] R[19:L SPEED W ALUM]mm/sec FINE    ;
 170:  JMP LBL[99] ;
 171:  !******************************** ;
 172:   ;
 173:  !******************************** ;
 174:  !15 Degrees ;
 175:  !******************************** ;
 176:  LBL[15] ;
 177:L P[15] R[19:L SPEED W ALUM]mm/sec FINE    ;
 178:  JMP LBL[99] ;
 179:  !******************************** ;
 180:   ;
 181:  !******************************** ;
 182:  !16 Degrees ;
 183:  !******************************** ;
 184:  LBL[16] ;
 185:L P[16] R[19:L SPEED W ALUM]mm/sec FINE    ;
 186:  JMP LBL[99] ;
 187:  !******************************** ;
 188:   ;
 189:  !******************************** ;
 190:  !17 Degrees ;
 191:  !******************************** ;
 192:  LBL[17] ;
 193:L P[17] R[19:L SPEED W ALUM]mm/sec FINE    ;
 194:  JMP LBL[99] ;
 195:  !******************************** ;
 196:   ;
 197:  !******************************** ;
 198:  !18 Degrees ;
 199:  !******************************** ;
 200:  LBL[18] ;
 201:L P[18] R[19:L SPEED W ALUM]mm/sec FINE    ;
 202:  JMP LBL[99] ;
 203:  !******************************** ;
 204:   ;
 205:  !******************************** ;
 206:  !19 Degrees ;
 207:  !******************************** ;
 208:  LBL[19] ;
 209:L P[19] R[19:L SPEED W ALUM]mm/sec FINE    ;
 210:  JMP LBL[99] ;
 211:  !******************************** ;
 212:   ;
 213:  !******************************** ;
 214:  !20 Degrees ;
 215:  !******************************** ;
 216:  LBL[20] ;
 217:L P[20] R[19:L SPEED W ALUM]mm/sec FINE    ;
 218:  JMP LBL[99] ;
 219:  !******************************** ;
 220:   ;
 221:  !******************************** ;
 222:  !21 Degrees ;
 223:  !******************************** ;
 224:  LBL[21] ;
 225:L P[21] R[19:L SPEED W ALUM]mm/sec FINE    ;
 226:  JMP LBL[99] ;
 227:  !******************************** ;
 228:   ;
 229:  !******************************** ;
 230:  !22 Degrees ;
 231:  !******************************** ;
 232:  LBL[22] ;
 233:L P[22] R[19:L SPEED W ALUM]mm/sec FINE    ;
 234:  JMP LBL[99] ;
 235:  !******************************** ;
 236:   ;
 237:  !******************************** ;
 238:  !23 Degrees ;
 239:  !******************************** ;
 240:  LBL[23] ;
 241:L P[23] R[19:L SPEED W ALUM]mm/sec FINE    ;
 242:  JMP LBL[99] ;
 243:  !******************************** ;
 244:   ;
 245:  !******************************** ;
 246:  !24 Degrees ;
 247:  !******************************** ;
 248:  LBL[24] ;
 249:L P[24] R[19:L SPEED W ALUM]mm/sec FINE    ;
 250:  JMP LBL[99] ;
 251:  !******************************** ;
 252:   ;
 253:  !******************************** ;
 254:  !25 Degrees ;
 255:  !******************************** ;
 256:  LBL[25] ;
 257:L P[25] R[19:L SPEED W ALUM]mm/sec FINE    ;
 258:  JMP LBL[99] ;
 259:  !******************************** ;
 260:   ;
 261:  !******************************** ;
 262:  !26 Degrees ;
 263:  !******************************** ;
 264:  LBL[26] ;
 265:L P[26] R[19:L SPEED W ALUM]mm/sec FINE    ;
 266:  JMP LBL[99] ;
 267:  !******************************** ;
 268:   ;
 269:  !******************************** ;
 270:  !27 Degrees ;
 271:  !******************************** ;
 272:  LBL[27] ;
 273:L P[27] R[19:L SPEED W ALUM]mm/sec FINE    ;
 274:  JMP LBL[99] ;
 275:  !******************************** ;
 276:   ;
 277:  !******************************** ;
 278:  !28 Degrees ;
 279:  !******************************** ;
 280:  LBL[28] ;
 281:L P[28] R[19:L SPEED W ALUM]mm/sec FINE    ;
 282:  JMP LBL[99] ;
 283:  !******************************** ;
 284:   ;
 285:  !******************************** ;
 286:  !29 Degrees ;
 287:  !******************************** ;
 288:  LBL[29] ;
 289:L P[29] R[19:L SPEED W ALUM]mm/sec FINE    ;
 290:  JMP LBL[99] ;
 291:  !******************************** ;
 292:   ;
 293:  !******************************** ;
 294:  !30 Degrees ;
 295:  !******************************** ;
 296:  LBL[30] ;
 297:L P[30] R[19:L SPEED W ALUM]mm/sec FINE    ;
 298:  JMP LBL[99] ;
 299:  !******************************** ;
 300:   ;
 301:  !******************************** ;
 302:  !31 Degrees ;
 303:  !******************************** ;
 304:  LBL[31] ;
 305:L P[31] R[19:L SPEED W ALUM]mm/sec FINE    ;
 306:  JMP LBL[99] ;
 307:  !******************************** ;
 308:   ;
 309:  !******************************** ;
 310:  !32 Degrees ;
 311:  !******************************** ;
 312:  LBL[32] ;
 313:L P[32] R[19:L SPEED W ALUM]mm/sec FINE    ;
 314:  JMP LBL[99] ;
 315:  !******************************** ;
 316:   ;
 317:  !******************************** ;
 318:  !33 Degrees ;
 319:  !******************************** ;
 320:  LBL[33] ;
 321:L P[33] R[19:L SPEED W ALUM]mm/sec FINE    ;
 322:  JMP LBL[99] ;
 323:  !******************************** ;
 324:   ;
 325:  !******************************** ;
 326:  !34 Degrees ;
 327:  !******************************** ;
 328:  LBL[34] ;
 329:L P[34] R[19:L SPEED W ALUM]mm/sec FINE    ;
 330:  JMP LBL[99] ;
 331:  !******************************** ;
 332:   ;
 333:  !******************************** ;
 334:  !35 Degrees ;
 335:  !******************************** ;
 336:  LBL[35] ;
 337:L P[35] R[19:L SPEED W ALUM]mm/sec FINE    ;
 338:  JMP LBL[99] ;
 339:  !******************************** ;
 340:   ;
 341:  !******************************** ;
 342:  !36 Degrees ;
 343:  !******************************** ;
 344:  LBL[36] ;
 345:L P[36] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 346:  JMP LBL[99] ;
 347:  !******************************** ;
 348:   ;
 349:  !******************************** ;
 350:  !37 Degrees ;
 351:  !******************************** ;
 352:  LBL[37] ;
 353:L P[37] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 354:  JMP LBL[99] ;
 355:  !******************************** ;
 356:   ;
 357:  !******************************** ;
 358:  !38 Degrees ;
 359:  !******************************** ;
 360:  LBL[38] ;
 361:L P[38] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 362:  JMP LBL[99] ;
 363:  !******************************** ;
 364:   ;
 365:  !******************************** ;
 366:  !39 Degrees ;
 367:  !******************************** ;
 368:  LBL[39] ;
 369:L P[39] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 370:  JMP LBL[99] ;
 371:  !******************************** ;
 372:   ;
 373:  !******************************** ;
 374:  !40 Degrees ;
 375:  !******************************** ;
 376:  LBL[40] ;
 377:L P[40] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 378:  JMP LBL[99] ;
 379:  !******************************** ;
 380:   ;
 381:  !******************************** ;
 382:  !41 Degrees ;
 383:  !******************************** ;
 384:  LBL[41] ;
 385:L P[41] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 386:  JMP LBL[99] ;
 387:  !******************************** ;
 388:   ;
 389:  !******************************** ;
 390:  !42 Degrees ;
 391:  !******************************** ;
 392:  LBL[42] ;
 393:L P[42] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 394:  JMP LBL[99] ;
 395:  !******************************** ;
 396:   ;
 397:  !******************************** ;
 398:  !43 Degrees ;
 399:  !******************************** ;
 400:  LBL[43] ;
 401:L P[43] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 402:  JMP LBL[99] ;
 403:  !******************************** ;
 404:   ;
 405:  !******************************** ;
 406:  !44 Degrees ;
 407:  !******************************** ;
 408:  LBL[44] ;
 409:L P[44] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 410:  JMP LBL[99] ;
 411:  !******************************** ;
 412:   ;
 413:  !******************************** ;
 414:  !45 Degrees ;
 415:  !******************************** ;
 416:  LBL[45] ;
 417:L P[45] R[19:L SPEED W ALUM]mm/sec CNT100    ;
 418:  JMP LBL[99] ;
 419:  !******************************** ;
 420:   ;
 421:   ;
 422:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.599 deg,	P =     1.000 deg,	R =    87.715 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.558 deg,	P =     2.000 deg,	R =    87.715 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.186  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.520 deg,	P =     3.000 deg,	R =    87.715 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.479 deg,	P =     4.000 deg,	R =    87.713 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.441 deg,	P =     5.000 deg,	R =    87.712 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.401 deg,	P =     6.000 deg,	R =    87.709 deg
};
P[7:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.358 deg,	P =     7.000 deg,	R =    87.705 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.186  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.318 deg,	P =     8.000 deg,	R =    87.701 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.186  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.279 deg,	P =     9.000 deg,	R =    87.697 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.237 deg,	P =    10.000 deg,	R =    87.691 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    11.000 deg,	R =    87.684 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    12.000 deg,	R =    87.684 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    13.000 deg,	R =    87.684 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    14.000 deg,	R =    87.684 deg
};
P[15:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    15.000 deg,	R =    87.684 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    16.000 deg,	R =    87.684 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    17.000 deg,	R =    87.684 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    18.000 deg,	R =    87.684 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    19.000 deg,	R =    87.684 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    20.000 deg,	R =    87.684 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    21.000 deg,	R =    87.684 deg
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    22.000 deg,	R =    87.684 deg
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    23.000 deg,	R =    87.684 deg
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    24.000 deg,	R =    87.684 deg
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    25.000 deg,	R =    87.684 deg
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    26.000 deg,	R =    87.684 deg
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    27.000 deg,	R =    87.684 deg
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    28.000 deg,	R =    87.684 deg
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    29.000 deg,	R =    87.684 deg
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    30.000 deg,	R =    87.684 deg
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    31.000 deg,	R =    87.684 deg
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    32.000 deg,	R =    87.684 deg
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    33.000 deg,	R =    87.684 deg
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    34.000 deg,	R =    87.684 deg
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    35.000 deg,	R =    87.684 deg
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    36.000 deg,	R =    87.684 deg
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    37.000 deg,	R =    87.684 deg
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    38.000 deg,	R =    87.684 deg
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    39.000 deg,	R =    87.684 deg
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    40.000 deg,	R =    87.684 deg
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    41.000 deg,	R =    87.684 deg
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    42.000 deg,	R =    87.684 deg
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    43.000 deg,	R =    87.684 deg
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    44.000 deg,	R =    87.684 deg
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1157.355  mm,
	W =   134.193 deg,	P =    45.000 deg,	R =    87.684 deg
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =  1157.356  mm,
	W =   134.639 deg,	P =     0.000 deg,	R =    87.714 deg
};
/END
