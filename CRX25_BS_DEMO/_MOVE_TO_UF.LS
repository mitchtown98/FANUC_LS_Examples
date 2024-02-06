/PROG  _MOVE_TO_UF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move SubRoutine";
PROG_SIZE	= 1199;
CREATE		= DATE 23-09-08  TIME 08:20:38;
MODIFIED	= DATE 23-09-08  TIME 10:04:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1571;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !     MidMove Routine         ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:  R[99]=AR[1]    ;
   9:  UFRAME_NUM=AR[1] ;
  10:   ;
  11:  PR[97]=LPOS    ;
  12:  PR[98]=P[R[99]]    ;
  13:   ;
  14:  PR[97,1]=PR[98,1]    ;
  15:  PR[97,2]=PR[98,2]    ;
  16:  PR[97,3]=PR[98,3]    ;
  17:   ;
  18:   ;
  19:   ;
  20:J PR[98] 50% CNT50 MROT    ;
  21:   ;
  22:  END ;
  23:   ;
  24:  !*************************** ;
  25:  !  TOUCH UP  ;
  26:  !*************************** ;
  27:   ;
  28:  UFRAME_NUM=1 ;
  29:L P[1] 200mm/sec FINE    ;
  30:  UFRAME_NUM=2 ;
  31:L P[2] 100mm/sec FINE    ;
  32:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -319.865173  mm,	Y =  1100.971924  mm,	Z =  1591.243286  mm,
	W =  -179.831665 deg,	P =     -.838888 deg,	R =    88.353584 deg
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -186.200562  mm,	Y =    16.759521  mm,	Z =  1630.790771  mm,
	W =  -179.736588 deg,	P =    -2.517660 deg,	R =   -91.886566 deg
};
/END
