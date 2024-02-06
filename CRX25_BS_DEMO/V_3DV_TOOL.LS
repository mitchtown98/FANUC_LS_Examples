/PROG  V_3DV_TOOL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tool Ofs.";
PROG_SIZE	= 1279;
CREATE		= DATE 19-12-23  TIME 21:20:22;
MODIFIED	= DATE 19-12-23  TIME 21:20:22;
FILE_NAME	= V_3DV_TO;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1663;
PROTECT		= READ;
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
/MN
   1:  !The register number and ;
   2:  !position register number below ;
   3:  !should be changed and commented ;
   4:  !as necessary. ;
   5:   ;
   6:  UFRAME_NUM=1 ;
   7:  UTOOL_NUM=1 ;
   8:J P[1:Home] 100% FINE    ;
   9:  R[1:PalletsBuiltRigt]=0    ;
  10:   ;
  11:  !SEARCH ;
  12:J P[2:Search] 50% FINE    ;
  13:  WAIT (R[1:PalletsBuiltRigt])    ;
  14:  VISION RUN_FIND 'V_3DV_SAMPLE'    ;
  15:  VISION GET_OFFSET 'V_3DV_SAMPLE' VR[1] JMP LBL[100] ;
  16:   ;
  17:  !PLACE ;
  18:L P[3:Place Approach] 2000mm/sec CNT100 VOFFSET,VR[1] Offset,PR[1:RightCam]    ;
  19:L P[4:Place] 500mm/sec FINE VOFFSET,VR[1]    ;
  20:  !Insert program instruction ;
  21:  !to release the part. ;
  22:  CALL ...    ;
  23:L P[5:Place Retract] 2000mm/sec CNT100 VOFFSET,VR[1] Offset,PR[1:RightCam]    ;
  24:  JMP LBL[999] ;
  25:   ;
  26:  !ERROR ;
  27:  LBL[100] ;
  28:  R[1:PalletsBuiltRigt]=1    ;
  29:   ;
  30:  LBL[999] ;
/POS
P[1:"Home"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
P[2:"Search"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
P[3:"Place Approach"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
P[4:"Place"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
P[5:"Place Retract"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
/END
