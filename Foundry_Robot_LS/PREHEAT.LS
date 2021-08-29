/PROG  PREHEAT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2103;
CREATE		= DATE 17-12-27  TIME 12:14:18;
MODIFIED	= DATE 20-01-15  TIME 23:18:52;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 2583;
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
   1:   ;
   2:  UTOOL_NUM=1 ;
   3:J PR[1:Home] R[23:J SPEED W ALUM]% CNT100    ;
   4:  DO[10:OFF:PREHEATING]=ON ;
   5:  R[27:PRE_HEAT]=0    ;
   6:J P[1] R[23:J SPEED W ALUM]% CNT50    ;
   7:   ;
   8:L PR[2:PRE HEAT] R[18:L SPEED WO ALUM]mm/sec FINE    ;
   9:  !WAIT 5 MINS ;
  10:  WAIT 300.00(sec) ;
  11:  !WAIT 5 MINS ;
  12:  WAIT 300.00(sec) ;
  13:  !WAIT 5 MINS ;
  14:  WAIT 300.00(sec) ;
  15:   ;
  16:  SKIP CONDITION DI[11:OFF:PROBE 1]=ON    ;
  17:   ;
  18:  PR[75:LPOS]=LPOS    ;
  19:  PR[75,3:LPOS]=PR[75,3:LPOS]-100    ;
  20:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE Skip,LBL[50]    ;
  21:  JMP LBL[55] ;
  22:  LBL[50] ;
  23:  !WAIT 5 MINS ;
  24:  WAIT 300.00(sec) ;
  25:  !WAIT 5 MINS ;
  26:  WAIT 300.00(sec) ;
  27:   ;
  28:  PR[75:LPOS]=LPOS    ;
  29:  PR[75,3:LPOS]=PR[75,3:LPOS]-100    ;
  30:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE Skip,LBL[51]    ;
  31:  JMP LBL[55] ;
  32:  LBL[51] ;
  33:  !WAIT 5 MINS ;
  34:  WAIT 300.00(sec) ;
  35:  !WAIT 5 MINS ;
  36:  WAIT 300.00(sec) ;
  37:   ;
  38:  PR[75:LPOS]=LPOS    ;
  39:  PR[75,3:LPOS]=PR[75,3:LPOS]-100    ;
  40:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE Skip,LBL[52]    ;
  41:  JMP LBL[55] ;
  42:  LBL[52] ;
  43:   ;
  44:  !WAIT 5 MINS ;
  45:  WAIT 300.00(sec) ;
  46:  !WAIT 5 MINS ;
  47:  WAIT 300.00(sec) ;
  48:   ;
  49:  PR[75:LPOS]=LPOS    ;
  50:  PR[75,3:LPOS]=PR[75,3:LPOS]-100    ;
  51:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE Skip,LBL[53]    ;
  52:  JMP LBL[55] ;
  53:  LBL[53] ;
  54:  !WAIT 5 MINS ;
  55:  WAIT 300.00(sec) ;
  56:   ;
  57:  PR[75:LPOS]=LPOS    ;
  58:  PR[75,3:LPOS]=PR[75,3:LPOS]-100    ;
  59:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE Skip,LBL[54]    ;
  60:  JMP LBL[55] ;
  61:  LBL[54] ;
  62:  !WAIT 5 MINS ;
  63:  WAIT 300.00(sec) ;
  64:  !WAIT 5 MINS ;
  65:  WAIT 300.00(sec) ;
  66:   ;
  67:   ;
  68:  LBL[55] ;
  69:   ;
  70:  PR[75:LPOS]=LPOS    ;
  71:  PR[75,3:LPOS]=PR[75,3:LPOS]-25    ;
  72:L PR[75:LPOS] R[19:L SPEED W ALUM]mm/sec FINE    ;
  73:   ;
  74:  !WAIT 5 MINS ;
  75:  WAIT 300.00(sec) ;
  76:L PR[2:PRE HEAT] R[19:L SPEED W ALUM]mm/sec CNT50    ;
  77:   ;
  78:  !EMPTY LADDLE ;
  79:   ;
  80:   ;
  81:   ;
  82:L P[4] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  83:  WAIT  15.00(sec) ;
  84:L P[3] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  85:  WAIT  15.00(sec) ;
  86:L P[2] 40mm/sec FINE    ;
  87:  !WAIT 5 MINS ;
  88:  WAIT  15.00(sec) ;
  89:L P[3] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  90:L P[4] R[19:L SPEED W ALUM]mm/sec CNT25    ;
  91:   ;
  92:L PR[2:PRE HEAT] R[19:L SPEED W ALUM]mm/sec CNT50    ;
  93:   ;
  94:  R[27:PRE_HEAT]=0    ;
  95:   ;
  96:J PR[1:Home] R[23:J SPEED W ALUM]% FINE    ;
  97:   ;
  98:  DO[10:OFF:PREHEATING]=OFF ;
  99:  R[27:PRE_HEAT]=0    ;
 100:   ;
 101:   ;
 102:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.384  mm,	Y =      .046  mm,	Z =  1292.053  mm,
	W =   134.639 deg,	P =    -1.707 deg,	R =    87.714 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =   332.847  mm,	Z =   821.530  mm,
	W =    25.318 deg,	P =    87.581 deg,	R =   -19.231 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =   332.848  mm,	Z =  1023.131  mm,
	W =   131.435 deg,	P =    53.828 deg,	R =    86.128 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.585  mm,	Y =    86.448  mm,	Z =  1178.332  mm,
	W =   133.695 deg,	P =    20.768 deg,	R =    87.556 deg
};
/END
