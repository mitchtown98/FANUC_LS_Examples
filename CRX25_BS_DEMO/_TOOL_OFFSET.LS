/PROG  _TOOL_OFFSET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 486;
CREATE		= DATE 23-09-05  TIME 12:49:04;
MODIFIED	= DATE 23-09-07  TIME 09:17:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 16;
MEMORY_SIZE	= 794;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;

PLTZ_MODE_HEADER;
 PLTZ_MODE_ENABLE   : FALSE;
 J4TURN  : ZERORAD;
 ORIENT  : DOWNWARDS;
/MN
   1:  //PR[111:CpyUT1]=UTOOL[1:Vac] ;
   2:  //PR[112:CpyUT8]=UTOOL[8:Eoat8] ;
   3:   ;
   4:  PR[109:temp]=PR[111:CpyUT1]    ;
   5:  PR[110:temp]=PR[112:CpyUT8]    ;
   6:   ;
   7:  //PR[110,4:temp]=(PR[110,4:temp]+180) ;
   8:  //PR[110,6:temp]=(PR[110,6:temp]+90) ;
   9:  //UTOOL[8:Eoat8]=PR[110:temp] ;
  10:   ;
  11:  //R[23:CamUTofsX]=(PR[109,1:temp]-PR[110,1:temp]) ;
  12:  //    ;
  13:  //R[24:CamUTofsY]=(PR[109,2:temp]-PR[110,2:temp]) ;
  14:   ;
  15:  PR[109,3:temp]=PR[109,3:temp]+25.15    ;
  16:  UTOOL[1:Vac]=PR[109:temp] ;
/POS
/END
