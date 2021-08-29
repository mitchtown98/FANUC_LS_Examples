/PROG  SET_PICK_OFST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick Offset";
PROG_SIZE	= 475;
CREATE		= DATE 19-12-09  TIME 17:41:24;
MODIFIED	= DATE 19-12-09  TIME 17:41:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 23;
MEMORY_SIZE	= 755;
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
   1:  PR[10,1:OFFSET Y Z]=R[23:PICK OFST X]    ;
   2:   ;
   3:  PR[10,2:OFFSET Y Z]=R[24:PICK OFST Y]    ;
   4:   ;
   5:  PR[10,3:OFFSET Y Z]=R[26:PICK OFST Y Z]    ;
   6:   ;
   7:  PR[10,4:OFFSET Y Z]=0    ;
   8:   ;
   9:  PR[10,5:OFFSET Y Z]=0    ;
  10:   ;
  11:  PR[10,6:OFFSET Y Z]=0    ;
  12:   ;
  13:  PR[11,1:OFFSET Z]=0    ;
  14:   ;
  15:  PR[11,2:OFFSET Z]=0    ;
  16:   ;
  17:  PR[11,3:OFFSET Z]=R[25:PICK OFST Z]    ;
  18:   ;
  19:  PR[11,4:OFFSET Z]=0    ;
  20:   ;
  21:  PR[11,5:OFFSET Z]=0    ;
  22:   ;
  23:  PR[11,6:OFFSET Z]=0    ;
/POS
/END
