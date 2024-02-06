/PROG  _IOMAP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "I/O BG Task";
PROG_SIZE	= 1112;
CREATE		= DATE 21-03-19  TIME 11:14:46;
MODIFIED	= DATE 21-03-19  TIME 11:14:46;
FILE_NAME	= RBTSPEED;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1500;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 1,
      ABORT_REQUEST	= 7,
      PAUSE_REQUEST	= 7;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
/APPL
/MN
   1:  !***************************** ;
   2:  !Signal Exchange Robot/PLC ;
   3:  !***************************** ;
   4:  !Set Auto Mode Active ;
   5:  $CR_AUTO_DO=23 ;
   6:  !Set T1 Mode Active ;
   7:  $CR_T1_DO=24 ;
   8:  !Outputs Simulated ;
   9:  $OUT_SIM_DO=(27) ;
  10:  !Inputs Simulated ;
  11:  $INPT_SIM_DO=(28) ;
  12:  !TP EStop Active ;
  13:  $THRESTABLE[1].$THR_ENB=(1) ;
  14:  $THRESTABLE[1].$DO_NO=(30) ;
  15:  !Op EStop Active ;
  16:  $THRESTABLE[2].$THR_ENB=(1) ;
  17:  $THRESTABLE[2].$DO_NO=(29) ;
  18:  !MCP E-Stop Button Pressed ;
  19:  $THRESTABLE[7].$THR_ENB=(1) ;
  20:  $THRESTABLE[7].$DO_NO=(34) ;
  21:  !Robot Heartbeat Set to DO38 ;
  22:  $CELL_SETUP.$DO_HEARTB_I=(38) ;
  23:   ;
  24:   ;
  25:  !Deadman Auto Reset ;
  26:  $DMAURST=(1) ;
  27:  !Changes DI/DO Count to 528 ;
  28:  $Max_Dig_prt=(528) ;
/POS
/END
