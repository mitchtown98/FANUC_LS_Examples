/PROG  V_3DV_MULTI_FIXED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Multi FFO.";
PROG_SIZE	= 1112;
CREATE		= DATE 21-09-02  TIME 07:53:50;
MODIFIED	= DATE 21-09-02  TIME 07:53:50;
FILE_NAME	= V_3DV_MU;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 1524;
PROTECT		= READ;
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
/APPL
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:J PR[1:RightCam] 30% FINE    ;
   4:   ;
   5:  LBL[10] ;
   6:  !SEARCH1 ;
   7:J PR[2:LeftCam] 100% FINE    ;
   8:  WAIT    .30(sec) ;
   9:  VISION RUN_FIND '...' CAMERA_VIEW[1] ;
  10:  VISION GET_NFOUND '...' R[14] CAMERA_VIEW[1] ;
  11:  IF R[14]<1,JMP LBL[999] ;
  12:   ;
  13:  !SEARCH2 ;
  14:J PR[3:RightPickRef] 100% FINE    ;
  15:  WAIT    .30(sec) ;
  16:  VISION RUN_FIND '...' CAMERA_VIEW[2] ;
  17:  VISION GET_NFOUND '...' R[14] CAMERA_VIEW[2] ;
  18:  IF R[14]<1,JMP LBL[999] ;
  19:   ;
  20:  !SEARCH3 ;
  21:J PR[4:LeftPickRef] 100% FINE    ;
  22:  WAIT    .30(sec) ;
  23:  VISION RUN_FIND '...' CAMERA_VIEW[3] ;
  24:  VISION GET_NFOUND '...' R[14] CAMERA_VIEW[3] ;
  25:  IF R[14]<1,JMP LBL[999] ;
  26:   ;
  27:  !SEARCH4 ;
  28:J PR[5] 100% FINE    ;
  29:  WAIT    .30(sec) ;
  30:  VISION RUN_FIND '...' CAMERA_VIEW[4] ;
  31:  VISION GET_NFOUND '...' R[14] CAMERA_VIEW[4] ;
  32:  IF R[14]<1,JMP LBL[999] ;
  33:   ;
  34:  !GET OFFSET DATA ;
  35:  VISION GET_OFFSET '...' VR[1] JMP LBL[999] ;
  36:   ;
  37:  !PICK ;
  38:L PR[6] 800mm/sec CNT100 VOFFSET,VR[1]    ;
  39:L PR[7] 200mm/sec FINE VOFFSET,VR[1]    ;
  40:  !Insert program instructions ;
  41:  !to grasp the part. ;
  42:  CALL ...    ;
  43:L PR[8] 800mm/sec CNT100 VOFFSET,VR[1]    ;
  44:   ;
  45:  !PLACE ;
  46:L PR[9] 800mm/sec CNT100    ;
  47:L PR[10:skipLPOS] 200mm/sec FINE    ;
  48:  !Insert program instructions ;
  49:  !to release the part. ;
  50:  CALL ...    ;
  51:L PR[11:RightCamLayer] 800mm/sec CNT100    ;
  52:  JMP LBL[10] ;
  53:   ;
  54:  !ERROR ;
  55:  LBL[999] ;
/POS
/END
