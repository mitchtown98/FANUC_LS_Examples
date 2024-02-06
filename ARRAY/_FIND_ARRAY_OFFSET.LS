/PROG  _FIND_ARRAY_OFFSET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1421;
CREATE		= DATE 22-08-16  TIME 19:59:40;
MODIFIED	= DATE 22-08-16  TIME 20:10:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 54;
MEMORY_SIZE	= 1705;
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
   1:  !********************* ;
   2:  ! R O W S ;
   3:  ! LastPos - currentPos. ;
   4:  ! Divide by number of rows - 1. ;
   5:  !********************* ;
   6:  R[207:currentRow]=AR[1]    ;
   7:  R[217:currCol]=AR[2]    ;
   8:   ;
   9:  R[201:rowsX]=(PR[102,1:lastRow]-PR[101,1:orgigin]) ;
  10:  R[201:rowsX]=(R[201:rowsX]/(R[200:rows]-1)) ;
  11:   ;
  12:  R[202:rowsY]=(PR[102,2:lastRow]-PR[101,2:orgigin]) ;
  13:  R[202:rowsY]=(R[202:rowsY]/(R[200:rows]-1)) ;
  14:   ;
  15:  R[203:rowsZ]=(PR[102,3:lastRow]-PR[101,3:orgigin]) ;
  16:  R[203:rowsZ]=(R[203:rowsZ]/(R[200:rows]-1)) ;
  17:   ;
  18:  !********************* ;
  19:  ! C O L U M N S ;
  20:  !********************* ;
  21:  R[211:colX]=(PR[103,1:lastColumn]-PR[101,1:orgigin]) ;
  22:  R[211:colX]=(R[211:colX]/(R[210:columns]-1)) ;
  23:   ;
  24:  R[212:colY]=(PR[103,2:lastColumn]-PR[101,2:orgigin]) ;
  25:  R[212:colY]=(R[212:colY]/(R[210:columns]-1)) ;
  26:   ;
  27:  R[213:colZ]=(PR[103,3:lastColumn]-PR[101,3:orgigin]) ;
  28:  R[213:colZ]=(R[213:colZ]/(R[210:columns]-1)) ;
  29:   ;
  30:  !********************* ;
  31:  ! G E N E R A T E ;
  32:  !  O F F S E T ;
  33:  !********************* ;
  34:  R[204:offRowX]=(R[201:rowsX]*(R[207:currentRow]-1)) ;
  35:  R[204:offRowX]=(R[204:offRowX]+(R[211:colX]*(R[217:currCol]-1))) ;
  36:   ;
  37:  R[205:offRowY]=(R[202:rowsY]*(R[207:currentRow]-1)) ;
  38:  R[205:offRowY]=(R[205:offRowY]+(R[212:colY]*(R[217:currCol]-1))) ;
  39:   ;
  40:  R[206:offRowZ]=(R[203:rowsZ]*(R[207:currentRow]-1)) ;
  41:  R[206:offRowZ]=(R[206:offRowZ]+(R[213:colZ]*(R[217:currCol]-1))) ;
  42:   ;
  43:  !********************* ;
  44:  ! A S S I G N ;
  45:  !  O F F S E T ;
  46:  !********************* ;
  47:  PR[150]=LPOS-LPOS    ;
  48:  PR[150,1]=R[204:offRowX]    ;
  49:  PR[150,2]=R[205:offRowY]    ;
  50:  PR[150,3]=R[206:offRowZ]    ;
  51:  PR[150,4]=0    ;
  52:  PR[150,5]=0    ;
  53:  PR[150,6]=0    ;
  54:   ;
/POS
/END
