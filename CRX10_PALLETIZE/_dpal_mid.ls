/PROG  _DPAL_MID
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal Sub";
PROG_SIZE	= 765;
CREATE		= DATE 22-03-11  TIME 16:48:28;
MODIFIED	= DATE 22-03-11  TIME 16:48:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 1069;
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
   1:  UFRAME_NUM=8 ;
   2:  UTOOL_NUM=1 ;
   2:  !--Zero Local PR offset;
   3:  PR[10001]=P[1:MidPoint]    ;
   4:  PR[10001,1]=0    ;
   5:  PR[10001,2]=0    ;
   6:  PR[10001,4]=0    ;
   7:  PR[10001,5]=0    ;
   8:  PR[10001,6]=0    ;
   9:   ;
   9:  !--Check Layer before move;
  10:  IF (R[189:DepalLayer]=2) THEN ;
  11:  PR[10001,3]=PR[10001,3]+50    ;
  12:   ;
  13:L P[1:MidPoint] 500mm/sec CNT50 Offset,PR[10001]    ;
  14:  ELSE ;
  15:   ;
  16:L P[1:MidPoint] 500mm/sec CNT50    ;
  17:  ENDIF ;
/POS
P[1:"MidPoint"]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -203.891968  mm,	Y =   294.502167  mm,	Z =   283.806152  mm,
	W =   179.997162 deg,	P =     -.008372 deg,	R =    42.616867 deg
};
/END
