/PROG  _DPAL_MOVTO_CV
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal sub";
PROG_SIZE	= 277;
CREATE		= DATE 22-03-10  TIME 15:45:38;
MODIFIED	= DATE 22-03-10  TIME 18:14:48;
FILE_NAME	= _DPAL_MO;
VERSION		= 0;
LINE_COUNT	= 4;
MEMORY_SIZE	= 633;
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
/MN
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=1 ;
   2:  !--Mid to Conveyor;
   3:J PR[87:D_CvMid] 100% CNT20 MROT    ;
   4:J PR[85:D_CvStartSearch] 100% CNT80 MROT    ;
/POS
/END
