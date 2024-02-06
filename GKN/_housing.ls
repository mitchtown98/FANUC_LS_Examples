/PROG  _HOUSING
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1248;
CREATE		= DATE 23-11-29  TIME 17:51:00;
MODIFIED	= DATE 23-11-30  TIME 13:45:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 1672;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,1,0;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=9 ;
   3:   ;
   3:  ! QUADRANT 1 ROUGH FIND;
   4:L PR[1:Q1] 300mm/sec FINE    ;
   5:   ;
   6:  DO[5]=ON ;
   7:   ;
   7:  ! CALL VP ROUGH FIND ;
   8:  VISION RUN_FIND '_HROUGH'    ;
   9:  VISION GET_NFOUND '_HROUGH' R[1]    ;
  10:  PAUSE ;
  10:  ;
  10:  ! GET THE NUMBER FOUND;
  10:  ! ITERATE OVER GET OFFSET AND;
  10:  ! STORE VRs in PRs to USE ;
  10:  ! FOR THE FINE FIND POSITION ;
  11:  R[3]=100    ;
  12:  FOR R[2]=1 TO R[1:Nfound] ;
  13:   ;
  14:  R[3]=R[3]+1    ;
  15:   ;
  16:  VISION GET_OFFSET '_HROUGH' VR[1] JMP LBL[99] ;
  17:   ;
  18:  PR[R[3]]=VR[1].OFFSET ;
  19:   ;
  20:  ENDFOR ;
  21:   ;
  22:  PAUSE ;
  23:  ! LOCAL OFFSET ;
  24:  PR[10001]=LPOS-LPOS    ;
  25:  PR[10001,3]=(-50)    ;
  26:   ;
  27:  DO[5]=OFF ;
  28:   ;
  28:  ! ITERATE OVER THE STORED ROUGH POS ;
  28:  ! OFFSETS TO POSITION OVER A SINGLE  ;
  28:  ! HOUSING FOR FINE FIND  ;
  29:  R[3]=100    ;
  31:  FOR R[2]=1 TO R[1:Nfound] ;
  32:  R[3]=R[3]+1    ;
  33:   ;
  33:  ! FINE FIND CAMERA ;
  34:L PR[11:Q1_F] 300mm/sec FINE Offset,PR[R[3]]    ;
  35:   ;
  35:  ! CALL VP FINE FIND ;
  36:  VISION RUN_FIND '_HFINE'    ;
  37:  VISION GET_OFFSET '_HFINE' VR[2] JMP LBL[999] ;
  38:   ;
  38:  ! APPROACH, PICK, RETREAT ;
  39:J P[1:PickREF] 20% CNT10 VOFFSET,VR[2] MROT Tool_Offset,PR[10001]    ;
  40:   ;
  41:L P[1:PickREF] 100mm/sec FINE VOFFSET,VR[2]    ;
  42:   ;
  43:L P[1:PickREF] 100mm/sec FINE VOFFSET,VR[2] Tool_Offset,PR[10001]    ;
  44:   ;
  45:  ENDFOR ;
  46:   ;
  47:J PR[1:Q1] 100% CNT100    ;
  48:   ;
  51:  END ;
  51:  ;
  51:  !*************************************;
  51:  !          TOUCH UP LOCAL POSIITON    ;
  51:  !*************************************;
  52:L P[1:PickREF] 100mm/sec FINE    ;
/POS
P[1]{
   GP1:
	UF : 9, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -411.261  mm,	Y =   430.792  mm,	Z =    -5.192  mm,
	W =  -179.710 deg,	P =     -.376 deg,	R =    -1.189 deg
};
P[2]{
   GP1:
	UF : 9, UT : 9,		CONFIG : 'N U T, 0, 0, 0',
	X =  -382.806  mm,	Y =   236.245  mm,	Z =   551.397  mm,
	W =  -179.710 deg,	P =     -.377 deg,	R =    -1.188 deg
};
/END
