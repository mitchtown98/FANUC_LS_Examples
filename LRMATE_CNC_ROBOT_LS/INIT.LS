/PROG  INIT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "macro InitVarias";
PROG_SIZE	= 799;
CREATE		= DATE 19-12-09  TIME 17:51:06;
MODIFIED	= DATE 20-01-27  TIME 16:56:32;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1107;
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
   1:  !INITIALIZE VARIABLES ;
   2:  ! ;
   3:  OVERRIDE=40% ;
   4:   ;
   5:  R[6:CURRENT ROW]=0    ;
   6:   ;
   7:  R[7:CURRENT COLUMN]=0    ;
   8:   ;
   9:  R[9:PLACE ROW]=0    ;
  10:   ;
  11:  R[10:PLACE COLUMN]=0    ;
  12:   ;
  13:  R[11:PART PRES T1]=0    ;
  14:   ;
  15:  R[12:PART PRES T2]=0    ;
  16:   ;
  17:  R[17:REJECT COUNT]=0    ;
  18:   ;
  19:  R[18:PART PRES CHUCK]=0    ;
  20:   ;
  21:  R[19:REPAIR OK]=0    ;
  22:   ;
  23:  R[20:MiddleRow]=0    ;
  24:   ;
  25:  R[21:PickAfterSkip]=0    ;
  26:   ;
  27:  R[27]=0    ;
  28:   ;
  29:  R[36:PICK POS]=GI[1:FirstPartPos]    ;
  30:   ;
  31:  R[38:PLACE POS]=GI[1:FirstPartPos]    ;
  32:   ;
  33:  DO[121:Loading]=OFF ;
  34:   ;
  35:  DO[123:OpenChuck]=OFF ;
  36:   ;
  37:  DO[124:CloseChuck]=OFF ;
  38:   ;
  39:  DO[125:PalletEmpty]=OFF ;
  40:   ;
  41:  DO[126:Grip1Fault]=OFF ;
  42:  DO[127:Grip2Fault]=OFF ;
  43:  DO[128:RejectPosFault]=OFF ;
  44:  DO[129:PickPosFault]=OFF ;
  45:  DO[130:ChuckFault]=OFF ;
  46:  DO[131:PalletMissFault]=OFF ;
  47:  DO[132:RejectFault]=OFF ;
  48:  DO[133:robotINAUTO]=OFF ;
  49:  DO[137:waiting]=OFF ;
  50:  CALL SET_PICK_OFST    ;
/POS
/END
