/PROG  NEW
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 639;
CREATE		= DATE 19-09-30  TIME 10:52:52;
MODIFIED	= DATE 19-10-02  TIME 17:44:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 975;
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
   1:  COL DETECT ON ;
   2:  COL GUARD ADJUST 200 ;
   3:   ;
   4:  R[63:CollisionDetectd]=DO[127:Grip2Fault]    ;
   5:  STICK DETECT ON ;
   6:J P[1] 100% FINE    ;
   7:J P[2] 100% FINE    ;
   8:J P[2] 100% FINE    ;
   9:J P[1] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  -921.909  mm,	Y =   278.024  mm,	Z =  -605.153  mm,
	W =    90.033 deg,	P =      .092 deg,	R =   -71.919 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =    74.695  mm,	Y =  -285.552  mm,	Z =  -606.137  mm,
	W =    90.099 deg,	P =     -.025 deg,	R =    12.942 deg
};
/END
