/PROG  _PICK_FOAM
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick SubRoutine";
PROG_SIZE	= 2518;
CREATE		= DATE 23-12-12  TIME 15:08:24;
MODIFIED	= DATE 23-12-13  TIME 13:05:20;
FILE_NAME	= _ZTEMPLA;
VERSION		= 0;
LINE_COUNT	= 94;
MEMORY_SIZE	= 2918;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 3,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************* ;
   2:  !  PICK  ROUTINE           ;
   3:  !************************* ;
   4:  UFRAME_NUM=2 ;
   5:  UTOOL_NUM=1 ;
   6:   ;
   7:  ! Get Layer Num from Arg  ;
   8:  !  AR1 = ROW              ;
   9:  !  AR2 = LAYER            ;
  10:  R[10001]=AR[1]    ;
  11:  R[10002]=AR[2]    ;
  12:  R[10001]=R[10001]-1    ;
  13:  R[10002]=R[10002]-1    ;
  14:   ;
  15:  ! Use Local PR for Curr Pick  ;
  16:  ! and Start                   ;
  17:  PR[10001]=P[1:PickPos]    ;
  18:  PR[10002]=P[2:StartPos]    ;
  19:   ;
  20:  ! Check for Last Layer ;
  21:  IF (R[10002]<0) THEN ;
  22:   ;
  23:  JMP LBL[99] ;
  24:   ;
  25:  ELSE ;
  26:   ;
  27:  ! Set X Pos for Curr Row      ;
  28:  R[8:CurrRowX]=R[6:RowPitch]*R[10001]    ;
  29:   ;
  30:  ! Set Z Height for Curr Layer ;
  31:  R[5:CurrZHeight]=R[3:LayerPitch]*R[10002]    ;
  32:   ;
  33:  ENDIF ;
  34:   ;
  35:  ! Assign Curr X&Z to Pick Pos ;
  36:  PR[10001,1]=PR[10001,1]+R[8:CurrRowX]    ;
  37:  PR[10001,3]=PR[10001,3]+R[5:CurrZHeight]    ;
  38:   ;
  39:  ! Assign Curr X to Start Pos  ;
  40:  PR[10002,1]=PR[10002,1]+R[8:CurrRowX]    ;
  41:   ;
  42:  !** Move to Approach Bin ;
  43:J PR[10002] 50% CNT50    ;
  44:   ;
  45:  !** Move Pick Approach ;
  46:L PR[10001] 200mm/sec FINE Tool_Offset,PR[12:PickApproach]    ;
  47:  ! Set Z Slightly Below Pick ;
  48:  PR[10001,3]=PR[10001,3]-4    ;
  49:   ;
  50:  ! Set your monitoring condition ;
  51:  ! during the pick move ;
  52:   ;
  53:  SKIP CONDITION R[21:SomeForceValue]>=R[22:MaxForceValue]    ;
  54:   ;
  55:  !** Move to Pick ;
  56:L PR[10001] 25mm/sec FINE Skip,LBL[91]    ;
  57:   ;
  58:  !-------------------- ;
  59:  LBL[90:PartDetected] ;
  60:  !-------------------- ;
  61:  F[1:PartPresent]=(ON) ;
  62:   ;
  63:  ! For Simulation Only ;
  64:  CALL _SPICK    ;
  65:   ;
  66:  ! Set safe Z height ;
  67:  PR[10002]=LPOS    ;
  68:  PR[10002,3]=330    ;
  69:   ;
  70:  !** Move Out ;
  71:L PR[10002] 300mm/sec FINE    ;
  72:   ;
  73:  END ;
  74:   ;
  75:  !-------------------- ;
  76:  LBL[91:PartNotDetected] ;
  77:  !-------------------- ;
  78:  F[1:PartPresent]=(OFF) ;
  79:  CALL _MOVE_HOME    ;
  80:   ;
  81:  MESSAGE[No Parts Detected] ;
  82:  END ;
  83:   ;
  84:  !-------------------- ;
  85:  LBL[99:EndOfLayers] ;
  86:  !-------------------- ;
  87:   ;
  88:  END ;
  89:   ;
  90:  !------------------------- ;
  91:  !  Touch up Local Points   ;
  92:  !------------------------- ;
  93:L P[1:PickPos] 100mm/sec FINE    ;
  94:J P[2:StartPos] 100% CNT100    ;
/POS
P[1:"PickPos"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =    64.285  mm,	Y =   247.588  mm,	Z =    16.464  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -89.999 deg
};
P[2:"StartPos"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =    64.285  mm,	Y =   247.588  mm,	Z =   318.638  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -89.999 deg
};
/END
