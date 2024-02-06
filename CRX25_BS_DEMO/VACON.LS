/PROG  VACON	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vac Macro";
PROG_SIZE	= 528;
CREATE		= DATE 23-08-31  TIME 16:48:38;
MODIFIED	= DATE 23-09-01  TIME 14:03:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 888;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !      Vacuum Macro           ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.31.2023            ;
   7:  !---------------------------- ;
   8:  $WAITTMOUT=500 ;
   9:   ;
  10:  DO[101:VAC_ON]=ON ;
  11:  WAIT DI[101:VacSetPointOk]=ON    ;
/POS
/END
