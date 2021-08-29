/PROG  LOAD	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "macro Load";
PROG_SIZE	= 629;
CREATE		= DATE 19-12-11  TIME 14:08:04;
MODIFIED	= DATE 20-01-14  TIME 08:36:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 921;
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
/MN
   1:  !Load() ;
   2:   ;
   3:  IF ((R[18:PART PRES CHUCK]=1) OR (R[11:PART PRES T1]=0) OR DI[124:ChuckIsOpen]=OFF),CALL ERROR(5) ;
   4:   ;
   5:  UFRAME_NUM=2 ;
   6:  UTOOL_NUM=1 ;
   7:   ;
   8:  CALL PLACE_PART(2) ;
   9:   ;
  10:  !CloseChuck ;
  11:  CloseChuck    ;
  12:   ;
  13:  CALL CHK_CHUCK_STATUS(0,1,5) ;
  14:  R[18:PART PRES CHUCK]=1    ;
  15:   ;
  16:  ! Open Hand 1 ;
  17:  OpenHand    ;
  18:   ;
  19:  CALL CHK_GRIP_STATUS(1,0,1,1) ;
  20:   ;
  21:  R[11:PART PRES T1]=0    ;
  22:   ;
  23:L PR[2:LOAD PT] 100mm/sec CNT40 Offset,PR[11:OFFSET Z]    ;
  24:   ;
  25:L PR[2:LOAD PT] 150mm/sec CNT40 Offset,PR[10:OFFSET Y Z]    ;
  26:   ;
  27:L PR[2:LOAD PT] 800mm/sec CNT20 Offset,PR[7:SAFE Z OFFSET] RT_LDR[3]    ;
  28:   ;
/POS
/END
