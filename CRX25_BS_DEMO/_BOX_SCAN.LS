/PROG  _BOX_SCAN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Recover Sub";
PROG_SIZE	= 955;
CREATE		= DATE 23-09-07  TIME 11:46:34;
MODIFIED	= DATE 23-09-08  TIME 14:03:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 1431;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 3,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  //R[160:ScanLoop]=0    ;
   2:  //R[6:RightPalLayer]=1    ;
   3:   ;
   4:  LBL[10] ;
   5:  R[1:PalletsBuiltRigt]=0    ;
   6:   ;
   7:  R[160:ScanLoop]=1+R[160:ScanLoop]    ;
   8:   ;
   9:  LBL[20] ;
  10:  IF R[1:PalletsBuiltRigt]=16,JMP LBL[98] ;
  11:   ;
  12:  CALL _CAM_ARRAY(R[1:PalletsBuiltRigt],R[6:RightPalLayer]) ;
  13:   ;
  14:  CALL _VIZ_SCAN    ;
  15:   ;
  16:  R[1:PalletsBuiltRigt]=R[1:PalletsBuiltRigt]+1    ;
  17:   ;
  18:  IF R[199]<>1,JMP LBL[20] ;
  19:   ;
  20:  VISION GET_OFFSET 'FINDRIGHTBOX' VR[1] JMP LBL[99] ;
  21:   ;
  22:  R[164]=R[1:PalletsBuiltRigt]-1    ;
  23:   ;
  24:  R[99]=R[11:MaxLayers]-R[6:RightPalLayer]    ;
  25:   ;
  26:  R[99]=(R[3:BoxesPerLayer]*R[99]) ;
  27:   ;
  28:  R[4:RightPalIndex]=(R[164]+R[99]) ;
  29:   ;
  30:  !!!!!!!!!!!!!!!!!!!!!!!!!!! ;
  31:  ! TODO: Change for show ;
  32:  !!!!!!!!!!!!!!!!!!!!!!!!!!! ;
  33:   ;
  34:  R[5:LeftPalIndex]=R[4:RightPalIndex]    ;
  35:  F[9:RUN_BOX_SCAN]=(OFF) ;
  36:  END ;
  37:   ;
  38:  !**************************** ;
  39:  LBL[98] ;
  40:  !**************************** ;
  41:   ;
  42:  R[6:RightPalLayer]=R[6:RightPalLayer]-1    ;
  43:  IF R[6:RightPalLayer]<>0,JMP LBL[10] ;
/POS
/END
