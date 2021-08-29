/PROG  FILL_LADLE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1567;
CREATE		= DATE 19-11-12  TIME 04:51:34;
MODIFIED	= DATE 20-10-18  TIME 17:54:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 60;
MEMORY_SIZE	= 1999;
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
   1:  R[10:Current Process]=10    ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  IF R[14:CUR STATION]=1,CALL PROD_SELECT_ST1 ;
   5:  IF R[14:CUR STATION]=2,CALL PROD_SELECT_ST2 ;
   6:  IF R[14:CUR STATION]=3,CALL PROD_SELECT_ST3 ;
   7:  IF R[14:CUR STATION]=4,CALL PROD_SELECT_ST4 ;
   8:   ;
   9:   ;
  10:   ;
  11:   ;
  12:   ;
  13:L PR[5:Above Dip] R[18:L SPEED WO ALUM]mm/sec CNT100 ACC80    ;
  14:   ;
  15:   ;
  16:  OVERRIDE=100% ;
  17:   ;
  18:L PR[6:Dip Search Start] R[19:L SPEED W ALUM]mm/sec CNT50 ACC80    ;
  19:   ;
  20:  SKIP CONDITION DI[11:OFF:PROBE 1]=ON    ;
  21:   ;
  22:L P[1] R[30:SEARCH SPEED]mm/sec FINE Skip,LBL[10]    ;
  23:  JMP LBL[11] ;
  24:   ;
  25:   ;
  26:  LBL[10:Not found] ;
  27:  DO[13:OFF:PROBE FAULT]=ON ;
  28:  JMP LBL[88] ;
  29:   ;
  30:   ;
  31:  LBL[11:Found] ;
  32:  OVERRIDE=R[6:SPEED] ;
  33:  R[15:Search Not Com]=0    ;
  34:  PR[12:LPOS]=LPOS    ;
  35:  PR[12,3:LPOS]=PR[12,3:LPOS]-0    ;
  36:L PR[12:LPOS] R[30:SEARCH SPEED]mm/sec CNT25    ;
  37:  WAIT R[7] ;
  38:  PR[12:LPOS]=LPOS    ;
  39:  PR[12,3:LPOS]=PR[12,3:LPOS]+250    ;
  40:L PR[12:LPOS] R[30:SEARCH SPEED]mm/sec CNT25    ;
  41:   ;
  42:  CALL SPILL_OFF    ;
  43:  WAIT R[12] ;
  44:L P[2] 6mm/sec FINE    ;
  45:   ;
  46:   ;
  47:  JMP LBL[99] ;
  48:   ;
  49:   ;
  50:  LBL[88] ;
  51:   ;
  52:   ;
  53:L P[4] R[68:1ST ABORT POS SP]mm/sec FINE    ;
  54:L P[5] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  55:L P[6] R[70:ABORT POUR SPEED]deg/sec FINE ACC25    ;
  56:   ;
  57:L P[3] R[19:L SPEED W ALUM]mm/sec FINE ACC100    ;
  58:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
  59:   ;
  60:  LBL[99] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.185  mm,	Y =      .046  mm,	Z =   700.000  mm,
	W =   134.639 deg,	P =    -1.707 deg,	R =    87.714 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1188.855  mm,
	W =   135.119 deg,	P =   -13.490 deg,	R =    87.650 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.184  mm,	Y =      .046  mm,	Z =  1188.855  mm,
	W =   134.789 deg,	P =    -5.442 deg,	R =    87.705 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =    86.448  mm,	Z =  1178.332  mm,
	W =   133.695 deg,	P =    20.768 deg,	R =    87.556 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =   332.848  mm,	Z =  1023.131  mm,
	W =   131.435 deg,	P =    53.828 deg,	R =    86.128 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =   332.847  mm,	Z =   821.530  mm,
	W =    25.318 deg,	P =    87.581 deg,	R =   -19.231 deg
};
/END
