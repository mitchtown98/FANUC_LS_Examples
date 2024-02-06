/PROG  _MT_LOAD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1399;
CREATE		= DATE 16-12-01  TIME 21:49:06;
MODIFIED	= DATE 17-05-11  TIME 01:01:16;
FILE_NAME	= _LOAD_MT;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1915;
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
   8:  IF DO[103:WPH OPEN]<>ON,JMP LBL[99] ;
   9:  !Move To App ;
  10:  CALL _SET_OFFSET(2,0,(-20),30,0,0,0) ;
  11:L P[1] 2000mm/sec CNT85 Offset,PR[2]    ;
  12:L P[1] 150mm/sec FINE AP_LD15    ;
  13:  CALL _GRIP_OPEN    ;
  14:  R[3:MTchuckStatus]=1    ;
  15:  CALL _SET_OFFSET(2,0,0,30,0,0,0) ;
  16:L P[1] 2000mm/sec CNT85 Offset,PR[2] RT_LD15    ;
  17:  CALL _SET_OFFSET(2,0,(-20),30,0,0,0) ;
  18:L P[2] 2000mm/sec CNT25 Offset,PR[2]    ;
  19:  CALL _SET_OFFSET(2,0,(-20),0,0,0,0) ;
  20:L P[2] 2000mm/sec CNT85 Offset,PR[2]    ;
  21:L P[2] 150mm/sec FINE    ;
  22:  CALL _MT_CLAMP    ;
  23:  CALL _SET_OFFSET(2,0,(-10),30,0,0,0) ;
  24:L P[2] 2000mm/sec CNT85 Offset,PR[2]    ;
  25:   ;
  26:  JMP LBL[100] ;
  27:   ;
  28:  !-------------------- ;
  29:  LBL[99:Error] ;
  30:  !-------------------- ;
  31:  UALM[24] ;
  32:  JMP LBL[10] ;
  33:   ;
  34:  !-------------------- ;
  35:  LBL[100:Done] ;
  36:  !-------------------- ;
  37:  END ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   114.067  mm,	Y =   310.164  mm,	Z =   136.795  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =  -180.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   113.025  mm,	Y =   213.879  mm,	Z =   142.788  mm,
	W =  -180.000 deg,	P =      .000 deg,	R =   -90.000 deg
};
/END
