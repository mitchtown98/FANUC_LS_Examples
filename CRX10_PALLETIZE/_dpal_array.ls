/PROG  _DPAL_ARRAY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal Sub";
PROG_SIZE	= 1290;
CREATE		= DATE 22-03-11  TIME 16:52:24;
MODIFIED	= DATE 22-03-11  TIME 16:58:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 48;
MEMORY_SIZE	= 1778;
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
   1:  UFRAME_NUM=8 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:  CALL _DPAL_CHK_LAYER    ;
   5:  CALL _DPAL_INIT_PR(84) ;
   6:   ;
   7:  !--Set Z;
   8:  PR[84,3:D_PalTemp]=PR[84,3:D_PalTemp]+R[188:Zoffset]    ;
   9:   ;
  10:  !-------------------- ;
  11:  LBL[10] ;
  10:  !-------------------- ;
  12:  !  Set Curr Box X Y Index;
  13:  R[181:DepalColumn]=R[180:DepalIndex] MOD R[183:ColMax]    ;
  15:  R[182:DepalRow]=R[180:DepalIndex] DIV R[184:RowMax]    ;
  15:  ;
  16:  !  Set Offset X Y ;
  17:  R[181:DepalColumn]=R[181:DepalColumn]*R[185:ColPitch]    ;
  19:  R[182:DepalRow]=R[182:DepalRow]*R[186:RowPitch]    ;
  20:   ;
  21:  !  Apply X Y Offset ;
  22:  PR[84,2:D_PalTemp]=R[181:DepalColumn]    ;
  24:  PR[84,1:D_PalTemp]=R[182:DepalRow]    ;
  25:  //PAUSE ;
  26:  !  Move to Search Approach;
  27:J P[1:CurrentBox] 100% FINE Offset,PR[84:D_PalTemp]    ;
  28:   ;
  28:  !  TouchSkip Dpal Routine;
  29:  CALL _DPAL_BOX_DETECT    ;
  30:   ;
  31:  IF (F[10:PlBoxDetect]=ON) THEN ;
  31:  !****TODO try BoxMov here****;
  32:  CALL _DPAL_MOVTO_CV    ;
  33:   ;
  33:  !  TouchSkip CvPal Routine;
  34:  CALL _DPAL_CVTSKIP    ;
  35:  IF (F[12:CvBoxDetect]=ON) THEN ;
  36:  PAUSE ;
  37:  ENDIF ;
  38:   ;
  38:  !  Return to Dpal;
  39:  CALL _DPAL_MID    ;
  40:  ENDIF ;
  41:   ;
  42:  !  Increment Index ;
  43:  R[180:DepalIndex]=R[180:DepalIndex]+1    ;
  44:   ;
  45:  IF R[180:DepalIndex]<R[179:TotalLayerParts],JMP LBL[10] ;
  46:   ;
  47:  R[178:DpalLyrsComplete]=R[178:DpalLyrsComplete]+1    ;
  48:  F[11:TopLayer]=(OFF) ;
/POS
P[1:"CurrentBox"]{
   GP1:
	UF : 8, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   239.186371  mm,	Y =   163.768219  mm,	Z =     0.000000  mm,
	W =   180.000000 deg,	P =     -.000012 deg,	R =     -.007702 deg
};
/END
