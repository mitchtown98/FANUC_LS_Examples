/PROG  GET_PLACE_ROW_COL
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Read place pt rs";
PROG_SIZE	= 361;
CREATE		= DATE 20-01-08  TIME 10:28:56;
MODIFIED	= DATE 20-01-08  TIME 10:32:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 689;
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
   1:  !Get Place Rows/Cols ;
   2:  !AR1=Place Pos Register ;
   3:   ;
   4:  R[90:TempCalcReg0]=AR[1]    ;
   5:   ;
   6:  R[10:PLACE COLUMN]=R[90:TempCalcReg0] MOD R[14:MAX COLUMNS]    ;
   7:   ;
   8:  R[9:PLACE ROW]=R[90:TempCalcReg0] DIV R[14:MAX COLUMNS]    ;
   9:   ;
  10:  IF (R[9:PLACE ROW]=R[20:MiddleRow] AND DI[135:SkipMiddleRow]=ON),R[38:PLACE POS]=(R[27]) ;
  11:   ;
/POS
/END
