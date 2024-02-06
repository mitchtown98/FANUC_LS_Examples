/PROG  VIS01282
/ATTR
OWNER		= ASCBIN;
COMMENT		= "";
PROG_SIZE	= 758;
CREATE		= DATE 21-05-10  TIME 08:07:54;
MODIFIED	= DATE 21-05-10  TIME 08:07:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1190;
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
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:L P[1] 2000mm/sec FINE    ;
   5:  VISION RUN_FIND 'VISION'    ;
   6:   ;
   7:  IF R[1:State]<>1,JMP LBL[10] ;
   8:  VISION SET_REFERENCE 'VISION' ;
   9:  R[1:State]=0    ;
  10:  LBL[10] ;
  11:   ;
  12:  VISION GET_OFFSET 'VISION' VR[1] JMP LBL[99] ;
  13:  PR[1]=VR[1].OFFSET ;
  14:  ! L P[2] 2000mm/sec FINE Offset,P ;
  15:   ;
  16:  END ;
  17:  LBL[99] ;
  18:  UALM[1] ;
/POS
P[1]{
   GP1:
	UF : 9, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1092.520  mm,	Y =  1240.900  mm,	Z =  -971.680  mm,
	W =  -179.610 deg,	P =      .880 deg,	R =  -178.650 deg
};
P[2]{
   GP1:
	UF : 9, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1092.520  mm,	Y =  1240.900  mm,	Z =  -971.680  mm,
	W =  -179.610 deg,	P =      .880 deg,	R =  -178.650 deg
};
/END
