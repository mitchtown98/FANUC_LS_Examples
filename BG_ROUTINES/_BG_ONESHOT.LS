/PROG  _BG_ONESHOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 415;
CREATE		= DATE 21-11-24  TIME 08:21:48;
MODIFIED	= DATE 21-11-24  TIME 08:49:54;
FILE_NAME	= _BG_TOGG;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 743;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !---Example of One Shot---! ;
   2:   ;
   3:  F[1:ScanFlag]=(OFF) ;
   4:   ;
   5:  IF (DI[1:SOME_INPUT] AND !F[2:OneShotFlag]),F[1:ScanFlag]=(ON) ;
   6:   ;
   7:  F[2:OneShotFlag]=(DI[1:SOME_INPUT]) ;
   8:   ;
   9:  !---Increments just one shot--! ;
  10:  IF (F[1:ScanFlag]),R[100:onsCounter]=(R[100:onsCounter]+1) ;
  11:   ;
/POS
/END
