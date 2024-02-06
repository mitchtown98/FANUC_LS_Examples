/PROG  _PICK_ARRAY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Pick SubRoutine";
PROG_SIZE	= 1722;
CREATE		= DATE 23-12-13  TIME 10:01:58;
MODIFIED	= DATE 23-12-13  TIME 10:19:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 58;
MEMORY_SIZE	= 2122;
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
/MN
   1:  !************************ ;
   2:  ! Example of Part Array   ;
   3:  !  Use any UT and UF      ;
   4:  !************************ ;
   5:  UFRAME_NUM=2 ;
   6:  UTOOL_NUM=1 ;
   7:   ;
   8:  !Init Registers ;
   9:  IF (F[2:InitFlag]=ON) THEN ;
  10:  R[130:LayerIndex]=0    ;
  11:  R[131:CurrentColumn]=0    ;
  12:  R[132:CurrentRow]=0    ;
  13:  PR[99:TempPR]=LPOS-LPOS    ;
  14:  F[2:InitFlag]=(OFF) ;
  15:  ENDIF ;
  16:   ;
  17:  !Set Total Parts ;
  18:  R[133:TotalParts]=R[135:MaxColumns]*R[136:MaxRows]    ;
  19:  !------------------- ;
  20:  LBL[10:Start] ;
  21:  !------------------- ;
  22:  ! Pick Part ;
  23:  !  current row = ;
  24:  !   index MOD max columns ;
  25:  R[132:CurrentRow]=R[130:LayerIndex] MOD R[135:MaxColumns]    ;
  26:   ;
  27:  ! current col = ;
  28:  ! index DIV  max columns ;
  29:  R[131:CurrentColumn]=R[130:LayerIndex] DIV R[135:MaxColumns]    ;
  30:   ;
  31:  ! Set offset X and Y ;
  32:  !  current column = ;
  33:  !   curr column * column offset ;
  34:  R[131:CurrentColumn]=R[131:CurrentColumn]*R[137:ColumnOffset]    ;
  35:   ;
  36:  ! current row = ;
  37:  !  curr row * row offset ;
  38:  R[132:CurrentRow]=R[132:CurrentRow]*R[138:RowOffset]    ;
  39:   ;
  40:  ! Apply offset X and Y ;
  41:  PR[99,1:TempPR]=R[132:CurrentRow]    ;
  42:  PR[99,3:TempPR]=R[131:CurrentColumn]    ;
  43:  ! Use taugh pos with ;
  44:  !  updated PR for Offset ;
  45:J P[2:PickPt] 100% FINE Offset,PR[99:TempPR]    ;
  46:   ;
  47:  ! Increment Index Counter ;
  48:  R[130:LayerIndex]=R[130:LayerIndex]+1    ;
  49:   ;
  50:  ! Total Parts sets loop counter ;
  51:  IF R[130:LayerIndex]<R[133:TotalParts],JMP LBL[10] ;
  52:   ;
  53:  END ;
  54:  !-------------------- ;
  55:  !  Touchup ;
  56:  !-------------------- ;
  57:J P[2:PickPt] 100% FINE    ;
  58:   ;
/POS
P[2:"PickPt"]{
   GP1:
	UF : 2, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =    64.355  mm,	Y =   247.827  mm,	Z =   290.497  mm,
	W =  -180.000 deg,	P =     -.000 deg,	R =   -89.999 deg
};
/END
