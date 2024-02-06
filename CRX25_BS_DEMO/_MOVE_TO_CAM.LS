/PROG  _MOVE_TO_CAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Cam SubRoutine";
PROG_SIZE	= 1003;
CREATE		= DATE 23-09-11  TIME 14:06:04;
MODIFIED	= DATE 23-09-13  TIME 16:01:16;
FILE_NAME	= _MOVE_TO;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1367;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 5,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : TRUE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo ;
   3:  !      Move to Camera Routine ;
   4:  !                             ;
   5:  !  BY: JDM ;
   6:  !  DATE: 8.30.2023 ;
   7:  !---------------------------- ;
   8:  R[81:Arg1]=AR[1]    ;
   9:   ;
  10:  ! Get Frame and Pos ;
  11:  UTOOL_NUM=9 ;
  12:  UFRAME_NUM=AR[1] ;
  13:  PR[90:TempCamPos]=PR[61:DePalStackPt]    ;
  14:  PR[90,4:TempCamPos]=0    ;
  15:   ;
  16:  IF (R[81:Arg1]=1) THEN ;
  17:  !right side ;
  18:  PR[90,1:TempCamPos]=(PR[90,1:TempCamPos]+R[288:RIGHT_CAM_ADJUST]) ;
  19:  PR[90,3:TempCamPos]=((R[6:RightPalLayer]*R[9:LayerHeight])+25) ;
  20:  PR[90,6:TempCamPos]=(0) ;
  21:  IF (PR[90,1:TempCamPos]<R[282:MID_PAL_X_RIGHT]),PR[90,6:TempCamPos]=(180) ;
  22:  ELSE ;
  23:  !left side ;
  24:  PR[90,3:TempCamPos]=((R[7:LeftPalLayer]*R[9:LayerHeight])+25) ;
  25:  PR[90,6:TempCamPos]=(0) ;
  26:  IF (PR[90,1:TempCamPos]<R[281:MID_PAL_X_LEFT]),PR[90,6:TempCamPos]=(180) ;
  27:  ENDIF ;
  28:   ;
  29:  PR[91:TempToolOffset]=LPOS-LPOS    ;
  30:   ;
  31:  ! Move to Camera Pos ;
  32:J PR[90:TempCamPos] 100% FINE    ;
  33:  WAIT    .50(sec) ;
  34:  END ;
/POS
/END
