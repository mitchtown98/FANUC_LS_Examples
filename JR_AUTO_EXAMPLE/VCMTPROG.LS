/PROG  VCMTPROG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VMAST";
PROG_SIZE	= 4094;
CREATE		= DATE 15-01-07  TIME 08:54:20;
MODIFIED	= DATE 15-01-07  TIME 08:55:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 164;
MEMORY_SIZE	= 4946;
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
/MN
   1:  CALL VCRSM_CHECK('START') ;
   2:   ;
   3:  IF $VCRSM_CFG.$STEP_NUM>=2,JMP LBL[2] ;
   4:  CALL VCRSM_CHECK(1) ;
   5:J P[28] 30% FINE    ;
   6:L P[1] 500mm/sec FINE    ;
   7:   ;
   8:  LBL[2] ;
   9:  IF $VCRSM_CFG.$STEP_NUM>=3,JMP LBL[3] ;
  10:  CALL VCRSM_CHECK(2) ;
  11:L P[28] 500mm/sec CNT0    ;
  12:L P[2] 500mm/sec FINE    ;
  13:   ;
  14:  LBL[3] ;
  15:  IF $VCRSM_CFG.$STEP_NUM>=4,JMP LBL[4] ;
  16:  CALL VCRSM_CHECK(3) ;
  17:L P[28] 500mm/sec CNT0    ;
  18:L P[3] 500mm/sec FINE    ;
  19:   ;
  20:  LBL[4] ;
  21:  IF $VCRSM_CFG.$STEP_NUM>=5,JMP LBL[5] ;
  22:  CALL VCRSM_CHECK(4) ;
  23:L P[28] 500mm/sec CNT0    ;
  24:L P[4] 500mm/sec FINE    ;
  25:   ;
  26:  LBL[5] ;
  27:  IF $VCRSM_CFG.$STEP_NUM>=6,JMP LBL[6] ;
  28:  CALL VCRSM_CHECK(5) ;
  29:L P[28] 500mm/sec CNT0    ;
  30:L P[5] 500mm/sec FINE    ;
  31:   ;
  32:  LBL[6] ;
  33:  IF $VCRSM_CFG.$STEP_NUM>=7,JMP LBL[7] ;
  34:  CALL VCRSM_CHECK(6) ;
  35:L P[28] 500mm/sec CNT0    ;
  36:L P[6] 500mm/sec FINE    ;
  37:   ;
  38:  LBL[7] ;
  39:  IF $VCRSM_CFG.$STEP_NUM>=8,JMP LBL[8] ;
  40:  CALL VCRSM_CHECK(7) ;
  41:L P[28] 500mm/sec CNT0    ;
  42:L P[7] 500mm/sec FINE    ;
  43:   ;
  44:  LBL[8] ;
  45:  IF $VCRSM_CFG.$STEP_NUM>=9,JMP LBL[9] ;
  46:  CALL VCRSM_CHECK(8) ;
  47:L P[28] 500mm/sec CNT0    ;
  48:L P[8] 500mm/sec FINE    ;
  49:   ;
  50:  LBL[9] ;
  51:  IF $VCRSM_CFG.$STEP_NUM>=10,JMP LBL[10] ;
  52:  CALL VCRSM_CHECK(9) ;
  53:L P[28] 500mm/sec CNT0    ;
  54:L P[9] 500mm/sec FINE    ;
  55:   ;
  56:  LBL[10] ;
  57:  IF $VCRSM_CFG.$STEP_NUM>=11,JMP LBL[11] ;
  58:  CALL VCRSM_CHECK(10) ;
  59:L P[28] 500mm/sec CNT0    ;
  60:L P[10] 500mm/sec FINE    ;
  61:   ;
  62:  LBL[11] ;
  63:  IF $VCRSM_CFG.$STEP_NUM>=12,JMP LBL[12] ;
  64:  CALL VCRSM_CHECK(11) ;
  65:L P[28] 500mm/sec CNT0    ;
  66:L P[11] 500mm/sec FINE    ;
  67:   ;
  68:  LBL[12] ;
  69:  IF $VCRSM_CFG.$STEP_NUM>=13,JMP LBL[13] ;
  70:  CALL VCRSM_CHECK(12) ;
  71:L P[28] 500mm/sec CNT0    ;
  72:L P[12] 500mm/sec FINE    ;
  73:   ;
  74:  LBL[13] ;
  75:  IF $VCRSM_CFG.$STEP_NUM>=14,JMP LBL[14] ;
  76:  CALL VCRSM_CHECK(13) ;
  77:L P[28] 500mm/sec CNT0    ;
  78:L P[13] 500mm/sec FINE    ;
  79:   ;
  80:  LBL[14] ;
  81:  IF $VCRSM_CFG.$STEP_NUM>=15,JMP LBL[15] ;
  82:  CALL VCRSM_CHECK(14) ;
  83:L P[28] 500mm/sec CNT0    ;
  84:L P[14] 500mm/sec FINE    ;
  85:   ;
  86:  LBL[15] ;
  87:  IF $VCRSM_CFG.$STEP_NUM>=16,JMP LBL[16] ;
  88:  CALL VCRSM_CHECK(15) ;
  89:L P[28] 500mm/sec CNT0    ;
  90:L P[15] 500mm/sec FINE    ;
  91:   ;
  92:  LBL[16] ;
  93:  IF $VCRSM_CFG.$STEP_NUM>=17,JMP LBL[17] ;
  94:  CALL VCRSM_CHECK(16) ;
  95:L P[28] 500mm/sec CNT0    ;
  96:L P[16] 500mm/sec FINE    ;
  97:   ;
  98:  LBL[17] ;
  99:  IF $VCRSM_CFG.$STEP_NUM>=18,JMP LBL[18] ;
 100:  CALL VCRSM_CHECK(17) ;
 101:L P[28] 500mm/sec CNT0    ;
 102:L P[17] 500mm/sec FINE    ;
 103:   ;
 104:  LBL[18] ;
 105:  IF $VCRSM_CFG.$STEP_NUM>=19,JMP LBL[19] ;
 106:  CALL VCRSM_CHECK(18) ;
 107:L P[28] 500mm/sec CNT0    ;
 108:L P[18] 500mm/sec FINE    ;
 109:   ;
 110:  LBL[19] ;
 111:  IF $VCRSM_CFG.$STEP_NUM>=20,JMP LBL[20] ;
 112:  CALL VCRSM_CHECK(19) ;
 113:L P[28] 500mm/sec CNT0    ;
 114:L P[19] 500mm/sec FINE    ;
 115:   ;
 116:  LBL[20] ;
 117:  IF $VCRSM_CFG.$STEP_NUM>=21,JMP LBL[21] ;
 118:  CALL VCRSM_CHECK(20) ;
 119:L P[28] 500mm/sec CNT0    ;
 120:L P[20] 500mm/sec FINE    ;
 121:   ;
 122:  LBL[21] ;
 123:  IF $VCRSM_CFG.$STEP_NUM>=22,JMP LBL[22] ;
 124:  CALL VCRSM_CHECK(21) ;
 125:L P[28] 500mm/sec CNT0    ;
 126:L P[21] 500mm/sec FINE    ;
 127:   ;
 128:  LBL[22] ;
 129:  IF $VCRSM_CFG.$STEP_NUM>=23,JMP LBL[23] ;
 130:  CALL VCRSM_CHECK(22) ;
 131:L P[28] 500mm/sec CNT0    ;
 132:L P[22] 500mm/sec FINE    ;
 133:   ;
 134:  LBL[23] ;
 135:  IF $VCRSM_CFG.$STEP_NUM>=24,JMP LBL[24] ;
 136:  CALL VCRSM_CHECK(23) ;
 137:L P[28] 500mm/sec CNT0    ;
 138:L P[23] 500mm/sec FINE    ;
 139:   ;
 140:  LBL[24] ;
 141:  IF $VCRSM_CFG.$STEP_NUM>=25,JMP LBL[25] ;
 142:  CALL VCRSM_CHECK(24) ;
 143:L P[28] 500mm/sec CNT0    ;
 144:L P[24] 500mm/sec FINE    ;
 145:   ;
 146:  LBL[25] ;
 147:  IF $VCRSM_CFG.$STEP_NUM>=26,JMP LBL[26] ;
 148:  CALL VCRSM_CHECK(25) ;
 149:L P[28] 500mm/sec CNT0    ;
 150:L P[25] 500mm/sec FINE    ;
 151:   ;
 152:  LBL[26] ;
 153:  IF $VCRSM_CFG.$STEP_NUM>=27,JMP LBL[27] ;
 154:  CALL VCRSM_CHECK(26) ;
 155:L P[28] 500mm/sec CNT0    ;
 156:L P[26] 500mm/sec FINE    ;
 157:   ;
 158:  LBL[27] ;
 159:  CALL VCRSM_CHECK(27) ;
 160:L P[28] 500mm/sec CNT0    ;
 161:L P[27] 500mm/sec FINE    ;
 162:   ;
 163:  CALL VCRSM_CHECK('END') ;
 164:L P[28] 500mm/sec CNT0    ;
/POS
P[1]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[2]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[3]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[4]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[5]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[6]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[7]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[8]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[9]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[10]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[11]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[12]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[13]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[14]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[15]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[16]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[17]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[18]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[19]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[20]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[21]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[22]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[23]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[24]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[25]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[26]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[27]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
P[28]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X = ********  mm,	Y = ********  mm,	Z = ********  mm,
	W = ******** deg,	P = ******** deg,	R = ******** deg
};
/END
