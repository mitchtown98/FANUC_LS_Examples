/PROG  _BG_MONITOR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "BG Routine";
PROG_SIZE	= 545;
CREATE		= DATE 23-12-13  TIME 09:07:26;
MODIFIED	= DATE 23-12-13  TIME 09:07:26;
FILE_NAME	= _ZTEMPLA;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 829;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !************************** ;
   2:  !  Background Logic Monitor ;
   3:  !************************** ;
   7:   ;
   8:   ! J1 - J6 Trq ;
   9:   R[81:J1Trq]=$DCSS_CLLB[1].$CRX_TRQ[1] ;
   9:   R[82:J2Trq]=$DCSS_CLLB[1].$CRX_TRQ[2] ;
   9:   R[83:J3Trq]=$DCSS_CLLB[1].$CRX_TRQ[3] ;
   9:   R[84:J4Trq]=$DCSS_CLLB[1].$CRX_TRQ[4] ;
   9:   R[85:J5Trq]=$DCSS_CLLB[1].$CRX_TRQ[5] ;
   9:   R[86:J6Trq]=$DCSS_CLLB[1].$CRX_TRQ[6] ;
  10:   ;
  11:   ! Total Force ;
  12:   R[87:TotalForce]=$DCSS_CLLB[1].$CRX_TCP_FRA ;
  13:   ;
  14:   ! X - Z Force ;
  15:   R[91:XForce]=$DCSS_CLLB[1].$CRX_TCP_FRC[1] ;
  15:   R[92:YForce]=$DCSS_CLLB[1].$CRX_TCP_FRC[2] ;
  15:   R[93:ZForce]=$DCSS_CLLB[1].$CRX_TCP_FRC[3] ;
  16:   ;
/POS
/END
