/PROG  GO_PERCH	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "macro Go to Perh";
PROG_SIZE	= 545;
CREATE		= DATE 19-12-09  TIME 17:50:50;
MODIFIED	= DATE 20-01-14  TIME 11:08:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 26;
MEMORY_SIZE	= 945;
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
   1:  !GET CURRENT POSITION ;
   2:  !BASED ON POS,MOVE TO PERCH ;
   3:  PAYLOAD[1:EOAT w/o part] ;
   4:  COL GUARD ADJUST R[61] ;
   5:   ;
   6:  PR[90]=JPOS    ;
   7:   ;
   8:  R[90:TempCalcReg0]=PR[90,1]    ;
   9:   ;
  10:  IF R[90:TempCalcReg0]>R[1:HOME DECIS ANGLE],JMP LBL[20] ;
  11:   ;
  12:  PR[90]=LPOS    ;
  13:   ;
  14:  R[92:TempCalcReg2]=PR[90,3]    ;
  15:   ;
  16:  IF (R[92:TempCalcReg2]<=R[22:APRCH OFFSET Z]+5),JMP LBL[10] ;
  17:   ;
  18:J PR[6:APP PICK PT] 100% CNT25    ;
  19:   ;
  20:  LBL[10] ;
  21:   ;
  22:J PR[12:MID PT] 100% CNT60    ;
  23:   ;
  24:  LBL[20] ;
  25:   ;
  26:J PR[1:PERCH PT] 100% FINE    ;
/POS
/END
