/PROG  _Z_JDM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 998;
CREATE		= DATE 21-06-16  TIME 09:07:10;
MODIFIED	= DATE 21-06-16  TIME 10:06:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1382;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  !Exmaple of Part Array ;
   2:   ;
   3:  UFRAME_NUM=8 ;
   4:  UTOOL_NUM=2 ;
   5:  !Init Registers ;
   6:  R[130:Index]=0    ;
   7:  R[131:COL]=0    ;
   8:  R[132:ROW]=0    ;
   9:   ;
  10:  LBL[10] ;
  11:  PAUSE ;
  12:  !Pick Part ;
  13:  R[131:COL]=R[130:Index] MOD R[135:COL Max]    ;
  14:  R[132:ROW]=R[130:Index] DIV R[136:ROW Max]    ;
  15:  !Set offset X and Y ;
  16:  R[131:COL]=R[131:COL]*R[137:COL Pitch]    ;
  17:  R[132:ROW]=R[132:ROW]*R[138:ROW Pitch]    ;
  18:  !Apply offset X and Y ;
  19:  PR[180,1:FrameOffset]=R[132:ROW]    ;
  20:  PR[180,2:FrameOffset]=R[131:COL]    ;
  21:   ;
  22:J P[1] 100% FINE Offset,PR[180:FrameOffset]    ;
  23:  R[130:Index]=R[130:Index]+1    ;
  24:   ;
  25:  IF R[130:Index]<R[133:TotalParts],JMP LBL[10] ;
  26:   ;
  27:  END ;
  28:  !Touchup ;
  29:J P[1] 100% FINE    ;
  30:   ;
/POS
P[1]{
   GP1:
	UF : 8, UT : 2,		CONFIG : 'N U T, 0, 0, 0',
	X =   308.653  mm,	Y =    84.784  mm,	Z =    26.218  mm,
	W =   179.999 deg,	P =     -.001 deg,	R =    90.004 deg
};
/END
