/PROG  _PK_TESTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tester Place";
PROG_SIZE	= 1542;
CREATE		= DATE 23-01-07  TIME 05:13:10;
MODIFIED	= DATE 23-01-09  TIME 23:13:22;
FILE_NAME	= _PK_TEST;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1994;
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
   2:  !  Sub  Routine           ;
   3:  !    Date: 11/23/22       ;
   4:  !    By:   JDM            ;
   5:  !************************ ;
   6:  UTOOL_NUM=1 ;
   7:  UFRAME_NUM=2 ;
   8:   ;
   9:  !  Check Pos ;
  10:  IF (DI[267:atWaitTester]=OFF) THEN ;
  11:   ;
  12:J P[3:Start] R[11:spdPercent]% CNT80    ;
  13:   ;
  14:  JMP LBL[20] ;
  15:  ENDIF ;
  16:   ;
  17:  !------------------------ ;
  18:  LBL[10:StartFromWait] ;
  19:  !------------------------ ;
  20:J P[1:StartFromWait] R[11:spdPercent]% CNT50    ;
  21:   ;
  22:  !------------------------ ;
  23:  LBL[20:Approach] ;
  24:  !------------------------ ;
  25:  !  Approach ;
  26:L PR[33:TesterPk] R[12:apprchSpd]mm/sec FINE Tool_Offset,PR[31:ToolOfst30] AP_LD10    ;
  27:   ;
  28:  !  Pick ;
  29:L PR[33:TesterPk] 150mm/sec FINE    ;
  30:  CALL _GRIP_CLOSE    ;
  31:   ;
  32:  PAYLOAD[2:Full Gripper] ;
  33:   ;
  34:  !  Retreat ;
  35:L PR[33:TesterPk] 250mm/sec FINE ACC75 Tool_Offset,PR[32:ToolOfst150]    ;
  36:   ;
  37:  //J P[2:ToOutFeed] R[11:spdPercent]% CNT100    ;
  38:   ;
  39:  !------------------------ ;
  40:  LBL[999:End] ;
  41:  END ;
  42:   ;
  43:  !------------------------ ;
  44:  !  Touchup Local Points ;
  45:J P[1:StartFromWait] 50% CNT50    ;
  46:J P[2:ToOutFeed] 50% CNT100    ;
  47:J P[3:Start] R[11:spdPercent]% CNT80    ;
/POS
P[1:"StartFromWait"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.668  mm,	Y =  -297.588  mm,	Z =    30.518  mm,
	W =  -179.839 deg,	P =      .344 deg,	R =    89.099 deg
};
P[2:"ToOutFeed"]{
   GP1:
	UF : 2, UT : 1,	
	J1=   111.266 deg,	J2=    31.003 deg,	J3=   -34.289 deg,
	J4=     -.581 deg,	J5=   -55.717 deg,	J6=   -21.657 deg
};
P[3:"Start"]{
   GP1:
	UF : 2, UT : 1,	
	J1=   132.920 deg,	J2=    51.769 deg,	J3=   -18.031 deg,
	J4=     -.472 deg,	J5=   -71.799 deg,	J6=   -43.492 deg
};
/END
