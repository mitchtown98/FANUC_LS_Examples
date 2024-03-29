/PROG  ORIENT_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 979;
CREATE		= DATE 17-04-05  TIME 13:29:18;
MODIFIED	= DATE 17-10-02  TIME 17:24:10;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1423;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00001000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  CALL USERCLR    ;
   2:  R[44:ALARM NUMBER]=AR[1]    ;
   3:  JMP LBL[R[44]] ;
   4:   ;
   5:  LBL[1] ;
   6:  MESSAGE[OP10-1 FAILED TO ORIENT] ;
   7:  MESSAGE[SPINDLE. CHECK MACHINE] ;
   8:  MESSAGE[CONDITIONS.] ;
   9:  JMP LBL[9999] ;
  10:   ;
  11:  LBL[2] ;
  12:  MESSAGE[OP20-1 FAILED TO ORIENT] ;
  13:  MESSAGE[SPINDLE. CHECK MACHINE] ;
  14:  MESSAGE[CONDITIONS.] ;
  15:  JMP LBL[9999] ;
  16:   ;
  17:  LBL[3] ;
  18:  MESSAGE[OP10-2 FAILED TO ORIENT] ;
  19:  MESSAGE[SPINDLE. CHECK MACHINE] ;
  20:  MESSAGE[CONDITIONS.] ;
  21:  JMP LBL[9999] ;
  22:   ;
  23:  LBL[4] ;
  24:  MESSAGE[OP20-2 FAILED TO ORIENT] ;
  25:  MESSAGE[SPINDLE. CHECK MACHINE] ;
  26:  MESSAGE[CONDITIONS.] ;
  27:  JMP LBL[9999] ;
  28:   ;
  29:  LBL[5] ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[6] ;
  33:  JMP LBL[9999] ;
  34:   ;
  35:  LBL[7] ;
  36:  JMP LBL[9999] ;
  37:   ;
  38:  LBL[8] ;
  39:  JMP LBL[9999] ;
  40:   ;
  41:  LBL[9] ;
  42:  JMP LBL[9999] ;
  43:   ;
  44:  LBL[10] ;
  45:  JMP LBL[9999] ;
  46:   ;
  47:  LBL[9999:END] ;
  48:  DO[R[109]]=PULSE,5.0sec ;
  49:  DO[55:OFF:SPINDLE ORIENT FAULT]=PULSE,1.0sec ;
/POS
/END
