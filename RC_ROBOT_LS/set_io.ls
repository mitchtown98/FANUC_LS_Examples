/PROG  SET_IO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 331;
CREATE		= DATE 22-06-14  TIME 11:57:14;
MODIFIED	= DATE 22-06-24  TIME 13:13:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 671;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !PROGRAM TO SET I/O TO CORRECT    ;
   2:  !BEFORE STARTING PRODUCTION       ;
   3:  DO[36:PART PRESENT CHECK ONLY]=OFF ;
   4:  DO[45:TABLE ROTATING]=OFF ;
   5:  DO[101:WAIT FOR ROTATE MSG]=OFF ;
   6:  DO[202:RECOVER ACTIVE]=OFF ;
   7:  RO[8:LASER ON]=OFF ;
   8:  DO[6]=OFF ;
/POS
/END
