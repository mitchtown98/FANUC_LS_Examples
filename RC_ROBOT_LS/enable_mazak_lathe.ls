/PROG  ENABLE_MAZAK_LATHE	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ENABLE SCANNER";
PROG_SIZE	= 763;
CREATE		= DATE 23-10-27  TIME 15:20:16;
MODIFIED	= DATE 23-10-28  TIME 14:40:46;
FILE_NAME	= ENABLE_H;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 1067;
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
   2:  CALL FAULT_MESSAGE('Mazak Lathe has been enabled.') ;
   3:  DO[55:OKUMA NO ANYBUS]=OFF ;
   4:  DO[56:OKUMA LATHE]=OFF ;
   5:  DO[57:OKUMA MILL]=OFF ;
   6:  DO[58:HAAS LATHE]=OFF ;
   7:  DO[91:TEST RIG ENABLED]=OFF ;
   8:  DO[60:HARDINGE MILL]=OFF ;
   9:  DO[98:DEMO MODE]=OFF ;
  10:  DO[59:HARDINGE LATHE]=OFF ;
  11:  DO[92:NIDEC]=OFF ;
  12:  DO[94:CUSTOM]=OFF ;
  13:  DO[93:MAZAK ON]=ON ;
  14:  CALL EN_OFFLN(2) ;
  15:  CALL EN_OFFLN(3) ;
  16:  CALL EN_OFFLN(4) ;
  17:  CALL EN_OFFLN(5) ;
  18:  CALL EN_OFFLN(6) ;
  19:  CALL EN_OFFLN(7) ;
  20:  CALL EN_OFFLN(9) ;
  21:  CALL EN_OFFLN(10) ;
  22:  CALL EN_ONLN(8) ;
  23:   ;
/POS
/END
