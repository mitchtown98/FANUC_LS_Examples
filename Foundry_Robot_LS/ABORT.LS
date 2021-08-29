/PROG  ABORT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1235;
CREATE		= DATE 19-11-12  TIME 01:05:30;
MODIFIED	= DATE 19-11-20  TIME 20:56:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 65;
MEMORY_SIZE	= 1603;
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
   1:J PR[1:Home] R[23:J SPEED W ALUM]% CNT25    ;
   2:   ;
   3:   ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=6 ;
   6:   ;
   7:   ;
   8:L P[5] R[19:L SPEED W ALUM]mm/sec FINE ACC50    ;
   9:L P[1] R[68:1ST ABORT POS SP]mm/sec FINE ACC25    ;
  10:L P[2] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  11:  WAIT   5.00(sec) ;
  12:L P[3] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  13:  WAIT   5.00(sec) ;
  14:   ;
  15:   ;
  16:L P[5] R[19:L SPEED W ALUM]mm/sec FINE ACC25    ;
  17:   ;
  18:   ;
  19:  UFRAME_NUM=0 ;
  20:  UTOOL_NUM=0 ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
  25:   ;
  26:   ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
  31:   ;
  32:   ;
  33:   ;
  34:   ;
  35:   ;
  36:   ;
  37:   ;
  38:   ;
  39:   ;
  40:   ;
  41:   ;
  42:   ;
  43:   ;
  44:   ;
  45:   ;
  46:   ;
  47:   ;
  48:   ;
  49:   ;
  50:   ;
  51:   ;
  52:   ;
  53:   ;
  54:   ;
  55:   ;
  56:   ;
  57:   ;
  58:   ;
  59:   ;
  60:  R[27:PRE_HEAT]=0    ;
  61:   ;
  62:   ;
  63:   ;
  64:J PR[1:Home] R[22:J SPEED WO ALUM]% CNT50    ;
  65:  R[5:ABORT]=0    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.332  mm,	Z =   594.772  mm,
	W =   130.132 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[2]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.332  mm,	Z =   594.772  mm,
	W =   148.031 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[3]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.333  mm,	Z =   594.771  mm,
	W =  -173.161 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[5]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2228.058  mm,	Y =   252.858  mm,	Z =   832.946  mm,
	W =    97.502 deg,	P =    -1.400 deg,	R =   177.628 deg
};
/END
