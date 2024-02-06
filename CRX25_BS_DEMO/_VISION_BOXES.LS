/PROG  _VISION_BOXES
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Vision Proc";
PROG_SIZE	= 823;
CREATE		= DATE 23-09-05  TIME 10:54:08;
MODIFIED	= DATE 23-09-13  TIME 15:29:02;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1215;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo ;
   3:  !     Vision SubRoutine ;
   4:  ! ;
   5:  !   AR1=In SR for Viz Name ;
   6:  !   AR2=Out R for Meas 1 ;
   7:  !   AR2=Out R for Meas 2 ;
   8:  ! ;
   9:  !  BY: JDM ;
  10:  !  DATE: 8.30.2023 ;
  11:  !---------------------------- ;
  12:  R[15:vis status]=0    ;
  13:   ;
  14:  LBL[10] ;
  15:  VISION RUN_FIND SR[AR[1]]    ;
  16:  VISION GET_OFFSET SR[AR[1]] VR[AR[1]] JMP LBL[99] ;
  17:   ;
  18:  R[15:vis status]=1    ;
  19:  END ;
  20:   ;
  21:  !------------------- ;
  22:  LBL[99:VisionErr] ;
  23:  !------------------- ;
  24:  UALM[4] ;
  25:  R[15:vis status]=R[15:vis status]-1    ;
  26:  IF R[15:vis status]>(-5),JMP LBL[10] ;
  27:  PAUSE ;
  28:  JMP LBL[10] ;
/POS
/END
