/PROG  LASER_SET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 671;
CREATE		= DATE 21-03-06  TIME 09:20:56;
MODIFIED	= DATE 22-10-18  TIME 11:10:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1091;
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
   1:  --eg:SET THE LASER TO ZERO AT 250MM FROM DOT AT ANGLE BELOW T2 ;
   2:   ;
   3:  IF (!DO[145:AT HOME]) THEN ;
   4:  CALL PNS0002    ;
   5:  ENDIF ;
   6:   ;
   7:  JMP LBL[10] ;
   8:   ;
   9:  LBL[10:SET LASER] ;
  10:J PR[1:HOME POSITION] 100% CNT100    ;
  11:  UTOOL_NUM=9 ;
  12:  UFRAME_NUM=0 ;
  13:J PR[20:LASER SET] 100% FINE    ;
  14:  RO[8:LASER ON]=ON ;
  15:  WAIT    .25(sec) ;
  16:  RO[7:LASER SET PULSE]=PULSE   ;
  17:  WAIT   5.00(sec) ;
  18:  --eg:MOVE THE ROBOT USING TOOL FRAME IN THE Z DIRECTION UNTIL LASER SAYS
    :  250 THEN PRESS SET ON TE LASER, MAKE SURE THE THRESHOLD IS SET TO 250 ;
  19:   ;
  20:J PR[1:HOME POSITION] 100% FINE    ;
  21:  RO[8:LASER ON]=OFF ;
  22:   ;
  23:  LBL[9999:END] ;
/POS
/END