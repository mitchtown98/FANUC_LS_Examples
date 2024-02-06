/PROG  _VAC_OFF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vac SubRoutine";
PROG_SIZE	= 552;
CREATE		= DATE 23-09-05  TIME 15:42:40;
MODIFIED	= DATE 23-09-11  TIME 10:52:46;
FILE_NAME	= VACOFF;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 1008;
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
   1:  JMP LBL[1] ;
   2:  !---------------------------- ;
   3:  !  CRX25 Palletizing Demo     ;
   4:  !   Vacuum SubRoutine         ;
   5:  !                             ;
   6:  !  BY: JDM                    ;
   7:  !  DATE: 8.31.2023            ;
   8:  !---------------------------- ;
   9:   ;
  10:  LBL[1] ;
  11:  DO[101:VAC_ON]=OFF ;
  12:  DO[102:BLOW_OFF]=ON ;
/POS
/END
