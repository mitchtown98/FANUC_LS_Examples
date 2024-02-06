/PROG  _Z_GET_1ST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1783;
CREATE		= DATE 23-10-20  TIME 16:20:48;
MODIFIED	= DATE 23-10-23  TIME 08:35:44;
FILE_NAME	= SNAPPICA;
VERSION		= 0;
LINE_COUNT	= 69;
MEMORY_SIZE	= 2283;
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
   1:  OVERRIDE=R[40:Pick_Speed] ;
   2:  UFRAME_NUM=2 ;
   3:  UTOOL_NUM=1 ;
   4:   ;
   5:J P[2] 100% CNT100    ;
   6:   ;
   7:  PAYLOAD[1] ;
   8:   ;
   9:  LBL[10:Start] ;
  10:  WAIT DI[17:Part At Infeed Conveyr]=ON    ;
  11:  PR[46,1:GET_STK_OFFSET]=0    ;
  12:  PR[46,3:GET_STK_OFFSET]=0    ;
  13:  PR[46,1:GET_STK_OFFSET]=0    ;
  14:   ;
  15:  //VISION RUN_FIND 'DEPAL_FULLSTACK'    ;
  16:  //VISION GET_OFFSET 'DEPAL_FULLSTACK' VR[1] JMP LBL[1] ;
  17:  PR[49]=VR[1].OFFSET ;
  18:   ;
  19:  PR[49,1:TCHSKP_TSTOFFST]=PR[49,1:TCHSKP_TSTOFFST]+155    ;
  20:   ;
  21:  PR[49,3:TCHSKP_TSTOFFST]=PR[49,3:TCHSKP_TSTOFFST]+200    ;
  22:   ;
  23:  !** First Approach ;
  24:J P[1] 100% CNT80    ;
  25:   ;
  26:  !** Pick Approach ;
  27:L PR[47:STACK_PICK_POS.] 3000mm/sec FINE Offset,PR[49:TCHSKP_TSTOFFST]    ;
  28:   ;
  29:  !** Set Collision and Skip ;
  30:  CALL SETSKCOL(1,1) ;
  31:  CALL CLSKP_G1    ;
  32:  RO[1:Retract Magnent]=OFF ;
  33:   ;
  34:  PR[49,3:TCHSKP_TSTOFFST]=PR[49,3:TCHSKP_TSTOFFST]-300    ;
  35:  PR[49,6:TCHSKP_TSTOFFST]=0    ;
  36:   ;
  37:  R[11:PickZ]=PR[49,3:TCHSKP_TSTOFFST]    ;
  38:  IF R[11:PickZ]>=(-464),JMP LBL[20] ;
  39:   ;
  40:  PR[49,3:TCHSKP_TSTOFFST]=(-440)    ;
  41:  !** Search Down To Pick ;
  42:  LBL[20] ;
  43:L PR[47:STACK_PICK_POS.] 100mm/sec FINE Skip,LBL[100],PR[48:TCHSKP_TSTPOS]=LPOS Offset,PR[49:TCHSKP_TSTOFFST]    ;
  44:   ;
  45:  PR[48,3:TCHSKP_TSTPOS]=PR[48,3:TCHSKP_TSTPOS]-3    ;
  46:  PR[46,3:GET_STK_OFFSET]=PR[46,3:GET_STK_OFFSET]+400    ;
  47:  WAIT   0.00(sec) ;
  48:   ;
  49:  !** Part Detected & Retreat ;
  50:L PR[48:TCHSKP_TSTPOS] 1000mm/sec FINE Offset,PR[46:GET_STK_OFFSET] ACC75    ;
  51:   ;
  52:  R[5:VIS_Z]=PR[48,3:TCHSKP_TSTPOS]    ;
  53:  R[6:STACK_CYCLE]=0    ;
  54:  R[3:CROWD_CYCLE]=1    ;
  55:   ;
  56:  END ;
  57:   ;
  58:  !** No Part Detected ;
  59:  LBL[100:NoPart] ;
  60:  //IF RI[1:Magnent SLOW DOWN]=ON AND RI[3:Magnent PP]=ON,JMP LBL[12] ;
  61:   ;
  62:  !** Goes to Stack Count ;
  63:J P[1] 100% CNT80    ;
  64:   ;
  65:  LBL[1] ;
  66:  JMP LBL[10] ;
  67:   ;
  68:  LBL[12:StackCount] ;
  69:  R[2:STACK_COUNT]=1    ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   116.352  mm,	Y =  -714.851  mm,	Z =   646.197  mm,
	W =  -179.530 deg,	P =    -1.285 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -801.618  mm,	Y = -1866.024  mm,	Z =   763.281  mm,
	W =   179.797 deg,	P =      .473 deg,	R =     2.004 deg
};
/END
