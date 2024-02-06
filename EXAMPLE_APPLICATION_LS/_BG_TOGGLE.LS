/PROG  _BG_TOGGLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 773;
CREATE		= DATE 21-11-23  TIME 13:02:30;
MODIFIED	= DATE 21-11-23  TIME 16:42:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1033;
PROTECT		= READ_WRITE;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !---Example of ONS and TOGGLE---! ;
   2:   ;
   3:  !---One Shot--- ;
   4:  F[1:OneShotFlag]=(OFF) ;
   5:   ;
   6:  IF (DI[1:SOME_INPUT] AND F[2:ScanFlag]=OFF),F[1:OneShotFlag]=(ON) ;
   7:  !---Increments just one shot--! ;
   8:  F[2:ScanFlag]=(DI[1:SOME_INPUT]) ;
   9:  IF (F[1:OneShotFlag]=ON),R[100]=(R[100]+1) ;
  10:   ;
  11:  !--Debouce/Timed Input--! ;
  12:  !    DI Triggers Counter  ;
  13:  IF (DI[2]=ON) THEN ;
  14:  R[101]=(R[101]+1) ;
  15:  ELSE ;
  16:  R[101]=1    ;
  17:  ENDIF ;
  18:   ;
  19:  !--8 ms scan time divide--! ;
  20:  !  by seconds to monitor ;
  21:  !  will give you MOD num ;
  22:  IF (R[101] MOD 312.5=0) THEN ;
  23:  F[3]=(ON) ;
  24:  ENDIF ;
  25:   ;
  26:  IF (F[3]=ON AND !DI[2]) THEN ;
  27:  F[3]=(OFF) ;
  28:  ENDIF ;
/POS
/END
