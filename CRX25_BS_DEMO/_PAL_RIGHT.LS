/PROG  _PAL_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Right pal";
PROG_SIZE	= 1152;
CREATE		= DATE 23-09-11  TIME 13:12:28;
MODIFIED	= DATE 23-09-14  TIME 11:43:24;
FILE_NAME	= _DEPAL_R;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1452;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 6,3,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  ! Pal Instruction ;
   5:  CALL -INST_PALLET_3D(1,P[1:RtPal1],P[2:RtPal2],P[3:RtPal3],1,1,4,4,3,220,230,70,71,4) ;
   6:  R[4:RightPalIndex]=R[4:RightPalIndex]-1    ;
   7:   ;
   8:  CALL _PLACE_BOX_RIGHT    ;
   9:   ;
  10:  R[4:RightPalIndex]=R[4:RightPalIndex]+1    ;
  11:   ;
  12:  CALL _TRANS_R_TO_L    ;
  13:   ;
  14:  END ;
  15:   ;
  16:  !*************************** ;
  17:  !  TOUCH UP PAL POINTS ;
  18:  !*************************** ;
  19:  UFRAME_NUM=1 ;
  20:J P[1:RtPal1] 100% FINE    ;
  21:J P[2:RtPal2] 100% FINE    ;
  22:J P[3:RtPal3] 100% FINE    ;
  23:   ;
  24:   ;
/POS
P[1:"RtPal1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -146.550598  mm,	Y =  1005.000000  mm,	Z =   240.000000  mm,
	W =   179.999832 deg,	P =     -.000073 deg,	R =    90.000000 deg
};
P[2:"RtPal2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -144.991577  mm,	Y =    75.000000  mm,	Z =   240.000000  mm,
	W =  -180.000000 deg,	P =     0.000000 deg,	R =    90.000000 deg
};
P[3:"RtPal3"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.884949  mm,	Y =  1005.000000  mm,	Z =   240.000000  mm,
	W =  -180.000000 deg,	P =      .000003 deg,	R =   -90.000000 deg
};
/END
