/PROG  _DEPAL_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Right Depal";
PROG_SIZE	= 1280;
CREATE		= DATE 23-09-11  TIME 09:24:50;
MODIFIED	= DATE 23-09-14  TIME 08:47:14;
FILE_NAME	= _DEPAL_R;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1704;
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
   4:  !----------- ;
   5:  LBL[10] ;
   6:  !----------- ;
   7:  CALL -INST_PALLET_3D(1,P[1:RtDPal1],P[2:RtDPal2],P[3:RtDPal3],1,2,4,4,3,220,200,60,61,4) ;
   8:  R[4:RightPalIndex]=R[4:RightPalIndex]-1    ;
   9:   ;
  10:  CALL _GET_DEPAL_LAYER(6) ;
  11:   ;
  12:  CALL _MOVE_TO_CAM(1) ;
  13:   ;
  14:  CALL _VISION_BOXES(1) ;
  15:   ;
  16:  IF R[15:vis status]<>1,JMP LBL[10] ;
  17:   ;
  18:  CALL _PICK_BOX_RIGHT    ;
  19:   ;
  20:  R[4:RightPalIndex]=R[4:RightPalIndex]+1    ;
  21:   ;
  22:  END ;
  23:   ;
  24:  !*************************** ;
  25:  !  TOUCH UP PAL POINTS ;
  26:  !*************************** ;
  27:  UFRAME_NUM=1 ;
  28:J P[1:RtDPal1] 100% FINE    ;
  29:J P[2:RtDPal2] 100% FINE    ;
  30:J P[3:RtDPal3] 100% FINE    ;
/POS
P[1:"RtDPal1"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.000000  mm,	Y =  1000.000000  mm,	Z =   680.000000  mm,
	W =  -180.000000 deg,	P =     0.000000 deg,	R =    90.000000 deg
};
P[2:"RtDPal2"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.000000  mm,	Y =    80.000000  mm,	Z =   680.000000  mm,
	W =  -180.000000 deg,	P =     0.000000 deg,	R =    90.000000 deg
};
P[3:"RtDPal3"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   735.803223  mm,	Y =  1000.000000  mm,	Z =   680.000000  mm,
	W =  -180.000000 deg,	P =     0.000000 deg,	R =   -90.000000 deg
};
/END
