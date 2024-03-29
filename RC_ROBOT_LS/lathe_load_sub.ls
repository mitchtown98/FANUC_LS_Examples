/PROG  LATHE_LOAD_SUB
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 957;
CREATE		= DATE 23-11-21  TIME 02:52:52;
MODIFIED	= DATE 23-11-22  TIME 04:07:30;
FILE_NAME	= LATHE_LO;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 1329;
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
   1:  PR[12:JOINT OFFSET]=PR[12:JOINT OFFSET]-PR[12:JOINT OFFSET]    ;
   2:  IF (PR[81,6:MACH APPR]<0),PR[12,6:JOINT OFFSET]=(180) ;
   3:  IF (PR[81,6:MACH APPR]>=0),PR[12,6:JOINT OFFSET]=((-180)) ;
   4:J PR[80:MACHINE PERCH] 100% CNT20 Offset,PR[12:JOINT OFFSET]    ;
   5:  R[40:RECOVER START PR]=80    ;
   6:J PR[81:MACH APPR] 100% CNT20 Offset,PR[12:JOINT OFFSET]    ;
   7:  R[40:RECOVER START PR]=81    ;
   8:  IF (DO[79:SUBSPINDLE AIR BLOW ON]=ON) THEN ;
   9:  DO[190:SUB AIRBLOW COM]=PULSE,3.0sec ;
  10:  ENDIF ;
  11:  TIMER[3]=STOP ;
  12:  TIMER[3]=RESET ;
  13:  TIMER[3]=START ;
  14:  UFRAME_NUM=5 ;
  15:  UTOOL_NUM=1 ;
  16:  PR[34:APP Z TOOL OFF]=PR[30:CARTESIAN ZERO]    ;
  17:  PR[31:APP Z OFFS]=PR[30:CARTESIAN ZERO]    ;
  18:  PR[34,3:APP Z TOOL OFF]=PR[87,1:LOAD SUB]-R[284:MIN X SUB]    ;
  19:  PR[31,3:APP Z OFFS]=R[808:LOAD OFFSET]    ;
  20:J PR[87:LOAD SUB] 100% CNT10 Tool_Offset,PR[34:APP Z TOOL OFF] Offset,PR[31:APP Z OFFS]    ;
  21:  R[40:RECOVER START PR]=87    ;
  22:  WAIT (DO[190:SUB AIRBLOW COM]=OFF)    ;
  23:  CALL LATHE_ORIENT1_SUB    ;
  24:L PR[87:LOAD SUB] 100mm/sec FINE Offset,PR[31:APP Z OFFS]    ;
  25:  CALL T1_UNGRIP    ;
  26:  CALL LATHE_CLAMP_SUB    ;
  27:  R[57:LOAD X DROP]=R[55:T1 X DROP]    ;
  28:  R[58:LOAD Y DROP]=R[56:T1 Y DROP]    ;
  29:  R[55:T1 X DROP]=0    ;
  30:  R[56:T1 Y DROP]=0    ;
  31:  DO[105:MEAS LOAD ACTIVE]=OFF ;
  32:L PR[87:LOAD SUB] 2000mm/sec CNT10 Tool_Offset,PR[34:APP Z TOOL OFF] Offset,PR[31:APP Z OFFS]    ;
  33:  R[40:RECOVER START PR]=81    ;
  34:J PR[81:MACH APPR] 100% CNT20 Offset,PR[12:JOINT OFFSET]    ;
  35:  R[40:RECOVER START PR]=80    ;
  36:J PR[80:MACHINE PERCH] 100% CNT20 Offset,PR[12:JOINT OFFSET]    ;
  37:  TIMER[3]=STOP ;
  38:  R[122:SERVICE MACH TM]=TIMER[3]    ;
/POS
/END
