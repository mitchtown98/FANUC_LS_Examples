/PROG  STA4
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1393;
CREATE		= DATE 21-03-17  TIME 10:37:38;
MODIFIED	= DATE 21-03-17  TIME 10:38:56;
FILE_NAME	= STATION_;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1845;
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
   3:J P[3] R[23:J SPEED W ALUM]% CNT100    ;
   4:   ;
   5:J P[1] R[23:J SPEED W ALUM]% CNT50    ;
   6:   ;
   7:  !******************************** ;
   8:  !POS 1 ;
   9:L PR[29:S4 POS 1] R[19:L SPEED W ALUM]mm/sec CNT25 ACC50    ;
  10:  !******************************** ;
  11:  !POS 2 ;
  12:L PR[30:S4 POS 2] R[24:INTIAL POUR]mm/sec FINE    ;
  13:  !******************************** ;
  14:  !POS 3 ;
  15:L PR[31:S4 POS 3] R[21:FINAL POUR SPEED]mm/sec FINE    ;
  16:  WAIT R[20] ;
  17:  !******************************** ;
  18:  !POS 4 ;
  19:L PR[32:S4 POS 4] R[18:L SPEED WO ALUM]mm/sec FINE    ;
  20:  !******************************** ;
  21:  !POS 5 ;
  22:L PR[33:S4 POS 5] R[18:L SPEED WO ALUM]mm/sec CNT25    ;
  23:   ;
  24:J P[2] R[22:J SPEED WO ALUM]% CNT50    ;
  25:J P[4] R[22:J SPEED WO ALUM]% CNT100    ;
  26:   ;
  27:  TIMER[1]=STOP ;
  28:  R[48:STATION 4]=TIMER[1]    ;
  29:  R[53:STA 4 CNT]=R[53:STA 4 CNT]+1    ;
  30:   ;
  31:J PR[1:Home] R[22:J SPEED WO ALUM]% FINE    ;
  32:   ;
  33:  JMP LBL[100] ;
  34:   ;
  35:  LBL[98] ;
  36:   ;
  37:  R[5:ABORT]=1    ;
  38:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  39:   ;
  40:  LBL[99] ;
  41:   ;
  42:  R[5:ABORT]=1    ;
  43:J PR[1:Home] R[23:J SPEED W ALUM]% FINE    ;
  44:   ;
  45:  LBL[100] ;
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
