/PROG  BG_MACHINE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BG MACHINE LOGIC";
PROG_SIZE	= 11267;
CREATE		= DATE 21-01-14  TIME 10:56:44;
MODIFIED	= DATE 23-11-18  TIME 08:35:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 450;
MEMORY_SIZE	= 11695;
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
   1:  !CHECK MACHINE TYPE IS SELECTED   ;
   2:  IF (DO[91:TEST RIG ENABLED]=OFF AND DO[55:OKUMA NO ANYBUS]=OFF AND DO[56:OKUMA LATHE]=OFF AND DO[57:OKUMA MILL]=OFF AND DO[58:HAAS LATHE]=OFF AND DO[98:DEMO MODE]=OFF AND DO[59:HARDINGE LATHE]=OFF AND 
    :  DO[60:HARDINGE MILL]=OFF AND DO[93:MAZAK ON]=OFF AND DO[92:NIDEC]=OFF AND DO[94:CUSTOM]=OFF) THEN ;
   3:  DO[212:MACH TYPE NOT SELECTED]=ON ;
   4:  ELSE ;
   5:  DO[212:MACH TYPE NOT SELECTED]=OFF ;
   6:  ENDIF ;
   7:  !CHECK CHANGEOVER IS ENABLED FOR  ;
   8:  !I/O CHANGE TO TAKE EFFECT        ;
   9:  IF (DO[112:ROBOT OK TO CHANGEOVER]=ON) THEN ;
  10:  !******************************** ;
  11:  !MACHINE INTERFACE SELECT         ;
  12:  !******************************** ;
  13:  --eg:MACHINE SELECT LOGIC MOVED TO ENABLE MACROS ;
  14:  !******************************** ;
  15:  !LATHE LOAD SETTINGS              ;
  16:  !******************************** ;
  17:  !SET MAIN SPINDLE LOAD            ;
  18:  IF (DI[61:LOAD MAINSPINDLE ON]=ON) THEN ;
  19:  DO[61:LOAD MAINSPINDLE ON]=ON ;
  20:  DO[62:LOAD SUBSPINDLE ON]=OFF ;
  21:  DO[63:NO LOAD ON]=OFF ;
  22:  ENDIF ;
  23:  !SET SUBSPINDLE LOAD              ;
  24:  IF (DI[62:LOAD SUBSPINDLE ON]=ON) THEN ;
  25:  DO[61:LOAD MAINSPINDLE ON]=OFF ;
  26:  DO[62:LOAD SUBSPINDLE ON]=ON ;
  27:  DO[63:NO LOAD ON]=OFF ;
  28:  ENDIF ;
  29:  !SET NO LOAD OPTION               ;
  30:  IF (DI[63:NO LOAD ON]=ON) THEN ;
  31:  DO[61:LOAD MAINSPINDLE ON]=OFF ;
  32:  DO[62:LOAD SUBSPINDLE ON]=OFF ;
  33:  DO[63:NO LOAD ON]=ON ;
  34:  ENDIF ;
  35:  !******************************** ;
  36:  !LATHE UNLOAD SETTINGS            ;
  37:  !******************************** ;
  38:  !SET UNLOAD MAIN SPINDLE          ;
  39:  IF (DI[66:UNLOAD MAINSPINDLE ON]=ON) THEN ;
  40:  DO[66:UNLOAD MAINSPINDLE ON]=ON ;
  41:  DO[67:UNLOAD SUBSPINDLE ON]=OFF ;
  42:  DO[68:NO UNLOAD ON]=OFF ;
  43:  ENDIF ;
  44:  !SET UNLOAD SUB SPINDLE           ;
  45:  IF (DI[67:UNLOAD SUBSPINDLE ON]=ON) THEN ;
  46:  DO[66:UNLOAD MAINSPINDLE ON]=OFF ;
  47:  DO[67:UNLOAD SUBSPINDLE ON]=ON ;
  48:  DO[68:NO UNLOAD ON]=OFF ;
  49:  ENDIF ;
  50:  !SET NO UNLOAD OPTION             ;
  51:  IF (DI[68:NO UNLOAD ON]=ON) THEN ;
  52:  DO[66:UNLOAD MAINSPINDLE ON]=OFF ;
  53:  DO[67:UNLOAD SUBSPINDLE ON]=OFF ;
  54:  DO[68:NO UNLOAD ON]=ON ;
  55:  ENDIF ;
  56:  !******************************** ;
  57:  !PART HANDLING SETTINGS           ;
  58:  !******************************** ;
  59:  !SET SINGLE PART HANDLING         ;
  60:  IF (DI[71:SINGLE PART HANDLING ON]=ON) THEN ;
  61:  DO[71:SINGLE PART HANDLING ON]=ON ;
  62:  DO[72:DUAL PART HANDLING ON]=OFF ;
  63:  ENDIF ;
  64:  !SET DUAL PART HANDLING           ;
  65:  IF (DI[72:DUAL PART HANDLING ON]=ON) THEN ;
  66:  DO[71:SINGLE PART HANDLING ON]=OFF ;
  67:  DO[72:DUAL PART HANDLING ON]=ON ;
  68:  ENDIF ;
  69:  ENDIF ;
  70:  !******************************** ;
  71:  !MACHINE AUTODOOR SETTINGS        ;
  72:  !******************************** ;
  73:  IF (DI[87:AUTODOORS ON]=ON) THEN ;
  74:  DO[87:AUTODOORS ENABLED]=ON ;
  75:  DO[88:SERVO DOOR ENABLED]=OFF ;
  76:  DO[89:MANUAL DOOR]=OFF ;
  77:  ENDIF ;
  78:  IF (DI[88:SERVO DOOR ON]=ON) THEN ;
  79:  DO[87:AUTODOORS ENABLED]=OFF ;
  80:  DO[88:SERVO DOOR ENABLED]=ON ;
  81:  DO[89:MANUAL DOOR]=OFF ;
  82:  ENDIF ;
  83:  IF (DI[89:MANUAL DOOR ON]=ON) THEN ;
  84:  DO[87:AUTODOORS ENABLED]=OFF ;
  85:  DO[88:SERVO DOOR ENABLED]=OFF ;
  86:  DO[89:MANUAL DOOR]=ON ;
  87:  ENDIF ;
  88:  !******************************** ;
  89:  !DOOR SENSORS. COMMON FOR         ;
  90:  !ALL MACHINES                     ;
  91:  !******************************** ;
  92:  !SINGLE AUTO DOOR                 ;
  93:  IF (DO[87:AUTODOORS ENABLED]=ON AND R[402:DOOR TYPE]=1) THEN ;
  94:  DO[196:DOOR OPEN 1 COM]=(DI[9:DOOR SENSOR 1]) ;
  95:  ENDIF ;
  96:  !DOUBLE AUTO DOOR                 ;
  97:  IF (DO[87:AUTODOORS ENABLED]=ON AND R[402:DOOR TYPE]=2) THEN ;
  98:  DO[196:DOOR OPEN 1 COM]=(DI[9:DOOR SENSOR 1] AND DI[10:DOOR SENSOR 2]) ;
  99:  ENDIF ;
 100:  !SINGLE ROBOT OPERATED DOOR       ;
 101:  IF (DO[89:MANUAL DOOR]=ON AND R[402:DOOR TYPE]=3) THEN ;
 102:  DO[196:DOOR OPEN 1 COM]=(DI[9:DOOR SENSOR 1]) ;
 103:  DO[197:DOOR CLOSED 1 COM]=(DI[10:DOOR SENSOR 2]) ;
 104:  ENDIF ;
 105:  !DOUBLE ROBOT OPERATED DOOR       ;
 106:  IF (DO[89:MANUAL DOOR]=ON AND R[402:DOOR TYPE]=4) THEN ;
 107:  DO[196:DOOR OPEN 1 COM]=(DI[9:DOOR SENSOR 1] AND DI[10:DOOR SENSOR 2]=ON) ;
 108:  ENDIF ;
 109:  !******************************** ;
 110:  !MACHINE AIRBLOW SETTINGS         ;
 111:  !******************************** ;
 112:  !SET MAIN SPINDLE AIRBLOW         ;
 113:  IF (DI[75:MAINSPINDLE AIR BLOW ON]=ON),DO[75:MAINSPINDLE AIR BLOW ON]=(ON) ;
 114:  IF (DI[76:MAINSPINDLE AIR BLOW OFF]=ON),DO[75:MAINSPINDLE AIR BLOW ON]=(OFF) ;
 115:  !SET SUBSPINDLE AIRBLOW           ;
 116:  IF (DI[79:SUBSPINDLE AIR BLOW ON]=ON),DO[79:SUBSPINDLE AIR BLOW ON]=(ON) ;
 117:  IF (DI[80:SUBSPINDLE AIR BLOW OFF]=ON),DO[79:SUBSPINDLE AIR BLOW ON]=(OFF) ;
 118:  !******************************** ;
 119:  !MACHINE I/O SETTINGS             ;
 120:  !******************************** ;
 121:  !OKUMA LATHE I/O SETTINGS         ;
 122:  !******************************** ;
 123:  IF (DO[56:OKUMA LATHE]=ON AND $EIP_CONN[2].$STATE=2) THEN ;
 124:  !SET COMMON MACHINE SIGNALS FOR   ;
 125:  !OKUMA WITH ANYBUS                ;
 126:  !MACHINE INPUTS, TO MACHINE       ;
 127:  DO[231:OKUMA CLS CHCK]=(DO[178:CLAMP MAIN COM]) ;
 128:  DO[232:OKUMA OPEN CHCK]=(DO[179:UNCLAMP MAIN COM]) ;
 129:  DO[255:OKUMA RSPIN CHCK CLS]=(DO[180:CLAMP SUB COM]) ;
 130:  DO[256:OKUMA RSPIN CHCK OPEN]=(DO[181:UNCLAMP SUB COM]) ;
 131:  DO[240:OKUMA CYCLE START]=(DO[182:CYCLE START COM]) ;
 132:  DO[235:OKUMA ORIENT LSPIN 1]=(DO[185:ORIENT1 MAIN COM]) ;
 133:  DO[233:OKUMA ORIENT LSPIN 2]=(DO[187:ORIENT2 MAIN COM]) ;
 134:  DO[253:OKUMA RSPIN ORIENT 1]=(DO[186:ORIENT1 SUB COM]) ;
 135:  DO[252:OKUMA RSPIN ORIENT 2]=(DO[188:ORIENT2 SUB COM]) ;
 136:  DO[245:OKUMA AIR BLOW]=(DO[189:MAIN AIRBLOW COM]) ;
 137:  DO[254:OKUMA AIR BLOW]=(DO[190:SUB AIRBLOW COM]) ;
 138:  DO[237:OKUMA ROBOT RET]=(DO[217:ROBOT RETRACTED COM]) ;
 139:  !MACHINE OUTPUTS, FROM MACHINE    ;
 140:  DO[192:MAIN CLAMPED COM]=(DI[231:OKUMA CHCK CLSD]) ;
 141:  DO[193:MAIN UNCLAMPED COM]=(DI[232:OKUMA CHCK OPEN]) ;
 142:  DO[194:SUB CLAMPED COM]=(DI[255:OKUMA RSPIN CHCK CLSD]) ;
 143:  DO[195:SUB UNCLAMPED COM]=(DI[256:OKUMA RSPIN CHCK OPEN]) ;
 144:  DO[199:MACHINE HOME COM]=(DI[240:OKUMA AT HOME]) ;
 145:  DO[203:SYSTEM LINK COM]=(DI[236:OKUMA SYSTEM LINK]) ;
 146:  DO[204:MACHINE IN AUTO COM]=(DI[236:OKUMA SYSTEM LINK]) ;
 147:  DO[205:CYCLE COMPLETE COM]=(DI[239:OKUMA PROGRAM END]) ;
 148:  DO[206:MAIN ORIENTED1 COM]=(DI[235:OKUMA LSPIN ORIENT 1]) ;
 149:  DO[207:SUB ORIENTED1 COM]=(DI[253:OKUMA RSPIN ORIENT 1]) ;
 150:  DO[208:MAIN ORIENTED2 COM]=(DI[233:OKUMA LSPIN ORIENT 2]) ;
 151:  DO[216:SUB ORIENTED2 COM]=(DI[252:OKUMA RSPIN ORIENT 2]) ;
 152:  DO[218:NC ALARM COM]=(DI[238:OKUMA NC ALARM]) ;
 153:  !ACK SYSTEM LINK IS ON            ;
 154:  DO[234:OKUMA ROBOT OPRT]=(DI[236:OKUMA SYSTEM LINK]) ;
 155:  ENDIF ;
 156:  !******************************** ;
 157:  !HAAS LATHE I/O SETTINGS          ;
 158:  !******************************** ;
 159:  IF (DO[58:HAAS LATHE]=ON AND $EIP_CONN[4].$STATE=2) THEN ;
 160:  !SET COMMON MACHINE SIGNALS FOR   ;
 161:  !HAAS LATHE                       ;
 162:  !MACHINE INPUTS, TO MACHINE       ;
 163:  DO[381:MAIN CHUCK]=(DO[178:CLAMP MAIN COM] OR DO[179:UNCLAMP MAIN COM]) ;
 164:  DO[382:SUB CHUCK]=(DO[180:CLAMP SUB COM] OR DO[181:UNCLAMP SUB COM]) ;
 165:  DO[383:CYCLE START]=(DO[182:CYCLE START COM]) ;
 166:  !MACHINE OUTPUTS, FROM MACHINE    ;
 167:  DO[192:MAIN CLAMPED COM]=(DI[366:HAAS MAIN CLP]) ;
 168:  DO[193:MAIN UNCLAMPED COM]=(DI[365:HAAS MAIN UNCLP]) ;
 169:  DO[194:SUB CLAMPED COM]=(DI[368:HAAS SUB CLP]) ;
 170:  DO[195:SUB UNCLAMPED COM]=(DI[367:HAAS SUB UNCLP]) ;
 171:  DO[199:MACHINE HOME COM]=(DI[360:TURRET AT HOME]) ;
 172:  DO[203:SYSTEM LINK COM]=(DI[361:HAAS IN AUTO]) ;
 173:  DO[204:MACHINE IN AUTO COM]=(DI[361:HAAS IN AUTO]) ;
 174:  DO[205:CYCLE COMPLETE COM]=(DI[352:HAAS PRGM END] OR !DI[353:HAAS PRGM RUNNING]) ;
 175:  DO[218:NC ALARM COM]=(!DI[354:HAAS ALARMED]) ;
 176:  DO[206:MAIN ORIENTED1 COM]=ON ;
 177:  DO[207:SUB ORIENTED1 COM]=ON ;
 178:  DO[208:MAIN ORIENTED2 COM]=ON ;
 179:  DO[216:SUB ORIENTED2 COM]=ON ;
 180:  !HAAS WASH CYCLE                  ;
 181:  DO[221:RUN WASH COM]=(DI[350:RUN WASH PRGM]) ;
 182:  DO[347:CALL WASH PRGM]=(DO[222:CALL WASH COM]) ;
 183:  DO[348:CALL CUT PRGM]=(DO[223:CALL CUT COM]) ;
 184:  ENDIF ;
 185:  !******************************** ;
 186:  !TEST RIG I/O SETTINGS            ;
 187:  !******************************** ;
 188:  IF (DO[91:TEST RIG ENABLED]=ON AND $EIP_CONN[5].$STATE=2) THEN ;
 189:  !MANUAL PUSHBUTTON                ;
 190:  IF (DI[499:CLAMP TEST RIG]=ON),F[3:I/O ONE SHOT]=PULSE   ;
 191:  IF (F[3:I/O ONE SHOT]=ON),DO[497:TEST RIG CLAMP/UNCLAMP]=(!DO[497:TEST RIG CLAMP/UNCLAMP]) ;
 192:  IF (DO[178:CLAMP MAIN COM]=ON AND DO[179:UNCLAMP MAIN COM]=OFF AND DI[499:CLAMP TEST RIG]=OFF) THEN ;
 193:  DO[497:TEST RIG CLAMP/UNCLAMP]=OFF ;
 194:  ENDIF ;
 195:  IF (DO[178:CLAMP MAIN COM]=OFF AND DO[179:UNCLAMP MAIN COM]=ON AND DI[499:CLAMP TEST RIG]=OFF) THEN ;
 196:  DO[497:TEST RIG CLAMP/UNCLAMP]=ON ;
 197:  ENDIF ;
 198:  IF (DI[498:TEST RIG CLAMPED]=OFF AND DI[497:TEST RIG UNCLAMPED]=OFF) THEN ;
 199:  DO[192:MAIN CLAMPED COM]=ON ;
 200:  DO[193:MAIN UNCLAMPED COM]=OFF ;
 201:  ENDIF ;
 202:  IF (DI[497:TEST RIG UNCLAMPED]=ON) THEN ;
 203:  DO[192:MAIN CLAMPED COM]=OFF ;
 204:  DO[193:MAIN UNCLAMPED COM]=ON ;
 205:  ENDIF ;
 206:  IF (DO[213:MAIN CHUCK EMPTY]=ON) THEN ;
 207:  DO[205:CYCLE COMPLETE COM]=OFF ;
 208:  ELSE ;
 209:  DO[205:CYCLE COMPLETE COM]=ON ;
 210:  ENDIF ;
 211:  DO[206:MAIN ORIENTED1 COM]=ON ;
 212:  DO[207:SUB ORIENTED1 COM]=ON ;
 213:  DO[208:MAIN ORIENTED2 COM]=ON ;
 214:  DO[216:SUB ORIENTED2 COM]=ON ;
 215:  DO[218:NC ALARM COM]=ON ;
 216:  DO[196:DOOR OPEN 1 COM]=ON ;
 217:  DO[203:SYSTEM LINK COM]=ON ;
 218:  DO[199:MACHINE HOME COM]=ON ;
 219:  DO[204:MACHINE IN AUTO COM]=ON ;
 220:  DO[209:MACH READY FOR SERVICE]=ON ;
 221:  DO[210:MACH SAFE FOR ROBOT]=ON ;
 222:  ENDIF ;
 223:  !******************************** ;
 224:  !DEMO MODE NO MACHINE OR          ;
 225:  !TEST RIG                         ;
 226:  !******************************** ;
 227:  IF (DO[98:DEMO MODE]=ON) THEN ;
 228:  DO[205:CYCLE COMPLETE COM]=ON ;
 229:  DO[218:NC ALARM COM]=ON ;
 230:  DO[196:DOOR OPEN 1 COM]=ON ;
 231:  DO[203:SYSTEM LINK COM]=ON ;
 232:  DO[199:MACHINE HOME COM]=ON ;
 233:  DO[204:MACHINE IN AUTO COM]=ON ;
 234:  DO[209:MACH READY FOR SERVICE]=ON ;
 235:  DO[210:MACH SAFE FOR ROBOT]=ON ;
 236:  IF (DO[105:MEAS LOAD ACTIVE]=ON AND DO[124:PINS REMOVED]=OFF) THEN ;
 237:  DO[192:MAIN CLAMPED COM]=OFF ;
 238:  DO[193:MAIN UNCLAMPED COM]=ON ;
 239:  ELSE ;
 240:  DO[192:MAIN CLAMPED COM]=ON ;
 241:  DO[193:MAIN UNCLAMPED COM]=OFF ;
 242:  ENDIF ;
 243:  IF (DO[31:CYCLE STOP ACTIVE]=ON AND DO[176:ALL TOOLS UNGRIPPED]=ON OR DO[32:PURGE ACTIVE]=ON AND DO[176:ALL TOOLS UNGRIPPED]=ON) THEN ;
 244:  DO[192:MAIN CLAMPED COM]=OFF ;
 245:  DO[193:MAIN UNCLAMPED COM]=ON ;
 246:  ENDIF ;
 247:  ENDIF ;
 248:  !******************************** ;
 249:  !MAZAK LATHE I/O SETTINGS         ;
 250:  !******************************** ;
 251:  IF (DO[93:MAZAK ON]=ON AND $EIP_CONN[8].$STATE=2) THEN ;
 252:  DO[560:MZ COMM STATUS]=(DO[27:Heartbeat]) ;
 253:  DO[561:MZ ROBOT READY]=ON ;
 254:  DO[562:MZ MACH STOP]=ON ;
 255:  !SET COMMON MACHINE SIGNALS FOR   ;
 256:  !MACHINE INPUTS, TO MACHINE       ;
 257:  DO[603:MZ CLAMP CHUCK]=(DO[178:CLAMP MAIN COM]) ;
 258:  DO[604:MZ UNCLAMP CHUCK]=(DO[179:UNCLAMP MAIN COM]) ;
 259:  DO[633:MZ CLAMP CHUCK 2]=(DO[180:CLAMP SUB COM]) ;
 260:  DO[634:MZ UNCLAMP CHUCK 2]=(DO[181:UNCLAMP SUB COM]) ;
 261:  DO[584:MZ CYCLE START]=(DO[182:CYCLE START COM]) ;
 262:  DO[607:MZ ORIENT SPINDLE]=(DO[185:ORIENT1 MAIN COM]) ;
 263:  DO[637:MZ ORIENT SPIN 2]=(DO[186:ORIENT1 SUB COM]) ;
 264:  DO[608:MZ CHUCK AIR BLOW]=(DO[189:MAIN AIRBLOW COM]) ;
 265:  DO[638:MZ CHUCK AIR BLOW 2]=(DO[190:SUB AIRBLOW COM]) ;
 266:  DO[591:MZ ROBOT STANDBY]=(DO[217:ROBOT RETRACTED COM]) ;
 267:  !MACHINE OUTPUTS, FROM MACHINE    ;
 268:  DO[192:MAIN CLAMPED COM]=(DI[603:MZ CHUCK CLAMPED]) ;
 269:  DO[193:MAIN UNCLAMPED COM]=(DI[604:MZ CHUCK UNCLAMPED]) ;
 270:  DO[194:SUB CLAMPED COM]=(DI[633:MZ CHUCK CLAMPED 2]) ;
 271:  DO[195:SUB UNCLAMPED COM]=(DI[634:MZ CHUCK UNCLAMPED 2]) ;
 272:  DO[199:MACHINE HOME COM]=(DI[591:MZ ROBOT ENTER]) ;
 273:  DO[203:SYSTEM LINK COM]=(DI[584:MZ CYCLE START READY]) ;
 274:  DO[204:MACHINE IN AUTO COM]=(DI[584:MZ CYCLE START READY]) ;
 275:  DO[205:CYCLE COMPLETE COM]=(DI[586:MZ MACH COMPLETE]) ;
 276:  DO[206:MAIN ORIENTED1 COM]=(DI[607:MZ SPIN ORIENTED]) ;
 277:  DO[637:MZ ORIENT SPIN 2]=(DI[253:OKUMA RSPIN ORIENT 1]) ;
 278:  DO[218:NC ALARM COM]=(DI[584:MZ CYCLE START READY]) ;
 279:  ENDIF ;
 280:  //!******************************** ;
 281:  //!OKUMA LATHE WITHOUT ANYBUS       ;
 282:  //!******************************** ;
 283:  //IF (DO[55:OKUMA NO ANYBUS]=ON) THEN ;
 284:  //!SET COMMON MACHINE SIGNALS FOR   ;
 285:  //!OKUMA WITHOUT ANYBUS             ;
 286:  //!MACHINE INPUTS, TO MACHINE       ;
 287:  //DO[6]=(DO[178:CLAMP MAIN COM] OR DO[179:UNCLAMP MAIN COM]) ;
 288:  //DO[7]=(DO[180:CLAMP SUB COM] OR DO[181:UNCLAMP SUB COM]) ;
 289:  //DO[8]=(DO[182:CYCLE START COM]) ;
 290:  //DO[215:ROBOT CLEAR OF NC]=(DO[217:ROBOT RETRACTED COM]) ;
 291:  //!MACHINE OUTPUTS, FROM MACHINE    ;
 292:  //DO[192:MAIN CLAMPED COM]=(DI[405:MAIN CHUCK CLOSED]) ;
 293:  //DO[193:MAIN UNCLAMPED COM]=(DI[406:MAIN CHUCK OPEN]) ;
 294:  //DO[194:SUB CLAMPED COM]=(DI[410:SUB CHUCK CLOSED]) ;
 295:  //DO[195:SUB UNCLAMPED COM]=(DI[411:SUB CHUCK OPEN]) ;
 296:  //DO[196:DOOR OPEN 1 COM]=(DI[404:DOOR 1 OPEN]) ;
 297:  //DO[197:DOOR CLOSED 1 COM]=(DI[403:DOOR 1 CLOSED]) ;
 298:  //DO[219:DOOR OPEN 2 COM]=(DI[402:DOOR 2 OPEN]) ;
 299:  //DO[220:DOOR CLOSED 2 COM]=(DI[401:DOOR 2 CLOSED]) ;
 300:  //DO[199:MACHINE HOME COM]=(DI[409:MACHINE HOME POSITION]) ;
 301:  //DO[203:SYSTEM LINK COM]=(DI[414:OKUMA LINKED]) ;
 302:  //DO[204:MACHINE IN AUTO COM]=(DI[413:MACHINE IN AUTO]) ;
 303:  //DO[205:CYCLE COMPLETE COM]=(DI[408:PROGRAM END]) ;
 304:  //DO[206:MAIN ORIENTED1 COM]=(DI[419:MAINSPNDL ORIENTED]) ;
 305:  //DO[207:SUB ORIENTED1 COM]=(DI[420:SUBSPNDL ORIENTED]) ;
 306:  //DO[218:NC ALARM COM]=(DI[407:NC ALARM]) ;
 307:  //!HEARTBEAT FOR API                ;
 308:  //DO[418:HEARTBEAT FAULT]=OFF ;
 309:  //IF (DI[417:API HEARTBEAT]),R[306:COM CHECK COUNT]=(0) ;
 310:  //IF (DI[417:API HEARTBEAT]),R[305:API COM CHECK]=(R[305:API COM CHECK]+1) ;
 311:  //IF (R[305:API COM CHECK]>=200),DO[418:HEARTBEAT FAULT]=(ON) ;
 312:  //IF (!DI[417:API HEARTBEAT]),R[305:API COM CHECK]=(0) ;
 313:  //IF (R[305:API COM CHECK]=0),R[306:COM CHECK COUNT]=(R[306:COM CHECK COUNT]+1) ;
 314:  //IF (R[306:COM CHECK COUNT]>=200 AND DO[55:OKUMA NO ANYBUS]=ON),DO[418:HEARTBEAT FAULT]=(ON) ;
 315:  //DO[401:ROBOT IS LINKED]=(DI[414:OKUMA LINKED]) ;
 316:  //IF (DO[145:AT HOME] AND !UO[8:TP enabled]),DO[8]=(OFF) ;
 317:  //ENDIF ;
 318:  !******************************** ;
 319:  !MACHINE SAFE FOR ROBOT SIGNAL    ;
 320:  !******************************** ;
 321:  !SINGLE DOOR SAFE FOR ROBOT       ;
 322:  IF (DO[203:SYSTEM LINK COM]=ON AND DO[218:NC ALARM COM]=ON AND DO[199:MACHINE HOME COM]=ON AND DO[204:MACHINE IN AUTO COM]=ON AND DO[196:DOOR OPEN 1 COM]=ON) THEN ;
 323:  DO[210:MACH SAFE FOR ROBOT]=ON ;
 324:  ELSE ;
 325:  DO[210:MACH SAFE FOR ROBOT]=OFF ;
 326:  ENDIF ;
 327:  !******************************** ;
 328:  !SET MACHINE EMPTY SIGNALS        ;
 329:  !******************************** ;
 330:  !SET MAIN SPINDLE EMPTY SIGNALS   ;
 331:  IF (DO[61:LOAD MAINSPINDLE ON]=ON OR DO[66:UNLOAD MAINSPINDLE ON]=ON) THEN ;
 332:  IF (DO[193:MAIN UNCLAMPED COM]=ON) THEN ;
 333:  DO[213:MAIN CHUCK EMPTY]=ON ;
 334:  ELSE ;
 335:  DO[213:MAIN CHUCK EMPTY]=OFF ;
 336:  ENDIF ;
 337:  ELSE ;
 338:  DO[213:MAIN CHUCK EMPTY]=ON ;
 339:  ENDIF ;
 340:  !SET SUB SPINDLE EMPTY SIGNAL     ;
 341:  IF (DO[62:LOAD SUBSPINDLE ON]=ON OR DO[67:UNLOAD SUBSPINDLE ON]=ON) THEN ;
 342:  IF (DO[195:SUB UNCLAMPED COM]=ON) THEN ;
 343:  DO[214:SUB CHUCK EMPTY]=ON ;
 344:  ELSE ;
 345:  DO[214:SUB CHUCK EMPTY]=OFF ;
 346:  ENDIF ;
 347:  ELSE ;
 348:  DO[214:SUB CHUCK EMPTY]=ON ;
 349:  ENDIF ;
 350:  !SET MACHINE EMPTY SIGNAL         ;
 351:  IF (DO[213:MAIN CHUCK EMPTY]=ON AND DO[214:SUB CHUCK EMPTY]=ON) THEN ;
 352:  DO[211:MACHINE EMPTY]=ON ;
 353:  ELSE ;
 354:  DO[211:MACHINE EMPTY]=OFF ;
 355:  ENDIF ;
 356:  !******************************** ;
 357:  !SET MACHINE READY FOR SERVICE    ;
 358:  !******************************** ;
 359:  IF ((DO[211:MACHINE EMPTY]=ON) OR (DO[211:MACHINE EMPTY]=OFF AND DO[205:CYCLE COMPLETE COM]=ON)) THEN ;
 360:  DO[209:MACH READY FOR SERVICE]=ON ;
 361:  ELSE ;
 362:  DO[209:MACH READY FOR SERVICE]=OFF ;
 363:  ENDIF ;
 364:  !******************************** ;
 365:  !HARDING LATHE I/O SETTINGS       ;
 366:  !******************************** ;
 367:  IF (DO[59:HARDINGE LATHE]=ON AND $EIP_CONN[6].$STATE=2) THEN ;
 368:  !SET COMMON MACHINE SIGNALS FOR   ;
 369:  !HARDINGE LATHE                   ;
 370:  !MACHINE INPUTS, TO MACHINE       ;
 371:  DO[517:HL CLOSE CHUCK]=(DO[178:CLAMP MAIN COM]) ;
 372:  DO[518:HL OPEN CHUCK]=(DO[179:UNCLAMP MAIN COM]) ;
 373:  DO[529:HL CLOSE CHUCK 2]=(DO[180:CLAMP SUB COM]) ;
 374:  DO[530:HL OPEN CHUCK 2]=(DO[181:UNCLAMP SUB COM]) ;
 375:  DO[523:HL CYCLE START]=(DO[182:CYCLE START COM]) ;
 376:  DO[519:HL ORIENT SPIN 1]=(DO[185:ORIENT1 MAIN COM]) ;
 377:  DO[527:HL ORIENT SPIN 2]=(DO[186:ORIENT1 SUB COM]) ;
 378:  DO[524:HL SPIN 1 AIR BLOW]=(DO[189:MAIN AIRBLOW COM]) ;
 379:  DO[528:HL SPIN 2 AIR BLOW]=(DO[190:SUB AIRBLOW COM]) ;
 380:  DO[521:HL ROBOT RETRACT]=(DO[217:ROBOT RETRACTED COM]) ;
 381:  !MACHINE OUTPUTS, FROM MACHINE    ;
 382:  DO[192:MAIN CLAMPED COM]=(DI[517:HL CHUCK CLOSED]) ;
 383:  DO[193:MAIN UNCLAMPED COM]=(DI[518:HL CHUCK OPEN]) ;
 384:  DO[194:SUB CLAMPED COM]=(DI[525:HL CHUCK CLOSED 2]) ;
 385:  DO[195:SUB UNCLAMPED COM]=(DI[526:HL CHUCK OPEN 2]) ;
 386:  DO[196:DOOR OPEN 1 COM]=(DI[514:HL DOOR OPEN]) ;
 387:  DO[197:DOOR CLOSED 1 COM]=(DI[513:HL DOOR CLOSED]) ;
 388:  DO[199:MACHINE HOME COM]=(DI[523:HL MACHINE HOME]) ;
 389:  DO[203:SYSTEM LINK COM]=(DI[520:HL NC ROBOT MODE]) ;
 390:  DO[204:MACHINE IN AUTO COM]=(DI[521:HL NC OK]) ;
 391:  DO[205:CYCLE COMPLETE COM]=(DI[522:HL PROGRAM END]) ;
 392:  DO[206:MAIN ORIENTED1 COM]=(DI[519:HL SPIN 1 ORIENTED]) ;
 393:  DO[207:SUB ORIENTED1 COM]=(DI[524:HL SPIN 2 ORIENTED]) ;
 394:  DO[218:NC ALARM COM]=(DI[521:HL NC OK]) ;
 395:  DO[531:HL NOT ESTOP 1]=ON ;
 396:  DO[532:HL NOT ESTOP 2]=ON ;
 397:  DO[550:HL LINK MODE]=ON ;
 398:  ENDIF ;
 399:  !******************************** ;
 400:  !NIDEC GE20  I/O SETTINGS         ;
 401:  !******************************** ;
 402:  IF (DO[92:NIDEC]=ON AND $EIP_CONN[9].$STATE=2) THEN ;
 403:  !MACHINE OUTPUTS, FROM MACHINE    ;
 404:  DO[507:NDC ROBOT RETRACTED]=(DO[217:ROBOT RETRACTED COM]) ;
 405:  DO[199:MACHINE HOME COM]=(DI[505:NDC MACH HOME]) ;
 406:  DO[204:MACHINE IN AUTO COM]=(DI[511:NDC NORMAL]) ;
 407:  DO[203:SYSTEM LINK COM]=(DI[511:NDC NORMAL]) ;
 408:  DO[218:NC ALARM COM]=(DI[511:NDC NORMAL]) ;
 409:  --eg:IF ANY REQUEST FOR SERVICE IS ON THEN THE CYCLE COMPLETE SIGNAL IS
    :  ON TO THE ROBOT ;
 410:  IF (DI[507:NDC LOAD APPR REQ]=ON OR DI[509:NDC UNLOAD APPR REQ]=ON OR DI[508:NDC LOAD RETR REQ] OR DI[510:NDC UNLOAD RETR REQ]=ON) THEN ;
 411:  DO[205:CYCLE COMPLETE COM]=ON ;
 412:  ELSE ;
 413:  DO[205:CYCLE COMPLETE COM]=OFF ;
 414:  ENDIF ;
 415:  --eg:IF LOAD RETRACT IS ON THEN PART IS CLAMPED ;
 416:  IF (DI[508:NDC LOAD RETR REQ]=ON) THEN ;
 417:  DO[193:MAIN UNCLAMPED COM]=OFF ;
 418:  DO[192:MAIN CLAMPED COM]=ON ;
 419:  ENDIF ;
 420:  --eg:IF UNLOAD RETRACT IS ON THEN PART IS UNCLAMPED ;
 421:  IF (DI[510:NDC UNLOAD RETR REQ]=ON) THEN ;
 422:  DO[192:MAIN CLAMPED COM]=OFF ;
 423:  DO[193:MAIN UNCLAMPED COM]=ON ;
 424:  ENDIF ;
 425:  !SIGNALS THAT STAY ON ;
 426:  DO[508:NDC ROBOT CONNECTED]=ON ;
 427:  DO[206:MAIN ORIENTED1 COM]=ON ;
 428:  DO[207:SUB ORIENTED1 COM]=ON ;
 429:  DO[208:MAIN ORIENTED2 COM]=ON ;
 430:  DO[216:SUB ORIENTED2 COM]=ON ;
 431:  ENDIF ;
 432:  !******************************** ;
 433:  !CUSTOM INTERFACE                 ;
 434:  !******************************** ;
 435:  IF (DO[94:CUSTOM]=ON AND $EIP_CONN[10].$STATE=2) THEN ;
 436:  !MACHINE OUTPUTS, FROM MACHINE    ;
 437:  DO[389:CHUCK CLAMP CMD]=(DO[178:CLAMP MAIN COM]) ;
 438:  DO[390:CHUCK UNCLAMP CMD]=(DO[179:UNCLAMP MAIN COM]) ;
 439:  DO[391:LOADER FINISH FIN]=(DO[182:CYCLE START COM]) ;
 440:  DO[392:AIR BLOW CMD]=(DO[189:MAIN AIRBLOW COM]) ;
 441:  DO[393:MACHINE INTERLOCK]=(DO[217:ROBOT RETRACTED COM]) ;
 442:  !MACHINE INPUTS, TO MACHINE       ;
 443:  DO[192:MAIN CLAMPED COM]=(DI[389:CHUCK CLAMP END]) ;
 444:  DO[193:MAIN UNCLAMPED COM]=(DI[390:CHUCK UNCLAMP END]) ;
 445:  DO[199:MACHINE HOME COM]=(DI[393:DOOR OPEN END]) ;
 446:  DO[203:SYSTEM LINK COM]=(DI[395:MACHINE AUTO RUN]) ;
 447:  DO[204:MACHINE IN AUTO COM]=(DI[395:MACHINE AUTO RUN]) ;
 448:  DO[205:CYCLE COMPLETE COM]=(DI[391:LOADER CALL]) ;
 449:  DO[218:NC ALARM COM]=(DI[396:MACHINE ALARM]) ;
 450:  ENDIF ;
/POS
/END
