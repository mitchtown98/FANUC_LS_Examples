/PROG  _GET_DISTANCE_3D
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 436;
CREATE		= DATE 23-04-27  TIME 11:26:34;
MODIFIED	= DATE 23-04-27  TIME 13:01:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 752;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 10,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  R[71:blackListDistanc]=0    ;
   2:   ;
   3:  R[61:a]=PR[AR[2],1]-PR[AR[1],1]    ;
   4:  R[61:a]=R[61:a]*R[61:a]    ;
   5:   ;
   6:  R[62:b]=PR[AR[2],2]-PR[AR[1],2]    ;
   7:  R[62:b]=R[62:b]*R[62:b]    ;
   8:   ;
   9:  R[63:c]=PR[AR[2],3]-PR[AR[1],3]    ;
  10:  R[63:c]=R[63:c]*R[63:c]    ;
  11:   ;
  12:  R[64:d]=R[61:a]+R[62:b]+R[63:c]    ;
  13:  R[AR[3]]=(SQRT[R[64]]) ;
  14:   ;
/POS
/END
