/PROG  AIRBLOW20_2
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "CHUCK BLOWOFF";
PROG_SIZE	= 471;
CREATE		= DATE 18-04-05  TIME 02:46:56;
MODIFIED	= DATE 18-04-05  TIME 03:02:46;
FILE_NAME	= AIRBLOW2;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 959;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  LBL[1:START] ;
   2:  $WAITTMOUT=700 ;
   3:  DO[244:OFF:OK2 BCD INPUT 10]=PULSE,1.0sec ;
   4:  WAIT DI[244:OFF:OK2 BCD OUTPUT 10]=ON TIMEOUT,LBL[9999] ;
   5:  $DEFPULSE=R[13:OP40 AIR BLOW ] ;
   6:  DO[262:OFF:OK1 L BIT 4]=PULSE   ;
   7:  WAIT   2.00(sec) ;
   8:  $WAITTMOUT=4500 ;
   9:  WAIT DI[254:OFF:OK2 BCD OUTPUT 4000]=ON TIMEOUT,LBL[9999] ;
  10:  DO[245:OFF:OK2 BCD INPUT 20]=PULSE,1.0sec ;
  11:   ;
  12:  LBL[9999:END] ;
/POS
/END
