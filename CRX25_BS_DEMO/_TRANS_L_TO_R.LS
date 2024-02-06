/PROG  _TRANS_L_TO_R
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Move SubRoutine";
PROG_SIZE	= 1053;
CREATE		= DATE 23-09-13  TIME 16:15:48;
MODIFIED	= DATE 23-09-14  TIME 08:55:44;
FILE_NAME	= _TRANS_R;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1357;
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
   8:  UFRAME_NUM=2 ;
   9:  UTOOL_NUM=1 ;
  10:   ;
  11:  RUN _BGT_MON_15018 ;
  12:L P[1] 750mm/sec CNT100 Wjnt    ;
  13:  R[101:kill_15018_mon]=1    ;
  14:   ;
  15:  IF (R[5:LeftPalIndex]<48 OR DO[101:VAC_ON]=ON) THEN ;
  16:L P[2] 750mm/sec CNT100    ;
  17:  ELSE ;
  18:  //PAUSE ;
  19:  ENDIF ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -211.071045  mm,	Y =  -116.086243  mm,	Z =  1800.000000  mm,
	W =  -180.000000 deg,	P =     -.000011 deg,	R =  -179.999985 deg
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1470.911133  mm,	Y =  -135.093445  mm,	Z =  1800.000000  mm,
	W =  -180.000000 deg,	P =     -.000000 deg,	R =   180.000000 deg
};
/END
