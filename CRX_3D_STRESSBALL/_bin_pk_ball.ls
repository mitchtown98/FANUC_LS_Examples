/PROG  _BIN_PK_BALL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1181;
CREATE		= DATE 23-05-02  TIME 08:26:34;
MODIFIED	= DATE 23-05-04  TIME 13:06:34;
FILE_NAME	= _V_FIND_;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1733;
PROTECT		= READ_WRITE;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  R[21:visBallFound]=0    ;
   4:L P[2:binCenter] R[171:L_SPEED]mm/sec CNT100    ;
   5:  LBL[1] ;
   6:  RO[2:Vacuum On]=ON ;
   7:  PR[20:binPk]=P[1:pkBall]    ;
   8:  PR[20,3:binPk]=R[183:zTop]    ;
   9:L PR[20:binPk] R[171:L_SPEED]mm/sec CNT55 VOFFSET,VR[1]    ;
  10:  SKIP CONDITION RI[2:VACUUM_PRESENT]=ON OR ERR_NUM=24320 OR ERR_NUM=24348 OR ERR_NUM=24319    ;
  11:  PR[20:binPk]=P[1:pkBall]    ;
  12:L PR[20:binPk] R[197:zSpeed]mm/sec CNT1 Skip,LBL[21],PR[91]=LPOS VOFFSET,VR[1]    ;
  13:  LBL[21] ;
  14:  WAIT R[186] ;
  15:  $vr[1].$offset.$z=0 ;
  16:  PR[20,3:binPk]=R[195:zStart]+20    ;
  17:L PR[20:binPk] R[198:zSpeedUp]mm/sec CNT1 VOFFSET,VR[1]    ;
  18:  WAIT    .10(sec) ;
  19:  IF (RI[2:VACUUM_PRESENT]=ON) THEN ;
  20:  R[2:goodPickCounter]=R[2:goodPickCounter]+1    ;
  21:  R[21:visBallFound]=0    ;
  22:  ELSE ;
  23:  RO[2:Vacuum On]=OFF ;
  24:  R[1:failedPickCountr]=R[1:failedPickCountr]+1    ;
  25:  CALL _BLK_LIST_ADD    ;
  26:  CALL _V_GET_OFFSET    ;
  27:  IF R[21:visBallFound]=1,JMP LBL[1] ;
  28:  ENDIF ;
  29:   ;
  30:  END ;
  31:  !touch up vref pos ;
  32:L P[1:pkBall] 500mm/sec FINE    ;
/POS
P[1:"pkBall"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   172.529297  mm,	Y =   315.912506  mm,	Z =   203.968292  mm,
	W =   179.870636 deg,	P =      .117916 deg,	R =      .160686 deg
};
P[2:"binCenter"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   172.159210  mm,	Y =   329.508575  mm,	Z =   290.000000  mm,
	W =   179.899994 deg,	P =     0.000000 deg,	R =     0.000000 deg
};
/END
