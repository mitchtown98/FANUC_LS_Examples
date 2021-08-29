/PROG  OPEN_TOOL_2_A
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 826;
CREATE		= DATE 20-09-03  TIME 14:59:30;
MODIFIED	= DATE 20-09-04  TIME 05:29:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1338;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  LBL[1:START] ;
   2:   ;
   3:  UTOOL_NUM=2 ;
   4:  UFRAME_NUM=1 ;
   5:   ;
   6:  MONITOR END MON_T2 ;
   7:  $WAITTMOUT=400 ;
   8:  RO[R[101]]=ON ;
   9:  PR[100]=LPOS    ;
  10:   ;
  11:  PR[99,6:WIGGLE_VECTOR]=(-10)    ;
  12:   ;
  13:   ;
  14:   ;
  15:   ;
  16:   ;
  17:L PR[100] 10mm/sec FINE Offset,PR[99:WIGGLE_VECTOR]    ;
  18:L PR[100] 10mm/sec FINE    ;
  19:   ;
  20:  PR[99,4:WIGGLE_VECTOR]=10    ;
  21:   ;
  22:   ;
  23:L PR[100] 10mm/sec FINE Offset,PR[99:WIGGLE_VECTOR]    ;
  24:L PR[100] 10mm/sec FINE    ;
  25:L PR[100] 10mm/sec FINE Offset,PR[99:WIGGLE_VECTOR]    ;
  26:L PR[100] 10mm/sec FINE    ;
  27:L PR[100] 10mm/sec FINE Offset,PR[99:WIGGLE_VECTOR]    ;
  28:L PR[100] 10mm/sec FINE    ;
  29:L PR[100] 10mm/sec FINE    ;
  30:  PR[99,4:WIGGLE_VECTOR]=0    ;
  31:  PR[99,5:WIGGLE_VECTOR]=0    ;
  32:  LBL[888] ;
  33:  WAIT RI[R[104]]=ON TIMEOUT,LBL[9990] ;
  34:  WAIT    .50(sec) ;
  35:  JMP LBL[9999] ;
  36:   ;
  37:  LBL[9990:GRIPPER FAULT] ;
  38:  !  28[25:Gripper Fault Ct]=R[25:G ;
  39:  CALL GRIP_MSG(10) ;
  40:  UALM[R[111]] ;
  41:  JMP LBL[1] ;
  42:   ;
  43:  LBL[9999:END] ;
  44:  CALL PAYLOAD    ;
/POS
/END
