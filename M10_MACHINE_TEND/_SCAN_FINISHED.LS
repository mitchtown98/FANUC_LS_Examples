/PROG  _SCAN_FINISHED
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1723;
CREATE		= DATE 16-11-29  TIME 09:03:40;
MODIFIED	= DATE 16-12-06  TIME 06:24:04;
FILE_NAME	= _SCAN_RA;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 2195;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=3 ;
   2:  UTOOL_NUM=2 ;
   3:  CALL _INIT_PR_XYZWPR(2) ;
   4:  CALL _SCAN_FINISHED_INIT    ;
   5:   ;
   6:  !-------------------- ;
   7:  LBL[10:Loop] ;
   8:  !-------------------- ;
   9:  CALL _SCAN_FINISHED_CALC    ;
  10:  CALL _GET_J1_ANGLE(81) ;
  11:  IF (!DI[267:CPC3]) THEN ;
  12:J P[2] 100% CNT85    ;
  13:  !Move To App ;
  14:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],75,0,0,0) ;
  15:J P[1] 50% CNT100 Offset,PR[2]    ;
  16:  ENDIF ;
  17:  !Move To Sensor Pos ;
  18:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],0,0,0,0) ;
  19:L P[1] 2000mm/sec FINE Offset,PR[2] AP_LD20    ;
  20:  WAIT    .10(sec) ;
  21:  IF (R[2:EOATstatus]<>0) THEN ;
  22:  IF RI[1:Part Present]=OFF,JMP LBL[100] ;
  23:  ELSE ;
  24:  IF RI[1:Part Present]=ON,JMP LBL[100] ;
  25:  ENDIF ;
  26:  CALL _SCAN_FINISHED_INDEX    ;
  27:  IF R[22:FINCOLINDEX]>R[28:FINNUMOFCOL],JMP LBL[99] ;
  28:  JMP LBL[10] ;
  29:   ;
  30:  !-------------------- ;
  31:  LBL[99:Error] ;
  32:  !-------------------- ;
  33:  !No Voids Found! ;
  34:  !Move To App ;
  35:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],100,0,0,0) ;
  36:L P[1] 1000mm/sec CNT0 Offset,PR[2]    ;
  37:  IF (R[2:EOATstatus]<>0) THEN ;
  38:  UALM[22] ;
  39:  ELSE ;
  40:  UALM[21] ;
  41:  ENDIF ;
  42:  CALL _SCAN_FINISHED_INIT    ;
  43:  JMP LBL[10] ;
  44:   ;
  45:  !-------------------- ;
  46:  LBL[100:Done] ;
  47:  !-------------------- ;
  48:  !Block Found! ;
  49:  !Move To App ;
  50:  CALL _SET_OFFSET(2,R[25:FINROWNEXT],R[26:FINCOLNEXT],100,0,0,0) ;
  51:L P[1] 1000mm/sec CNT100 Offset,PR[2]    ;
  52:  END ;
/POS
P[1]{
   GP1:
	UF : 3, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =    40.000  mm,	Y =     0.000  mm,	Z =    27.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 3, UT : 2,		CONFIG : 'F U T, 0, 0, 0',
	X =    39.995  mm,	Y =   205.776  mm,	Z =   209.991  mm,
	W =  -179.995 deg,	P =      .001 deg,	R =     -.001 deg
};
/END
