/PROG  MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Main";
PROG_SIZE	= 2233;
CREATE		= DATE 17-12-21  TIME 08:46:26;
MODIFIED	= DATE 20-10-17  TIME 20:24:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 92;
MEMORY_SIZE	= 2705;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !******************************** ;
   2:  !Main Routine ;
   3:  !******************************** ;
   4:  OVERRIDE=R[6:SPEED] ;
   5:  CALL MOVE_SAFE    ;
   6:   ;
   7:  !******************************** ;
   8:  LBL[1] ;
   9:  DO[10:OFF:PREHEATING]=OFF ;
  10:   ;
  11:   ;
  12:  IF R[32:REQUEST TO ENT]=1,JMP LBL[80] ;
  13:  JMP LBL[81] ;
  14:  LBL[80] ;
  15:  R[32:REQUEST TO ENT]=0    ;
  16:  PAUSE ;
  17:  LBL[81] ;
  18:  IF (DI[11:OFF:PROBE 1]=ON),DO[13:OFF:PROBE FAULT]=(ON) ;
  19:  CALL UPDATE_PLC    ;
  20:  OVERRIDE=R[6:SPEED] ;
  21:  !******************************** ;
  22:  IF R[5:ABORT]=1,CALL ABORT ;
  23:  IF DI[10:OFF:PRE HEAT LADLE]=ON,CALL PREHEAT ;
  24:  IF R[28:SERVICE]=1,CALL SERVICE ;
  25:  IF DI[1:OFF:Sta 1 Cyc Start]=ON,JMP LBL[10] ;
  26:  IF DI[3:OFF:Sta 2 Cyc Start]=ON,JMP LBL[20] ;
  27:  IF DI[5:OFF:Sta 3 Cyc Start]=ON,JMP LBL[30] ;
  28:  IF DI[7:OFF:Sta 4 Cyc Start]=ON,JMP LBL[40] ;
  29:  JMP LBL[1] ;
  30:  !******************************** ;
  31:  !******************************** ;
  32:   ;
  33:   ;
  34:   ;
  35:  !******************************** ;
  36:  LBL[10:Station 1] ;
  37:  !******************************** ;
  38:  R[14:CUR STATION]=1    ;
  39:  R[11:Fill Part Num]=R[1:Station 1 PN]    ;
  40:  CALL FILL_LADLE    ;
  41:  CALL STATION_1    ;
  42:  JMP LBL[1] ;
  43:  !******************************** ;
  44:  !******************************** ;
  45:   ;
  46:   ;
  47:   ;
  48:  !******************************** ;
  49:  LBL[20:Station 2] ;
  50:  !******************************** ;
  51:  R[14:CUR STATION]=2    ;
  52:  R[11:Fill Part Num]=R[2:Station 2 PN]    ;
  53:  CALL FILL_LADLE    ;
  54:  CALL STATION_2    ;
  55:  JMP LBL[1] ;
  56:  !******************************** ;
  57:  !******************************** ;
  58:   ;
  59:   ;
  60:   ;
  61:  !******************************** ;
  62:  LBL[30:Station 3] ;
  63:  !******************************** ;
  64:  R[14:CUR STATION]=3    ;
  65:  R[11:Fill Part Num]=R[3:Station 3 PN]    ;
  66:  CALL FILL_LADLE    ;
  67:   ;
  68:  IF DO[13:OFF:PROBE FAULT]=ON,JMP LBL[1] ;
  69:   ;
  70:   ;
  71:  CALL STATION_3    ;
  72:  JMP LBL[1] ;
  73:  !******************************** ;
  74:  !******************************** ;
  75:   ;
  76:   ;
  77:   ;
  78:  !******************************** ;
  79:  LBL[40:Station 4] ;
  80:  !******************************** ;
  81:  R[14:CUR STATION]=4    ;
  82:  R[11:Fill Part Num]=R[4:Station 4 PN]    ;
  83:  CALL FILL_LADLE    ;
  84:  CALL STATION_4    ;
  85:  JMP LBL[1] ;
  86:  !******************************** ;
  87:  !******************************** ;
  88:   ;
  89:   ;
  90:  !******************************** ;
  91:  LBL[99:End] ;
  92:  !******************************** ;
/POS
/END
