/PROG  _Z_TUB
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1791;
CREATE		= DATE 21-05-10  TIME 08:16:34;
MODIFIED	= DATE 21-05-27  TIME 09:54:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 94;
MEMORY_SIZE	= 2247;
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
   3:J PR[49:PalletPerch] 100% CNT100    ;
   4:  OVERRIDE=20% ;
   5:   ;
   6:  !!! Get Bin Location !!! ;
   7:  VISION RUN_FIND 'BIN_LOC'    ;
   8:  VISION GET_OFFSET 'BIN_LOC' VR[1] JMP LBL[990] ;
   9:  PR[28]=VR[1].FOUND_POS[1] ;
  10:  PR[28,3:foundBinPos]=PR[28,3:foundBinPos]-1017    ;
  11:  !!! Karel - Setup Variables ;
  12:  CALL _LOC_SET    ;
  13:  PAUSE ;
  14:   ;
  15:  !!! Karel - Set First Tub ;
  16:  CALL _TOL_SET    ;
  17:  PAUSE ;
  18:   ;
  19:  !!! Karel - Calculate Pos ;
  20:  CALL KL_PAL_LOC_CALC_SET    ;
  21:  PAUSE ;
  22:   ;
  23:  !!! Karel - Push Tub ;
  24:  //CALL _LOC_PUSH    ;
  25:  PAUSE ;
  26:   ;
  27:  !!! Set Frame for Conveyor ;
  28:  !!! PICK FROM CONVEYOR ;
  29:  UFRAME_NUM=4 ;
  30:J PR[10:DePal Approach1] 75% CNT100    ;
  31:   ;
  32:L PR[30:pick] 1000mm/sec FINE Offset,PR[31:pickApprch]    ;
  33:   ;
  34:L PR[30:pick] 500mm/sec FINE    ;
  35:  !!! VAC ON !!! ;
  36:  CALL VAC_ON    ;
  37:   ;
  38:L PR[30:pick] 1000mm/sec FINE Offset,PR[31:pickApprch]    ;
  39:   ;
  40:J PR[10:DePal Approach1] 75% CNT100    ;
  41:   ;
  42:  !!! Place the First Tub ;
  43:  UFRAME_NUM=1 ;
  44:L PR[34:placeApprch] 1000mm/sec FINE    ;
  45:  PAUSE ;
  46:L PR[101:placeReg] 800mm/sec FINE Offset,PR[35:placeOffset]    ;
  47:   ;
  48:L PR[101:placeReg] 500mm/sec FINE    ;
  49:L PR[103] 200mm/sec FINE    ;
  50:L PR[104] 200mm/sec FINE    ;
  51:L PR[105] 200mm/sec FINE    ;
  52:   ;
  53:  !!! DROP PART ;
  54:  CALL VAC_OFF    ;
  55:L PR[101:placeReg] 800mm/sec FINE Offset,PR[35:placeOffset]    ;
  56:   ;
  57:   ;
  58:   ;
  59:   ;
  60:L PR[34:placeApprch] 1000mm/sec FINE    ;
  61:  !!!Go back to Perch ;
  62:  UFRAME_NUM=4 ;
  63:L PR[49:PalletPerch] 4000mm/sec CNT100    ;
  64:  PAUSE ;
  65:  LBL[800] ;
  66:  UFRAME_NUM=1 ;
  67:  !!! VR LOOP !!! ;
  68:   ;
  69:  R[194:vCount]=194    ;
  70:  VISION RUN_FIND 'TUB_SNAP'    ;
  71:  VISION RUN_FIND 'TUB_ADD'    ;
  72:   ;
  73:  FOR R[81]=1 TO 8 ;
  74:  VISION GET_OFFSET 'TUB_ADD' VR[2] JMP LBL[991] ;
  75:  PR[194]=VR[2].FOUND_POS[1] ;
  76:   ;
  77:  !!! KAREL Program TUB_FIND !!! ;
  78:  CALL _LOC_FIND    ;
  79:  ENDFOR ;
  80:  PAUSE ;
  81:   ;
  82:  //PR[41:pRegtubNext]=PR[101:placeReg]    ;
  83:  !!!Add Tub to Data ;
  84:  CALL _LOC_ADD    ;
  85:   ;
  86:  !!!Place Next Tub ;
  87:  CALL _GO_PLACE    ;
  88:  !!! End Of Program !!! ;
  89:  END ;
  90:  LBL[990] ;
  91:  UALM[1] ;
  92:  LBL[991] ;
  93:  UALM[2] ;
  94:L PR[36:testREg] 200mm/sec FINE    ;
/POS
/END
