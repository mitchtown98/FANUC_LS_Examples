/PROG  _BGL_KILL_VAC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 632;
CREATE		= DATE 23-09-12  TIME 22:43:54;
MODIFIED	= DATE 23-09-12  TIME 22:43:54;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 932;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  IF (!SO[3:Fault LED]) THEN ;
   2:  R[120:fault_flag]=0    ;
   3:  R[121:fault_time]=(0) ;
   4:  R[122:curr_time]=0    ;
   5:  R[123:time_diff]=0    ;
   6:  ENDIF ;
   7:   ;
   8:  IF (DO[101:VAC_ON]) THEN ;
   9:   ;
  10:  IF (SO[3:Fault LED] AND R[120:fault_flag]=0) THEN ;
  11:  R[120:fault_flag]=1    ;
  12:  R[121:fault_time]=($fast_clock) ;
  13:  R[122:curr_time]=0    ;
  14:  R[123:time_diff]=0    ;
  15:  ENDIF ;
  16:   ;
  17:  IF (SO[3:Fault LED] AND R[120:fault_flag]=1) THEN ;
  18:  R[122:curr_time]=($fast_clock) ;
  19:  R[123:time_diff]=R[122:curr_time]-R[121:fault_time]    ;
  20:  ENDIF ;
  21:   ;
  22:  IF (R[123:time_diff]>=R[124:VAC_OFF_TIMEOUT]) THEN ;
  23:  DO[101:VAC_ON]=OFF ;
  24:  ENDIF ;
  25:   ;
  26:  ENDIF ;
/POS
/END
