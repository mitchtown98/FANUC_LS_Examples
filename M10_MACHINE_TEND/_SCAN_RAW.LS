/PROG  _SCAN_RAW
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1667;
CREATE		= DATE 16-11-29  TIME 08:03:16;
MODIFIED	= DATE 16-12-06  TIME 06:23:18;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 52;
MEMORY_SIZE	= 2139;
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
   1:  UFRAME_NUM=2 ;
   2:  UTOOL_NUM=2 ;
   3:  CALL _INIT_PR_XYZWPR(2) ;
   4:  CALL _SCAN_RAW_INIT    ;
   5:   ;
   6:  !-------------------- ;
   7:  LBL[10:Loop] ;
   8:  !-------------------- ;
   9:  CALL _SCAN_RAW_CALC    ;
  10:  CALL _GET_J1_ANGLE(81) ;
  11:  IF (!DI[266:CPC2]) THEN ;
  12:  !Move To App ;
  13:J P[2] 100% CNT85    ;
  14:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],75,0,0,0) ;
  15:L P[1] 2000mm/sec CNT100 Offset,PR[2]    ;
  16:  ENDIF ;
  17:  !Move To Sensor Pos ;
  18:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],0,0,0,0) ;
  19:L P[1] 2000mm/sec FINE Offset,PR[2] AP_LD20 Wjnt    ;
  20:  WAIT    .10(sec) ;
  21:  IF (R[2:EOATstatus]=0) THEN ;
  22:  IF RI[1:Part Present]=ON,JMP LBL[100] ;
  23:  ELSE ;
  24:  IF RI[1:Part Present]=OFF,JMP LBL[100] ;
  25:  ENDIF ;
  26:  CALL _SCAN_RAW_INDEX    ;
  27:  IF R[12:RAWCOLINDEX]>R[18:RAWNUMOFCOL],JMP LBL[99] ;
  28:  JMP LBL[10] ;
  29:   ;
  30:  !-------------------- ;
  31:  LBL[99:Error] ;
  32:  !-------------------- ;
  33:  !No Blocks Found! ;
  34:  !Move To App ;
  35:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],75,0,0,0) ;
  36:L P[1] 1000mm/sec CNT0 Offset,PR[2]    ;
  37:  IF (R[2:EOATstatus]=0) THEN ;
  38:  UALM[21] ;
  39:  ELSE ;
  40:  UALM[22] ;
  41:  ENDIF ;
  42:  CALL _SCAN_RAW_INIT    ;
  43:  JMP LBL[10] ;
  44:   ;
  45:  !-------------------- ;
  46:  LBL[100:Done] ;
  47:  !-------------------- ;
  48:  !Block Found! ;
  49:  !Move To App ;
  50:  CALL _SET_OFFSET(2,R[15:RAWROWNEXT],R[16:RAWCOLNEXT],75,0,0,0) ;
  51:L P[1] 1000mm/sec CNT100 Offset,PR[2]    ;
  52:  END ;
/POS
P[1]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =    27.000  mm,
	W =   180.000 deg,	P =     0.000 deg,	R =   -65.000 deg
};
P[2]{
   GP1:
	UF : 2, UT : 2,		CONFIG : 'N D B, 0, 0, 0',
	X =    79.199  mm,	Y =   173.520  mm,	Z =   269.998  mm,
	W =   180.000 deg,	P =      .000 deg,	R =   -65.000 deg
};
/END
