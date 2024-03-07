/PROG  HMI_MSG	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 1309;
CREATE		= DATE 21-09-14  TIME 13:15:40;
MODIFIED	= DATE 22-06-06  TIME 08:43:32;
FILE_NAME	= ORIENT_M;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1769;
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
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  IF DI[105:LOAD SETUP DONE]=OFF,JMP LBL[1] ;
   2:  IF DI[106:UNLOAD SETUP DONE]=OFF,JMP LBL[2] ;
   3:  IF DI[107:ADVANCED SETUP DONE]=OFF,JMP LBL[3] ;
   4:  IF DI[108:RAW SETUP DONE]=OFF,JMP LBL[4] ;
   5:  IF DI[109:FINISHED SETUP DONE]=OFF,JMP LBL[5] ;
   6:  IF DI[109:FINISHED SETUP DONE]=ON,JMP LBL[6] ;
   7:  JMP LBL[9999] ;
   8:   ;
   9:  LBL[1] ;
  10:  CALL FAULT_MESSAGE('HMI Part setup error. ','Load menu settings are','not complete. Press pencil','button and make sure all','production settings are','complete.') ;
  11:  JMP LBL[9999] ;
  12:   ;
  13:  LBL[2] ;
  14:  CALL FAULT_MESSAGE('HMI Part setup error. ','Unload menu settings are','not complete') ;
  15:  JMP LBL[9999] ;
  16:   ;
  17:  LBL[3] ;
  18:  CALL FAULT_MESSAGE('HMI Part setup error. ','Advanced menu settings are','not complete') ;
  19:  JMP LBL[9999] ;
  20:   ;
  21:  LBL[4] ;
  22:  CALL FAULT_MESSAGE('HMI Part setup error. ','Raw part settings are','not complete') ;
  23:  JMP LBL[9999] ;
  24:   ;
  25:  LBL[5] ;
  26:  CALL FAULT_MESSAGE('HMI Part setup error. ','Finished part menu settings are','not complete') ;
  27:  JMP LBL[9999] ;
  28:   ;
  29:  LBL[6] ;
  30:  CALL FAULT_MESSAGE('New part setup is active.') ;
  31:  JMP LBL[9999] ;
  32:   ;
  33:  LBL[7] ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[8] ;
  37:  JMP LBL[9999] ;
  38:   ;
  39:  LBL[9] ;
  40:  JMP LBL[9999] ;
  41:   ;
  42:  LBL[10] ;
  43:  JMP LBL[9999] ;
  44:   ;
  45:  LBL[9999:END] ;
/POS
/END
