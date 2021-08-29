/PROG  BGLOGIC_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 1331;
CREATE		= DATE 17-04-05  TIME 13:30:16;
MODIFIED	= DATE 17-10-02  TIME 16:56:00;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 94;
MEMORY_SIZE	= 1855;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  CALL USERCLR    ;
   2:  R[44:ALARM NUMBER]=AR[1]    ;
   3:  JMP LBL[R[44]] ;
   4:   ;
   5:  LBL[1] ;
   6:  MESSAGE[BGLOGIC IS NOT RUNNING.] ;
   7:  MESSAGE[START BGLOGIC TO] ;
   8:  MESSAGE[CONTINUE.] ;
   9:  JMP LBL[9999] ;
  10:   ;
  11:  LBL[2] ;
  12:  JMP LBL[9999] ;
  13:   ;
  14:  LBL[3] ;
  15:  JMP LBL[9999] ;
  16:   ;
  17:  LBL[4] ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[5] ;
  21:  JMP LBL[9999] ;
  22:   ;
  23:  LBL[6] ;
  24:  JMP LBL[9999] ;
  25:   ;
  26:  LBL[7] ;
  27:  JMP LBL[9999] ;
  28:   ;
  29:  LBL[8] ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[9] ;
  33:  JMP LBL[9999] ;
  34:   ;
  35:  LBL[10] ;
  36:  JMP LBL[9999] ;
  37:   ;
  38:  LBL[11] ;
  39:  JMP LBL[9999] ;
  40:   ;
  41:  LBL[12] ;
  42:  JMP LBL[9999] ;
  43:   ;
  44:  LBL[13] ;
  45:  JMP LBL[9999] ;
  46:   ;
  47:  LBL[14] ;
  48:  JMP LBL[9999] ;
  49:   ;
  50:  LBL[15] ;
  51:  JMP LBL[9999] ;
  52:   ;
  53:  LBL[16] ;
  54:  JMP LBL[9999] ;
  55:   ;
  56:  LBL[17] ;
  57:  JMP LBL[9999] ;
  58:   ;
  59:  LBL[18] ;
  60:  JMP LBL[9999] ;
  61:   ;
  62:  LBL[19] ;
  63:  JMP LBL[9999] ;
  64:   ;
  65:  LBL[20] ;
  66:  JMP LBL[9999] ;
  67:   ;
  68:  LBL[21] ;
  69:  JMP LBL[9999] ;
  70:   ;
  71:  LBL[22] ;
  72:  JMP LBL[9999] ;
  73:   ;
  74:  LBL[23] ;
  75:  JMP LBL[9999] ;
  76:   ;
  77:  LBL[24] ;
  78:  JMP LBL[9999] ;
  79:   ;
  80:  LBL[25] ;
  81:  JMP LBL[9999] ;
  82:   ;
  83:  LBL[26] ;
  84:  JMP LBL[9999] ;
  85:   ;
  86:  LBL[27] ;
  87:  JMP LBL[9999] ;
  88:   ;
  89:  LBL[28] ;
  90:  JMP LBL[9999] ;
  91:   ;
  92:  LBL[9999:END] ;
  93:  DO[R[109]]=PULSE,5.0sec ;
  94:  DO[50:OFF:BACKGROUND LOGIC INACT]=PULSE,1.0sec ;
/POS
/END
