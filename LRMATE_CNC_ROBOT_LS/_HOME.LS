/PROG  _HOME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Set Home Pos";
PROG_SIZE	= 501;
CREATE		= DATE 20-01-08  TIME 10:00:40;
MODIFIED	= DATE 20-01-08  TIME 10:08:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 925;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  !Test In Robot ;
   4:  PR[90]=JPOS    ;
   5:  IF R[90:TempCalcReg0]>=0,JMP LBL[101] ;
   6:  !Test Too Low ;
   7:  PR[90]=LPOS    ;
   8:  R[88]=PR[90,3]    ;
   9:  R[89]=PR[1,3:PERCH PT]    ;
  10:  R[89]=R[89]-10    ;
  11:  IF R[88]>=R[89],JMP LBL[100] ;
  12:  !Too Low ;
  13:  !Move Up ;
  14:  PR[90,3]=R[89]    ;
  15:L PR[90] 500mm/sec FINE    ;
  16:   ;
  17:  LBL[100:Move Home] ;
  18:   ;
  19:J PR[10:OFFSET Y Z] 50% CNT0    ;
  20:   ;
/POS
/END
