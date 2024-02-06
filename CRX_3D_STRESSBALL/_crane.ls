/PROG  _CRANE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1769;
CREATE		= DATE 00-01-13  TIME 01:13:44;
MODIFIED	= DATE 23-05-04  TIME 10:25:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 62;
MEMORY_SIZE	= 2161;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !------------- ;
   2:  LBL[1:init] ;
   3:  !------------- ;
   4:  !IO ;
   5:  DO[102:PB_PLAY]=OFF ;
   6:  DO[103:PB_PICK]=OFF ;
   7:  DO[105:TIMER ON]=OFF ;
   8:  DO[106:TIMER STOP]=OFF ;
   9:   ;
  10:  CALL _CRANE_CENTER_POS    ;
  11:   ;
  12:  !registers ;
  13:  R[184:btnPlayPressed]=0    ;
  14:  R[185:btnPickPressed]=0    ;
  15:  R[186:pkRI_Delay]=0    ;
  16:   ;
  17:  !------------- ;
  18:  LBL[5:start timer] ;
  19:  !------------- ;
  20:  !start timer ;
  21:  WAIT DI[110:PI TIMER TIMING]=OFF    ;
  22:  DO[105:TIMER ON]=PULSE,0.5sec ;
  23:  WAIT DI[110:PI TIMER TIMING]=ON    ;
  24:  DO[103:PB_PICK]=ON ;
  25:   ;
  26:  !------------- ;
  27:  LBL[10:js enabled] ;
  28:  !------------- ;
  29:  PR[90:lpos]=LPOS    ;
  30:  !x ;
  31:  IF (DI[105:X+] AND PR[90,1:lpos]<R[192:xMax]),PR[90,1:lpos]=(PR[90,1:lpos]+R[189:offsetX]) ;
  32:  IF (DI[106:X-] AND PR[90,1:lpos]>R[191:xMin]),PR[90,1:lpos]=(PR[90,1:lpos]-R[189:offsetX]) ;
  33:  !Y ;
  34:  IF (DI[107:Y+] AND PR[90,2:lpos]<R[194:yMax]),PR[90,2:lpos]=(PR[90,2:lpos]+R[190:offsetY]) ;
  35:  IF (DI[108:Y-] AND PR[90,2:lpos]>R[193:yMin]),PR[90,2:lpos]=(PR[90,2:lpos]-R[190:offsetY]) ;
  36:  OVERRIDE=100% ;
  37:L PR[90:lpos] R[187:speed]mm/sec CNT R[188:Cnt]    ;
  38:  IF R[185:btnPickPressed]=1 OR DI[110:PI TIMER TIMING]=OFF,JMP LBL[20] ;
  39:  JMP LBL[10] ;
  40:   ;
  41:  !------------- ;
  42:  LBL[20:PICK] ;
  43:  !------------- ;
  44:  DO[106:TIMER STOP]=ON ;
  45:  DO[103:PB_PICK]=OFF ;
  46:  RO[2:Vacuum On]=ON ;
  47:  PR[90,3:lpos]=R[183:zTop]    ;
  48:L PR[90:lpos] 120mm/sec CNT55    ;
  49:  SKIP CONDITION RI[2:VACUUM_PRESENT]=ON OR ERR_NUM=24320 OR ERR_NUM=24348 OR ERR_NUM=24319    ;
  50:  PR[90,3:lpos]=R[196:zMin]    ;
  51:L PR[90:lpos] R[197:zSpeed]mm/sec CNT1 Skip,LBL[21],PR[91]=LPOS    ;
  52:  LBL[21] ;
  53:  WAIT R[186] ;
  54:  PR[90,3:lpos]=R[195:zStart]    ;
  55:L PR[90:lpos] R[198:zSpeedUp]mm/sec CNT1    ;
  56:  DO[105:TIMER ON]=OFF ;
  57:  DO[106:TIMER STOP]=OFF ;
  58:   ;
  59:  TIMER[7]=RESET ;
  60:  TIMER[7]=START ;
  61:   ;
  62:  F[10:WINNER_WINNER]=(RI[2:VACUUM_PRESENT]) ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   172.500000  mm,	Y =   322.500000  mm,	Z =   280.000000  mm,
	W =   179.899994 deg,	P =     0.000000 deg,	R =     0.000000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   166.508423  mm,	Y =  1087.830444  mm,	Z =   100.000000  mm,
	W =   179.896454 deg,	P =      .001644 deg,	R =      .000468 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   166.506500  mm,	Y =  1087.831421  mm,	Z =   280.000000  mm,
	W =   179.896454 deg,	P =      .001645 deg,	R =      .001102 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   166.506500  mm,	Y =  1087.831421  mm,	Z =   280.000000  mm,
	W =   179.896454 deg,	P =      .001645 deg,	R =      .001102 deg
};
/END
