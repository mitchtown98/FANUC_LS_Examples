/PROG  TOOL_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 6103;
CREATE		= DATE 21-04-30  TIME 15:49:40;
MODIFIED	= DATE 23-05-17  TIME 09:24:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 133;
MEMORY_SIZE	= 6859;
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
   5:  CALL FAULT_MESSAGE('Inner Diameter/Outer Diameter','not selected for load gripper.','Select gripping type from HMI.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('Load ungrip sensor','did not come on','when ungrip command was','given. Inspect load','fully open sensor, solenoid,','and air supply.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL FAULT_MESSAGE('Load ungrip sensor','did not come on','when ungrip command was','given. Inspect load tool','fully closed sensor, solenoid,','and air supply.') ;
  14:  JMP LBL[9999] ;
  15:   ;
  16:  LBL[4] ;
  17:  CALL FAULT_MESSAGE('Load ungrip sensor','is on but grip','command was given.','Inspect load fully','open sensor, solenoid,','and air supply.') ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[5] ;
  21:  CALL FAULT_MESSAGE('Load overtravel','sensor came on during','part gripping. Inspect','load gripper fully closed','sensor, part present, and','gripper finger adjustment.') ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[6] ;
  25:  CALL FAULT_MESSAGE('Load ungrip sensor','is on but grip','command was given.','Inspect load gripper fully','closed sensor, solenoid,','and air supply.') ;
  26:  JMP LBL[9999] ;
  27:   ;
  28:  LBL[7] ;
  29:  CALL FAULT_MESSAGE('Load gripper overtravel','sensor came on during','part gripping. inspect','load gripper fully open','sensor, part present, andf','gripper finger adjustment.') ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[8] ;
  33:  CALL FAULT_MESSAGE('Inner Diameter/Outer Diameter','not selected for unload ','gripper. select gripping','type from HMI.') ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[9] ;
  37:  CALL FAULT_MESSAGE('Unload ungrip sensor','did not come on','when ungrip command was','given. Inspect unload gripper','fully open sensor, solenoid,','and air supply.') ;
  38:  JMP LBL[9999] ;
  39:   ;
  40:  LBL[10] ;
  41:  CALL FAULT_MESSAGE('Unload ungrip sensor','did not come on','when ungrip command was','given. Inspect unload gripper','fully closed sensor, solenoid,','and air supply.') ;
  42:  JMP LBL[9999] ;
  43:   ;
  44:  LBL[11] ;
  45:  CALL FAULT_MESSAGE('Unload ungrip sensor','is on but grip','command was given.','Inspect unload gripper fully','open sensor, solenoid,','and air supply.') ;
  46:  JMP LBL[9999] ;
  47:   ;
  48:  LBL[12] ;
  49:  CALL FAULT_MESSAGE('Unload gripper overtravel','sensor came on during','part gripping. Inspect','Unload gripper fully closed','sensor, part present, and','gripper finger adjustment.') ;
  50:  JMP LBL[9999] ;
  51:   ;
  52:  LBL[13] ;
  53:  CALL FAULT_MESSAGE('Unload gripper ungrip sensor','is on but grip','command was given.','Inspect unload gripper fully','closed sensor, solenoid,','and air supply.') ;
  54:  JMP LBL[9999] ;
  55:   ;
  56:  LBL[14] ;
  57:  CALL FAULT_MESSAGE('Unload gripper overtravel','sensor came on during','part gripping. Inspect','unload gripper fully open','sensor, part present, and','gripper finger adjustment.') ;
  58:  JMP LBL[9999] ;
  59:   ;
  60:  LBL[15] ;
  61:  CALL FAULT_MESSAGE('Load and unload grippers','overtravel sensors are on.','Make sure tools are empty','and ungrip the grippers.') ;
  62:  JMP LBL[9999] ;
  63:   ;
  64:  LBL[16] ;
  65:  CALL FAULT_MESSAGE('Load gripper overtravel sensor','is on. Make sure gripper is','empty and ungrip gripper.') ;
  66:  JMP LBL[9999] ;
  67:   ;
  68:  LBL[17] ;
  69:  CALL FAULT_MESSAGE('Unload gripper overtravel sensor','is on. Make sure gripper is','empty and ungrip gripper.') ;
  70:  JMP LBL[9999] ;
  71:   ;
  72:  LBL[18] ;
  73:  CALL FAULT_MESSAGE('Theres a part in load gripper','that has no destination output','on. Turn on the correct output','in the range of DO 129-136','or remove part from tool.') ;
  74:  JMP LBL[9999] ;
  75:   ;
  76:  LBL[19] ;
  77:  CALL FAULT_MESSAGE('Theres a part In unload gripper','That has no destination output','on. Turn on the correct output','in the range of DO 137-144','or remove part from tool.') ;
  78:  JMP LBL[9999] ;
  79:   ;
  80:  LBL[20] ;
  81:  CALL FAULT_MESSAGE('Load gripper overtravel sensor','came on after part gripping.','Part may have been dropped or','gripper fingers moved.') ;
  82:  JMP LBL[9999] ;
  83:   ;
  84:  LBL[21] ;
  85:  CALL FAULT_MESSAGE('Load gripper overtravel sensor','came on after part gripping.','Part may have been dropped.','or gripper fingers moved.') ;
  86:  JMP LBL[9999] ;
  87:   ;
  88:  LBL[22] ;
  89:  CALL FAULT_MESSAGE('Single part Or dual part','gripping has not been','selected. Select gripping','type from HMI.') ;
  90:  JMP LBL[9999] ;
  91:   ;
  92:  LBL[23] ;
  93:  CALL FAULT_MESSAGE('Gripper setup cannot be','completed for load gripper.','make sure gripper is empty','and sensors are working.') ;
  94:  JMP LBL[9999] ;
  95:   ;
  96:  LBL[24] ;
  97:  CALL FAULT_MESSAGE('Gripper setup cannot be','completed for unload gripper.','make sure gripper is empty','and sensors are working.') ;
  98:  JMP LBL[9999] ;
  99:   ;
 100:  LBL[25] ;
 101:  CALL FAULT_MESSAGE('Pins are not all the same','length for load gripper. ','Inspect pins on gripper and','make sure all are same length.') ;
 102:  JMP LBL[9999] ;
 103:   ;
 104:  LBL[26] ;
 105:  CALL FAULT_MESSAGE('Fingers are not all in the','same position for load gripper','Inspect fingers on gripper and','make sure they are evenly','spaced.') ;
 106:  JMP LBL[9999] ;
 107:   ;
 108:  LBL[27] ;
 109:  CALL FAULT_MESSAGE('Pins are not all the same','length for unload gripper.','Inspect pins on gripper and','make sure all are same length.') ;
 110:  JMP LBL[9999] ;
 111:   ;
 112:  LBL[28] ;
 113:  CALL FAULT_MESSAGE('Fingers are not all in the','same position for unload gripper.','Inspect fingers on gripper and','make sure they are evenly','spaced.') ;
 114:  JMP LBL[9999] ;
 115:   ;
 116:  LBL[29] ;
 117:  CALL FAULT_MESSAGE('Grippers must be empty','to run the program that','verifies grippers are setup','correctly.') ;
 118:  JMP LBL[9999] ;
 119:   ;
 120:  LBL[30] ;
 121:  CALL FAULT_MESSAGE('If gripping on Inner Diameter,  ','remove pins from gripper.','If gripping on Outer Diameter,','ensure gripper pins','are set wide enough to avoid','contact with part','while measuring with the ',
    :  'springplate.') ;
 122:  JMP LBL[9999] ;
 123:   ;
 124:  LBL[31] ;
 125:  CALL FAULT_MESSAGE('Replace pins on load gripper','to the correct location.') ;
 126:  JMP LBL[9999] ;
 127:   ;
 128:  LBL[32] ;
 129:  CALL FAULT_MESSAGE('Spring plate sensor needs',' adjusted') ;
 130:  JMP LBL[9999] ;
 131:   ;
 132:  LBL[9999:END] ;
 133:   ;
/POS
/END
