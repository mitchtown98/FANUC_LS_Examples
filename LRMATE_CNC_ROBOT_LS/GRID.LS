/PROG  GRID
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 762;
CREATE		= DATE 19-10-04  TIME 09:48:16;
MODIFIED	= DATE 19-10-04  TIME 10:37:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 1102;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=8 ;
   3:   ;
   4:J P[1] 100% CNT60    ;
   5:L P[2] 500mm/sec CNT60    ;
   6:L P[3] 1000mm/sec CNT60    ;
   7:L P[4] 1000mm/sec CNT60    ;
   8:L P[5] 1000mm/sec CNT60    ;
/POS
P[1]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.021  mm,	Y =  -231.310  mm,	Z =  -138.574  mm,
	W =  -179.575 deg,	P =    -1.549 deg,	R =    -2.204 deg
};
P[2:""]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   524.021  mm,	Y =  -231.310  mm,	Z =  -157.006  mm,
	W =  -179.575 deg,	P =    -1.549 deg,	R =    -2.204 deg
};
P[3]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    78.976  mm,	Y =     1.762  mm,	Z =    -5.175  mm,
	W =      .000 deg,	P =     -.000 deg,	R =   -21.561 deg
};
P[4]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    78.968  mm,	Y =     9.253  mm,	Z =    -5.165  mm,
	W =      .001 deg,	P =     -.001 deg,	R =   -21.560 deg
};
P[5]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =      .051  mm,	Y =     9.250  mm,	Z =    -5.158  mm,
	W =      .001 deg,	P =     -.002 deg,	R =   -21.562 deg
};
/END
