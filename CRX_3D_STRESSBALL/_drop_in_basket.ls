/PROG  _DROP_IN_BASKET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1355;
CREATE		= DATE 23-05-02  TIME 08:26:08;
MODIFIED	= DATE 23-05-02  TIME 09:10:58;
FILE_NAME	= _DROP_IN;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 1631;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  IF (R[159:dropInBasketPntr]=3 OR R[159:dropInBasketPntr]=4) THEN ;
   4:L P[10] R[171:L_SPEED]mm/sec CNT85    ;
   5:  ENDIF ;
   6:  PR[89:temp]=P[R[159]]    ;
   7:  PR[89,3:temp]=R[158:BASKET_Z]    ;
   8:L PR[89:temp] R[171:L_SPEED]mm/sec CNT3    ;
   9:  RO[1:Vacuum Off]=ON ;
  10:  WAIT    .20(sec) ;
  11:   ;
  12:  R[159:dropInBasketPntr]=R[159:dropInBasketPntr]+1    ;
  13:  IF (R[159:dropInBasketPntr]>9),R[159:dropInBasketPntr]=(1) ;
  14:  R[74:BlackLstChkOkCnt]=R[74:BlackLstChkOkCnt]+1    ;
  15:  IF R[74:BlackLstChkOkCnt]>=5,CALL _BLK_LIST_CLEAR ;
  16:  END ;
  17:   ;
  18:L P[1] 500mm/sec FINE    ;
  19:L P[2] 500mm/sec FINE    ;
  20:L P[3] 500mm/sec FINE    ;
  21:L P[4] 500mm/sec FINE    ;
  22:L P[5] 500mm/sec FINE    ;
  23:L P[6] 500mm/sec FINE    ;
  24:L P[7] 500mm/sec FINE    ;
  25:L P[8] 500mm/sec FINE    ;
  26:L P[9] 500mm/sec FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -130.720840  mm,	Y =  -517.439331  mm,	Z =  -188.159882  mm,
	W =  -179.899628 deg,	P =      .000027 deg,	R =      .000019 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -130.720825  mm,	Y =  -376.639252  mm,	Z =  -188.159851  mm,
	W =  -179.899643 deg,	P =      .000021 deg,	R =      .000016 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -130.720825  mm,	Y =  -244.638992  mm,	Z =  -188.159912  mm,
	W =  -179.899704 deg,	P =      .000015 deg,	R =      .000023 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -21.692217  mm,	Y =  -244.639008  mm,	Z =  -188.160110  mm,
	W =  -179.902954 deg,	P =     -.001402 deg,	R =      .000039 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -21.692202  mm,	Y =  -386.020782  mm,	Z =  -188.159988  mm,
	W =  -179.898346 deg,	P =      .001983 deg,	R =      .000044 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -21.692232  mm,	Y =  -559.643555  mm,	Z =  -188.160034  mm,
	W =  -179.898392 deg,	P =      .001955 deg,	R =      .000022 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.427765  mm,	Y =  -559.643555  mm,	Z =  -188.160141  mm,
	W =  -179.898438 deg,	P =      .001934 deg,	R =      .000025 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.427742  mm,	Y =  -390.683563  mm,	Z =  -188.160187  mm,
	W =  -179.898529 deg,	P =      .001882 deg,	R =      .000032 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    95.427605  mm,	Y =  -252.511993  mm,	Z =  -188.160187  mm,
	W =  -179.898926 deg,	P =      .001378 deg,	R =      .000014 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   123.428001  mm,	Y =  -305.360107  mm,	Z =  -119.999939  mm,
	W =   179.900330 deg,	P =      .000533 deg,	R =      .000005 deg
};
/END
