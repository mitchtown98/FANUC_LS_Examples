/PROG  _GO_PLACE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 463;
CREATE		= DATE 21-05-12  TIME 11:40:10;
MODIFIED	= DATE 21-05-18  TIME 13:27:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 779;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  !!! Place the First Tub ;
   2:  UFRAME_NUM=1 ;
   3:L PR[34:placeApprch] 1000mm/sec FINE    ;
   4:   ;
   5:L PR[101:placeReg] 800mm/sec FINE Offset,PR[35:placeOffset]    ;
   6:   ;
   7:L PR[101:placeReg] 500mm/sec FINE    ;
   8:   ;
   9:  !!! DROP PART ;
  10:  CALL VAC_OFF    ;
  11:L PR[101:placeReg] 800mm/sec FINE Offset,PR[35:placeOffset]    ;
  12:   ;
  13:L PR[34:placeApprch] 1000mm/sec FINE    ;
  14:  !!!Go back to Perch ;
  15:  UFRAME_NUM=4 ;
  16:J PR[49:PalletPerch] 100% CNT100    ;
/POS
/END
