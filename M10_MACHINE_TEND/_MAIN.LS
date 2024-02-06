/PROG  _MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2079;
CREATE		= DATE 16-12-01  TIME 22:30:24;
MODIFIED	= DATE 16-12-07  TIME 07:43:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 93;
MEMORY_SIZE	= 2651;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !-------------------- ;
   2:  !-------------------- ;
   3:  CALL _INIT    ;
   4:   ;
   5:  !-------------------- ;
   6:  LBL[7] ;
   7:  !-------------------- ;
   8:  IF (!RI[2:Gripper Opened] AND !RI[3:Gripper Closed]) THEN ;
   9:  UALM[26] ;
  10:  END ;
  11:  ELSE ;
  12:  R[2:EOATstatus]=0    ;
  13:  ENDIF ;
  14:   ;
  15:  !-------------------- ;
  16:  LBL[8] ;
  17:  !-------------------- ;
  18:  IF DO[103:WPH OPEN]=ON,JMP LBL[9] ;
  19:  UALM[24] ;
  20:  //CALL PROMPTOK(2) ;
  21:  END ;
  22:   ;
  23:  !-------------------- ;
  24:  LBL[9] ;
  25:  !-------------------- ;
  26:  IF $REFPOS1[1].$ATPERCH=1,JMP LBL[10] ;
  27:  UALM[25] ;
  28:  //CALL PROMPTOK(1) ;
  29:  END ;
  30:   ;
  31:  !-------------------- ;
  32:  LBL[10] ;
  33:  !-------------------- ;
  34:  CALL _SCAN_RAW    ;
  35:  CALL _PICK_RAW    ;
  36:  CALL _MT_PERCH_IN    ;
  37:  WAIT ((DI[1:SERVICE REQUEST] OR DI[2:WORK INSTALL.REQ.]) AND DI[9:WORK L/UL POS])    ;
  38:  CALL _DOOR_OPEN    ;
  39:  CALL _MT_LOAD    ;
  40:  CALL _MT_PERCH_OUT    ;
  41:  CALL _DOOR_CLOSE    ;
  42:  CALL _MT_LOAD_COMPLETE    ;
  43:  //RUN _MT_LOAD_COMPLETE ;
  44:  WAIT   2.00(sec) ;
  45:  WAIT DI[9:WORK L/UL POS]=ON    ;
  46:  WAIT ((DI[1:SERVICE REQUEST] OR DI[2:WORK INSTALL.REQ.]) AND DI[9:WORK L/UL POS])    ;
  47:  CALL _DOOR_OPEN    ;
  48:  CALL _MT_UNLOAD    ;
  49:  CALL _MT_PERCH_OUT    ;
  50:  CALL _MT_UNLOAD_COMPLETE    ;
  51:  //RUN _MT_UNLOAD_COMPLETE ;
  52:  CALL _TOWARDS_FINISHED    ;
  53:  CALL _SCAN_FINISHED    ;
  54:  IF (DI[167:CycleStopReq] AND R[22:FINCOLINDEX]=4) THEN ;
  55:  CALL _HOME    ;
  56:  CALL _SCAN_RAW    ;
  57:  CALL _PLACE_RAW    ;
  58:  ELSE ;
  59:  CALL _PLACE_FINISHED    ;
  60:  ENDIF ;
  61:  IF DI[167:CycleStopReq]=ON,JMP LBL[100] ;
  62:  IF R[22:FINCOLINDEX]>=4,JMP LBL[20] ;
  63:  JMP LBL[10] ;
  64:   ;
  65:  !-------------------- ;
  66:  LBL[20] ;
  67:  !-------------------- ;
  68:  CALL _HOME    ;
  69:  WAIT   1.00(sec) ;
  70:  !------ ;
  71:  LBL[21] ;
  72:  !------ ;
  73:  CALL _SCAN_FINISHED    ;
  74:  CALL _PICK_FINISHED    ;
  75:  CALL _SCAN_RAW    ;
  76:  CALL _PLACE_RAW    ;
  77:  IF R[22:FINCOLINDEX]<4,JMP LBL[21] ;
  78:  CALL _SCAN_FINISHED_INIT    ;
  79:  CALL _HOME    ;
  80:  R[190:CycleCount]=R[190:CycleCount]+1    ;
  81:  WAIT   3.00(sec) ;
  82:  IF DI[167:CycleStopReq]=ON,JMP LBL[100] ;
  83:  JMP LBL[10] ;
  84:   ;
  85:  !-------------------- ;
  86:  LBL[100] ;
  87:  !-------------------- ;
  88:  CALL _HOME    ;
  89:  DO[15:Cycle Stop Req.]=ON ;
  90:  WAIT DI[3:WORK REMOV. REQ.]=ON    ;
  91:  DO[15:Cycle Stop Req.]=OFF ;
  92:  DO[3:CYCLE STOP OK]=PULSE,1.0sec ;
  93:  CALL _DOOR_CLOSE    ;
/POS
/END
