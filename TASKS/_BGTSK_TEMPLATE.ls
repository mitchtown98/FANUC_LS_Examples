/PROG  _BGTSK_TEMPLATE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Task Temp";
PROG_SIZE	= 669;
CREATE		= DATE 23-08-18  TIME 15:39:18;
MODIFIED	= DATE 23-08-18  TIME 15:39:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 29;
MEMORY_SIZE	= 1057;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !------------------------ ;
   2:  !     BG Task ;
   3:  !------------------------ ;
   4:  !******** ;
   5:  LBL[1:Loop] ;
   6:  !******** ;
   7:  WAIT   .5(sec) ;
   8:   ;
   9:  IF R[98:StopTask]=1,JMP LBL[100] ;
   9:  IF R[98:StopTask]=2,JMP LBL[101] ;
  10:  IF R[99:RunTask]<>1,JMP LBL[1] ;
  11:   ;
  12:  !-----Start Work Here----- ;
  13:   ;
  14:  R[96:TaskCnt]=R[96:TaskCnt]+1    ;
  15:   ;
  15:  F[10]=(ON) ;
  15:  WAIT  .2(sec) ;
  15:  F[10]=(OFF) ;
  16:  !------End Work Here ----- ;
  17:   ;
  18:  IF R[98:StopTask]<>1,JMP LBL[1] ;
  19:  JMP LBL[100] ;
  20:   ;
  21:   ;
  22:  !******** ;
  23:  LBL[100:Kill] ;
  24:  !******** ;
  25:  F[10]=(OFF) ;
  27:  R[98:StopTask]=0    ;
  28:  R[99:RunTask]=0    ;
  29:  JMP LBL[1] ;
  29: ;
  22:  !******** ;
  23:  LBL[101:Abort] ;
  24:  !******** ;
  26:  R[96:TaskCnt]=0    ;
  27:  R[98:StopTask]=0    ;
  28:  R[99:RunTask]=0    ;
/POS
/END
