/PROG  STATION_4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1599;
CREATE		= DATE 18-03-03  TIME 02:02:52;
MODIFIED	= DATE 20-05-16  TIME 02:46:26;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2039;
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
   1:  R[10:Current Process]=4    ;
   2:  UTOOL_NUM=1 ;
   3:  CALL ST_4_POS_SELECT    ;
   4:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   5:J P[3] R[23:J SPEED W ALUM]% CNT100    ;
   6:   ;
   7:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
   8:  WAIT DI[8:OFF:Sta 4 OK to Pour]=ON TIMEOUT,LBL[99] ;
   9:  DO[7:OFF:Sta 4 Robot Clr]=OFF ;
  10:   ;
  11:   ;
  12:J P[1] R[23:J SPEED W ALUM]% CNT50    ;
  13:   ;
  14:  R[24:INTIAL POUR]=GI[16:0:S4 INTIAL SPEED]    ;
  15:  R[21:FINAL POUR SPEED]=GI[20:0:S4 FINAL SPEED]    ;
  16:   ;
  17:   ;
  18:  !******************************** ;
  19:  !POS 1 ;
  20:L PR[29:S4 POS 1] R[19:L SPEED W ALUM]mm/sec CNT25 ACC50    ;
  21:  !******************************** ;
  22:  !POS 2 ;
  23:L PR[30:S4 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  24:  !******************************** ;
  25:  !POS 3 ;
  26:L PR[31:S4 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  27:  WAIT R[20] ;
  28:  !******************************** ;
  29:  !POS 4 ;
  30:L PR[32:S4 POS 4] R[18:L SPEED WO ALUM]mm/sec FINE    ;
  31:  !******************************** ;
  32:  !POS 5 ;
  33:L PR[33:S4 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  34:   ;
  35:J P[2] R[22:J SPEED WO ALUM]% CNT50    ;
  36:J P[4] R[22:J SPEED WO ALUM]% CNT100    ;
  37:   ;
  38:  DO[7:OFF:Sta 4 Robot Clr]=ON ;
  39:  DO[8:OFF:Sta 4 Pour Comp]=PULSE,2.0sec ;
  40:  TIMER[1]=STOP ;
  41:  R[48:STATION 4]=TIMER[1]    ;
  42:  R[53:STA 4 CNT]=R[53:STA 4 CNT]+1    ;
  43:   ;
  44:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
  45:   ;
  46:  JMP LBL[100] ;
  47:   ;
  48:  LBL[98] ;
  49:   ;
  50:  R[5:ABORT]=1    ;
  51:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  52:   ;
  53:  LBL[99] ;
  54:   ;
  55:  R[5:ABORT]=1    ;
  56:J PR[1:Home] R[23:J SPEED W ALUM]% FINE    ;
  57:   ;
  58:  LBL[100] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -216.738  mm,	Y =  1141.983  mm,	Z =  1357.229  mm,
	W =   133.157 deg,	P =   -14.500 deg,	R =  -173.067 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -216.738  mm,	Y =  1141.983  mm,	Z =  1357.229  mm,
	W =   133.157 deg,	P =   -14.500 deg,	R =  -173.067 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1095.487  mm,	Y =   388.296  mm,	Z =  1304.499  mm,
	W =   133.432 deg,	P =   -18.465 deg,	R =   106.905 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1095.488  mm,	Y =   388.296  mm,	Z =  1304.499  mm,
	W =   134.405 deg,	P =    -6.340 deg,	R =   106.876 deg
};
/END
