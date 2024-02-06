/PROG  _PAL_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Left Pal";
PROG_SIZE	= 1272;
CREATE		= DATE 23-09-11  TIME 09:26:42;
MODIFIED	= DATE 23-09-14  TIME 13:01:36;
FILE_NAME	= _DEPAL_R;
VERSION		= 0;
LINE_COUNT	= 27;
MEMORY_SIZE	= 1560;
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
   1:  !************************** ;
   2:  !    Pal Left                ;
   3:  !************************** ;
   4:   ;
   5:  ! !!UF change!! ;
   6:  UFRAME_NUM=2 ;
   7:   ;
   8:  ! Pal Instruction ;
   9:  CALL -INST_PALLET_3D(1,P[4:LtPal1],P[5:LtPal2],P[6:LtPal3],1,1,4,4,3,220,230,70,71,5) ;
  10:  R[5:LeftPalIndex]=R[5:LeftPalIndex]-1    ;
  11:   ;
  12:  CALL _PLACE_BOX_LEFT    ;
  13:   ;
  14:  R[5:LeftPalIndex]=R[5:LeftPalIndex]+1    ;
  15:   ;
  16:  CALL _TRANS_L_TO_R    ;
  17:   ;
  18:  END ;
  19:   ;
  20:  !*************************** ;
  21:  !  TOUCH UP PAL POINTS ;
  22:  !*************************** ;
  23:  UFRAME_NUM=2 ;
  24:J P[4:LtPal1] 100% FINE    ;
  25:J P[5:LtPal2] 100% FINE    ;
  26:J P[6:LtPal3] 100% FINE    ;
  27:   ;
/POS
P[4:"LtPal1"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   678.656738  mm,	Y =   987.091919  mm,	Z =   240.000000  mm,
	W =  -180.000000 deg,	P =     -.000009 deg,	R =   -90.000000 deg
};
P[5:"LtPal2"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   684.171875  mm,	Y =    47.821136  mm,	Z =   240.000000  mm,
	W =   179.999985 deg,	P =      .000005 deg,	R =   -90.000000 deg
};
P[6:"LtPal3"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -116.131165  mm,	Y =   970.100952  mm,	Z =   240.000000  mm,
	W =   180.000000 deg,	P =     -.000010 deg,	R =    90.000000 deg
};
/END
