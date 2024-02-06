/PROG  _TOL_SET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 483;
CREATE		= DATE 21-05-12  TIME 07:59:16;
MODIFIED	= DATE 21-05-12  TIME 09:14:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 827;
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

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  !!! Args for Tolerance ;
   2:  !1= X Pitch (this is the dim) ;
   3:  !2= Y Pitch ;
   4:  !3= Z Pitch ;
   5:  !4= X Tolerance (space between) ;
   6:  !5= Y Tolerance ;
   7:  !6= Z Tolerance ;
   8:  !7= Debug (1 is On, 0 is Off) ;
   9:  CALL KL_PAL_LOC_TOL_SET(R[50:xP],R[51:yP],R[52:zP],R[53:xTol],R[54:yTol],R[55:zTol],1) ;
/POS
/END
