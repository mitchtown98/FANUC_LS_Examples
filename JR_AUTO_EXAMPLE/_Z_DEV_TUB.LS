/PROG  _Z_DEV_TUB
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1263;
CREATE		= DATE 21-05-25  TIME 08:24:44;
MODIFIED	= DATE 21-06-09  TIME 13:53:02;
FILE_NAME	= _Z_TUB;
VERSION		= 0;
LINE_COUNT	= 61;
MEMORY_SIZE	= 1707;
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
   3:   ;
   4:J PR[49:PalletPerch] 100% CNT100    ;
   5:  OVERRIDE=20% ;
   6:   ;
   7:  !!! Get Bin Location !!! ;
   8:  VISION RUN_FIND 'BIN_LOC'    ;
   9:  VISION GET_OFFSET 'BIN_LOC' VR[1] JMP LBL[990] ;
  10:  PR[28]=VR[1].FOUND_POS[1] ;
  11:  PR[28,3:foundBinPos]=PR[28,3:foundBinPos]-1076    ;
  12:  !!! Karel - Set Bin Center ;
  13:  CALL _LOC_SET    ;
  14:  PAUSE ;
  15:   ;
  16:  !!! Karel - Set First Tub ;
  17:  CALL _TOL_SET    ;
  18:  PAUSE ;
  19:   ;
  20:  !!! Karel - Calculate Pos ;
  21:  CALL KL_PAL_LOC_CALC_SET    ;
  22:  PAUSE ;
  23:   ;
  24:  !!! Karel - Push Tub ;
  25:  CALL _LOC_PUSH    ;
  26:  PAUSE ;
  27:   ;
  28:  !!! Karel - Pop Tub ;
  29:  CALL _LOC_POP    ;
  30:  PAUSE ;
  31:   ;
  32:  UFRAME_NUM=1 ;
  33:  !!! VR LOOP !!! ;
  34:   ;
  35:  VISION RUN_FIND 'TUB_SNAP'    ;
  36:  VISION RUN_FIND 'TUB_ADD'    ;
  37:  R[16:myCount]=1    ;
  38:   ;
  39:  FOR R[81]=1 TO R[150:fromLocFind] ;
  40:  LBL[800] ;
  41:  R[16:myCount]=R[16:myCount]+1    ;
  42:  IF R[16:myCount]=8,JMP LBL[898] ;
  43:   ;
  44:  VISION GET_OFFSET 'TUB_ADD' VR[2] JMP LBL[800] ;
  45:  PR[194]=VR[2].FOUND_POS[1] ;
  46:   ;
  47:  !!! KAREL Program TUB_FIND !!! ;
  48:  CALL _LOC_FIND    ;
  49:  ENDFOR ;
  50:  LBL[898] ;
  51:  PAUSE ;
  52:   ;
  53:  !!!Place Next Tub ;
  54:  CALL _GO_PLACE    ;
  55:  !!! End Of Program !!! ;
  56:  END ;
  57:  LBL[990] ;
  58:  UALM[1] ;
  59:  LBL[991] ;
  60:  UALM[2] ;
  61:   ;
/POS
/END
