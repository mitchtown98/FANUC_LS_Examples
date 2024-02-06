/PROG  _Z_VISIONK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 813;
CREATE		= DATE 21-05-10  TIME 09:08:46;
MODIFIED	= DATE 21-05-10  TIME 09:08:46;
FILE_NAME	= _Z_TUB;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 1301;
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
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=2 ;
   3:  OVERRIDE=50% ;
   4:J PR[49:PalletPerch] 50% FINE    ;
   5:  !!! Get Bin Location !!! ;
   6:  VISION RUN_FIND 'BIN_LOC'    ;
   7:  VISION GET_OFFSET 'BIN_LOC' VR[1] JMP LBL[990] ;
   8:   ;
   9:   ;
  10:  UFRAME_NUM=4 ;
  11:   ;
  12:J PR[10:DePal Approach1] 75% CNT100    ;
  13:   ;
  14:L PR[30:pick] 1000mm/sec FINE Offset,PR[31:pickApprch]    ;
  15:   ;
  16:L PR[30:pick] 500mm/sec FINE    ;
  17:  !!! VAC ON !!! ;
  18:  CALL VAC_ON    ;
  19:   ;
  20:L PR[30:pick] 1000mm/sec FINE Offset,PR[31:pickApprch]    ;
  21:   ;
  22:J PR[10:DePal Approach1] 75% CNT100    ;
  23:   ;
  24:  UFRAME_NUM=2 ;
  25:   ;
  26:J PR[49:PalletPerch] 50% FINE    ;
  27:   ;
  28:L PR[32:placeClear ] 800mm/sec FINE    ;
  29:   ;
  30:L PR[33:place] 300mm/sec FINE Offset,PR[34:placeApprch]    ;
  31:   ;
  32:L PR[33:place] 200mm/sec FINE    ;
  33:  !!! VAC ON !!! ;
  34:  CALL VAC_OFF    ;
  35:   ;
  36:L PR[33:place] 300mm/sec FINE Offset,PR[34:placeApprch]    ;
  37:   ;
  38:L PR[32:placeClear ] 800mm/sec FINE    ;
  39:   ;
  40:J PR[49:PalletPerch] 50% FINE    ;
/POS
/END
