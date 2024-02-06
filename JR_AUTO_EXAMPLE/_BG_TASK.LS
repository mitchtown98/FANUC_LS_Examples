/PROG  _BG_TASK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1985;
CREATE		= DATE 21-03-23  TIME 17:13:58;
MODIFIED	= DATE 21-04-07  TIME 10:41:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 2373;
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
   1:  !***************************** ;
   2:  !Background Task ;
   3:  !Monitors and updates I/O ;
   4:  ! ;
   5:  !   March 2021 ;
   6:  !***************************** ;
   7:   ;
   8:  !Set Step Mode Active ;
   9:  DO[25:Step Mode]=($SSR.$SINGLESTEP) ;
  10:   ;
  11:  DO[26:Robot Jogged]=($MOR_GRP[1].$JOGGED) ;
  12:  !Monitor Robot Motion ;
  13:  DO[22:Robot Moving]=($MOR_GRP[1].$ROB_MOVE) ;
  14:  !Override = 100% ;
  15:  IF ($MCR.$GENOVERRIDE=100),DO[31:Override @100]=(ON) ;
  16:  IF ($MCR.$GENOVERRIDE<>100),DO[31:Override @100]=(OFF) ;
  17:  !Slow Speed Req ;
  18:  !Manually Activated Signal ;
  19:  !Robot Arm Power On ;
  20:  DO[33:Robot Arm Power On]=($MCR_GRP[1].$turn_on_srv) ;
  21:  !Move Hold Light ON ;
  22:  DO[39:Move Hold Light ON]=($MCR_GRP[1].$hard_hold) ;
  23:   ;
  24:  !Monitor Unlatch Faults Input ;
  25:  IF (DI[37:Unlatch Faults]=ON) THEN ;
  26:  GO[2:Fault Number]=0 ;
  27:  GO[6:Faulted State]=0 ;
  28:  ENDIF ;
  29:   ;
  30:   ;
  31:  !***************************** ;
  32:  !Robot Registers ;
  33:  GO[5:State]=R[1:State] ;
  34:  !***************************** ;
  35:   ;
  36:   ;
  37:  !Final Destination Check ;
  38:  IF (R[100:FinalDestination]>48 AND R[100:FinalDestination]<55) THEN ;
  39:  DO[68:FinalDestination]=ON ;
  40:  ELSE ;
  41:  DO[68:FinalDestination]=OFF ;
  42:  ENDIF ;
  43:   ;
  44:  !Valid Perch Check ;
  45:  IF (DO[70:@PalletPrch]=ON OR DO[71:@ScanPrch]=ON OR DO[72:@DeLidderPrch]=ON OR DO[73:@LidConvPrch]=ON OR DO[74:@RejectPrch]=ON OR DO[75:@ReEntryPrch]=ON) THEN ;
  46:  DO[69:ValidPerch]=ON ;
  47:  ELSE ;
  48:  DO[69:ValidPerch]=OFF ;
  49:  ENDIF ;
  50:   ;
  51:  !CPC BITS ;
  52:  DO[433]=(!DI[513]) ;
  53:  DO[434]=(!DI[514]) ;
  54:  DO[435]=(!DI[515]) ;
  55:  DO[436]=(!DI[516]) ;
  56:  DO[437]=(!DI[517]) ;
  57:  DO[438]=(!DI[518]) ;
  58:  DO[439]=(!DI[523]) ;
  59:   ;
  60:  !ToolCheck Combination Bits ;
  61:  !Tub Pick Ready Bit Logic ;
  62:  IF (DO[161:oGripExt]=ON AND DO[162:oGripRet]=OFF AND DO[163:oGripLiftExt]=ON AND DO[164:oGripLiftRet]=OFF AND DO[165:oVacOn]=OFF AND DO[166:oBlowoffOn]=OFF AND DO[167:EOATo.6]=ON AND DO[168:EOATo.7]=
    :  OFF AND DO[169:EOATo.8]=OFF) THEN ;
  63:  DO[150]=ON ;
  64:  ELSE ;
  65:  DO[150]=OFF ;
  66:  ENDIF ;
  67:   ;
  68:  !Tub Place Ready Bit Logic ;
  69:  IF (DO[161:oGripExt]=OFF AND DO[162:oGripRet]=OFF AND DO[163:oGripLiftExt]=OFF AND DO[164:oGripLiftRet]=OFF AND DO[165:oVacOn]=ON AND DO[166:oBlowoffOn]=ON AND DO[167:EOATo.6]=OFF AND DO[168:EOATo.7]=
    :  ON AND DO[169:EOATo.8]=ON) THEN ;
  70:  DO[151]=ON ;
  71:  ELSE ;
  72:  DO[151]=OFF ;
  73:  ENDIF ;
  74:   ;
  75:  F[1]=(ON) ;
  76:   ;
/POS
/END
