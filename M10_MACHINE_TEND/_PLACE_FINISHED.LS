/PROG  _PLACE_FINISHED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1216;
CREATE		= DATE 16-12-01  TIME 22:42:02;
MODIFIED	= DATE 16-12-06  TIME 06:16:30;
FILE_NAME	= _PICK_RA;
VERSION		= 0;
LINE_COUNT	= 31;
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
   1:  UFRAME_NUM=3 ;
   2:  UTOOL_NUM=1 ;
   3:  CALL _INIT_PR_XYZWPR(2) ;
   4:   ;
   5:  !-------------------- ;
   6:  LBL[10] ;
   7:  !-------------------- ;
   8:  CALL _SCAN_FINISHED_CALC    ;
   9:  !Move To App ;
  10:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],100,0,0,0) ;
  11:J P[1] 50% CNT100 Offset,PR[2]    ;
  12:  //ENDIF ;
  13:  !Move To Pick Pos ;
  14:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],0,0,0,0) ;
  15:L P[1] 2000mm/sec CNT0 Offset,PR[2] AP_LD40    ;
  16:  CALL _GRIP_OPEN    ;
  17:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],75,0,0,0) ;
  18:L P[1] 2000mm/sec CNT0 Offset,PR[2] AP_LD20    ;
  19:  IF R[2:EOATstatus]<>0,JMP LBL[99] ;
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
	UF : 3, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.563  mm,	Y =      .474  mm,	Z =    26.526  mm,
	W =   179.323 deg,	P =      .302 deg,	R =    90.000 deg
};
/END
