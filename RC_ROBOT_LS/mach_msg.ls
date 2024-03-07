/PROG  MACH_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 4051;
CREATE		= DATE 23-04-25  TIME 07:41:42;
MODIFIED	= DATE 23-11-16  TIME 03:54:44;
FILE_NAME	= GRIP_MSG;
VERSION		= 0;
LINE_COUNT	= 95;
MEMORY_SIZE	= 4571;
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
   1:  R[44:ALARM NUMBER]=AR[1]    ;
   2:  JMP LBL[R[44]] ;
   3:   ;
   4:  LBL[1] ;
   5:  CALL FAULT_MESSAGE('Machine failed to cycle start.','Check machine conditions like','single block, machine fault,','operational stop, or door','failure.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('Machine is not safe for','robot. Make sure machine','conditions are correct','before continuing.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL FAULT_MESSAGE('Machine type not selected.','Select machine type','from HMI.') ;
  14:  JMP LBL[9999] ;
  15:   ;
  16:  LBL[4] ;
  17:  CALL FAULT_MESSAGE('Machine is in a fault','condition. Clear machine','fault and correct machine','issues to continue.') ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[5] ;
  21:  CALL FAULT_MESSAGE('Both NO LOAD and NO UNLOAD','are on. Only one at a time','can be on at a time.') ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[6] ;
  25:  CALL FAULT_MESSAGE('LOAD MAIN, LOAD SUB, and','NO LOAD are all off.','At least one must be','on. Check HMI setup') ;
  26:  JMP LBL[9999] ;
  27:   ;
  28:  LBL[7] ;
  29:  CALL FAULT_MESSAGE('UNLOAD MAIN, UNLOAD SUB,','and NO UNLOAD are all off.','At least one must be','on. Check HMI setup.') ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[8] ;
  33:  CALL FAULT_MESSAGE('System Link is not active','on the machine. Check the','System Link button on the','machine and verify it is in','automatic mode.') ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[9] ;
  37:  CALL FAULT_MESSAGE('Load main spindle with bottom ','right part from template. ','Both grippers should be empty and ','pins should not contact part ','during measurement process.') ;
  38:  JMP LBL[9999] ;
  39:   ;
  40:  LBL[10] ;
  41:  CALL FAULT_MESSAGE('Load sub spindle with bottom ','right part from template. ','Both grippers should be empty and ','pins should not contact part ','during measurement process.') ;
  42:  JMP LBL[9999] ;
  43:   ;
  44:  LBL[11] ;
  45:  CALL FAULT_MESSAGE('The HMI is selected for','direct entry on the finished','part diameter but a value of','zero is entered. Put in','correct finished diameter or','select to use a measured value.') ;
  46:  JMP LBL[9999] ;
  47:   ;
  48:  LBL[12] ;
  49:  CALL FAULT_MESSAGE('The HMI is selected for','direct entry on the finished','part length but a value of','zero is entered. put in','correct finished length or','select to use a measured value.') ;
  50:  JMP LBL[9999] ;
  51:   ;
  52:  LBL[13] ;
  53:  CALL FAULT_MESSAGE('Robot is in setup new','part mode. Make sure machine','load spindle is empty while','measuring finished part and','unload spindle is empty while','measuring raw part.') ;
  54:  JMP LBL[9999] ;
  55:   ;
  56:  LBL[14] ;
  57:  CALL FAULT_MESSAGE('Machine door is not open.','Make sure door is open before','robot attempts to manually close','it.') ;
  58:  JMP LBL[9999] ;
  59:   ;
  60:  LBL[15] ;
  61:  CALL FAULT_MESSAGE('Machine door is not closed.','Make sure door is closed before','robot attempts to manually open','it.') ;
  62:  JMP LBL[9999] ;
  63:   ;
  64:  LBL[16] ;
  65:  CALL FAULT_MESSAGE('Machine door failed to open.','Inspect machine door and sensors.') ;
  66:  JMP LBL[9999] ;
  67:   ;
  68:  LBL[17] ;
  69:  CALL FAULT_MESSAGE('Machine door failed to close.','Inspect machine door and sensors.') ;
  70:  JMP LBL[9999] ;
  71:   ;
  72:  LBL[18] ;
  73:  CALL FAULT_MESSAGE('Spring plate sensor did not','detect part in main spindle.') ;
  74:  JMP LBL[9999] ;
  75:   ;
  76:  LBL[19] ;
  77:  CALL FAULT_MESSAGE('Spring plate sensor did not','detect part in main spindle.') ;
  78:  JMP LBL[9999] ;
  79:   ;
  80:  LBL[20] ;
  81:  CALL FAULT_MESSAGE('Machine part search failed.','Inspect machine.') ;
  82:  JMP LBL[9999] ;
  83:   ;
  84:  LBL[21] ;
  85:  CALL FAULT_MESSAGE('Remove part from load spindle.','Wait until prompted to load ','raw part into machine.') ;
  86:  JMP LBL[9999] ;
  87:   ;
  88:  LBL[22] ;
  89:  CALL FAULT_MESSAGE('Program number is not set on HMI.','. Check machine setup page') ;
  90:  JMP LBL[9999] ;
  91:   ;
  92:  LBL[23] ;
  93:  CALL FAULT_MESSAGE('Robot is waiting for the machine','to be ready.  Machine needs to be ','home, linked, in auto, door open, ','and program complete. ') ;
  94:  JMP LBL[9999] ;
  95:  LBL[9999:END] ;
/POS
/END
