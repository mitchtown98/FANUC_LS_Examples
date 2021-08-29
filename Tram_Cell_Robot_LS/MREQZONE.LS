/PROG  MREQZONE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "USED IN ENTERZON";
PROG_SIZE	= 572;
CREATE		= DATE 11-05-18  TIME 12:08:42;
MODIFIED	= DATE 11-06-16  TIME 17:17:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 880;
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
  SPOT : TRUE ; 
/MN
   1:  !This MACRO is called before ;
   2:  !EnterZone[] instruction ;
   3:   ;
   4:  !The input: ;
   5:  ! AR[1] = 2: ;
   6:  !        num of the following ;
   7:  !        parameters ;
   8:  ! AR[2]: this waiting Dev ID ;
   9:   ;
  10:  !INFO in EnterZone[] statement ;
  11:  ! AR[3]: spaceID in EnterZone ;
  12:   ;
  13:  !User may want to use this MACRO ;
  14:  !to set I/O based on the above ;
  15:  !info ;
  16:   ;
/POS
/END
