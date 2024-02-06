/PROG  _DPAL_BOX_DETECT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal sub";
PROG_SIZE	= 748;
CREATE		= DATE 22-03-11  TIME 10:06:38;
MODIFIED	= DATE 22-03-11  TIME 17:18:32;
FILE_NAME	= _DPAL_PA;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1148;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,1,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  UFRAME_NUM=8 ;
   2:  UTOOL_NUM=1 ;
   3:  F[10:PlBoxDetect]=(OFF) ;
   4:  !--Set Offst Dest ;
   5:  PR[10001]=LPOS    ;
   6:   ;
   6:  !--Search Offset;
   7:  PR[10001,3]=PR[10001,3]-50    ;
   8:   ;
   9:  SKIP CONDITION R[192:J3Current]>R[191:J3CurrentMax]    ;
  10:   ;
  11:L PR[10001] 30mm/sec FINE Skip,LBL[99]    ;
  12:   ;
  13:  !-------------------- ;
  14:  LBL[98:TouchDetect] ;
  13:  !-------------------- ;
  15:  F[10:PlBoxDetect]=(ON) ;
  16:  PR[82:D_PalSearchFound]=LPOS    ;
  17:   ;
  18:  CALL _VAC_ON    ;
  19:  WAIT    .50(sec) ;
  20:   ;
  20:  !  Set Z and Clear;
  21:  PR[82,3:D_PalSearchFound]=PR[82,3:D_PalSearchFound]+90    ;
  22:L PR[82:D_PalSearchFound] 300mm/sec FINE    ;
  23:   ;
  23:  !  Move away based on Index;
  24:  CALL _DPAL_BOXMOV(R[180:DepalIndex]) ;
  25:  END ;
  26:  !-------------------- ;
  27:  LBL[99:EndNormal] ;
  26:  !-------------------- ;
  28:  PR[10001,3]=PR[10001,3]+50    ;
  29:   ;
  30:L PR[10001] 100mm/sec FINE    ;
/POS
/END
