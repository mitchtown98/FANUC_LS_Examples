/PROG  _PK_INF
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Infeed Pick";
PROG_SIZE	= 1391;
CREATE		= DATE 23-01-07  TIME 05:12:56;
MODIFIED	= DATE 23-01-09  TIME 23:27:28;
FILE_NAME	= _PK_INF;
VERSION		= 0;
LINE_COUNT	= 45;
MEMORY_SIZE	= 1875;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************ ;
   2:  !  PickSubRoutine         ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  IF (DO[233:atInf->plc]=OFF AND DO[232:atHome->plc]=OFF) THEN ;
   7:   ;
   8:  CALL _GET_HOME    ;
   9:   ;
  10:  ENDIF ;
  11:   ;
  12:  UTOOL_NUM=1 ;
  13:  UFRAME_NUM=1 ;
  14:   ;
  15:  !------------------------ ;
  16:  LBL[10:Start] ;
  17:  CALL _GRIP_OPEN    ;
  18:   ;
  19:J P[1:Start] 40% CNT80    ;
  20:   ;
  21:  !  Approach ;
  22:L PR[20:InfeedPk] R[12:apprchSpd]mm/sec FINE Tool_Offset,PR[21:InfToolOfst40] AP_LD25 VOFFSET,VR[1]    ;
  23:   ;
  24:  !  Pick ;
  25:L PR[20:InfeedPk] R[13:pkPlSpd]mm/sec FINE VOFFSET,VR[1]    ;
  26:   ;
  27:  CALL _GRIP_CLOSE    ;
  28:   ;
  29:  PAYLOAD[2:Full Gripper] ;
  30:   ;
  31:  !  Retreat ;
  32:L PR[20:InfeedPk] R[12:apprchSpd]mm/sec FINE Tool_Offset,PR[22:InfToolOfst150] VOFFSET,VR[1]    ;
  33:   ;
  34:J P[2:Back] R[11:spdPercent]% CNT80    ;
  35:   ;
  36:  CALL _MOVE_TO_TESTER    ;
  37:   ;
  38:  !------------------------ ;
  39:  LBL[999:End] ;
  40:  END ;
  41:   ;
  42:  !------------------------ ;
  43:  !  Touch Up Local Points ;
  44:J P[1:Start] 75% CNT75    ;
  45:J P[2:Back] 75% CNT50    ;
/POS
P[1:"Start"]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -43.152 deg,	J2=    14.213 deg,	J3=   -42.594 deg,
	J4=     -.273 deg,	J5=   -47.842 deg,	J6=    42.640 deg
};
P[2:"Back"]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -347.349  mm,	Y =   225.124  mm,	Z =   313.614  mm,
	W =  -179.384 deg,	P =      .353 deg,	R =     -.585 deg
};
/END
