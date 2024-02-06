/PROG  _MT_PERCH_OUT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 885;
CREATE		= DATE 16-12-01  TIME 22:28:54;
MODIFIED	= DATE 16-12-01  TIME 22:36:42;
FILE_NAME	= _MT_PERC;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1317;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  !-------------------- ;
   5:  LBL[10] ;
   6:  !-------------------- ;
   7:L P[1:Perch] 2000mm/sec CNT5    ;
   8:  //J P[2] 100% CNT55    ;
   9:  JMP LBL[100] ;
  10:   ;
  11:  !-------------------- ;
  12:  LBL[99:Error] ;
  13:  !-------------------- ;
  14:   ;
  15:  !-------------------- ;
  16:  LBL[100:Done] ;
  17:  !-------------------- ;
  18:  END ;
/POS
P[1:"Perch"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   114.067  mm,	Y =  -426.236  mm,	Z =   166.795  mm,
	W =   180.000 deg,	P =     -.000 deg,	R =   179.998 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   475.358  mm,	Y =  -669.893  mm,	Z =   165.613  mm,
	W =  -179.763 deg,	P =      .019 deg,	R =    96.507 deg
};
/END
