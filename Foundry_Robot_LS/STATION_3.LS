/PROG  STATION_3
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1923;
CREATE		= DATE 18-03-03  TIME 02:02:38;
MODIFIED	= DATE 20-01-28  TIME 23:20:50;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 73;
MEMORY_SIZE	= 2431;
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
   1:  R[10:Current Process]=3    ;
   2:  UTOOL_NUM=1 ;
   3:  DO[7:OFF:Sta 4 Robot Clr]=OFF ;
   4:  CALL ST_3_POS_SELECT    ;
   5:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   6:J P[6] R[23:J SPEED W ALUM]% CNT100    ;
   7:  WAIT DI[16:ON :STATION 4 CLEAR]=ON    ;
   8:J P[5] R[23:J SPEED W ALUM]% CNT100    ;
   9:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
  10:  WAIT DI[6:OFF:Sta 3 OK to Pour]=ON TIMEOUT,LBL[99] ;
  11:J P[1] R[23:J SPEED W ALUM]% CNT50    ;
  12:   ;
  13:J P[2] R[23:J SPEED W ALUM]% CNT25 ACC50    ;
  14:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
  15:  WAIT DI[6:OFF:Sta 3 OK to Pour]=ON TIMEOUT,LBL[98] ;
  16:  DO[5:OFF:Sta 3 Robot Clr]=OFF ;
  17:   ;
  18:  R[24:INTIAL POUR]=GI[15:0:S3 INTIAL SPEED]    ;
  19:  R[21:FINAL POUR SPEED]=GI[19:0:S3 FINAL SPEED]    ;
  20:   ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
  25:  !******************************** ;
  26:  !POS 1 ;
  27:L PR[24:S3 POS 1] R[19:L SPEED W ALUM]mm/sec FINE ACC50    ;
  28:  !******************************** ;
  29:  !POS 2 ;
  30:L PR[25:S3 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  31:  !******************************** ;
  32:  !POS 3 ;
  33:L PR[26:S3 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  34:  WAIT R[20] ;
  35:  !******************************** ;
  36:  !POS 4 ;
  37:L PR[27:S3 POS 4] R[18:L SPEED WO ALUM]mm/sec FINE    ;
  38:  !******************************** ;
  39:  !POS 5 ;
  40:L PR[28:S3 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  41:   ;
  42:J P[3] R[22:J SPEED WO ALUM]% CNT25 ACC50    ;
  43:J P[4] R[22:J SPEED WO ALUM]% CNT25 ACC50    ;
  44:  R[47:STATION 3]=TIMER[1]    ;
  45:J P[5] R[22:J SPEED WO ALUM]% CNT50    ;
  46:  DO[5:OFF:Sta 3 Robot Clr]=ON ;
  47:  DO[6:OFF:Sta 3 Pour Comp]=PULSE,2.0sec ;
  48:  TIMER[1]=STOP ;
  49:  R[52:STA 3 CNT]=R[52:STA 3 CNT]+1    ;
  50:   ;
  51:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
  52:  DO[7:OFF:Sta 4 Robot Clr]=ON ;
  53:   ;
  54:  JMP LBL[100] ;
  55:   ;
  56:  LBL[98] ;
  57:   ;
  58:  R[5:ABORT]=1    ;
  59:   ;
  60:J P[1] R[23:J SPEED W ALUM]% CNT100    ;
  61:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  62:  DO[7:OFF:Sta 4 Robot Clr]=ON ;
  63:   ;
  64:  JMP LBL[100] ;
  65:   ;
  66:  LBL[99] ;
  67:   ;
  68:  R[5:ABORT]=1    ;
  69:   ;
  70:J PR[1:Home] R[23:J SPEED W ALUM]% FINE    ;
  71:   ;
  72:  LBL[100] ;
  73:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1087.015  mm,	Y =   386.859  mm,	Z =  1220.820  mm,
	W =   136.214 deg,	P =   -13.360 deg,	R =  -112.029 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1689.295  mm,	Y =   754.557  mm,	Z =  1086.233  mm,
	W =   136.340 deg,	P =    -9.637 deg,	R =  -111.760 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1689.295  mm,	Y =   754.557  mm,	Z =  1086.233  mm,
	W =   136.340 deg,	P =    -9.637 deg,	R =  -111.760 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1087.015  mm,	Y =   386.859  mm,	Z =  1220.820  mm,
	W =   136.214 deg,	P =   -13.360 deg,	R =  -112.029 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -228.176  mm,	Y =  1134.360  mm,	Z =  1246.721  mm,
	W =   134.014 deg,	P =   -13.014 deg,	R =  -170.617 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1065.095  mm,	Y =   461.941  mm,	Z =  1281.707  mm,
	W =   135.330 deg,	P =   -14.614 deg,	R =   111.064 deg
};
/END
