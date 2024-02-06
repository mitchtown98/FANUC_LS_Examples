/PROG  _GET_HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Home Routine";
PROG_SIZE	= 3184;
CREATE		= DATE 23-01-07  TIME 05:14:14;
MODIFIED	= DATE 23-01-07  TIME 05:14:14;
FILE_NAME	= _GET_HOM;
VERSION		= 0;
LINE_COUNT	= 145;
MEMORY_SIZE	= 3620;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 6,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************ ;
   2:  !  GoHome ;
   3:  !    Date: 11/23/22 ;
   4:  !    By:   JDM ;
   5:  !************************ ;
   6:   ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=0 ;
   9:  PR[10001]=LPOS    ;
  10:   ;
  11:  IF DO[232:atHome->plc]=ON,JMP LBL[99] ;
  12:   ;
  13:  IF DO[233:atInf->plc]=ON,JMP LBL[10] ;
  14:   ;
  15:  IF DO[234:atTester->plc]=ON,JMP LBL[20] ;
  16:   ;
  17:  IF DO[235:atTestWait->plc]=ON,JMP LBL[21] ;
  18:   ;
  19:  IF DO[236:atOutFeed->plc]=ON,JMP LBL[30] ;
  20:   ;
  21:  IF DO[237:transient->plc]=ON,JMP LBL[40] ;
  22:   ;
  23:  !------------------------ ;
  24:  LBL[10:CheckInfeed] ;
  25:  !------------------------ ;
  26:  IF (PR[10001,1]>350 AND PR[10001,2]<(-350)) THEN ;
  27:   ;
  28:  IF (PR[10001,3]<20) THEN ;
  29:   ;
  30:  PR[10001,3]=20    ;
  31:   ;
  32:L PR[10001] 100mm/sec FINE    ;
  33:   ;
  34:  ENDIF ;
  35:   ;
  36:J P[1:InfeedMove] 20% CNT50    ;
  37:   ;
  38:  JMP LBL[90] ;
  39:  ENDIF ;
  40:   ;
  41:  !------------------------ ;
  42:  LBL[20:CheckTester] ;
  43:  !------------------------ ;
  44:  IF (PR[10001,1]<(-498)) THEN ;
  45:   ;
  46:  IF (PR[10001,3]<20) THEN ;
  47:   ;
  48:  PR[10001,3]=20    ;
  49:   ;
  50:L PR[10001] 100mm/sec FINE    ;
  51:   ;
  52:  ENDIF ;
  53:   ;
  54:J P[5:Mid] 20% CNT50    ;
  55:   ;
  56:  JMP LBL[90] ;
  57:  ENDIF ;
  58:   ;
  59:  !------------------------ ;
  60:  LBL[21:WaitTester] ;
  61:  !------------------------ ;
  62:  IF (PR[10001,3]<(-83) OR PR[10001,3]>100) THEN ;
  63:   ;
  64:  PR[10001,3]=(-83)    ;
  65:   ;
  66:L PR[10001] 50mm/sec FINE    ;
  67:   ;
  68:  ENDIF ;
  69:   ;
  70:J P[4:MoveAwayFromWait] 20% CNT5    ;
  71:J P[5:Mid] 20% CNT80    ;
  72:   ;
  73:  JMP LBL[90] ;
  74:   ;
  75:  !------------------------ ;
  76:  LBL[30:CheckOutfeed] ;
  77:  !------------------------ ;
  78:  IF (PR[10001,1]>490 AND PR[10001,2]>465) THEN ;
  79:   ;
  80:  IF (PR[10001,3]<20) THEN ;
  81:   ;
  82:  PR[10001,3]=20    ;
  83:   ;
  84:L PR[10001] 100mm/sec FINE    ;
  85:   ;
  86:  ENDIF ;
  87:   ;
  88:J P[3:MoveOutFeed] 20% CNT80    ;
  89:   ;
  90:  JMP LBL[90] ;
  91:  ENDIF ;
  92:   ;
  93:  !------------------------ ;
  94:  LBL[40:CheckTansient] ;
  95:  !------------------------ ;
  96:  !  Check for Z Down ;
  97:  IF (PR[10001,3]<(-83)) THEN ;
  98:   ;
  99:  PR[10001,3]=(-83)    ;
 100:   ;
 101:  !  Move Up ;
 102:L PR[10001] 50mm/sec FINE    ;
 103:   ;
 104:  ENDIF ;
 105:   ;
 106:  !  Check for Z Up ;
 107:  IF (PR[10001,3]>100) THEN ;
 108:   ;
 109:  PR[10002]=JPOS    ;
 110:   ;
 111:  !  Check for J3 before move ;
 112:  IF (PR[10002,3]<(-44)) THEN ;
 113:   ;
 114:  PR[10002,3]=(-44)    ;
 115:   ;
 116:  !  Open J3 gap ;
 117:J PR[10002] 20% CNT5    ;
 118:   ;
 119:  ENDIF ;
 120:   ;
 121:  PR[10001,3]=100    ;
 122:   ;
 123:  !  Move Down ;
 124:L PR[10001] 50mm/sec FINE    ;
 125:   ;
 126:  ENDIF ;
 127:   ;
 128:  PR[10002]=JPOS    ;
 129:   ;
 130:  ! Check Outfeed/Tester Side ;
 131:  IF (PR[10002,1]>61) THEN ;
 132:   ;
 133:J P[5:Mid] 20% CNT80    ;
 134:   ;
 135:  ENDIF ;
 136:   ;
 137:  !------------------------ ;
 138:  LBL[90:Home] ;
 139:  !------------------------ ;
 140:   ;
 141:J PR[1:Home] 20% CNT25    ;
 142:   ;
 143:  !------------------------ ;
 144:  LBL[99:End] ;
 145:  !------------------------ ;
/POS
P[1:"InfeedMove"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   314.227  mm,	Y =  -448.048  mm,	Z =    20.786  mm,
	W =  -179.556 deg,	P =      .184 deg,	R =     -.695 deg
};
P[3:"MoveOutFeed"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   249.958  mm,	Y =   471.458  mm,	Z =    20.786  mm,
	W =  -179.556 deg,	P =      .184 deg,	R =     -.695 deg
};
P[4:"MoveAwayFromWait"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -376.224  mm,	Y =   396.500  mm,	Z =   -89.518  mm,
	W =  -179.611 deg,	P =     1.645 deg,	R =    89.105 deg
};
P[5:"Mid"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   209.577  mm,	Y =   370.809  mm,	Z =    20.786  mm,
	W =  -179.556 deg,	P =      .184 deg,	R =    52.207 deg
};
/END
