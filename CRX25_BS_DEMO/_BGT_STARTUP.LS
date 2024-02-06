/PROG  _BGT_STARTUP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Boot Task";
PROG_SIZE	= 687;
CREATE		= DATE 23-08-30  TIME 16:33:32;
MODIFIED	= DATE 23-09-05  TIME 12:45:46;
FILE_NAME	= _BGT_BTN;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 999;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !---------------------------- ;
   2:  !  Controller has Booted ;
   3:  !---------------------------- ;
   4:   ;
   5:  UALM[2] ;
   6:   ;
   7:  !  Wait for tp connected ;
   8:  WAIT ($tx.$connected=1)    ;
   9:  WAIT R[170] ;
  10:   ;
  11:  !  Confirm payload ;
  12:  !  Reset faults ;
  13:  F[6:PAYLOAD_CONFIRM]=(ON) ;
  14:  WAIT    .20(sec) ;
  15:  F[6:PAYLOAD_CONFIRM]=(OFF) ;
  16:  F[2:UOP_RESET]=(ON) ;
  17:  WAIT    .20(sec) ;
  18:  F[2:UOP_RESET]=(OFF) ;
  19:   ;
  20:  !  Run bg tasks ;
  21:  !  Call Hmi ;
  22:  //CALL DSP_WEBP(3) ;
  23:   ;
  24:  !  Robot ready ;
  25:  UALM[2] ;
/POS
/END
