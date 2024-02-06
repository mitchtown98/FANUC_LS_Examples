/PROG  _BGL_OVERRIDE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 481;
CREATE		= DATE 23-08-30  TIME 17:46:10;
MODIFIED	= DATE 23-09-12  TIME 12:10:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 837;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !---------------------------- ;
   2:  !  Override Logic             ;
   3:  !---------------------------- ;
   4:   ;
   5:  IF (!SO[7:TP enabled]) THEN ;
   6:  $MCR.$GENOVERRIDE=100 ;
   7:  ENDIF ;
   8:   ;
   9:  $MCR_GRP[1].$PRGOVERRIDE=R[150:ProgramOverride] ;
  10:   ;
  11:  R[30:ResultantForce]=$CR_VAR[1].$FS_MON[2] ;
  12:  R[30:ResultantForce]=(ABS[R[30]]) ;
/POS
/END
