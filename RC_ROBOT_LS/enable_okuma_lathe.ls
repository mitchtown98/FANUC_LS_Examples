/PROG  ENABLE_OKUMA_LATHE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ENABLE SCANNER";
PROG_SIZE	= 669;
CREATE		= DATE 23-10-27  TIME 15:21:08;
MODIFIED	= DATE 23-10-28  TIME 14:45:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 977;
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
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  --eg:ENABLE SCANNER BASED ON SELECTED MACHINE TYPE. ;
   2:  CALL FAULT_MESSAGE('Okuma lathe has been enabled.') ;
   3:  DO[55:OKUMA NO ANYBUS]=OFF ;
   4:  DO[56:OKUMA LATHE]=ON ;
   5:  DO[57:OKUMA MILL]=OFF ;
   6:  DO[58:HAAS LATHE]=OFF ;
   7:  DO[59:HARDINGE LATHE]=OFF ;
   8:  DO[60:HARDINGE MILL]=OFF ;
   9:  DO[91:TEST RIG ENABLED]=OFF ;
  10:  DO[98:DEMO MODE]=OFF ;
  11:  DO[93:MAZAK ON]=OFF ;
  12:  DO[92:NIDEC]=OFF ;
  13:  DO[94:CUSTOM]=OFF ;
  14:  CALL EN_OFFLN(3) ;
  15:  CALL EN_OFFLN(4) ;
  16:  CALL EN_OFFLN(5) ;
  17:  CALL EN_OFFLN(6) ;
  18:  CALL EN_OFFLN(7) ;
  19:  CALL EN_OFFLN(8) ;
  20:  CALL EN_OFFLN(9) ;
  21:  CALL EN_OFFLN(10) ;
  22:  CALL EN_ONLN(2) ;
/POS
/END