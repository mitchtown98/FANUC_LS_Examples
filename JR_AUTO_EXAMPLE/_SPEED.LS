/PROG  _SPEED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Robot Speed Ctrl";
PROG_SIZE	= 540;
CREATE		= DATE 21-03-19  TIME 11:14:48;
MODIFIED	= DATE 21-03-19  TIME 11:14:48;
FILE_NAME	= GETSPEED;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 896;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL
/MN
   1:  !***************************** ;
   2:  !Robot Speed Control via PLC ;
   3:  !***************************** ;
   4:  !--Get Robot Speed from PLC ;
   5:  R[8:Speed Control]=GI[2:Speed]    ;
   6:   ;
   7:  !--Set Robot Speed ;
   8:  IF (DO[8:TP Enabled]=OFF),$MCR.$GENOVERRIDE=(R[8:Speed Control]) ;
   9:   ;
  10:  !--Send Robot Speed ;
  11:  GO[3:Robot Speed]=($MCR.$GENOVERRIDE) ;
  12:  !**************************** ;
/POS
/END
