/PROG  _DEPAL_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Left Depal";
PROG_SIZE	= 1298;
CREATE		= DATE 23-09-11  TIME 11:55:40;
MODIFIED	= DATE 23-09-14  TIME 08:47:56;
FILE_NAME	= _DEPAL_R;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1718;
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
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  !-------------- ;
   5:  LBL[10] ;
   6:  !-------------- ;
   7:  CALL -INST_PALLET_3D(1,P[4:LtPal1],P[5:LtPal2],P[6:LtPal3],1,2,4,4,3,220,200,60,61,5) ;
   8:  R[5:LeftPalIndex]=R[5:LeftPalIndex]-1    ;
   9:   ;
  10:  CALL _GET_DEPAL_LAYER(7) ;
  11:   ;
  12:  CALL _MOVE_TO_CAM(2) ;
  13:   ;
  14:  CALL _VISION_BOXES(2) ;
  15:   ;
  16:  IF R[15:vis status]<>1,JMP LBL[10] ;
  17:   ;
  18:  CALL _PICK_BOX_LEFT    ;
  19:   ;
  20:  R[5:LeftPalIndex]=R[5:LeftPalIndex]+1    ;
  21:  END ;
  22:   ;
  23:  !*************************** ;
  24:  !  TOUCH UP PAL POINTS ;
  25:  !*************************** ;
  26:  UTOOL_NUM=1 ;
  27:  UFRAME_NUM=2 ;
  28:J P[4:LtPal1] 50% FINE    ;
  29:J P[5:LtPal2] 50% FINE    ;
  30:J P[6:LtPal3] 50% FINE    ;
  31:   ;
/POS
P[4:"LtPal1"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   690.000000  mm,	Y =   990.000000  mm,	Z =   680.000000  mm,
	W =   180.000000 deg,	P =     0.000000 deg,	R =   -90.000000 deg
};
P[5:"LtPal2"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   690.000000  mm,	Y =    50.000000  mm,	Z =   680.000000  mm,
	W =   180.000000 deg,	P =     0.000000 deg,	R =   -90.000000 deg
};
P[6:"LtPal3"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -109.314148  mm,	Y =   990.000000  mm,	Z =   680.000000  mm,
	W =  -180.000000 deg,	P =     0.000000 deg,	R =    90.000000 deg
};
/END
