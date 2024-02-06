/PROG  _PICK_FROM_HOLDER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 970;
CREATE		= DATE 23-05-03  TIME 12:56:52;
MODIFIED	= DATE 23-05-03  TIME 15:49:46;
FILE_NAME	= _DROP_IN;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1430;
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
   3:  PR[90:lpos]=LPOS    ;
   4:  IF (PR[90,1:lpos]<200) THEN ;
   5:L P[2] R[171:L_SPEED]mm/sec CNT100    ;
   6:  ENDIF ;
   7:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[11:DropApp1]    ;
   8:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[12:DropApp2]    ;
   9:  SKIP CONDITION $CR_VAR[1].$FS_MON[3]>=R[163:DROP_CONTACT_FS]    ;
  10:L P[1] 75mm/sec CNT1 SkipJump,LBL[99]    ;
  11:  RO[2:Vacuum On]=ON ;
  12:  RO[1:Vacuum Off]=OFF ;
  13:  WAIT R[199] ;
  14:  !----------- ;
  15:  LBL[99:touch skip] ;
  16:  !----------- ;
  17:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[13:DropRet1]    ;
  18:  F[12:HOLDER_FULL]=(OFF) ;
  19:L P[3] R[171:L_SPEED]mm/sec CNT100    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.534149  mm,	Y =   414.003998  mm,	Z =  -350.605408  mm,
	W =   179.926239 deg,	P =     -.116584 deg,	R =     -.160232 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   267.875458  mm,	Y =  -228.456314  mm,	Z =  -139.999969  mm,
	W =  -179.899719 deg,	P =      .000566 deg,	R =      .000000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.534027  mm,	Y =  -211.339844  mm,	Z =  -150.605362  mm,
	W =   179.926208 deg,	P =     -.116911 deg,	R =     -.160241 deg
};
/END
