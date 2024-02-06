/PROG  _DPAL_CVTSKIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal sub";
PROG_SIZE	= 725;
CREATE		= DATE 22-03-10  TIME 16:10:00;
MODIFIED	= DATE 22-03-11  TIME 16:57:54;
FILE_NAME	= _DPAL_PA;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1121;
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
   1:  UFRAME_NUM=9 ;
   2:  UTOOL_NUM=1 ;
   3:  F[12:CvBoxDetect]=(OFF) ;
   3:  !--Turn Cv Monitor Off;
   4:  R[198:runConv]=0    ;
   5:  R[200:killConv]=1    ;
   6:   ;
   6:  !--J3 Current percent;
   7:  SKIP CONDITION R[192:J3Current]>R[191:J3CurrentMax]    ;
   8:   ;
   9:L PR[88:D_CvPlace] 50mm/sec FINE Skip,LBL[99]    ;
  10:   ;
  11:  !-------------------- ;
  12:  LBL[98:TouchDetect] ;
  11:  !-------------------- ;
  13:  F[12:CvBoxDetect]=(ON) ;
  14:  PR[89:D_CvTemp]=LPOS    ;
  15:   ;
  15:  !  TODO need to handle;
  16:L PR[89:D_CvTemp] 100mm/sec FINE Offset,PR[86:D_CvSearchOffst]    ;
  17:   ;
  18:  MESSAGE[BoxObstructed] ;
  19:  END ;
  20:  !-------------------- ;
  21:  LBL[99:EndNormal] ;
  20:  !-------------------- ;
  22:  CALL _VAC_OFF    ;
  23:  WAIT    .50(sec) ;
  24:L PR[88:D_CvPlace] 100mm/sec FINE Offset,PR[86:D_CvSearchOffst]    ;
  25:   ;
  26:  IF (DI[101:InFeedPres]=ON) THEN ;
  27:  RUN _DPAL_CV_BUMP ;
  28:  ELSE ;
  28:  !  Turn Cv Monitor On;
  29:  R[200:killConv]=0    ;
  30:  R[198:runConv]=1    ;
  31:  ENDIF ;
/POS
/END
