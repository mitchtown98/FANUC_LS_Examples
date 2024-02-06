/PROG  _PL_OUTFEED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Outfeed Place";
PROG_SIZE	= 1904;
CREATE		= DATE 23-01-07  TIME 05:13:26;
MODIFIED	= DATE 23-01-17  TIME 00:26:18;
FILE_NAME	= _PL_OUTF;
VERSION		= 0;
LINE_COUNT	= 70;
MEMORY_SIZE	= 2400;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 2,2,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************ ;
   2:  !  Sub  Routine           ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=3 ;
   8:   ;
   9:  CALL _TOGGLE_LANE    ;
  10:   ;
  11:  !  Set Lane Side   ;
  12:  !   Set Local PR ;
  13:  IF (F[11:laneToggle]=OFF) THEN ;
  14:   ;
  15:  !    Right ;
  16:  PR[10001]=PR[40:RtSideOut]    ;
  17:   ;
  18:  ELSE ;
  19:   ;
  20:  !    Left ;
  21:  PR[10001]=PR[41:LtSideOut]    ;
  22:   ;
  23:  ENDIF ;
  24:   ;
  25:  !  Set Rotation ;
  26:  IF (F[1:tPass]=ON OR DI[219:testPassStatus]=ON) THEN ;
  27:   ;
  28:   ;
  29:J P[3:Normal] R[11:spdPercent]% CNT80    ;
  30:   ;
  31:  ELSE ;
  32:   ;
  33:J P[5:180Rot] R[11:spdPercent]% CNT80    ;
  34:   ;
  35:  PR[10001,6]=0    ;
  36:   ;
  37:  ENDIF ;
  38:  DO[222:plOutfeedRecv]=ON ;
  39:   ;
  40:  !------------------------ ;
  41:  LBL[91:Move] ;
  42:  !------------------------ ;
  43:   ;
  44:  !  Approach ;
  45:L PR[10001] 400mm/sec CNT1 Tool_Offset,PR[42:ToolOfst60] AP_LD30    ;
  46:   ;
  47:  !  Place ;
  48:L PR[10001] 200mm/sec FINE    ;
  49:   ;
  50:  !  OpenGripper/Change Payload ;
  51:   ;
  52:  CALL _GRIP_OPEN    ;
  53:   ;
  54:  PAYLOAD[1:Empty Gripper] ;
  55:   ;
  56:  !  Retreat ;
  57:L PR[10001] 400mm/sec CNT60 Tool_Offset,PR[42:ToolOfst60] RT_LD20    ;
  58:   ;
  59:  !------------------------ ;
  60:  LBL[99:End] ;
  61:  !------------------------ ;
  62:J P[2:Back2] R[11:spdPercent]% CNT100    ;
  63:   ;
  64:  END ;
  65:   ;
  66:  !------------------------ ;
  67:  !    Touchup Local Points ;
  68:J P[1:Back1] 75% CNT75    ;
  69:J P[2:Back2] 75% CNT75    ;
  70:J P[5:180Rot] 75% CNT75    ;
/POS
P[1:"Back1"]{
   GP1:
	UF : 3, UT : 1,	
	J1=    56.672 deg,	J2=    40.997 deg,	J3=   -42.894 deg,
	J4=     1.549 deg,	J5=   -47.499 deg,	J6=   121.535 deg
};
P[2:"Back2"]{
   GP1:
	UF : 3, UT : 1,	
	J1=    -3.013 deg,	J2=    -6.324 deg,	J3=   -44.765 deg,
	J4=     -.611 deg,	J5=   -45.439 deg,	J6=     2.748 deg
};
P[3:"Normal"]{
   GP1:
	UF : 3, UT : 1,	
	J1=    62.234 deg,	J2=    29.841 deg,	J3=   -35.161 deg,
	J4=      .443 deg,	J5=   -55.152 deg,	J6=   116.770 deg
};
P[5:"180Rot"]{
   GP1:
	UF : 3, UT : 1,	
	J1=    62.209 deg,	J2=    29.830 deg,	J3=   -35.168 deg,
	J4=      .328 deg,	J5=   -55.105 deg,	J6=   -64.067 deg
};
/END
