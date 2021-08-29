/PROG  MOVE_SAFE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2392;
CREATE		= DATE 17-12-07  TIME 22:08:50;
MODIFIED	= DATE 19-11-20  TIME 21:35:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 92;
MEMORY_SIZE	= 2792;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=0 ;
   3:  IF DO[499:OFF:At Perch ]=ON,JMP LBL[99] ;
   4:   ;
   5:   ;
   6:  PR[12:LPOS]=LPOS    ;
   7:  PR[13:JPOS]=JPOS    ;
   8:  R[60:JPOS]=PR[13,1:JPOS]    ;
   9:   ;
  10:   ;
  11:  IF (PR[13,1:JPOS]<=(-15) AND PR[13,1:JPOS]>=(-90)),JMP LBL[10] ;
  12:   ;
  13:  IF (PR[13,1:JPOS]<=(-90) AND PR[13,1:JPOS]>=(-190)),JMP LBL[20] ;
  14:   ;
  15:  IF (PR[13,1:JPOS]<=90 AND PR[13,1:JPOS]>=30),JMP LBL[40] ;
  16:   ;
  17:  IF (PR[13,1:JPOS]<=190 AND PR[13,1:JPOS]>=90),JMP LBL[30] ;
  18:   ;
  19:  IF (PR[13,1:JPOS]<=30 AND PR[13,1:JPOS]>=(-15)),JMP LBL[50] ;
  20:   ;
  21:   ;
  22:  !******************************** ;
  23:  LBL[10:STATION 1] ;
  24:  !******************************** ;
  25:   ;
  26:  PR[12,3:LPOS]=PR[12,3:LPOS]+400    ;
  27:L PR[12:LPOS] R[19:L SPEED W ALUM]mm/sec CNT0    ;
  28:L PR[40:STA 1 SAFE] R[19:L SPEED W ALUM]mm/sec CNT10    ;
  29:  JMP LBL[99] ;
  30:   ;
  31:  !******************************** ;
  32:  LBL[20:STATION 2] ;
  33:  !******************************** ;
  34:   ;
  35:  PR[12,3:LPOS]=PR[12,3:LPOS]+400    ;
  36:L PR[12:LPOS] R[19:L SPEED W ALUM]mm/sec CNT0    ;
  37:L PR[41:STA 2 SAFE] R[19:L SPEED W ALUM]mm/sec CNT10    ;
  38:  JMP LBL[99] ;
  39:   ;
  40:  !******************************** ;
  41:  LBL[30:STATION 3] ;
  42:  !******************************** ;
  43:  PR[12,3:LPOS]=PR[12,3:LPOS]+400    ;
  44:L PR[12:LPOS] R[19:L SPEED W ALUM]mm/sec CNT0    ;
  45:L PR[42:STA 3 SAFE] R[19:L SPEED W ALUM]mm/sec CNT10    ;
  46:  JMP LBL[99] ;
  47:   ;
  48:   ;
  49:  !******************************** ;
  50:  LBL[40:STATION 4] ;
  51:  !******************************** ;
  52:  PR[12,3:LPOS]=PR[12,3:LPOS]+400    ;
  53:L PR[12:LPOS] R[19:L SPEED W ALUM]mm/sec CNT0    ;
  54:L PR[43:STA 4 SAFE] R[19:L SPEED W ALUM]mm/sec CNT10    ;
  55:  JMP LBL[99] ;
  56:   ;
  57:  !******************************** ;
  58:  LBL[50:DIP] ;
  59:  !******************************** ;
  60:J PR[5:Above Dip] R[19:L SPEED W ALUM]% CNT0    ;
  61:   ;
  62:  UFRAME_NUM=0 ;
  63:  UTOOL_NUM=6 ;
  64:L P[2] R[68:1ST ABORT POS SP]mm/sec FINE ACC25    ;
  65:L P[3] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  66:  WAIT   5.00(sec) ;
  67:L P[1] R[70:ABORT POUR SPEED]deg/sec FINE    ;
  68:  WAIT   5.00(sec) ;
  69:L P[4] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  70:  WAIT   5.00(sec) ;
  71:L P[5] R[19:L SPEED W ALUM]mm/sec FINE ACC25    ;
  72:  R[8:SKIP ABORT]=1    ;
  73:  UFRAME_NUM=0 ;
  74:  UTOOL_NUM=0 ;
  75:  JMP LBL[99] ;
  76:   ;
  77:   ;
  78:   ;
  79:   ;
  80:  LBL[99] ;
  81:J PR[1:Home] R[23:J SPEED W ALUM]% CNT25    ;
  82:  R[10:Current Process]=0    ;
  83:  DO[1:OFF:Sta 1 Robot Clr]=ON ;
  84:  DO[3:OFF:Sta 2 Robot Clr]=ON ;
  85:  DO[5:OFF:Sta 3 Robot Clr]=ON ;
  86:  DO[7:OFF:Sta 4 Robot Clr]=ON ;
  87:  DO[10:OFF:PREHEATING]=OFF ;
  88:  R[27:PRE_HEAT]=0    ;
  89:  IF R[8:SKIP ABORT]=1,JMP LBL[100] ;
  90:  CALL ABORT    ;
  91:  LBL[100] ;
  92:  R[8:SKIP ABORT]=0    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.332  mm,	Z =   594.771  mm,
	W =   159.162 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[2]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.332  mm,	Z =   594.772  mm,
	W =   130.132 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[3]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.332  mm,	Z =   594.772  mm,
	W =   148.031 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[4]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.915  mm,	Y =   -44.333  mm,	Z =   594.771  mm,
	W =  -173.161 deg,	P =    -1.400 deg,	R =   177.628 deg
};
P[5]{
   GP1:
	UF : 0, UT : 6,		CONFIG : 'N U T, 0, 0, 0',
	X =  2227.965  mm,	Y =   251.328  mm,	Z =   831.720  mm,
	W =    97.670 deg,	P =    -1.400 deg,	R =   177.628 deg
};
/END
