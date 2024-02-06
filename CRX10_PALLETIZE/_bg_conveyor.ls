/PROG  _BG_CONVEYOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 893;
CREATE		= DATE 22-03-05  TIME 17:32:34;
MODIFIED	= DATE 22-03-11  TIME 18:52:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1361;
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
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !---Conveyor Logic---! ;
   2:  R[198:runConv]=0    ;
   3:  R[200:killConv]=0    ;
   4:  !------------------------ ;
   5:  LBL[1] ;
   6:  !------------------------ ;
   7:  WAIT    .05(sec) ;
   8:  IF R[200:killConv]=1,JMP LBL[100] ;
   9:  IF R[198:runConv]<>1,JMP LBL[1] ;
  10:   ;
  11:  IF (DI[103:CvBoxPres]=ON AND DI[101:InFeedPres]=OFF) THEN ;
  12:  DO[105:ConveyorOn]=ON ;
  13:  WAIT (DI[101:InFeedPres]=ON)    ;
  14:  ENDIF ;
  15:   ;
  16:  IF (DI[103:CvBoxPres]=ON AND DI[101:InFeedPres]=ON) THEN ;
  17:  DO[105:ConveyorOn]=ON ;
  18:  WAIT DI[103:CvBoxPres]=OFF    ;
  19:  WAIT R[199] ;
  20:  DO[105:ConveyorOn]=OFF ;
  21:  ENDIF ;
  22:   ;
  23:  IF (DI[101:InFeedPres]=OFF AND DO[105:ConveyorOn]=OFF) THEN ;
  24:  WAIT R[199] ;
  25:  DO[105:ConveyorOn]=ON ;
  26:  ENDIF ;
  27:   ;
  28:  IF (DI[101:InFeedPres]=ON AND DI[103:CvBoxPres]=OFF AND DO[105:ConveyorOn]=ON) THEN ;
  29:  WAIT R[199] ;
  30:  DO[105:ConveyorOn]=OFF ;
  31:  ENDIF ;
  32:   ;
  33:  IF R[200:killConv]<>1,JMP LBL[1] ;
  34:   ;
  35:  !------------------------ ;
  36:  LBL[100] ;
  37:  !------------------------ ;
  38:  R[198:runConv]=0    ;
  39:  R[200:killConv]=0    ;
  40:  DO[105:ConveyorOn]=OFF ;
  41:  JMP LBL[1] ;
/POS
/END
