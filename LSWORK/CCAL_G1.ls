/PROG  CCAL_G1
/ATTR
OWNER		= KAREL;
COMMENT		= "";
PROG_SIZE	= 1913;
CREATE		= DATE 23-08-15  TIME 10:47:22;
MODIFIED	= DATE 23-08-17  TIME 15:07:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 2185;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 1500,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=8 ;
   3:L P[1:Home Position] 100mm/sec FINE    ;
   4:  UFrame_Start[1] ;
   4: ;
   4:  !--  Point 1 -- ;
   5:L P[2:Via Pos 1] 100mm/sec FINE    ;
   6:L P[3:Search Pos 1] 100mm/sec FINE    ;
   7:  Detect_Point[1] UFrame[Y] ;
   7: ;
   7:  !-- Point 2 -- ;
   8:L P[4:Via Pos 2] 100mm/sec FINE    ;
   9:L P[5:Search Pos 2] 100mm/sec FINE    ;
  10:  Detect_Point[1] UFrame[Y] ;
  10: ;
  10: CALL _MOVE_TO_3 ;
  10: ;
  10:  !-- Point 3 -- ;
  11:L P[6:Via Pos 3] 100mm/sec FINE    ;
  12:L P[7:Search Pos 3] 100mm/sec FINE    ;
  13:  Detect_Point[1] UFrame[X] ;
  13: ;
  13: CALL _MOVE_TO_4 ;
  13: ;
  13:  !-- Point 4 -- ;
  14:L P[8:Via Pos 4] 100mm/sec FINE    ;
  15:L P[9:Search Pos 4] 100mm/sec FINE    ;
  16:  Detect_Point[1] UFrame[-Z] ;
  16: ;
  16:  !-- Point 5 -- ;
  17:L P[10:Via Pos 5] 100mm/sec FINE    ;
  18:L P[11:Search Pos 5] 100mm/sec FINE    ;
  19:  Detect_Point[1] UFrame[-Z] ;
  19: ;
  19:  !-- Point 6 -- ;
  20:L P[12:Via Pos 6] 100mm/sec FINE    ;
  21:L P[13:Search Pos 6] 100mm/sec FINE    ;
  22:  Detect_Point[1] UFrame[X] ;
  22: ;
  22: !-- Back To Home --;
  23:L P[14:Via Pos 7] 100mm/sec FINE    ;
  24:L P[15:Home Position] 100mm/sec FINE    ;
  25:  UFrame_End[Recovery] ;
/POS
P[1:"Home Position"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.502  mm,	Y =  -163.764  mm,	Z =    63.156  mm,
	W =   110.014 deg,	P =    84.015 deg,	R =  -167.063 deg
};
P[2:"Via Pos 1"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -122.128  mm,	Y =  -192.329  mm,	Z =    -8.469  mm,
	W =   110.013 deg,	P =    84.015 deg,	R =  -167.064 deg
};
P[3:"Search Pos 1"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -122.127  mm,	Y =  -160.078  mm,	Z =    -8.469  mm,
	W =   110.014 deg,	P =    84.015 deg,	R =  -167.064 deg
};
P[4:"Via Pos 2"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =    81.348  mm,	Y =  -186.057  mm,	Z =    -9.217  mm,
	W =   110.014 deg,	P =    84.015 deg,	R =  -167.063 deg
};
P[5:"Search Pos 2"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =    81.349  mm,	Y =  -161.682  mm,	Z =    -9.217  mm,
	W =   110.014 deg,	P =    84.015 deg,	R =  -167.063 deg
};
P[6:"Via Pos 3"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'F U T, 0, 0, 0',
	X =  -181.064  mm,	Y =   105.304  mm,	Z =    -5.499  mm,
	W =   -90.044 deg,	P =      .606 deg,	R =   -93.076 deg
};
P[7:"Search Pos 3"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'F U T, 0, 0, 0',
	X =  -152.082  mm,	Y =   104.447  mm,	Z =    -5.499  mm,
	W =   -90.044 deg,	P =      .606 deg,	R =   -93.076 deg
};
P[8:"Via Pos 4"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.489  mm,	Y =   112.054  mm,	Z =    63.572  mm,
	W =  -177.865 deg,	P =    -2.954 deg,	R =     -.478 deg
};
P[9:"Search Pos 4"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.490  mm,	Y =   112.054  mm,	Z =    34.821  mm,
	W =  -177.865 deg,	P =    -2.954 deg,	R =     -.478 deg
};
P[10:"Via Pos 5"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.485  mm,	Y =  -114.447  mm,	Z =    63.572  mm,
	W =  -177.865 deg,	P =    -2.954 deg,	R =     -.478 deg
};
P[11:"Search Pos 5"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -111.484  mm,	Y =  -114.446  mm,	Z =    30.572  mm,
	W =  -177.865 deg,	P =    -2.954 deg,	R =     -.478 deg
};
P[12:"Via Pos 6"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =   109.310  mm,	Y =  -112.869  mm,	Z =    42.408  mm,
	W =   179.958 deg,	P =     -.059 deg,	R =    89.773 deg
};
P[13:"Search Pos 6"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =   109.309  mm,	Y =  -112.868  mm,	Z =    21.971  mm,
	W =   179.958 deg,	P =     -.059 deg,	R =    89.773 deg
};
P[14:"Via Pos 7"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.433  mm,	Y =  -307.056  mm,	Z =   165.445  mm,
	W =   179.958 deg,	P =     -.059 deg,	R =    89.773 deg
};
P[15:"Home Position"]{
   GP1:
	UF : 1, UT : 8,		CONFIG : 'N U T, 0, 0, 0',
	X =  -123.502  mm,	Y =  -163.764  mm,	Z =    63.156  mm,
	W =   110.014 deg,	P =    84.015 deg,	R =  -167.063 deg
};
/END
