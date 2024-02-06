/PROG  _ARRAY_ME
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1812;
CREATE		= DATE 22-08-19  TIME 15:17:30;
MODIFIED	= DATE 23-12-13  TIME 09:54:20;
FILE_NAME	= _Z_JDM;
VERSION		= 0;
LINE_COUNT	= 57;
MEMORY_SIZE	= 2216;
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
   1:  !************************ ;
   2:  ! Example of Part Array ;
   3:  ! Use any UT and UF     ;
   4:  !************************ ;
   5:  UFRAME_NUM=9 ;
   6:  UTOOL_NUM=1 ;
   7:   ;
   8:  !Init Registers ;
   9:  R[130:index]=0    ;
  10:  R[131:currentColumn;]=0    ;
  11:  R[132:currentRow;]=0    ;
  12:  PR[99]=LPOS-LPOS    ;
  13:   ;
  14:  !Set Total Parts ;
  15:  R[133:totalParts]=R[135:maxColumns]*R[136:maxRows;]    ;
  16:   ;
  17:  !------------------- ;
  18:  LBL[10] ;
  19:  !------------------- ;
  20:  PAUSE ;
  21:  ! Pick Part               ;
  22:  !  current row =          ;
  23:  !   index MOD max columns ;
  24:  R[132:currentRow;]=R[130:index] MOD R[135:maxColumns]    ;
  25:   ;
  26:  ! current col = ;
  27:  ! index DIV  max columns ;
  28:  R[131:currentColumn;]=R[130:index] DIV R[135:maxColumns]    ;
  29:   ;
  30:  ! Set offset X and Y             ;
  31:  !  current column =              ;
  32:  !   curr column * column offset  ;
  33:  R[131:currentColumn;]=R[131:currentColumn;]*R[137:columnOffset]    ;
  34:   ;
  35:  ! current row =          ;
  36:  !  curr row * row offset ;
  37:  R[132:currentRow;]=R[132:currentRow;]*R[138:rowOffset;]    ;
  38:   ;
  39:  ! Apply offset X and Y ;
  40:  PR[99,1]=R[132:currentRow;]    ;
  41:  PR[99,2]=R[131:currentColumn;]    ;
  42:  ! Use taugh pos with      ;
  43:  !  updated PR for Offset ;
  44:J P[2:PickPt] 100% FINE Offset,PR[99]    ;
  45:   ;
  46:  ! Increment Index Counter ;
  47:  R[130:index]=R[130:index]+1    ;
  48:   ;
  49:  ! Total Parts sets loop counter ;
  50:  IF R[130:index]<R[133:totalParts],JMP LBL[10] ;
  51:   ;
  52:  END ;
  53:  !-------------------- ;
  54:  !  Touchup            ;
  55:  !-------------------- ;
  56:J P[2:PickPt] 100% FINE    ;
  57:   ;
/POS
P[2:"PickPt"]{
   GP1:
	UF : 9, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   144.121262  mm,	Y =   138.303909  mm,	Z =     2.001340  mm,
	W =   178.737549 deg,	P =     -.681968 deg,	R =  -179.327591 deg
};
/END
