/PROG  _DROP_IN_HOLDER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 908;
CREATE		= DATE 23-05-02  TIME 08:25:32;
MODIFIED	= DATE 23-05-04  TIME 13:20:00;
FILE_NAME	= _DROP_IN;
VERSION		= 0;
LINE_COUNT	= 21;
MEMORY_SIZE	= 1368;
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
   3:  F[10:WINNER_WINNER]=(OFF) ;
   4:  F[11:FREEBIE_REQUEST]=(OFF) ;
   5:  F[12:HOLDER_FULL]=(OFF) ;
   6:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[11:DropApp1]    ;
   7:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[12:DropApp2]    ;
   8:  SKIP CONDITION $CR_VAR[1].$FS_MON[3]>=R[163:DROP_CONTACT_FS]    ;
   9:L P[1] 75mm/sec CNT1 SkipJump,LBL[99]    ;
  10:  RO[2:Vacuum On]=OFF ;
  11:  RO[1:Vacuum Off]=ON ;
  12:  WAIT R[199] ;
  13:  RUN _BGT_FLASH_LED_WINNER ;
  14:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[13:DropRet1]    ;
  15:  END ;
  16:   ;
  17:  !----------- ;
  18:  LBL[99:touch skip] ;
  19:  !----------- ;
  20:L P[1] R[171:L_SPEED]mm/sec CNT100 Offset,PR[13:DropRet1]    ;
  21:  F[12:HOLDER_FULL]=(ON) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.534149  mm,	Y =   414.003998  mm,	Z =  -350.605408  mm,
	W =   179.926239 deg,	P =     -.116584 deg,	R =     -.160232 deg
};
/END