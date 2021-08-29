/PROG  ST_1_POS_SELECT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TOUCH UP S1";
PROG_SIZE	= 13494;
CREATE		= DATE 19-04-10  TIME 23:02:58;
MODIFIED	= DATE 20-05-17  TIME 19:40:22;
FILE_NAME	= ST_1_POS;
VERSION		= 0;
LINE_COUNT	= 417;
MEMORY_SIZE	= 14126;
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
   2:  SELECT R[1:Station 1 PN]=1,JMP LBL[1] ;
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
  29:  !******************************* ;
  30:   ;
  31:L P[1] 250mm/sec FINE    ;
  32:L P[2] 250mm/sec FINE    ;
  33:L P[3] 250mm/sec FINE    ;
  34:L P[4] 250mm/sec FINE    ;
  35:L P[5] 250mm/sec FINE    ;
  36:  LBL[1] ;
  37:  PR[14:S1 POS 1]=P[1]    ;
  38:  PR[15:S1 POS 2]=P[2]    ;
  39:  PR[16:S1 POS 3]=P[3]    ;
  40:  PR[17:S1 POS 4]=P[4]    ;
  41:  PR[18:S1 POS 5]=P[5]    ;
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
  95:  !10018723 ;
  96:  !******************************** ;
  97:L P[21] 250mm/sec FINE    ;
  98:L P[22] 250mm/sec FINE    ;
  99:L P[23] 250mm/sec FINE    ;
 100:L P[24] 250mm/sec FINE    ;
 101:L P[25] 250mm/sec FINE    ;
 102:  LBL[5] ;
 103:  PR[14:S1 POS 1]=P[21]    ;
 104:  PR[15:S1 POS 2]=P[22]    ;
 105:  PR[16:S1 POS 3]=P[23]    ;
 106:  PR[17:S1 POS 4]=P[24]    ;
 107:  PR[18:S1 POS 5]=P[25]    ;
 108:  JMP LBL[99] ;
 109:   ;
 110:   ;
 111:  !******************************** ;
 112:  !10012731 ;
 113:  !******************************** ;
 114:L P[26] 250mm/sec FINE    ;
 115:L P[27] 250mm/sec FINE    ;
 116:L P[28] 250mm/sec FINE    ;
 117:L P[29] 250mm/sec FINE    ;
 118:L P[30] 250mm/sec FINE    ;
 119:  LBL[6] ;
 120:  PR[14:S1 POS 1]=P[26]    ;
 121:  PR[15:S1 POS 2]=P[27]    ;
 122:  PR[16:S1 POS 3]=P[28]    ;
 123:  PR[17:S1 POS 4]=P[29]    ;
 124:  PR[18:S1 POS 5]=P[30]    ;
 125:  JMP LBL[99] ;
 126:   ;
 127:   ;
 128:  !******************************** ;
 129:  !10016225 ;
 130:  !******************************** ;
 131:L P[31] 250mm/sec FINE    ;
 132:L P[32] 250mm/sec FINE    ;
 133:L P[33] 250mm/sec FINE    ;
 134:L P[34] 250mm/sec FINE    ;
 135:L P[35] 250mm/sec FINE    ;
 136:  LBL[7] ;
 137:  PR[14:S1 POS 1]=P[31]    ;
 138:  PR[15:S1 POS 2]=P[32]    ;
 139:  PR[16:S1 POS 3]=P[33]    ;
 140:  PR[17:S1 POS 4]=P[34]    ;
 141:  PR[18:S1 POS 5]=P[35]    ;
 142:  JMP LBL[99] ;
 143:   ;
 144:   ;
 145:  !******************************** ;
 146:  !10012265 ;
 147:  !******************************** ;
 148:L P[36] 250mm/sec FINE    ;
 149:L P[37] 250mm/sec FINE    ;
 150:L P[38] 250mm/sec FINE    ;
 151:L P[39] 250mm/sec FINE    ;
 152:L P[40] 250mm/sec FINE    ;
 153:  LBL[8] ;
 154:  PR[14:S1 POS 1]=P[36]    ;
 155:  PR[15:S1 POS 2]=P[37]    ;
 156:  PR[16:S1 POS 3]=P[38]    ;
 157:  PR[17:S1 POS 4]=P[39]    ;
 158:  PR[18:S1 POS 5]=P[40]    ;
 159:  JMP LBL[99] ;
 160:   ;
 161:   ;
 162:  !******************************** ;
 163:  !10036753 ;
 164:  !******************************** ;
 165:L P[41] 250mm/sec FINE    ;
 166:L P[42] 250mm/sec FINE    ;
 167:L P[43] 250mm/sec FINE    ;
 168:L P[44] 250mm/sec FINE    ;
 169:L P[45] 250mm/sec FINE    ;
 170:  LBL[9] ;
 171:  PR[14:S1 POS 1]=P[41]    ;
 172:  PR[15:S1 POS 2]=P[42]    ;
 173:  PR[16:S1 POS 3]=P[43]    ;
 174:  PR[17:S1 POS 4]=P[44]    ;
 175:  PR[18:S1 POS 5]=P[45]    ;
 176:  JMP LBL[99] ;
 177:   ;
 178:   ;
 179:  !******************************** ;
 180:  !10036715 ;
 181:  !******************************** ;
 182:L P[46] 250mm/sec FINE    ;
 183:L P[47] 250mm/sec FINE    ;
 184:L P[48] 250mm/sec FINE    ;
 185:L P[49] 250mm/sec FINE    ;
 186:L P[50] 250mm/sec FINE    ;
 187:  LBL[10] ;
 188:  PR[14:S1 POS 1]=P[46]    ;
 189:  PR[15:S1 POS 2]=P[47]    ;
 190:  PR[16:S1 POS 3]=P[48]    ;
 191:  PR[17:S1 POS 4]=P[49]    ;
 192:  PR[18:S1 POS 5]=P[50]    ;
 193:  JMP LBL[99] ;
 194:   ;
 195:   ;
 196:  !******************************** ;
 197:  !10016328 ;
 198:  !******************************** ;
 199:L P[51] 250mm/sec FINE    ;
 200:L P[52] 250mm/sec FINE    ;
 201:L P[53] 250mm/sec FINE    ;
 202:L P[54] 250mm/sec FINE    ;
 203:L P[55] 250mm/sec FINE    ;
 204:  LBL[11] ;
 205:  PR[14:S1 POS 1]=P[51]    ;
 206:  PR[15:S1 POS 2]=P[52]    ;
 207:  PR[16:S1 POS 3]=P[53]    ;
 208:  PR[17:S1 POS 4]=P[54]    ;
 209:  PR[18:S1 POS 5]=P[55]    ;
 210:  JMP LBL[99] ;
 211:   ;
 212:   ;
 213:  !******************************** ;
 214:  !10041525 ;
 215:  !******************************** ;
 216:L P[56] 250mm/sec FINE    ;
 217:L P[57] 250mm/sec FINE    ;
 218:L P[58] 250mm/sec FINE    ;
 219:L P[59] 250mm/sec FINE    ;
 220:L P[60] 250mm/sec FINE    ;
 221:  LBL[12] ;
 222:  PR[14:S1 POS 1]=P[56]    ;
 223:  PR[15:S1 POS 2]=P[57]    ;
 224:  PR[16:S1 POS 3]=P[58]    ;
 225:  PR[17:S1 POS 4]=P[59]    ;
 226:  PR[18:S1 POS 5]=P[60]    ;
 227:  JMP LBL[99] ;
 228:   ;
 229:   ;
 230:  !******************************** ;
 231:  !10001896 ;
 232:  !******************************** ;
 233:L P[61] 250mm/sec FINE    ;
 234:L P[62] 250mm/sec FINE    ;
 235:L P[63] 250mm/sec FINE    ;
 236:L P[64] 250mm/sec FINE    ;
 237:L P[65] 250mm/sec FINE    ;
 238:  LBL[13] ;
 239:  PR[14:S1 POS 1]=P[61]    ;
 240:  PR[15:S1 POS 2]=P[62]    ;
 241:  PR[16:S1 POS 3]=P[63]    ;
 242:  PR[17:S1 POS 4]=P[64]    ;
 243:  PR[18:S1 POS 5]=P[65]    ;
 244:  JMP LBL[99] ;
 245:   ;
 246:   ;
 247:  !******************************** ;
 248:  !10017979 ;
 249:  !******************************** ;
 250:L P[66] 250mm/sec FINE    ;
 251:L P[67] 250mm/sec FINE    ;
 252:L P[68] 250mm/sec FINE    ;
 253:L P[69] 250mm/sec FINE    ;
 254:L P[70] 250mm/sec FINE    ;
 255:  LBL[14] ;
 256:  PR[14:S1 POS 1]=P[66]    ;
 257:  PR[15:S1 POS 2]=P[67]    ;
 258:  PR[16:S1 POS 3]=P[68]    ;
 259:  PR[17:S1 POS 4]=P[69]    ;
 260:  PR[18:S1 POS 5]=P[70]    ;
 261:  JMP LBL[99] ;
 262:   ;
 263:   ;
 264:  !******************************** ;
 265:  !10034605 ;
 266:  !******************************** ;
 267:L P[71] 250mm/sec FINE    ;
 268:L P[72] 250mm/sec FINE    ;
 269:L P[73] 250mm/sec FINE    ;
 270:L P[74] 250mm/sec FINE    ;
 271:L P[75] 250mm/sec FINE    ;
 272:  LBL[15] ;
 273:  PR[14:S1 POS 1]=P[71]    ;
 274:  PR[15:S1 POS 2]=P[72]    ;
 275:  PR[16:S1 POS 3]=P[73]    ;
 276:  PR[17:S1 POS 4]=P[74]    ;
 277:  PR[18:S1 POS 5]=P[75]    ;
 278:  JMP LBL[99] ;
 279:   ;
 280:   ;
 281:  !******************************** ;
 282:  !10016331 ;
 283:  !******************************** ;
 284:L P[76] 250mm/sec FINE    ;
 285:L P[77] 250mm/sec FINE    ;
 286:L P[78] 250mm/sec FINE    ;
 287:L P[79] 250mm/sec FINE    ;
 288:L P[80] 250mm/sec FINE    ;
 289:  LBL[16] ;
 290:  PR[14:S1 POS 1]=P[76]    ;
 291:  PR[15:S1 POS 2]=P[77]    ;
 292:  PR[16:S1 POS 3]=P[78]    ;
 293:  PR[17:S1 POS 4]=P[79]    ;
 294:  PR[18:S1 POS 5]=P[80]    ;
 295:  JMP LBL[99] ;
 296:   ;
 297:   ;
 298:  !******************************** ;
 299:  !10037702 ;
 300:  !******************************** ;
 301:L P[81] 250mm/sec FINE    ;
 302:L P[82] 250mm/sec FINE    ;
 303:L P[83] 250mm/sec FINE    ;
 304:L P[84] 250mm/sec FINE    ;
 305:L P[85] 250mm/sec FINE    ;
 306:  LBL[17] ;
 307:  PR[14:S1 POS 1]=P[81]    ;
 308:  PR[15:S1 POS 2]=P[82]    ;
 309:  PR[16:S1 POS 3]=P[83]    ;
 310:  PR[17:S1 POS 4]=P[84]    ;
 311:  PR[18:S1 POS 5]=P[85]    ;
 312:  JMP LBL[99] ;
 313:   ;
 314:   ;
 315:  !******************************** ;
 316:  !10009779 ;
 317:  !******************************** ;
 318:L P[86] 250mm/sec FINE    ;
 319:L P[87] 250mm/sec FINE    ;
 320:L P[88] 250mm/sec FINE    ;
 321:L P[89] 250mm/sec FINE    ;
 322:L P[90] 250mm/sec FINE    ;
 323:  LBL[18] ;
 324:  PR[14:S1 POS 1]=P[86]    ;
 325:  PR[15:S1 POS 2]=P[87]    ;
 326:  PR[16:S1 POS 3]=P[88]    ;
 327:  PR[17:S1 POS 4]=P[89]    ;
 328:  PR[18:S1 POS 5]=P[90]    ;
 329:  JMP LBL[99] ;
 330:   ;
 331:   ;
 332:  !******************************** ;
 333:  !103133 ;
 334:  !******************************** ;
 335:L P[91] 250mm/sec FINE    ;
 336:L P[92] 250mm/sec FINE    ;
 337:L P[93] 250mm/sec FINE    ;
 338:L P[94] 250mm/sec FINE    ;
 339:L P[95] 250mm/sec FINE    ;
 340:  LBL[19] ;
 341:  PR[14:S1 POS 1]=P[91]    ;
 342:  PR[15:S1 POS 2]=P[92]    ;
 343:  PR[16:S1 POS 3]=P[93]    ;
 344:  PR[17:S1 POS 4]=P[94]    ;
 345:  PR[18:S1 POS 5]=P[95]    ;
 346:  JMP LBL[99] ;
 347:   ;
 348:   ;
 349:  !******************************** ;
 350:  !10030844 ;
 351:  !******************************** ;
 352:L P[96] 250mm/sec FINE    ;
 353:L P[97] 250mm/sec FINE    ;
 354:L P[98] 250mm/sec FINE    ;
 355:L P[99] 250mm/sec FINE    ;
 356:L P[100] 250mm/sec FINE    ;
 357:  LBL[20] ;
 358:  PR[14:S1 POS 1]=P[96]    ;
 359:  PR[15:S1 POS 2]=P[97]    ;
 360:  PR[16:S1 POS 3]=P[98]    ;
 361:  PR[17:S1 POS 4]=P[99]    ;
 362:  PR[18:S1 POS 5]=P[100]    ;
 363:  JMP LBL[99] ;
 364:   ;
 365:   ;
 366:  !******************************** ;
 367:  !102610 ;
 368:  !******************************** ;
 369:L P[101] 250mm/sec FINE    ;
 370:L P[102] 250mm/sec FINE    ;
 371:L P[103] 250mm/sec FINE    ;
 372:L P[104] 250mm/sec FINE    ;
 373:L P[105] 250mm/sec FINE    ;
 374:  LBL[21] ;
 375:  PR[14:S1 POS 1]=P[101]    ;
 376:  PR[15:S1 POS 2]=P[102]    ;
 377:  PR[16:S1 POS 3]=P[103]    ;
 378:  PR[17:S1 POS 4]=P[104]    ;
 379:  PR[18:S1 POS 5]=P[105]    ;
 380:  JMP LBL[99] ;
 381:   ;
 382:   ;
 383:  !******************************** ;
 384:  !102035 ;
 385:  !******************************** ;
 386:L P[106] 250mm/sec FINE    ;
 387:L P[107] 250mm/sec FINE    ;
 388:L P[108] 250mm/sec FINE    ;
 389:L P[109] 250mm/sec FINE    ;
 390:L P[110] 250mm/sec FINE    ;
 391:  LBL[22] ;
 392:  PR[14:S1 POS 1]=P[106]    ;
 393:  PR[15:S1 POS 2]=P[107]    ;
 394:  PR[16:S1 POS 3]=P[108]    ;
 395:  PR[17:S1 POS 4]=P[109]    ;
 396:  PR[18:S1 POS 5]=P[110]    ;
 397:  JMP LBL[99] ;
 398:   ;
 399:   ;
 400:  !******************************** ;
 401:  !1009908 ;
 402:  !******************************** ;
 403:L P[111] 250mm/sec FINE    ;
 404:L P[112] 250mm/sec FINE    ;
 405:L P[113] 250mm/sec FINE    ;
 406:L P[114] 250mm/sec FINE    ;
 407:L P[115] 250mm/sec FINE    ;
 408:  LBL[23] ;
 409:  PR[14:S1 POS 1]=P[111]    ;
 410:  PR[15:S1 POS 2]=P[112]    ;
 411:  PR[16:S1 POS 3]=P[113]    ;
 412:  PR[17:S1 POS 4]=P[114]    ;
 413:  PR[18:S1 POS 5]=P[115]    ;
 414:  JMP LBL[99] ;
 415:   ;
 416:   ;
 417:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   837.578  mm,	Y = -1020.547  mm,	Z =  1054.085  mm,
	W =   132.023 deg,	P =   -22.833 deg,	R =    45.138 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   658.089  mm,	Y = -1172.066  mm,	Z =   687.660  mm,
	W =   123.611 deg,	P =   -59.873 deg,	R =    48.578 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   427.595  mm,	Y = -1387.674  mm,	Z =   613.132  mm,
	W =   -40.836 deg,	P =   -69.107 deg,	R =  -146.409 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   736.927  mm,	Y = -1149.662  mm,	Z =   820.814  mm,
	W =   127.050 deg,	P =   -61.336 deg,	R =    46.895 deg
};
P[5:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   837.578  mm,	Y = -1020.547  mm,	Z =  1054.085  mm,
	W =   132.023 deg,	P =   -22.833 deg,	R =    45.138 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 1, -1',
	X = -1066.064  mm,	Y =  -282.336  mm,	Z =   658.577  mm,
	W =    84.574 deg,	P =   -29.457 deg,	R =    32.267 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1936.735  mm,	Y =  -423.439  mm,	Z =   320.593  mm,
	W =    81.853 deg,	P =   -28.626 deg,	R =    60.020 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -2022.865  mm,	Y =  -400.301  mm,	Z =   313.573  mm,
	W =    46.206 deg,	P =   -19.882 deg,	R =    75.866 deg
};
P[9:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, -1, 0, 0',
	X = -1939.196  mm,	Y =  -465.082  mm,	Z =   294.669  mm,
	W =    -5.316 deg,	P =    -2.067 deg,	R =    87.650 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X = -1911.768  mm,	Y =  -415.370  mm,	Z =   452.441  mm,
	W =    84.845 deg,	P =   -29.257 deg,	R =    53.842 deg
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
