/PROG  _DPAL_INIT_PR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Depal Sub";
PROG_SIZE	= 540;
CREATE		= DATE 22-03-11  TIME 16:51:42;
MODIFIED	= DATE 22-03-11  TIME 16:51:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 824;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 1,0,0;
/APPL
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !--Init Vars for Dpal ;
   2:  R[198:runConv]=1    ;
   3:  R[197:DpalCnt]=0    ;
   4:   ;
   4:  !--Local Reg for Arg;
   5:  R[10001]=AR[1]    ;
   6:   ;
   7:  PR[R[10001],1]=0    ;
   8:  PR[R[10001],2]=0    ;
   9:  PR[R[10001],3]=0    ;
  10:  PR[R[10001],4]=0    ;
  11:  PR[R[10001],5]=0    ;
  12:  PR[R[10001],6]=0    ;
  13:   ;
  13:  !--Set X,Y,Z for Pal ;
  14:  R[180:DepalIndex]=0    ;
  15:  R[181:DepalColumn]=0    ;
  16:  R[182:DepalRow]=0    ;
  17:  R[179:TotalLayerParts]=R[183:ColMax]*R[184:RowMax]    ;
  18:   ;
  19:  R[188:Zoffset]=R[187:Zpitch]*R[189:DepalLayer]    ;
  20:   ;
  20:  !--Starting X and Y from PR;
  21:  R[181:DepalColumn]=PR[96,1:Box1]    ;
  22:  R[182:DepalRow]=PR[96,2:Box1]    ;
/POS
/END
