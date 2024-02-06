/PROG  _TOUCH_SKIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1173;
CREATE		= DATE 21-08-27  TIME 02:09:06;
MODIFIED	= DATE 21-08-30  TIME 23:17:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 36;
MEMORY_SIZE	= 1677;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

LINE_TRACK;
  LINE_TRACK_SCHEDULE_NUMBER      : 0;
  LINE_TRACK_BOUNDARY_NUMBER      : 0;
  CONTINUE_TRACK_AT_PROG_END      : TRUE;

/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  !(SCHEDULE,GROUP) ;
   5:  CALL SETSKCOL(1,1) ;
   6:  !SKIP COND CALL/GROUP1 CALL ;
   7:  CALL CLSKP_G1    ;
   8:   ;
   9:  PR[3:toolOffset]=LPOS-LPOS    ;
  10:  LBL[1] ;
  11:  !ABOVE PART POS ;
  12:L P[1:contact] 1000mm/sec CNT5 Offset,PR[1:50mmZ] Tool_Offset,PR[3:toolOffset]    ;
  13:   ;
  14:  !POSSIBLE CONTACT WITH PART POS ;
  15:L P[1:contact] 25mm/sec FINE Skip,LBL[2],PR[2:touchskip]=LPOS Tool_Offset,PR[3:toolOffset]    ;
  16:   ;
  17:  !made contact ;
  18:  !move up ;
  19:L P[1:contact] 1000mm/sec CNT5 Offset,PR[1:50mmZ] Tool_Offset,PR[3:toolOffset]    ;
  20:   ;
  21:  !search tool offset ;
  22:  PR[3,2:toolOffset]=PR[3,2:toolOffset]-10    ;
  23:  !bounds check ;
  24:  IF (PR[3,2:toolOffset]<(-120)),JMP LBL[99] ;
  25:  !do it again ;
  26:  JMP LBL[1] ;
  27:   ;
  28:  !part found ;
  29:  LBL[2] ;
  30:  !grip ;
  31:  WAIT    .50(sec) ;
  32:L P[1:contact] 1000mm/sec CNT5 Offset,PR[1:50mmZ] Tool_Offset,PR[3:toolOffset]    ;
  33:  END ;
  34:   ;
  35:  LBL[99] ;
  36:  UALM[10] ;
/POS
P[1:"contact"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    66.038895  mm,	Y =   496.101074  mm,	Z =  -104.000000  mm,
	W =  -179.837372 deg,	P =   -10.678125 deg,	R =    91.770531 deg
};
/END
