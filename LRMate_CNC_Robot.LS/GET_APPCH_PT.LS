/PROG  GET_APPCH_PT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Get approach pt";
PROG_SIZE	= 411;
CREATE		= DATE 19-12-09  TIME 17:49:32;
MODIFIED	= DATE 19-12-09  TIME 17:49:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 735;
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
   1:  !GetAppchPoint(AR1,AR2) ;
   2:  !AR1=Approach Point Pos Register ;
   3:  !AR2=Pick/Place Pos Register ;
   4:   ;
   5:  R[90:TempCalcReg0]=AR[1]    ;
   6:  R[91:TempCalcReg1]=AR[2]    ;
   7:   ;
   8:  PR[R[90],1]=PR[R[91],1]+R[23:PICK OFST X]    ;
   9:   ;
  10:  PR[R[90],2]=PR[R[91],2]+R[24:PICK OFST Y]    ;
  11:   ;
  12:  PR[R[90],3]=R[22:APRCH OFFSET Z]    ;
/POS
/END
