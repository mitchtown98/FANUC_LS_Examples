/PROG  _MT_UNLOAD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1194;
CREATE		= DATE 16-12-01  TIME 22:37:18;
MODIFIED	= DATE 17-06-02  TIME 06:24:02;
FILE_NAME	= _MT_LOAD;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1606;
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
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  CALL _INIT_PR_XYZWPR(2) ;
   4:   ;
   5:  !-------------------- ;
   6:  LBL[10] ;
   7:  !-------------------- ;
   8:  !Move To App ;
   9:  CALL _SET_OFFSET(2,0,0,30,0,0,0) ;
  10:L P[1] 2000mm/sec CNT85 Offset,PR[2]    ;
  11:L P[1] 150mm/sec FINE AP_LD15    ;
  12:  R[2:EOATstatus]=2    ;
  13:  CALL _GRIP_CLOSE    ;
  14:  CALL _MT_UNCLAMP    ;
  15:  CALL _SET_OFFSET(2,0,0,30,0,0,0) ;
  16:L P[1] 2000mm/sec CNT85 Offset,PR[2] RT_LD15    ;
  17:  CALL _SET_OFFSET(2,0,(-20),30,0,0,0) ;
  18:  IF R[2:EOATstatus]<>2,JMP LBL[99] ;
  19:  R[3:MTchuckStatus]=0    ;
  20:  JMP LBL[100] ;
  21:   ;
  22:  !-------------------- ;
  23:  LBL[99:Error] ;
  24:  !-------------------- ;
  25:  UALM[23] ;
  26:  JMP LBL[10] ;
  27:   ;
  28:  !-------------------- ;
  29:  LBL[100:Done] ;
  30:  !-------------------- ;
  31:  END ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   113.195  mm,	Y =   310.137  mm,	Z =   137.247  mm,
	W =  -179.986 deg,	P =     -.011 deg,	R =   179.996 deg
};
/END
