/PROG  _QUIKRETE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1160;
CREATE		= DATE 23-09-15  TIME 09:16:58;
MODIFIED	= DATE 23-09-15  TIME 09:28:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1552;
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

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !set frames ;
   2:  UFRAME_NUM=1 ;
   3:  UTOOL_NUM=1 ;
   4:   ;
   5:  !init layeroffset to 0,0,0,0,0,0 ;
   6:  PR[41:layer_offset]=LPOS-LPOS    ;
   7:   ;
   8:  !init layer index ;
   9:  R[41]=1    ;
  10:   ;
  11:  !------------------- ;
  12:  LBL[10:layer loop] ;
  13:  !------------------- ;
  14:   ;
  15:  !set layer height ;
  16:  PR[41,3:layer_offset]=((R[41]*R[43])-R[43]) ;
  17:   ;
  18:  !print square ;
  19:L P[1] 1000mm/sec CNT1 Offset,PR[41:layer_offset]    ;
  20:L P[2] 1000mm/sec CNT1 Offset,PR[41:layer_offset]    ;
  21:L P[3] 1000mm/sec CNT1 Offset,PR[41:layer_offset]    ;
  22:L P[4] 1000mm/sec CNT1 Offset,PR[41:layer_offset]    ;
  23:   ;
  24:  !index layer ;
  25:  R[41]=R[41]+1    ;
  26:   ;
  27:  !chk if last layer ;
  28:  IF R[41]<R[42],JMP LBL[10] ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2187.359619  mm,	Y =   492.882263  mm,	Z =  1334.458740  mm,
	W =   179.909821 deg,	P =    -1.051250 deg,	R =    89.918221 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -2178.955811  mm,	Y =   894.074463  mm,	Z =  1334.458496  mm,
	W =   179.909943 deg,	P =    -1.051275 deg,	R =    89.918221 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1793.121338  mm,	Y =   885.992188  mm,	Z =  1334.458496  mm,
	W =   179.908844 deg,	P =    -1.051040 deg,	R =    89.918182 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1800.801758  mm,	Y =   519.352478  mm,	Z =  1334.458618  mm,
	W =   179.909332 deg,	P =    -1.050901 deg,	R =    89.918205 deg
};
/END
