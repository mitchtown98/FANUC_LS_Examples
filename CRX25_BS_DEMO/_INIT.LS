/PROG  _INIT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Demo Subroutine";
PROG_SIZE	= 749;
CREATE		= DATE 23-08-30  TIME 17:41:12;
MODIFIED	= DATE 23-09-12  TIME 21:55:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1017;
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
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  !---------------------------- ;
   2:  !  CRX25 Palletizing Demo     ;
   3:  !      Init SubRoutine        ;
   4:  !                             ;
   5:  !  BY: JDM                    ;
   6:  !  DATE: 8.30.2023            ;
   7:  !---------------------------- ;
   8:   ;
   9:  ! Reset flags ;
  10:  F[7:CYCLE_STOP]=(OFF) ;
  11:  F[8:ROTATE_TOOL]=(OFF) ;
  12:  F[11:DEPAL_RIGHT]=(R[111:mem_depal_right]) ;
  13:  F[12:DEPAL_LEFT]=(R[112:mem_depal_left]) ;
  14:   ;
  15:  //R[4:RightPalIndex]=0    ;
  16:  //R[5:LeftPalIndex]=0    ;
  17:  R[6:RightPalLayer]=3    ;
  18:  R[7:LeftPalLayer]=1    ;
  19:  R[12:CamX]=0    ;
  20:  R[13:CamY]=0    ;
  21:  R[16:CurrBoxZ]=0    ;
  22:  R[17:CurrBoxX]=0    ;
  23:  R[102:resumed_15018]=0    ;
  24:  R[103:resumed_24320]=0    ;
  25:   ;
  26:  MONITOR _CH_CONTACT_STOP ;
  27:   ;
  28:   ;
/POS
/END
