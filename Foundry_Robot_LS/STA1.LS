/PROG  STA1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1183;
CREATE		= DATE 21-03-17  TIME 09:58:14;
MODIFIED	= DATE 21-03-17  TIME 10:30:06;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1679;
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
   3:J P[2] R[23:J SPEED W ALUM]% CNT50 ACC50    ;
   4:   ;
   5:  !******************************** ;
   6:  !POS 1 ;
   7:L PR[14:S1 POS 1] R[19:L SPEED W ALUM]mm/sec CNT25    ;
   8:  !******************************** ;
   9:  !POS 2 ;
  10:L PR[15:S1 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  11:  !******************************** ;
  12:  !POS 3 ;
  13:L PR[16:S1 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  14:  !******************************** ;
  15:  !POS 4 ;
  16:  WAIT R[20] ;
  17:L PR[17:S1 POS 4] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  18:  !******************************** ;
  19:  !POS 5 ;
  20:L PR[18:S1 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  21:  UTOOL_NUM=1 ;
  22:  TIMER[1]=STOP ;
  23:  R[45:STATION 1]=TIMER[1]    ;
  24:  R[50:STA 1 CNT]=R[50:STA 1 CNT]+1    ;
  25:J P[1] R[22:J SPEED WO ALUM]% CNT50 ACC80    ;
  26:   ;
  27:  JMP LBL[99] ;
  28:  LBL[98] ;
  29:   ;
  30:  R[5:ABORT]=1    ;
  31:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  32:   ;
  33:  LBL[99] ;
  34:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   806.946  mm,	Y =  -831.515  mm,	Z =  1317.355  mm,
	W =   134.001 deg,	P =   -16.717 deg,	R =    42.642 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.250  mm,	Y =  -889.940  mm,	Z =   770.532  mm,
	W =   135.111 deg,	P =   -13.292 deg,	R =    87.651 deg
};
/END
