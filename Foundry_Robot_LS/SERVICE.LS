/PROG  SERVICE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 960;
CREATE		= DATE 18-04-14  TIME 01:54:54;
MODIFIED	= DATE 19-11-09  TIME 01:41:04;
FILE_NAME	= PREHEAT;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1328;
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
   1:   ;
   2:  UTOOL_NUM=1 ;
   3:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   4:   ;
   5:   ;
   6:   ;
   7:   ;
   8:   ;
   9:J P[3] R[23:J SPEED W ALUM]% CNT25    ;
  10:   ;
  11:J P[2] R[23:J SPEED W ALUM]% CNT25    ;
  12:J P[1] R[23:J SPEED W ALUM]% CNT25    ;
  13:   ;
  14:J PR[3:SERVICE] R[23:J SPEED W ALUM]% FINE    ;
  15:   ;
  16:   ;
  17:  PAUSE ;
  18:   ;
  19:J P[1] R[23:J SPEED W ALUM]% CNT25    ;
  20:   ;
  21:J P[2] R[23:J SPEED W ALUM]% CNT25    ;
  22:   ;
  23:J P[3] R[23:J SPEED W ALUM]% CNT25    ;
  24:   ;
  25:   ;
  26:   ;
  27:   ;
  28:J PR[1:Home] R[23:J SPEED W ALUM]% FINE    ;
  29:   ;
  30:  R[28:SERVICE]=0    ;
  31:  R[9:AT SERVICE]=0    ;
  32:   ;
  33:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, -1, 0, 0',
	X = -1151.583  mm,	Y =     3.452  mm,	Z =  1286.452  mm,
	W =   134.639 deg,	P =    -1.707 deg,	R =   -92.459 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.366  mm,	Y =  -662.525  mm,	Z =  1918.284  mm,
	W =   128.485 deg,	P =    -2.117 deg,	R =    -2.620 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   662.539  mm,	Y =    -1.153  mm,	Z =  1918.284  mm,
	W =   128.485 deg,	P =    -2.117 deg,	R =    87.657 deg
};
/END
