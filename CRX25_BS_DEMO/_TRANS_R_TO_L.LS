/PROG  _TRANS_R_TO_L
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move SubRoutine";
PROG_SIZE	= 1027;
CREATE		= DATE 23-09-13  TIME 16:16:16;
MODIFIED	= DATE 23-09-13  TIME 16:16:16;
FILE_NAME	= _MOVE_TO;
VERSION		= 0;
LINE_COUNT	= 17;
MEMORY_SIZE	= 1339;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : TRUE;
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
   8:  UFRAME_NUM=1 ;
   9:  UTOOL_NUM=1 ;
  10:   ;
  11:  RUN _BGT_MON_15018 ;
  12:L P[1] 750mm/sec CNT100 Wjnt    ;
  13:  R[101:kill_15018_mon]=1    ;
  14:   ;
  15:  IF (R[4:RightPalIndex]<48 OR DO[101:VAC_ON]=ON) THEN ;
  16:L P[2] 750mm/sec CNT100    ;
  17:  ENDIF ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -77.717407  mm,	Y =  1160.000000  mm,	Z =  1800.000000  mm,
	W =   180.000000 deg,	P =     0.000000 deg,	R =     0.000000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1338.650146  mm,	Y =  1160.000000  mm,	Z =  1800.000000  mm,
	W =  -180.000000 deg,	P =      .000007 deg,	R =     -.000014 deg
};
/END
