/PROG  SETUP_FINE_LENGTH
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PART LENGTH";
PROG_SIZE	= 2821;
CREATE		= DATE 22-07-25  TIME 17:32:12;
MODIFIED	= DATE 23-11-21  TIME 01:16:28;
FILE_NAME	= PART_LEN;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 3265;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:   ;
   2:  --eg:PICK RAW PART FROM NEXT AVAILABLE SLOT ;
   3:   ;
   4:  LBL[1:START] ;
   5:  CALL FAULT_MESSAGE('Robot is measuring the actual ','part length.') ;
   6:  COL GUARD ADJUST 100 ;
   7:  R[88:NOM SLOW mm/sec]=50    ;
   8:  R[89:NOM FAST mm/sec]=100    ;
   9:  IF DO[42:TABLE READY FOR SERVICE]=OFF,JMP LBL[9980] ;
  10:  IF DO[176:ALL TOOLS UNGRIPPED]=OFF,JMP LBL[9981] ;
  11:   ;
  12:   ;
  13:  --eg:SET R150 EQUAL TO THE POSITION REGISTER USED FOR THE ACTIVE TEMPLATE
    :  TYPE  ;
  14:  IF (R[1:ACTIVE TEMPLATE]=2),R[150:TABLE PICK PR]=(50) ;
  15:  IF (R[1:ACTIVE TEMPLATE]=3),R[150:TABLE PICK PR]=(51) ;
  16:  IF (R[1:ACTIVE TEMPLATE]=4),R[150:TABLE PICK PR]=(52) ;
  17:  IF (R[1:ACTIVE TEMPLATE]=5),R[150:TABLE PICK PR]=(53) ;
  18:  IF (R[1:ACTIVE TEMPLATE]=6),R[150:TABLE PICK PR]=(54) ;
  19:   ;
  20:J PR[10:TABLE PK POUNCE] 100% CNT20    ;
  21:  R[40:RECOVER START PR]=10    ;
  22:   ;
  23:  LBL[10:CALCULATE PICK] ;
  24:  --eg:WHEN PICKING THE FIRST PART FROM THE TABLE CALL THIS PROGRAM TO
    :  DETERMINE STARTING LOCATION BASED ON TEMPLATE TYPE ;
  25:  CALL FIRST_PICK_SLOT    ;
  26:  --eg:CALCULATE XYZ OF THE CURRENT SLOT ;
  27:  CALL CALC_PICK_OFFSET    ;
  28:  --eg:CALCULATE XYZ OF THE CURRENT SLOT ;
  29:  CALL CALC_PICK_R    ;
  30:   ;
  31:  LBL[100:MEASURE] ;
  32:  UTOOL_NUM=1 ;
  33:  IF (DI[1:TABLE AT A POSITION]=ON) THEN ;
  34:  UFRAME_NUM=1 ;
  35:  ELSE ;
  36:  UFRAME_NUM=2 ;
  37:  ENDIF ;
  38:  PR[34,3:APP Z TOOL OFF]=100    ;
  39:J PR[R[150]] 100% CNT10 Offset,PR[38:TABLE PCK OFFSET] Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  40:  R[46:COLLISION SENSE]=150    ;
  41:  R[40:RECOVER START PR]=R[150:TABLE PICK PR]    ;
  42:  PR[34,3:APP Z TOOL OFF]=0    ;
  43:  PR[38,3:TABLE PCK OFFSET]=0    ;
  44:  SKIP CONDITION RI[7:SPRING COMPRESSED]=ON    ;
  45:L PR[R[150]] R[88:NOM SLOW mm/sec]mm/sec FINE Offset,PR[38:TABLE PCK OFFSET] Tool_Offset,PR[34:APP Z TOOL OFF] Skip,LBL[180],PR[47:LPOS 1]=LPOS    ;
  46:  --eg:FINE TUNE MEASURE PART LENGTH OF FIRST PART ;
  47:  WAIT    .25(sec) ;
  48:  SKIP CONDITION RI[7:SPRING COMPRESSED]=OFF    ;
  49:  PR[34,3:APP Z TOOL OFF]=500    ;
  50:L PR[R[150]] 1mm/sec FINE Offset,PR[38:TABLE PCK OFFSET] Tool_Offset,PR[34:APP Z TOOL OFF] Skip,LBL[180],PR[47:LPOS 1]=LPOS    ;
  51:L PR[47:LPOS 1] 200mm/sec FINE    ;
  52:   ;
  53:  WAIT    .10(sec) ;
  54:  R[67:MEAS PART LENGTH]=PR[47,3:LPOS 1]    ;
  55:  IF (DI[1:TABLE AT A POSITION]=ON) THEN ;
  56:  R[67:MEAS PART LENGTH]=R[67:MEAS PART LENGTH]+R[74:SPRING DIST A]    ;
  57:  ELSE ;
  58:  R[67:MEAS PART LENGTH]=R[67:MEAS PART LENGTH]+R[83:SPRING DIST B]    ;
  59:  ENDIF ;
  60:  R[2:CUR ROW PICK (X)]=1    ;
  61:  R[3:CUR COL PICK (Y)]=1    ;
  62:  PR[34,3:APP Z TOOL OFF]=R[67:MEAS PART LENGTH]+100    ;
  63:L PR[R[150]] 2000mm/sec CNT20 Offset,PR[38:TABLE PCK OFFSET] Tool_Offset,PR[34:APP Z TOOL OFF]    ;
  64:J PR[10:TABLE PK POUNCE] 100% CNT30    ;
  65:   ;
  66:  IF (DO[104:NEW PART ACTIVE]=OFF) THEN ;
  67:  R[136:TOLERANCE]=R[132:LAST LENGTH]*R[133:TOLERANCE %]    ;
  68:  R[134:MIN TOLERANCE]=R[132:LAST LENGTH]-R[136:TOLERANCE]    ;
  69:  R[135:MAX TOLERANCE]=R[132:LAST LENGTH]+R[136:TOLERANCE]    ;
  70:  IF (R[67:MEAS PART LENGTH]<R[134:MIN TOLERANCE] OR R[67:MEAS PART LENGTH]>R[135:MAX TOLERANCE]) THEN ;
  71:  R[40:RECOVER START PR]=1    ;
  72:J PR[1:HOME POSITION] 100% CNT5    ;
  73:  CALL TABLE_MSG(24) ;
  74:  UALM[11] ;
  75:  JMP LBL[1] ;
  76:  ENDIF ;
  77:  ENDIF ;
  78:   ;
  79:  IF (DO[104:NEW PART ACTIVE]=ON) THEN ;
  80:  R[132:LAST LENGTH]=R[67:MEAS PART LENGTH]    ;
  81:  ENDIF ;
  82:  DO[115:FINE LENGTH CHECKED]=ON ;
  83:  IF (R[1:ACTIVE TEMPLATE]=2 AND R[67:MEAS PART LENGTH]>127) THEN ;
  84:  R[23:ROW 5 STOP COL]=21    ;
  85:  R[27:ROW 7 STOP COL]=21    ;
  86:  R[29:ROW 8 STOP COL]=21    ;
  87:  R[31:ROW 9 STOP COL]=21    ;
  88:  ENDIF ;
  89:  IF (R[1:ACTIVE TEMPLATE]=3 AND R[67:MEAS PART LENGTH]>127) THEN ;
  90:  R[25:ROW 6 STOP COL]=14    ;
  91:  ENDIF ;
  92:   ;
  93:  JMP LBL[9999] ;
  94:   ;
  95:  LBL[180:PART NOT FOUND] ;
  96:  CALL LASER_MSG(10) ;
  97:  UALM[19] ;
  98:  JMP LBL[100] ;
  99:   ;
 100:  LBL[9980:FAULT] ;
 101:  CALL TABLE_MSG(2) ;
 102:  UALM[11] ;
 103:  JMP LBL[1] ;
 104:   ;
 105:  LBL[9981:FAULT] ;
 106:  CALL TABLE_MSG(5) ;
 107:  UALM[11] ;
 108:  JMP LBL[1] ;
 109:   ;
 110:  LBL[9982:FAULT] ;
 111:  CALL TABLE_MSG(4) ;
 112:  UALM[11] ;
 113:  JMP LBL[1] ;
 114:   ;
 115:  LBL[9983:FAULT] ;
 116:  CALL TABLE_MSG(9) ;
 117:  UALM[11] ;
 118:  JMP LBL[1] ;
 119:   ;
 120:  LBL[9999:END] ;
 121:  R[40:RECOVER START PR]=10    ;
 122:J PR[10:TABLE PK POUNCE] 100% CNT30    ;
 123:  CALL MESSAGE19    ;
 124:  R[40:RECOVER START PR]=1    ;
 125:J PR[1:HOME POSITION] 100% CNT5    ;
 126:  CALL MESSAGE19    ;
 127:  CALL MESSAGE20    ;
/POS
/END
