/PROG  V_3DV_FIXED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Fixed Frame Ofs.";
PROG_SIZE	= 1406;
CREATE		= DATE 19-12-23  TIME 21:20:18;
MODIFIED	= DATE 19-12-23  TIME 21:20:18;
FILE_NAME	= V_3DV_FI;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1790;
PROTECT		= READ;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:J P[1:Home] 30% FINE    ;
   4:   ;
   5:  !SEARCH ;
   6:  LBL[10] ;
   7:J P[2:Search] 100% FINE    ;
   8:  WAIT    .30(sec) ;
   9:  VISION RUN_FIND 'V_3DV_SAMPLE'    ;
  10:  VISION GET_OFFSET 'V_3DV_SAMPLE' VR[1] JMP LBL[999] ;
  11:   ;
  12:  !PICK ;
  13:L P[3:Pick Approach] 800mm/sec CNT100 VOFFSET,VR[1]    ;
  14:L P[4:Pick] 200mm/sec FINE VOFFSET,VR[1]    ;
  15:  !Insert program instructions ;
  16:  !to grasp the part. ;
  17:  CALL ...    ;
  18:L P[5:Pick Retract] 800mm/sec CNT100 VOFFSET,VR[1]    ;
  19:   ;
  20:  !PLACE ;
  21:L P[6:Place Approach] 800mm/sec CNT100    ;
  22:L P[7:Place] 200mm/sec FINE    ;
  23:  !Insert program instructions ;
  24:  !to release the part. ;
  25:  CALL ...    ;
  26:L P[8:Place Retract] 800mm/sec CNT100    ;
  27:  JMP LBL[10] ;
  28:   ;
  29:  !ERROR ;
  30:  LBL[999] ;
/POS
P[1:"Home"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[2:"Search"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[3:"Pick Approach"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[4:"Pick"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[5:"Pick Retract"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[6:"Place Approach"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[7:"Place"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
P[8:"Place Retract"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =  ********  mm,	Y =  ********  mm,	Z =  ********  mm,
	W =  ******** deg,	P =  ******** deg,	R =  ******** deg
};
/END
