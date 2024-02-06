/PROG  _BG_GRIPPER_STATUS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BG routine";
PROG_SIZE	= 700;
CREATE		= DATE 23-01-18  TIME 16:27:18;
MODIFIED	= DATE 23-01-18  TIME 17:29:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 948;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

LINE_TRACK;
  LINE_TRACK_SCHEDULE_NUMBER      : 0;
  LINE_TRACK_BOUNDARY_NUMBER      : 0;
  CONTINUE_TRACK_AT_PROG_END      : TRUE;

/MN
   1:  !  Check for Open ;
   2:  IF (RO[2:gripperOpen]=ON AND RI[1:fullyOpened]=ON) THEN ;
   3:   ;
   4:  R[18:gripperStatus]=0    ;
   5:   ;
   6:  ENDIF ;
   7:   ;
   8:  IF (RO[2:gripperOpen]=ON AND RI[1:fullyOpened]=OFF OR RI[2:fullyClosed]=ON) THEN ;
   9:   ;
  10:  R[18:gripperStatus]=(-1)    ;
  11:   ;
  12:  ENDIF ;
  13:   ;
  14:  !  Check for Closed with Part ;
  15:  IF (RO[1:gripperClose]=ON AND RI[2:fullyClosed]=OFF) THEN ;
  16:   ;
  17:  R[18:gripperStatus]=1    ;
  18:  ENDIF ;
  19:   ;
  20:  IF ((RO[1:gripperClose] AND !RO[2:gripperOpen]) AND (RI[2:fullyClosed] OR RI[1:fullyOpened])) THEN ;
  21:   ;
  22:  R[18:gripperStatus]=(-2)    ;
  23:   ;
  24:  ENDIF ;
  25:   ;
  26:  ! Check for Prox on Error ;
  27:  IF (RI[1:fullyOpened]=ON AND RI[2:fullyClosed]=ON) THEN ;
  28:   ;
  29:  R[18:gripperStatus]=(-3)    ;
  30:   ;
  31:  ENDIF ;
/POS
/END
