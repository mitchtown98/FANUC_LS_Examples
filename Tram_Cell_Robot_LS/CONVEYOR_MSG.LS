/PROG  CONVEYOR_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 1363;
CREATE		= DATE 17-09-26  TIME 09:42:14;
MODIFIED	= DATE 17-09-26  TIME 09:44:44;
FILE_NAME	= BGLOGIC_;
VERSION		= 0;
LINE_COUNT	= 95;
MEMORY_SIZE	= 1883;
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
   6:  MESSAGE[INBOUND CONVEYOR] ;
   7:  MESSAGE[NOT IN AUTO.] ;
   8:  JMP LBL[9999] ;
   9:   ;
  10:  LBL[2] ;
  11:  MESSAGE[INBOUND CONVEYOR] ;
  12:  MESSAGE[NOT READY FOR ROBOT.] ;
  13:  JMP LBL[9999] ;
  14:   ;
  15:  LBL[3] ;
  16:  JMP LBL[9999] ;
  17:   ;
  18:  LBL[4] ;
  19:  JMP LBL[9999] ;
  20:   ;
  21:  LBL[5] ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[6] ;
  25:  JMP LBL[9999] ;
  26:   ;
  27:  LBL[7] ;
  28:  JMP LBL[9999] ;
  29:   ;
  30:  LBL[8] ;
  31:  JMP LBL[9999] ;
  32:   ;
  33:  LBL[9] ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[10] ;
  37:  JMP LBL[9999] ;
  38:   ;
  39:  LBL[11] ;
  40:  JMP LBL[9999] ;
  41:   ;
  42:  LBL[12] ;
  43:  JMP LBL[9999] ;
  44:   ;
  45:  LBL[13] ;
  46:  JMP LBL[9999] ;
  47:   ;
  48:  LBL[14] ;
  49:  JMP LBL[9999] ;
  50:   ;
  51:  LBL[15] ;
  52:  JMP LBL[9999] ;
  53:   ;
  54:  LBL[16] ;
  55:  JMP LBL[9999] ;
  56:   ;
  57:  LBL[17] ;
  58:  JMP LBL[9999] ;
  59:   ;
  60:  LBL[18] ;
  61:  JMP LBL[9999] ;
  62:   ;
  63:  LBL[19] ;
  64:  JMP LBL[9999] ;
  65:   ;
  66:  LBL[20] ;
  67:  JMP LBL[9999] ;
  68:   ;
  69:  LBL[21] ;
  70:  JMP LBL[9999] ;
  71:   ;
  72:  LBL[22] ;
  73:  JMP LBL[9999] ;
  74:   ;
  75:  LBL[23] ;
  76:  JMP LBL[9999] ;
  77:   ;
  78:  LBL[24] ;
  79:  JMP LBL[9999] ;
  80:   ;
  81:  LBL[25] ;
  82:  JMP LBL[9999] ;
  83:   ;
  84:  LBL[26] ;
  85:  JMP LBL[9999] ;
  86:   ;
  87:  LBL[27] ;
  88:  JMP LBL[9999] ;
  89:   ;
  90:  LBL[28] ;
  91:  JMP LBL[9999] ;
  92:   ;
  93:  LBL[9999:END] ;
  94:  DO[R[109]]=PULSE,5.0sec ;
  95:  DO[60:OFF:MAINTENANCE NOT SAFE]=PULSE,1.0sec ;
/POS
/END
