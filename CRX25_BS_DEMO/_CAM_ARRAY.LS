/PROG  _CAM_ARRAY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Cam Move Sub";
PROG_SIZE	= 1945;
CREATE		= DATE 23-09-06  TIME 11:09:58;
MODIFIED	= DATE 23-09-08  TIME 09:15:24;
FILE_NAME	= _ARRAY_M;
VERSION		= 0;
LINE_COUNT	= 65;
MEMORY_SIZE	= 2445;
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
   6:  PR[99]=P[1]    ;
   7:  PR[180]=LPOS-LPOS    ;
   8:  PR[179]=LPOS-LPOS    ;
   9:   ;
  10:  R[130:Index]=AR[1]    ;
  11:  R[139:LayerNumber]=AR[2]    ;
  12:   ;
  13:  R[10:Ofs]=R[139:LayerNumber]-R[11:MaxLayers]    ;
  14:   ;
  15:  R[10:Ofs]=(ABS[R[10]]) ;
  16:   ;
  17:  !Set Total Parts ;
  18:  R[133:TotalParts]=R[135:MaxColumns]*R[136:MaxRows]    ;
  19:  !------------------- ;
  20:  LBL[10] ;
  21:   ;
  22:  !Pick Part ;
  23:  ! current row = ;
  24:  ! index MOD max columns ;
  25:  R[132:CurrentRow;]=R[130:Index] MOD R[135:MaxColumns]    ;
  26:   ;
  27:  ! current col = ;
  28:  ! index DIV  max columns ;
  29:  R[131:CurrentColumn;]=R[130:Index] DIV R[135:MaxColumns]    ;
  30:   ;
  31:  !Set offset X and Y ;
  32:  ! current column = ;
  33:  ! curr colum * column offset ;
  34:  R[131:CurrentColumn;]=R[131:CurrentColumn;]*R[137:ColumnOffset]    ;
  35:   ;
  36:  ! current row = ;
  37:  ! curr row * row offset ;
  38:  R[132:CurrentRow;]=R[132:CurrentRow;]*R[138:RowOffset]    ;
  39:   ;
  40:  !Apply offset X and Y ;
  41:  PR[180,1]=R[131:CurrentColumn;]    ;
  42:  PR[180,2]=R[132:CurrentRow;]    ;
  43:   ;
  44:  PR[179,3]=(R[10:Ofs]*R[9:LayerHeight]) ;
  45:   ;
  46:  IF (R[1:PalletsBuiltRigt]>7) THEN ;
  47:  PR[179,1]=(-231)    ;
  48:  PR[179,6]=180    ;
  49:   ;
  50:  ENDIF ;
  51:   ;
  52:  !Use taugh pos with ;
  53:  ! updated PR for Offset ;
  54:J P[99] 100% CNT15 Offset,PR[180] Tool_Offset,PR[179]    ;
  55:   ;
  56:  !Increment Index Counter ;
  57:  //R[130:Index]=R[130:Index]+1    ;
  58:   ;
  59:  //!Total Parts sets loop counter ;
  60:  //IF R[130:Index]<R[133:TotalParts],JMP LBL[10] ;
  61:   ;
  62:  END ;
  63:  !Touchup ;
  64:J P[1] 100% FINE    ;
  65:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -76.205139  mm,	Y =  1121.871826  mm,	Z =  1477.027466  mm,
	W =   178.162262 deg,	P =      .475232 deg,	R =    90.137032 deg
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -76.205139  mm,	Y =  1121.871826  mm,	Z =  1477.027466  mm,
	W =   178.162262 deg,	P =      .475232 deg,	R =    90.137032 deg
};
/END
