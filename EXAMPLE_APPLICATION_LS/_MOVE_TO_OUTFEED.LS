/PROG  _MOVE_TO_OUTFEED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sub Move";
PROG_SIZE	= 1182;
CREATE		= DATE 22-12-01  TIME 06:16:58;
MODIFIED	= DATE 22-12-02  TIME 02:27:30;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1570;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 1,1,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************ ;
   2:  !  Sub  Routine           ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:   ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=0 ;
   9:   ;
  10:  R[10001]=AR[1]    ;
  11:  SELECT R[10001]=0,JMP LBL[10] ;
  12:         =1,JMP LBL[20] ;
  13:         ELSE,JMP LBL[999] ;
  14:   ;
  15:  !------------------------ ;
  16:  LBL[10:Pass] ;
  17:  !------------------------ ;
  18:J P[1:Normal] R[11:spdPercent]% CNT100    ;
  19:   ;
  20:   ;
  21:  !------------------------ ;
  22:  LBL[20:Fail] ;
  23:  !------------------------ ;
  24:J P[2:Rotate] R[11:spdPercent]% CNT100    ;
  25:   ;
  26:  END ;
  27:  !------------------------ ;
  28:  !  Touchup ;
  29:J P[1:Normal] 75% CNT100    ;
/POS
P[1:"Normal"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    62.188 deg,	J2=    36.013 deg,	J3=   -44.792 deg,
	J4=      .511 deg,	J5=   -45.520 deg,	J6=   116.713 deg
};
P[2:"Rotate"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   347.931  mm,	Y =   656.868  mm,	Z =   -83.031  mm,
	W =  -179.816 deg,	P =     -.335 deg,	R =    -2.299 deg
};
/END
