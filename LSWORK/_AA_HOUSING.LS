/PROG  _AA_HOUSING
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1141;
CREATE		= DATE 23-08-10  TIME 15:06:36;
MODIFIED	= DATE 23-08-11  TIME 11:06:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1665;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 6,2,0;
/APPL
/MN
   1: !------------------------ ;
   1: !  Created: 8/11/23       ;
   1: !   By: JDM               ;
   1: !------------------------ ;
   1: ;
   1:J P[1:Perch] 50% CNT100    ;
   2:   ;
   2: !** Call Vision Process **;
   3:  VISION RUN_FIND '_AA_HOUSING_V2'    ;
   4:  VISION GET_OFFSET '_AA_HOUSING_V2' VR[1] JMP LBL[990] ;
   5:   ;
   6:  CALL ADJ_OFS(1,1,5,1,4) ;
   7:  PAUSE ;
   8:   ;
   8:  !** Initial Move to Bin Edge **;
   9:  PR[10002]=PR[100:NilPos]    ;
  10:  R[99:Temp]=$VR[1].$OFFSET.$Y ;
  11:  PR[10002,2]=R[99:Temp]    ;
  12:   ;
  13:J P[2:Edge] 50% CNT100 Offset,PR[10002]    ;
  14:   ;
  14:  !** Approach ** ;
  15:J PR[3:HousingPick] 80% CNT75 VOFFSET,VR[1] Tool_Offset,PR[4:Tool-30]    ;
  16:   ;
  17:  OVERRIDE=5% ;
  18:   ;
  18:  !** Pick **;
  19:L PR[3:HousingPick] 250mm/sec FINE VOFFSET,VR[1]    ;
  20:   ;
  20:  !** Get CurrPos and Retreat **;
  21:  PR[10001]=LPOS    ;
  22:L PR[10001] 250mm/sec CNT10 Tool_Offset,PR[4:Tool-30]    ;
  23:   ;
  24:  OVERRIDE=50% ;
  25:   ;
  25:  !** Clear Bin and Perch **;
  26:  PR[10001,3]=80    ;
  27:J PR[10001] 100% CNT100    ;
  28:J P[1:Perch] 50% CNT100    ;
  29:   ;
  30:  !******************* ;
  31:  LBL[990:BinError] ;
  32:  !******************* ;
  33:   ;
  34:  END ;
  35:  !----TouchUp---- ;
  36:J P[1:Perch] 50% CNT100    ;
  37:J P[2:Edge] 50% CNT100    ;
/POS
P[1:"Perch"]{
   GP1:
	UF : 1, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   538.420  mm,	Y =   -45.466  mm,	Z =    87.748  mm,
	W =  -178.967 deg,	P =     -.234 deg,	R =  -179.858 deg
};
P[2:"Edge"]{
   GP1:
	UF : 1, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.232  mm,	Y =   -45.465  mm,	Z =    87.744  mm,
	W =  -178.967 deg,	P =     -.234 deg,	R =  -179.858 deg
};
/END
