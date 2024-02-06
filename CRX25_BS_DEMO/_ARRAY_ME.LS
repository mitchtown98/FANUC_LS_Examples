/PROG  _ARRAY_ME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1536;
CREATE		= DATE 23-09-01  TIME 10:21:58;
MODIFIED	= DATE 23-09-06  TIME 11:09:06;
FILE_NAME	= _Z_JDM;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1968;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

  AUTOZONE_INTERFERENCE_AVOID;
    AUTOZONE_ENABLED         : FALSE;
    AUTOZONE_SCHEDULE_NUMBER : 1;
/MN
   1:  !Exmaple of Part Array ;
   2:  ! Use any UT and UF ;
   3:  UFRAME_NUM=1 ;
   4:  UTOOL_NUM=1 ;
   5:  !Init Registers ;
   6:  //R[130:Index]=0    ;
   7:  //R[131:CurrentColumn;]=0    ;
   8:  //R[132:CurrentRow;]=0    ;
   9:  PR[180]=LPOS-LPOS    ;
  10:   ;
  11:  !Set Total Parts ;
  12:  R[133:TotalParts]=R[135:MaxColumns]*R[136:MaxRows]    ;
  13:  !------------------- ;
  14:  LBL[10] ;
  15:  PAUSE ;
  16:  !Pick Part ;
  17:  ! current row = ;
  18:  ! index MOD max columns ;
  19:  R[132:CurrentRow;]=R[130:Index] MOD R[135:MaxColumns]    ;
  20:   ;
  21:  ! current col = ;
  22:  ! index DIV  max columns ;
  23:  R[131:CurrentColumn;]=R[130:Index] DIV R[135:MaxColumns]    ;
  24:   ;
  25:  !Set offset X and Y ;
  26:  ! current column = ;
  27:  ! curr colum * column offset ;
  28:  R[131:CurrentColumn;]=R[131:CurrentColumn;]*R[137:ColumnOffset]    ;
  29:   ;
  30:  ! current row = ;
  31:  ! curr row * row offset ;
  32:  R[132:CurrentRow;]=R[132:CurrentRow;]*R[138:RowOffset]    ;
  33:   ;
  34:  !Apply offset X and Y ;
  35:  PR[180,1]=R[131:CurrentColumn;]    ;
  36:  PR[180,2]=R[132:CurrentRow;]    ;
  37:   ;
  38:  !Use taugh pos with ;
  39:  ! updated PR for Offset ;
  40:J P[1] 100% FINE Offset,PR[180]    ;
  41:  !Increment Index Counter ;
  42:  R[130:Index]=R[130:Index]+1    ;
  43:   ;
  44:  !Total Parts sets loop counter ;
  45:  IF R[130:Index]<R[133:TotalParts],JMP LBL[10] ;
  46:   ;
  47:  END ;
  48:  !Touchup ;
  49:J P[1] 100% FINE    ;
  50:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -76.205139  mm,	Y =  1121.871826  mm,	Z =  1477.027466  mm,
	W =   178.162262 deg,	P =      .475232 deg,	R =    90.137032 deg
};
/END
