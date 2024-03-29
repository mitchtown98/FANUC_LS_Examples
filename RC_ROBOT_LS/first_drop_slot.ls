/PROG  FIRST_DROP_SLOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "FIND 1ST DROP";
PROG_SIZE	= 553;
CREATE		= DATE 21-02-11  TIME 10:42:58;
MODIFIED	= DATE 21-02-11  TIME 10:44:12;
FILE_NAME	= FIRST_PI;
VERSION		= 0;
LINE_COUNT	= 9;
MEMORY_SIZE	= 1021;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  --eg:SETS THE FIRST SLOTS BEING USED WHEN STARTING FRESH ON SERVICING
    :  TABLE BASED ON ACTIVE TEMPLATE ;
   2:   ;
   3:  LBL[1:START] ;
   4:  --eg:USES R[38] AS AN INDIRECT REFERENCE TO WHAT THE STARTING SLOT IS.
    :  R[36] POINTS TO A REGISTER BASED ON THE CURRENT ROW. ;
   5:  IF (R[5:CUR COL DROP (Y)]<R[R[38]]) THEN ;
   6:  R[5:CUR COL DROP (Y)]=R[R[38]]    ;
   7:  ENDIF ;
   8:   ;
   9:  LBL[9999:END] ;
/POS
/END
