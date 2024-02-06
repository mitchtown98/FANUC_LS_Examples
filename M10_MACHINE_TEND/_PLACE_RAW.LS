/PROG  _PLACE_RAW
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1212;
CREATE		= DATE 16-12-06  TIME 01:42:32;
MODIFIED	= DATE 16-12-06  TIME 01:51:46;
FILE_NAME	= _PLACE_F;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1628;
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
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=1 ;
   3:  CALL _INIT_PR_XYZWPR(2) ;
   4:   ;
   5:  !-------------------- ;
   6:  LBL[10] ;
   7:  !-------------------- ;
   8:  CALL _SCAN_RAW_CALC    ;
   9:  !Move To App ;
  10:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],100,0,0,0) ;
  11:J P[1] 50% CNT100 Offset,PR[2]    ;
  12:  !Move To Sensor Pos ;
  13:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],0,0,0,0) ;
  14:L P[1] 2000mm/sec CNT0 Offset,PR[2] AP_LD40    ;
  15:  CALL _GRIP_OPEN    ;
  16:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],75,0,0,0) ;
  17:L P[1] 2000mm/sec CNT0 Offset,PR[2] AP_LD20    ;
  18:  IF R[2:EOATstatus]<>0,JMP LBL[99] ;
  19:  JMP LBL[100] ;
  20:   ;
  21:  !-------------------- ;
  22:  LBL[99:Error] ;
  23:  !-------------------- ;
  24:  UALM[23] ;
  25:  JMP LBL[10] ;
  26:   ;
  27:  !-------------------- ;
  28:  LBL[100:Done] ;
  29:  !-------------------- ;
  30:  END ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'F D B, 0, 0, 0',
	X =    -1.099  mm,	Y =      .000  mm,	Z =    26.562  mm,
	W =   179.383 deg,	P =      .481 deg,	R =      .000 deg
};
/END
