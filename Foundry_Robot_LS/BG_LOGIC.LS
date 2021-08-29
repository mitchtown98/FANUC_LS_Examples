/PROG  BG_LOGIC
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 663;
CREATE		= DATE 17-12-07  TIME 22:40:36;
MODIFIED	= DATE 19-11-11  TIME 23:45:48;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1055;
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

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  IF (DI[20:OFF:REQUEST TO ENTER]=ON),R[32:REQUEST TO ENT]=(1) ;
   2:   ;
   3:   ;
   4:  IF (SO[7:ON :TP enabled]=ON),DO[487:ON :TP ENABLED]=(ON) ;
   5:  IF (SO[7:ON :TP enabled]=OFF),DO[487:ON :TP ENABLED]=(OFF) ;
   6:   ;
   7:  IF ($SSR.$SINGLESTEP=1),DO[488:OFF:STEP MODE]=(ON) ;
   8:  IF ($SSR.$SINGLESTEP=0),DO[488:OFF:STEP MODE]=(OFF) ;
   9:   ;
  10:  IF (DI[10:OFF:PRE HEAT LADLE]=ON),R[27:PRE_HEAT]=(1) ;
  11:  IF (DI[9:OFF:SERVICE]=ON),R[28:SERVICE]=(1) ;
  12:   ;
  13:  R[1:Station 1 PN]=(GI[1:0:S1 PN]) ;
  14:  R[2:Station 2 PN]=(GI[2:0:S2 PN]) ;
  15:  R[3:Station 3 PN]=(GI[3:0:S3 PN]) ;
  16:  R[4:Station 4 PN]=(GI[4:0:S4 PN]) ;
  17:   ;
  18:   ;
  19:   ;
  20:   ;
  21:   ;
  22:   ;
  23:   ;
  24:   ;
  25:   ;
  26:   ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
  31:   ;
  32:   ;
  33:   ;
  34:   ;
  35:   ;
/POS
/END
