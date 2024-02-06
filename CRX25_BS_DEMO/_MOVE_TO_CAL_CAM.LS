/PROG  _MOVE_TO_CAL_CAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Cal Positions";
PROG_SIZE	= 955;
CREATE		= DATE 23-09-05  TIME 18:48:10;
MODIFIED	= DATE 23-09-05  TIME 18:48:10;
FILE_NAME	= _TEMPLAT;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1451;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 2,2,0;
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
   3:  !      Move to Camera Routine ;
   4:  ! ;
   5:  !  BY: JDM ;
   6:  !  DATE: 8.30.2023 ;
   7:  !---------------------------- ;
   8:   ;
   9:  R[10001]=AR[1]    ;
  10:  SELECT R[10001]=1,JMP LBL[10] ;
  11:         =2,JMP LBL[20] ;
  12:         ELSE,JMP LBL[999] ;
  13:   ;
  14:  !------------------- ;
  15:  LBL[10:RightPallet] ;
  16:  !------------------- ;
  17:J PR[111:CpyUT1] 100% CNT50    ;
  18:  JMP LBL[990] ;
  19:   ;
  20:  !------------------- ;
  21:  LBL[20:LeftPallet] ;
  22:  !------------------- ;
  23:J PR[112:CpyUT8] 100% CNT50    ;
  24:  JMP LBL[990] ;
  25:   ;
  26:  !------------------- ;
  27:  LBL[990:EndNormal] ;
  28:  !------------------- ;
  29:  END ;
  30:   ;
  31:   ;
  32:  !------------------- ;
  33:  LBL[999:Error] ;
  34:  !------------------- ;
/POS
/END
