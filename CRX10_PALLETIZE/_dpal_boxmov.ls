/PROG  _DPAL_BOXMOV
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal Sub";
PROG_SIZE	= 1060;
CREATE		= DATE 22-03-11  TIME 17:10:42;
MODIFIED	= DATE 22-03-11  TIME 17:14:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 49;
MEMORY_SIZE	= 1496;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 2,1,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=8 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  R[10001]=AR[1]    ;
   5:  R[10002]=0    ;
   6:  PR[10001]=LPOS    ;
   7:   ;
   8:  SELECT R[10001]=0,JMP LBL[10] ;
   9:         =1,JMP LBL[20] ;
  10:         =2,JMP LBL[30] ;
  11:         =3,JMP LBL[40] ;
  12:  !-------------------- ;
  13:  LBL[10:Box 1] ;
  12:  !-------------------- ;
  14:   ;
  15:  !  Set X out dist ;
  16:  R[10002]=R[186:RowPitch]    ;
  17:  R[10002]=R[10002]+50    ;
  18:   ;
  19:  !  Set Y out dist and mov ;
  20:  PR[10001,2]=PR[10001,2]-25    ;
  21:L PR[10001] 100mm/sec FINE    ;
  22:   ;
  23:  !  Mov X Out ;
  24:  PR[10001,1]=PR[10001,1]-R[10002]    ;
  25:L PR[10001] 100mm/sec FINE    ;
  26:  END ;
  27:   ;
  12:  !-------------------- ;
  29:  LBL[20:Box 2] ;
  12:  !-------------------- ;
  30:  END ;
  31:   ;
  32:  !-------------------- ;
  33:  LBL[30:Box 3] ;
  32:  !-------------------- ;
  34:   ;
  35:  !  Set X out dist ;
  36:  R[10002]=R[186:RowPitch]*2    ;
  37:  R[10002]=R[10002]+50    ;
  38:   ;
  39:  !  Set Y out dist and mov ;
  40:  PR[10001,2]=PR[10001,2]-25    ;
  41:L PR[10001] 100mm/sec FINE    ;
  42:   ;
  43:  !  Mov X out ;
  44:  PR[10001,1]=PR[10001,1]-R[186:RowPitch]    ;
  45:L PR[10001] 100mm/sec FINE    ;
  46:  END ;
  47:   ;
  48:  !--------------------;
  49:  LBL[40:Box 4] ;
  50:  !--------------------;
/POS
/END
