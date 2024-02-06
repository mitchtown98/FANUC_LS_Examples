/PROG  _MOVE_HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Home SubRoutine";
PROG_SIZE	= 945;
CREATE		= DATE 23-12-12  TIME 14:58:40;
MODIFIED	= DATE 23-12-12  TIME 15:07:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1217;
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
   1:  !************************* ;
   2:  !  HOME ROUTINE            ;
   3:  !************************* ;
   4:   ;
   5:  UFRAME_NUM=0 ;
   6:  UTOOL_NUM=1 ;
   7:   ;
   8:  ! Get Curr Position ;
   9:  PR[10001]=LPOS    ;
  10:   ;
  11:  IF (PR[10001,3]<30) THEN ;
  12:  PR[10001,3]=30    ;
  13:   ;
  14:L PR[10001] 100mm/sec FINE    ;
  15:   ;
  16:  ENDIF ;
  17:   ;
  18:J P[1:Home] 75% CNT100    ;
  19:   ;
  20:  END ;
  21:   ;
  22:  !------------------------- ;
  23:  !  Touch up Local Points   ;
  24:  !------------------------- ;
  25:J P[1:Home] 100% CNT100    ;
/POS
P[1:"Home"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   251.880  mm,	Y =     9.028  mm,	Z =   207.000  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -89.999 deg
};
/END
