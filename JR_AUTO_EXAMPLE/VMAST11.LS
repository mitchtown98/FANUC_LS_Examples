/PROG  VMAST11
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "VMAST11";
PROG_SIZE	= 6026;
CREATE		= DATE 21-03-26  TIME 15:34:48;
MODIFIED	= DATE 21-03-26  TIME 15:34:48;
FILE_NAME	= VCMTPROG;
VERSION		= 0;
LINE_COUNT	= 194;
MEMORY_SIZE	= 6894;
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
/MN
   1:  CALL VCRSM_CHECK('START') ;
   2:  UTOOL_NUM=9 ;
   3:  UFRAME_NUM=0 ;
   4:  PAYLOAD[1:EOAT no Part] ;
   5:   ;
   6:  IF $VCRSM_CFG.$STEP_NUM>=2,JMP LBL[2] ;
   7:  CALL VCRSM_CHECK(1) ;
   8:J P[28] 30% FINE    ;
   9:L P[1] 500mm/sec FINE    ;
  10:  CALL VCMT_VT(1,1) ;
  11:   ;
  12:  LBL[2] ;
  13:  IF $VCRSM_CFG.$STEP_NUM>=3,JMP LBL[3] ;
  14:  CALL VCRSM_CHECK(2) ;
  15:L P[28] 500mm/sec CNT0    ;
  16:L P[2] 500mm/sec FINE    ;
  17:  CALL VCMT_VT(2,1) ;
  18:   ;
  19:  LBL[3] ;
  20:  IF $VCRSM_CFG.$STEP_NUM>=4,JMP LBL[4] ;
  21:  CALL VCRSM_CHECK(3) ;
  22:L P[28] 500mm/sec CNT0    ;
  23:L P[3] 500mm/sec FINE    ;
  24:  CALL VCMT_VT(3,1) ;
  25:   ;
  26:  LBL[4] ;
  27:  IF $VCRSM_CFG.$STEP_NUM>=5,JMP LBL[5] ;
  28:  CALL VCRSM_CHECK(4) ;
  29:L P[28] 500mm/sec CNT0    ;
  30:L P[4] 500mm/sec FINE    ;
  31:  CALL VCMT_VT(4,1) ;
  32:   ;
  33:  LBL[5] ;
  34:  IF $VCRSM_CFG.$STEP_NUM>=6,JMP LBL[6] ;
  35:  CALL VCRSM_CHECK(5) ;
  36:L P[28] 500mm/sec CNT0    ;
  37:L P[5] 500mm/sec FINE    ;
  38:  CALL VCMT_VT(5,1) ;
  39:   ;
  40:  LBL[6] ;
  41:  IF $VCRSM_CFG.$STEP_NUM>=7,JMP LBL[7] ;
  42:  CALL VCRSM_CHECK(6) ;
  43:L P[28] 500mm/sec CNT0    ;
  44:L P[6] 500mm/sec FINE    ;
  45:  CALL VCMT_VT(6,1) ;
  46:   ;
  47:  LBL[7] ;
  48:  IF $VCRSM_CFG.$STEP_NUM>=8,JMP LBL[8] ;
  49:  CALL VCRSM_CHECK(7) ;
  50:L P[28] 500mm/sec CNT0    ;
  51:L P[7] 500mm/sec FINE    ;
  52:  CALL VCMT_VT(7,1) ;
  53:   ;
  54:  LBL[8] ;
  55:  IF $VCRSM_CFG.$STEP_NUM>=9,JMP LBL[9] ;
  56:  CALL VCRSM_CHECK(8) ;
  57:L P[28] 500mm/sec CNT0    ;
  58:L P[8] 500mm/sec FINE    ;
  59:  CALL VCMT_VT(8,1) ;
  60:   ;
  61:  LBL[9] ;
  62:  IF $VCRSM_CFG.$STEP_NUM>=10,JMP LBL[10] ;
  63:  CALL VCRSM_CHECK(9) ;
  64:L P[28] 500mm/sec CNT0    ;
  65:L P[9] 500mm/sec FINE    ;
  66:  CALL VCMT_VT(9,1) ;
  67:   ;
  68:  LBL[10] ;
  69:  IF $VCRSM_CFG.$STEP_NUM>=11,JMP LBL[11] ;
  70:  CALL VCRSM_CHECK(10) ;
  71:L P[28] 500mm/sec CNT0    ;
  72:L P[10] 500mm/sec FINE    ;
  73:  CALL VCMT_VT(10,1) ;
  74:   ;
  75:  LBL[11] ;
  76:  IF $VCRSM_CFG.$STEP_NUM>=12,JMP LBL[12] ;
  77:  CALL VCRSM_CHECK(11) ;
  78:L P[28] 500mm/sec CNT0    ;
  79:L P[11] 500mm/sec FINE    ;
  80:  CALL VCMT_VT(11,1) ;
  81:   ;
  82:  LBL[12] ;
  83:  IF $VCRSM_CFG.$STEP_NUM>=13,JMP LBL[13] ;
  84:  CALL VCRSM_CHECK(12) ;
  85:L P[28] 500mm/sec CNT0    ;
  86:L P[12] 500mm/sec FINE    ;
  87:  CALL VCMT_VT(12,1) ;
  88:   ;
  89:  LBL[13] ;
  90:  IF $VCRSM_CFG.$STEP_NUM>=14,JMP LBL[14] ;
  91:  CALL VCRSM_CHECK(13) ;
  92:L P[28] 500mm/sec CNT0    ;
  93:L P[13] 500mm/sec FINE    ;
  94:  CALL VCMT_VT(13,1) ;
  95:   ;
  96:  LBL[14] ;
  97:  IF $VCRSM_CFG.$STEP_NUM>=15,JMP LBL[15] ;
  98:  CALL VCRSM_CHECK(14) ;
  99:L P[28] 500mm/sec CNT0    ;
 100:L P[14] 500mm/sec FINE    ;
 101:  CALL VCMT_VT(14,1) ;
 102:   ;
 103:  LBL[15] ;
 104:  IF $VCRSM_CFG.$STEP_NUM>=16,JMP LBL[16] ;
 105:  CALL VCRSM_CHECK(15) ;
 106:L P[28] 500mm/sec CNT0    ;
 107:L P[15] 500mm/sec FINE    ;
 108:  CALL VCMT_VT(15,1) ;
 109:   ;
 110:  LBL[16] ;
 111:  IF $VCRSM_CFG.$STEP_NUM>=17,JMP LBL[17] ;
 112:  CALL VCRSM_CHECK(16) ;
 113:L P[28] 500mm/sec CNT0    ;
 114:L P[16] 500mm/sec FINE    ;
 115:  CALL VCMT_VT(16,1) ;
 116:   ;
 117:  LBL[17] ;
 118:  IF $VCRSM_CFG.$STEP_NUM>=18,JMP LBL[18] ;
 119:  CALL VCRSM_CHECK(17) ;
 120:L P[28] 500mm/sec CNT0    ;
 121:L P[17] 500mm/sec FINE    ;
 122:  CALL VCMT_VT(17,1) ;
 123:   ;
 124:  LBL[18] ;
 125:  IF $VCRSM_CFG.$STEP_NUM>=19,JMP LBL[19] ;
 126:  CALL VCRSM_CHECK(18) ;
 127:L P[28] 500mm/sec CNT0    ;
 128:L P[18] 500mm/sec FINE    ;
 129:  CALL VCMT_VT(18,1) ;
 130:   ;
 131:  LBL[19] ;
 132:  IF $VCRSM_CFG.$STEP_NUM>=20,JMP LBL[20] ;
 133:  CALL VCRSM_CHECK(19) ;
 134:L P[28] 500mm/sec CNT0    ;
 135:L P[19] 500mm/sec FINE    ;
 136:  CALL VCMT_VT(19,1) ;
 137:   ;
 138:  LBL[20] ;
 139:  IF $VCRSM_CFG.$STEP_NUM>=21,JMP LBL[21] ;
 140:  CALL VCRSM_CHECK(20) ;
 141:L P[28] 500mm/sec CNT0    ;
 142:L P[20] 500mm/sec FINE    ;
 143:  CALL VCMT_VT(20,1) ;
 144:   ;
 145:  LBL[21] ;
 146:  IF $VCRSM_CFG.$STEP_NUM>=22,JMP LBL[22] ;
 147:  CALL VCRSM_CHECK(21) ;
 148:L P[28] 500mm/sec CNT0    ;
 149:L P[21] 500mm/sec FINE    ;
 150:  CALL VCMT_VT(21,1) ;
 151:   ;
 152:  LBL[22] ;
 153:  IF $VCRSM_CFG.$STEP_NUM>=23,JMP LBL[23] ;
 154:  CALL VCRSM_CHECK(22) ;
 155:L P[28] 500mm/sec CNT0    ;
 156:L P[22] 500mm/sec FINE    ;
 157:  CALL VCMT_VT(22,1) ;
 158:   ;
 159:  LBL[23] ;
 160:  IF $VCRSM_CFG.$STEP_NUM>=24,JMP LBL[24] ;
 161:  CALL VCRSM_CHECK(23) ;
 162:L P[28] 500mm/sec CNT0    ;
 163:L P[23] 500mm/sec FINE    ;
 164:  CALL VCMT_VT(23,1) ;
 165:   ;
 166:  LBL[24] ;
 167:  IF $VCRSM_CFG.$STEP_NUM>=25,JMP LBL[25] ;
 168:  CALL VCRSM_CHECK(24) ;
 169:L P[28] 500mm/sec CNT0    ;
 170:L P[24] 500mm/sec FINE    ;
 171:  CALL VCMT_VT(24,1) ;
 172:   ;
 173:  LBL[25] ;
 174:  IF $VCRSM_CFG.$STEP_NUM>=26,JMP LBL[26] ;
 175:  CALL VCRSM_CHECK(25) ;
 176:L P[28] 500mm/sec CNT0    ;
 177:L P[25] 500mm/sec FINE    ;
 178:  CALL VCMT_VT(25,1) ;
 179:   ;
 180:  LBL[26] ;
 181:  IF $VCRSM_CFG.$STEP_NUM>=27,JMP LBL[27] ;
 182:  CALL VCRSM_CHECK(26) ;
 183:L P[28] 500mm/sec CNT0    ;
 184:L P[26] 500mm/sec FINE    ;
 185:  CALL VCMT_VT(26,1) ;
 186:   ;
 187:  LBL[27] ;
 188:  CALL VCRSM_CHECK(27) ;
 189:L P[28] 500mm/sec CNT0    ;
 190:L P[27] 500mm/sec FINE    ;
 191:  CALL VCMT_VT(27,1) ;
 192:   ;
 193:  CALL VCRSM_CHECK('END') ;
 194:L P[28] 500mm/sec CNT0    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 9,	
	J1=    51.754 deg,	J2=    46.679 deg,	J3=   -37.018 deg,
	J4=   -18.763 deg,	J5=  -101.550 deg,	J6=   122.024 deg
};
P[2]{
   GP1:
	UF : 0, UT : 9,	
	J1=    33.043 deg,	J2=    25.738 deg,	J3=   -50.862 deg,
	J4=   -51.646 deg,	J5=   -72.002 deg,	J6=   103.398 deg
};
P[3]{
   GP1:
	UF : 0, UT : 9,	
	J1=    39.107 deg,	J2=    -8.172 deg,	J3=   -58.289 deg,
	J4=  -113.681 deg,	J5=   -32.984 deg,	J6=   104.972 deg
};
P[4]{
   GP1:
	UF : 0, UT : 9,	
	J1=    65.944 deg,	J2=    42.396 deg,	J3=   -36.351 deg,
	J4=     -.348 deg,	J5=   -92.552 deg,	J6=    89.002 deg
};
P[5]{
   GP1:
	UF : 0, UT : 9,	
	J1=    46.017 deg,	J2=    36.425 deg,	J3=   -40.095 deg,
	J4=   -27.709 deg,	J5=   -80.044 deg,	J6=    56.511 deg
};
P[6]{
   GP1:
	UF : 0, UT : 9,	
	J1=    33.466 deg,	J2=    11.856 deg,	J3=   -51.827 deg,
	J4=   -58.308 deg,	J5=   -47.818 deg,	J6=    36.420 deg
};
P[7]{
   GP1:
	UF : 0, UT : 9,	
	J1=    78.272 deg,	J2=    52.345 deg,	J3=   -42.333 deg,
	J4=    18.711 deg,	J5=   -97.224 deg,	J6=    55.891 deg
};
P[8]{
   GP1:
	UF : 0, UT : 9,	
	J1=    53.916 deg,	J2=    59.399 deg,	J3=   -35.752 deg,
	J4=   -14.168 deg,	J5=  -104.288 deg,	J6=    24.828 deg
};
P[9]{
   GP1:
	UF : 0, UT : 9,	
	J1=    31.194 deg,	J2=    38.640 deg,	J3=   -53.312 deg,
	J4=   -45.452 deg,	J5=   -75.034 deg,	J6=     8.008 deg
};
P[10]{
   GP1:
	UF : 0, UT : 9,	
	J1=    41.698 deg,	J2=    18.515 deg,	J3=   -43.866 deg,
	J4=   -36.411 deg,	J5=   -68.433 deg,	J6=   134.663 deg
};
P[11]{
   GP1:
	UF : 0, UT : 9,	
	J1=    45.912 deg,	J2=    -6.479 deg,	J3=   -47.268 deg,
	J4=   -64.444 deg,	J5=   -29.361 deg,	J6=    99.256 deg
};
P[12]{
   GP1:
	UF : 0, UT : 9,	
	J1=    76.709 deg,	J2=    -4.946 deg,	J3=   -47.678 deg,
	J4=    65.019 deg,	J5=   -31.650 deg,	J6=  -105.323 deg
};
P[13]{
   GP1:
	UF : 0, UT : 9,	
	J1=    66.594 deg,	J2=     9.434 deg,	J3=   -39.817 deg,
	J4=      .721 deg,	J5=   -51.105 deg,	J6=    87.933 deg
};
P[14]{
   GP1:
	UF : 0, UT : 9,	
	J1=    62.835 deg,	J2=    14.932 deg,	J3=   -38.487 deg,
	J4=    -1.236 deg,	J5=   -51.563 deg,	J6=    27.933 deg
};
P[15]{
   GP1:
	UF : 0, UT : 9,	
	J1=    57.067 deg,	J2=    13.828 deg,	J3=   -38.724 deg,
	J4=    -1.382 deg,	J5=   -49.631 deg,	J6=   -31.182 deg
};
P[16]{
   GP1:
	UF : 0, UT : 9,	
	J1=    88.624 deg,	J2=    25.639 deg,	J3=   -51.798 deg,
	J4=    38.924 deg,	J5=   -63.456 deg,	J6=    39.751 deg
};
P[17]{
   GP1:
	UF : 0, UT : 9,	
	J1=    70.056 deg,	J2=    46.720 deg,	J3=   -37.390 deg,
	J4=    10.784 deg,	J5=   -88.876 deg,	J6=    15.346 deg
};
P[18]{
   GP1:
	UF : 0, UT : 9,	
	J1=    48.134 deg,	J2=    44.591 deg,	J3=   -38.673 deg,
	J4=   -15.645 deg,	J5=   -85.708 deg,	J6=   -17.636 deg
};
P[19]{
   GP1:
	UF : 0, UT : 9,	
	J1=    33.865 deg,	J2=    -1.755 deg,	J3=   -57.871 deg,
	J4=   -81.346 deg,	J5=   -47.403 deg,	J6=   175.989 deg
};
P[20]{
   GP1:
	UF : 0, UT : 9,	
	J1=    84.438 deg,	J2=    -5.371 deg,	J3=   -58.031 deg,
	J4=   104.062 deg,	J5=   -34.782 deg,	J6=  -101.194 deg
};
P[21]{
   GP1:
	UF : 0, UT : 9,	
	J1=    86.667 deg,	J2=    27.585 deg,	J3=   -49.613 deg,
	J4=    49.170 deg,	J5=   -72.903 deg,	J6=  -104.324 deg
};
P[22]{
   GP1:
	UF : 0, UT : 9,	
	J1=    67.978 deg,	J2=   -14.569 deg,	J3=   -50.575 deg,
	J4=    46.401 deg,	J5=    -3.468 deg,	J6=    41.645 deg
};
P[23]{
   GP1:
	UF : 0, UT : 9,	
	J1=    86.449 deg,	J2=    14.834 deg,	J3=   -50.353 deg,
	J4=    51.503 deg,	J5=   -50.305 deg,	J6=   -34.480 deg
};
P[24]{
   GP1:
	UF : 0, UT : 9,	
	J1=    72.818 deg,	J2=    37.088 deg,	J3=   -39.042 deg,
	J4=    24.114 deg,	J5=   -80.103 deg,	J6=   -58.601 deg
};
P[25]{
   GP1:
	UF : 0, UT : 9,	
	J1=    96.849 deg,	J2=    11.903 deg,	J3=   -71.210 deg,
	J4=    92.098 deg,	J5=   -48.260 deg,	J6=   -12.644 deg
};
P[26]{
   GP1:
	UF : 0, UT : 9,	
	J1=    87.140 deg,	J2=    41.908 deg,	J3=   -50.512 deg,
	J4=    39.306 deg,	J5=   -79.031 deg,	J6=    -6.652 deg
};
P[27]{
   GP1:
	UF : 0, UT : 9,	
	J1=    63.997 deg,	J2=    59.562 deg,	J3=   -35.015 deg,
	J4=     8.798 deg,	J5=  -104.276 deg,	J6=   -28.183 deg
};
P[28]{
   GP1:
	UF : 0, UT : 9,	
	J1=    62.835 deg,	J2=    14.932 deg,	J3=   -38.487 deg,
	J4=    -1.236 deg,	J5=   -51.563 deg,	J6=    27.933 deg
};
/END
