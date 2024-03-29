/PROG  TS1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "TORQUE SKIP";
PROG_SIZE	= 898;
CREATE		= DATE 18-02-15  TIME 08:37:46;
MODIFIED	= DATE 18-02-15  TIME 08:38:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1354;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  WAIT   2.00(sec) ;
   2:  R[39:PREVIOUS OVERRD]=($MCR.$GENOVERRIDE) ;
   3:  OVERRIDE=10% ;
   4:  //R[8:MAX TORQUE]=1.25    ;
   5:  SKIP CONDITION R[9:TORQUE DETECTED]=1    ;
   6:  PR[25,6:ORIENT OFFSET]=(-25)    ;
   7:L P[1:LD/UNLD CMM STD1] 5mm/sec FINE Offset,PR[24:CMM STD APP Z] Tool_Offset,PR[25:ORIENT OFFSET] Skip,LBL[921] ACC10    ;
   8:  JMP LBL[922] ;
   9:   ;
  10:  LBL[921:TORQUE FAILED] ;
  11:   ;
  12:  JMP LBL[921] ;
  13:   ;
  14:  LBL[922:TORQUE COMPLETE] ;
  15:  PR[30:LPOS]=LPOS    ;
  16:  PR[30,6:LPOS]=PR[30,6:LPOS]+.5    ;
  17:L PR[30:LPOS] 5mm/sec FINE    ;
  18:  PR[30,3:LPOS]=PR[30,3:LPOS]-PR[24,3:CMM STD APP Z]    ;
  19:L PR[30:LPOS] 100mm/sec FINE    ;
  20:  OVERRIDE=R[39:PREVIOUS OVERRD] ;
/POS
P[1:"LD/UNLD CMM STD1"]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1936.145  mm,	Y =  7422.668  mm,	Z = -2108.892  mm,
	W =     -.118 deg,	P =      .025 deg,	R =   -91.817 deg,
	E1=  7895.863  mm
};
/END
