/PROG  _PAYLOAD_POSTURES
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Utility";
PROG_SIZE	= 678;
CREATE		= DATE 23-08-31  TIME 16:34:58;
MODIFIED	= DATE 23-08-31  TIME 16:39:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 1034;
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

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:J P[1] 100% FINE    ;
   2:J P[2] 100% FINE    ;
   3:J P[3] 100% FINE    ;
   4:J P[4] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .449282 deg,	J2=      .603251 deg,	J3=    -1.565599 deg,
	J4=    -2.076126 deg,	J5=   -88.229752 deg,	J6=     -.000019 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .449282 deg,	J2=      .603245 deg,	J3=    -1.565596 deg,
	J4=    -2.076101 deg,	J5=     1.237294 deg,	J6=     -.000018 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .449284 deg,	J2=      .603251 deg,	J3=    -1.565599 deg,
	J4=    -2.076129 deg,	J5=    39.037308 deg,	J6=     -.000019 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .449285 deg,	J2=      .603251 deg,	J3=    -1.565593 deg,
	J4=    82.034164 deg,	J5=    91.481895 deg,	J6=     -.000020 deg
};
/END
