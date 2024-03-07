/PROG  LASER_MSG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FAULT MESSAGES";
PROG_SIZE	= 1661;
CREATE		= DATE 21-09-14  TIME 13:15:42;
MODIFIED	= DATE 23-11-21  TIME 01:04:20;
FILE_NAME	= TABLE_MS;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2125;
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
   5:  CALL FAULT_MESSAGE('Laser could not find the ','edge of the part. inspect','laser and make sure part','is present in "SETUP PART"','slot. Manual entry may ','be required.') ;
   6:  JMP LBL[9999] ;
   7:   ;
   8:  LBL[2] ;
   9:  CALL FAULT_MESSAGE('Laser is on at search','start position and should be','off. Inspect laser and','template.') ;
  10:  JMP LBL[9999] ;
  11:   ;
  12:  LBL[3] ;
  13:  CALL FAULT_MESSAGE('Laser failed to find template','during search. Inspect laser','and template.') ;
  14:  JMP LBL[9999] ;
  15:   ;
  16:  LBL[4] ;
  17:  CALL FAULT_MESSAGE('Laser is off at search','start position and should be','on. Inspect laser and','template.') ;
  18:  JMP LBL[9999] ;
  19:   ;
  20:  LBL[5] ;
  21:  CALL FAULT_MESSAGE('Laser failed to find a','template hole during search.','Inspect laser and template') ;
  22:  JMP LBL[9999] ;
  23:   ;
  24:  LBL[6] ;
  25:  CALL FAULT_MESSAGE('Laser failed to find the','table plate during search.','Inspect laser.') ;
  26:  JMP LBL[9999] ;
  27:   ;
  28:  LBL[7] ;
  29:  CALL FAULT_MESSAGE('Gripper laser did not find','finger. reteach gripper','Inspect laser.') ;
  30:  JMP LBL[9999] ;
  31:   ;
  32:  LBL[8] ;
  33:  CALL FAULT_MESSAGE('Gripper laser did not find','a pin on the finger.','Inspect gripper.') ;
  34:  JMP LBL[9999] ;
  35:   ;
  36:  LBL[9] ;
  37:  CALL FAULT_MESSAGE('Gripper sensor did not find','the part on the regrip.') ;
  38:  JMP LBL[9999] ;
  39:   ;
  40:  LBL[10] ;
  41:  CALL FAULT_MESSAGE('Gripper sensor did not find','the part.  ') ;
  42:  JMP LBL[9999] ;
  43:   ;
  44:  LBL[9999:END] ;
/POS
/END
