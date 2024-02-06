/PROG  _PL_TESTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tester Place";
PROG_SIZE	= 1437;
CREATE		= DATE 23-01-07  TIME 05:13:36;
MODIFIED	= DATE 23-01-09  TIME 23:28:18;
FILE_NAME	= _PL_TEST;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 1913;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 1,2,0;
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
   6:   ;
   7:  UTOOL_NUM=1 ;
   8:  UFRAME_NUM=2 ;
   9:   ;
  10:  !------------------------ ;
  11:  LBL[10:Start] ;
  12:  !------------------------ ;
  13:J P[1:Start] 30% CNT100    ;
  14:   ;
  15:  !  Approach ;
  16:L PR[30:TesterPl] 300mm/sec CNT10 Tool_Offset,PR[31:ToolOfst30] AP_LD20    ;
  17:   ;
  18:  !  Place ;
  19:L PR[30:TesterPl] 150mm/sec FINE    ;
  20:   ;
  21:  CALL _GRIP_OPEN    ;
  22:   ;
  23:  PAYLOAD[1:Empty Gripper] ;
  24:   ;
  25:  !  GetCurrPos Retreat ;
  26:  PR[10001]=LPOS    ;
  27:   ;
  28:L PR[10001] R[12:apprchSpd]mm/sec FINE Tool_Offset,PR[31:ToolOfst30] RT_LD10    ;
  29:   ;
  30:L P[5:WaitPos] R[12:apprchSpd]mm/sec FINE    ;
  31:   ;
  32:  !------------------------ ;
  33:  LBL[99:End] ;
  34:  !------------------------ ;
  35:  END ;
  36:   ;
  37:  !------------------------ ;
  38:  !  Touchup Local Points ;
  39:J P[1:Start] 50% CNT100    ;
  40:L P[2:Back] 200mm/sec FINE    ;
  41:L P[5:WaitPos] R[13:pkPlSpd]mm/sec FINE    ;
/POS
P[1:"Start"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.590  mm,	Y =    52.225  mm,	Z =   160.747  mm,
	W =  -179.839 deg,	P =      .344 deg,	R =    89.099 deg
};
P[2:"Back"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    28.409  mm,	Y =    21.703  mm,	Z =    32.821  mm,
	W =  -179.726 deg,	P =     -.894 deg,	R =    89.283 deg
};
P[5:"WaitPos"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.668  mm,	Y =  -297.588  mm,	Z =    30.518  mm,
	W =  -179.839 deg,	P =      .344 deg,	R =    89.099 deg
};
/END
