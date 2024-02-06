/PROG  _PLACE_FOAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Place SubRoutine";
PROG_SIZE	= 1115;
CREATE		= DATE 23-12-13  TIME 08:43:00;
MODIFIED	= DATE 23-12-13  TIME 12:50:34;
FILE_NAME	= _ZTEMPLA;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1399;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,1,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************* ;
   2:  !      ROUTINE            ;
   3:  !************************* ;
   4:  UFRAME_NUM=0 ;
   5:  UTOOL_NUM=1 ;
   6:   ;
   7:  PR[10001]=LPOS-LPOS    ;
   8:  PR[10001,3]=(-15)    ;
   9:   ;
  10:J P[2:Place] 75% CNT100 Tool_Offset,PR[10001]    ;
  11:L P[2:Place] 300mm/sec FINE    ;
  12:   ;
  13:  ! For Simulation Only ;
  14:  CALL _SPLACE    ;
  15:   ;
  16:L P[2:Place] 300mm/sec CNT50 Tool_Offset,PR[10001]    ;
  17:  END ;
  18:   ;
  19:  !------------------------- ;
  20:  !  Touch up Local Points   ;
  21:  !------------------------- ;
  22:J P[1:MidPt] 100% CNT100    ;
  23:J P[2:Place] 100% CNT100    ;
  24:J P[3:BackToBin] 100% CNT100    ;
/POS
P[1:"MidPt"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   450.932  mm,	Y =  -177.223  mm,	Z =    53.467  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =  -128.128 deg
};
P[2:"Place"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   343.623  mm,	Y =  -346.711  mm,	Z =    53.467  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   179.434 deg
};
P[3:"BackToBin"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   568.954  mm,	Y =    18.604  mm,	Z =    53.467  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -89.999 deg
};
/END
