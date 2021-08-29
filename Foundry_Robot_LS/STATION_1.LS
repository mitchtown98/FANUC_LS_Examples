/PROG  STATION_1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1330;
CREATE		= DATE 19-11-12  TIME 04:31:56;
MODIFIED	= DATE 21-03-17  TIME 09:58:54;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1802;
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
   1:  UTOOL_NUM=1 ;
   2:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   3:J P[1] R[23:J SPEED W ALUM]% CNT50 ACC50    ;
   4:  $WAITTMOUT=(R[35:ABORT TIME ]) ;
   5:  WAIT DI[2:ON :Sta 1 OK to Pour]=ON TIMEOUT,LBL[98] ;
   6:  DO[1:OFF:Sta 1 Robot Clr]=OFF ;
   7:   ;
   8:  R[24:INTIAL POUR]=GI[13:0:S1 INTIAL SPEED]    ;
   9:  R[21:FINAL POUR SPEED]=GI[17:0:S1 FINAL SPEED]    ;
  10:   ;
  11:   ;
  12:   ;
  13:   ;
  14:  UTOOL_NUM=1 ;
  15:   ;
  16:   ;
  17:  !******************************** ;
  18:  !POS 1 ;
  19:L PR[14:S1 POS 1] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  20:  !******************************** ;
  21:  !POS 2 ;
  22:L PR[15:S1 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  23:  !******************************** ;
  24:  !POS 3 ;
  25:L PR[16:S1 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  26:  !******************************** ;
  27:  !POS 4 ;
  28:  WAIT R[20] ;
  29:L PR[17:S1 POS 4] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  30:  !******************************** ;
  31:  !POS 5 ;
  32:L PR[18:S1 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  33:  UTOOL_NUM=1 ;
  34:  DO[2:OFF:Sta 1 Pour Comp]=PULSE,2.0sec ;
  35:  DO[1:OFF:Sta 1 Robot Clr]=ON ;
  36:  TIMER[1]=STOP ;
  37:  R[45:STATION 1]=TIMER[1]    ;
  38:  R[50:STA 1 CNT]=R[50:STA 1 CNT]+1    ;
  39:J P[1] R[22:J SPEED WO ALUM]% CNT50 ACC80    ;
  40:   ;
  41:  JMP LBL[99] ;
  42:  LBL[98] ;
  43:   ;
  44:  R[5:ABORT]=1    ;
  45:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  46:   ;
  47:  LBL[99] ;
  48:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   806.946  mm,	Y =  -831.515  mm,	Z =  1317.355  mm,
	W =   134.001 deg,	P =   -16.717 deg,	R =    42.642 deg
};
/END
