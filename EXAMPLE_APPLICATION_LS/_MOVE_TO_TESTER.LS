/PROG  _MOVE_TO_TESTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Sub Move";
PROG_SIZE	= 1130;
CREATE		= DATE 23-01-07  TIME 05:21:26;
MODIFIED	= DATE 23-01-09  TIME 23:26:26;
FILE_NAME	= _MOVE_TO;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1538;
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
  10:  !------------------------ ;
  11:  LBL[10:Start] ;
  12:  !------------------------ ;
  13:  //J P[1:Home] R[14:transitSpd]% CNT100    ;
  14:  //J P[2:Mid] R[14:transitSpd]% CNT100    ;
  15:J P[4] 35% CNT100    ;
  16:   ;
  17:J P[3:Tester] 30% CNT10    ;
  18:  END ;
  19:   ;
  20:  !------------------------ ;
  21:  !  Touchup ;
  22:J P[1:Home] 75% CNT75    ;
  23:J P[2:Mid] 75% CNT75    ;
  24:J P[3:Tester] 75% CNT75    ;
/POS
P[1:"Home"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    -3.013 deg,	J2=    -6.324 deg,	J3=   -44.765 deg,
	J4=     -.611 deg,	J5=   -45.439 deg,	J6=     2.748 deg
};
P[2:"Mid"]{
   GP1:
	UF : 0, UT : 1,	
	J1=    71.997 deg,	J2=    24.476 deg,	J3=   -38.189 deg,
	J4=     -.558 deg,	J5=   -52.005 deg,	J6=     1.439 deg
};
P[3:"Tester"]{
   GP1:
	UF : 0, UT : 1,	
	J1=   131.776 deg,	J2=    57.935 deg,	J3=   -10.638 deg,
	J4=    -1.421 deg,	J5=   -80.310 deg,	J6=   -42.426 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=    98.560 deg,	J2=    33.923 deg,	J3=   -23.127 deg,
	J4=    -1.171 deg,	J5=   -67.905 deg,	J6=   -21.945 deg
};
/END
