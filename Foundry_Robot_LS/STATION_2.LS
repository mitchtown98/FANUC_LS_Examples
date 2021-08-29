/PROG  STATION_2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1400;
CREATE		= DATE 18-03-03  TIME 02:02:16;
MODIFIED	= DATE 20-03-04  TIME 03:45:30;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1872;
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
   1:  R[10:Current Process]=2    ;
   2:  CALL ST_2_POS_SELECT    ;
   3:  UTOOL_NUM=1 ;
   4:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   5:  DO[1:OFF:Sta 1 Robot Clr]=OFF ;
   6:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
   7:  WAIT DI[13:ON :STATION 1 CLEAR]=ON TIMEOUT,LBL[98] ;
   8:J P[3] R[23:J SPEED W ALUM]% CNT100 ACC50    ;
   9:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
  10:  WAIT DI[4:OFF:Sta 2 OK to Pour]=ON TIMEOUT,LBL[98] ;
  11:  DO[3:OFF:Sta 2 Robot Clr]=OFF ;
  12:   ;
  13:   ;
  14:  R[24:INTIAL POUR]=GI[14:0:S2 INTIAL SPEED]    ;
  15:  R[21:FINAL POUR SPEED]=GI[18:0:S2 FINAL SPEED]    ;
  16:   ;
  17:   ;
  18:  UTOOL_NUM=1 ;
  19:   ;
  20:   ;
  21:  !******************************** ;
  22:  !POS 1 ;
  23:L PR[19:S2 POS 1] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  24:  !******************************** ;
  25:  !POS 2 ;
  26:L PR[20:S2 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  27:  !******************************** ;
  28:  !POS 3 ;
  29:L PR[21:S2 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  30:  !******************************** ;
  31:  !POS 4 ;
  32:  WAIT R[20] ;
  33:L PR[22:S2 POS 4] R[18:L SPEED WO ALUM]mm/sec FINE    ;
  34:  !******************************** ;
  35:  !POS 5 ;
  36:L PR[23:S2 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  37:   ;
  38:L P[3] R[18:L SPEED WO ALUM]mm/sec CNT100    ;
  39:  DO[3:OFF:Sta 2 Robot Clr]=ON ;
  40:  DO[4:OFF:Sta 2 Pour Comp]=PULSE,2.0sec ;
  41:  JMP LBL[99] ;
  42:  LBL[98] ;
  43:   ;
  44:  R[5:ABORT]=1    ;
  45:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  46:  DO[1:OFF:Sta 1 Robot Clr]=ON ;
  47:   ;
  48:  LBL[99] ;
  49:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
  50:  DO[1:OFF:Sta 1 Robot Clr]=ON ;
/POS
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -397.159  mm,	Y = -1091.960  mm,	Z =  1318.344  mm,
	W =   135.725 deg,	P =   -16.084 deg,	R =   -21.445 deg
};
/END
