/PROG  PNS0001
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MainRobotLoad";
PROG_SIZE	= 759;
CREATE		= DATE 19-12-12  TIME 11:40:18;
MODIFIED	= DATE 21-08-11  TIME 07:37:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1215;
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
   1:  !PNS0001 ;
   2:  !CREATED 12/11/19 ;
   3:   ;
   4:  Initialize    ;
   5:   ;
   6:  CheckGripOp    ;
   7:   ;
   8:  GoPerch    ;
   9:   ;
  10:  GoPerch    ;
  11:   ;
  12:  LBL[1:LOOP] ;
  13:   ;
  14:  Pick    ;
  15:   ;
  16:  IF DO[125:PalletEmpty]=ON,JMP LBL[5] ;
  17:   ;
  18:  GoPerch    ;
  19:   ;
  20:  Wait    ;
  21:   ;
  22:  DO[121:Loading]=PULSE,0.1sec ;
  23:   ;
  24:  Load    ;
  25:   ;
  26:  GoPerch    ;
  27:   ;
  28:  Wait    ;
  29:   ;
  30:  R[19:REPAIR OK]=DI[123:Repair Ok]    ;
  31:   ;
  32:  Unload    ;
  33:   ;
  34:  GoPerch    ;
  35:   ;
  36:  Place    ;
  37:   ;
  38:  CALL INCR_POSITION    ;
  39:   ;
  40:  !PALLET IN POS CHECK REMOVED ;
  41:  IF (R[36:PICK POS]<R[14:MAX COLUMNS]*R[13:MAX ROWS] AND DI[126:UnloadOnly]=OFF),JMP LBL[1] ;
  42:   ;
  43:  LBL[5:Unload] ;
  44:   ;
  45:  IF (DI[126:UnloadOnly]=ON AND R[11:PART PRES T1]=1),CALL PLACE_PICK ;
  46:   ;
  47:  GoPerch    ;
  48:   ;
/POS
/END
