/PROG  D10086450_A
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FIND PLUG";
PROG_SIZE	= 1620;
CREATE		= DATE 21-01-06  TIME 10:28:22;
MODIFIED	= DATE 21-01-07  TIME 07:52:36;
FILE_NAME	= P1003302;
VERSION		= 0;
LINE_COUNT	= 55;
MEMORY_SIZE	= 2056;
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
   1:  !CONMET                           ;
   2:  !MARCH 2020                    ;
   3:  !PROGRAMMED BY: DELANYO OFORI    ;
   4:   ;
   5:  !******************************** ;
   6:  !          ORIENT PART FASTER     ;
   7:  !******************************** ;
   8:  LBL[10:FINE ORIENT] ;
   9:  UFRAME_NUM=0 ;
  10:  UTOOL_NUM=3 ;
  11:  DO[40:OFF:VISION LIGHT]=ON ;
  12:  R[321:NFOUND ROUGH]=0    ;
  13:  R[322:NFOUND FINE]=0    ;
  14:  R[323:VISION FAILED]=0    ;
  15:  R[324:RFG SRCH SCORE]=0    ;
  16:  R[325:FINE SRCH SCORE]=0    ;
  17:  !ROUGH SEARCH ;
  18:  R[70:VIS ATTEMPTS]=0    ;
  19:  R[71:VIS ATTMPT MAX]=15    ;
  20:  F[17:OFF:ABORT VISION]=(OFF) ;
  21:  RUN LOCATE_PLUG ;
  22:  SKIP CONDITION R[321:NFOUND ROUGH]>0    ;
  23:   ;
  24:  LBL[20] ;
  25:  PR[26:OFFSET]=LPOS-LPOS    ;
  26:  PR[27:TOOL OFFSET]=LPOS-LPOS    ;
  27:  PR[26,3:OFFSET]=10    ;
  28:  PR[27,6:TOOL OFFSET]=(-65)    ;
  29:L P[13:ORIENT DROP] 18deg/sec FINE Skip,LBL[29] Offset,PR[26:OFFSET] Tool_Offset,PR[27:TOOL OFFSET]    ;
  30:   ;
  31:  LBL[29] ;
  32:  IF (R[321:NFOUND ROUGH]=0),JMP LBL[30] ;
  33:  JMP LBL[99] ;
  34:   ;
  35:  !1st ROUGH SEARCH ATTEMPT FAILED ;
  36:  LBL[30:ORIENT PLUG] ;
  37:  PR[30:LPOS]=LPOS    ;
  38:  PR[27:TOOL OFFSET]=LPOS-LPOS    ;
  39:  PR[27,3:TOOL OFFSET]=(-8)    ;
  40:L PR[30:LPOS] 3000mm/sec FINE Offset,PR[27:TOOL OFFSET]    ;
  41:  CALL OPEN_T1    ;
  42:  WAIT RI[1:OFF:TOOL 1 OPENED]=ON    ;
  43:L P[13:ORIENT DROP] 3000mm/sec FINE    ;
  44:  CALL CLOSE_T1    ;
  45:  PR[27:TOOL OFFSET]=LPOS-LPOS    ;
  46:  PR[27,3:TOOL OFFSET]=10    ;
  47:L P[13:ORIENT DROP] 3000mm/sec FINE Offset,PR[27:TOOL OFFSET]    ;
  48:  R[70:VIS ATTEMPTS]=R[70:VIS ATTEMPTS]+1    ;
  49:  IF (R[70:VIS ATTEMPTS]<=R[71:VIS ATTMPT MAX]),JMP LBL[20] ;
  50:  JMP LBL[60] ;
  51:   ;
  52:  LBL[60] ;
  53:  R[323:VISION FAILED]=1    ;
  54:  LBL[99:END OF PROGRAM] ;
  55:  DO[40:OFF:VISION LIGHT]=OFF ;
/POS
P[13:"ORIENT DROP"]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =   907.288  mm,	Y = -1087.398  mm,	Z =   163.976  mm,
	W =      .418 deg,	P =     -.220 deg,	R =  -163.161 deg
};
/END
