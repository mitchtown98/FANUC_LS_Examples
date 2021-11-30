/PROG  ERROR
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "error list";
PROG_SIZE	= 1246;
CREATE		= DATE 19-12-10  TIME 17:05:36;
MODIFIED	= DATE 20-01-14  TIME 10:44:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 1706;
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
/MN
   1:  !Error(AR1) ;
   2:  !AR1=Error Code ;
   3:  ! ;
   4:  !1=GRIP 1 FAULT ;
   5:  !2=GRIP 2 FAULT ;
   6:  !3=REJECT POS OUT OF RANGE ;
   7:  !4=PICK\PLACE POS OUT OF RANGE ;
   8:  !5=CHUCK FAULT ;
   9:  !6=PALLET FAULT ;
  10:  !7=REJECT FAULT ;
  11:   ;
  12:  R[90:TempCalcReg0]=AR[1]    ;
  13:   ;
  14:  SELECT R[8:TestRun]=1,JMP LBL[100] ;
  15:         =2,JMP LBL[2] ;
  16:         =3,JMP LBL[3] ;
  17:         =4,JMP LBL[4] ;
  18:         =5,JMP LBL[5] ;
  19:         =6,JMP LBL[6] ;
  20:         =7,JMP LBL[7] ;
  21:         =8,JMP LBL[8] ;
  22:         =9,JMP LBL[9] ;
  23:   ;
  24:  LBL[1:GRIP 1 FAULT] ;
  25:   ;
  26:  DO[126:Grip1Fault]=ON ;
  27:  OpenHand    ;
  28:   ;
  29:  JMP LBL[100] ;
  30:   ;
  31:  LBL[2:GRIP 2 FAULT] ;
  32:   ;
  33:  DO[127:Grip2Fault]=ON ;
  34:  JMP LBL[100] ;
  35:   ;
  36:  LBL[3:REJ POS FAULT] ;
  37:   ;
  38:  DO[128:RejectPosFault]=ON ;
  39:  JMP LBL[10] ;
  40:   ;
  41:  LBL[4:PICK POS FAULT] ;
  42:   ;
  43:  DO[129:PickPosFault]=ON ;
  44:  JMP LBL[100] ;
  45:   ;
  46:  LBL[5:CHUCK FAULT] ;
  47:   ;
  48:  DO[130:ChuckFault]=ON ;
  49:  JMP LBL[10] ;
  50:   ;
  51:  LBL[6:PALLET MISS FLT] ;
  52:   ;
  53:  DO[131:PalletMissFault]=ON ;
  54:  JMP LBL[10] ;
  55:   ;
  56:  LBL[7:REJECT FAULT] ;
  57:   ;
  58:  DO[132:RejectFault]=ON ;
  59:  JMP LBL[10] ;
  60:   ;
  61:  LBL[8:PALLET EMPTY] ;
  62:   ;
  63:  DO[125:PalletEmpty]=ON ;
  64:   ;
  65:  OpenHand    ;
  66:   ;
  67:  JMP LBL[100] ;
  68:   ;
  69:  LBL[10] ;
  70:   ;
  71:  //GoPerch    ;
  72:   ;
  73:  ABORT ;
  74:   ;
  75:  LBL[100] ;
/POS
/END
