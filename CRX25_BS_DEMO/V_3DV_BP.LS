/PROG  V_3DV_BP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Bin Pick";
PROG_SIZE	= 1769;
CREATE		= DATE 19-12-23  TIME 21:20:12;
MODIFIED	= DATE 19-12-23  TIME 21:20:12;
FILE_NAME	= V_3DV_BP;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 2229;
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
   1:  !The register numbers and ;
   2:  !position register numbers below ;
   3:  !should be changed according to ;
   4:  !those set by CMT_3DV_BP.TP. ;
   5:   ;
   6:  UFRAME_NUM=1 ;
   7:  UTOOL_NUM=1 ;
   8:  CALL BINPICK_CLEAR(1) ;
   9:   ;
  10:  !SEARCH ;
  11:  LBL[1] ;
  12:L P[1:Search] 2000mm/sec FINE    ;
  13:  CALL BINPICK_SEARCH(1,1,10) ;
  14:  IF R[10:Ofs]<>0,JMP LBL[999] ;
  15:   ;
  16:  !POP ;
  17:  LBL[2] ;
  18:  CALL BINPICK_POP(1,11,12) ;
  19:  IF R[11:MaxLayers]<>0,JMP LBL[1] ;
  20:   ;
  21:  !GETPICKPOS ;
  22:  CALL BINPICK_GETPICKPOS(1,1,13,20,21,22) ;
  23:  IF R[13:CamY]=0,JMP LBL[3] ;
  24:   ;
  25:  CALL BINPICK_SETSTAT(1,22) ;
  26:  JMP LBL[2] ;
  27:   ;
  28:  !PICK ;
  29:  LBL[3] ;
  30:L P[2:Pick Approach] 2000mm/sec CNT100    ;
  31:L PR[22:Mid2] 2000mm/sec CNT50    ;
  32:L PR[20] 500mm/sec FINE    ;
  33:  !Insert program instructions ;
  34:  !to grasp the part. ;
  35:  CALL ...    ;
  36:  CALL BINPICK_SETSTAT(1,20) ;
  37:L PR[22:Mid2] 500mm/sec CNT50    ;
  38:L P[2:Pick Approach] 2000mm/sec CNT100    ;
  39:   ;
  40:  !PLACE ;
  41:L P[3:Place Approach] 2000mm/sec CNT100    ;
  42:L P[4:Place] 500mm/sec FINE    ;
  43:  !Insert program instructions ;
  44:  !to release the part. ;
  45:  CALL ...    ;
  46:L P[3:Place Approach] 2000mm/sec CNT100    ;
  47:   ;
  48:  !CONTINUOUS ;
  49:  JMP LBL[2] ;
  50:   ;
  51:  !END ;
  52:  LBL[999] ;
  53:J P[5:Home] 100% FINE    ;
/POS
P[1:"Search"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
P[2:"Pick Approach"]{
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
P[5:"Home"]{
   GP1:
	UF : F, UT : F,		CONFIG : 'N D B, 0, 0, 0',
	X =     ********  mm,	Y =     ********  mm,	Z =     ********  mm,
	W =     ******** deg,	P =     ******** deg,	R =     ******** deg
};
/END
